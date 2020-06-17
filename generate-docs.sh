#!/bin/sh

set -e

# Build API documentation, Matlab (.m) -> Markdown (.md)
#   Beware: you MUST put `quit` at the end; Matlab does not auto-quit.
#   https://www.mathworks.com/matlabcentral/answers/523194-matlab-script-in-batch-from-unix-command-line
# TODO: broken.
#  1. writes to temp/shimming-toolbox/docs instead of docs/
#  2. incompatible with Matlab R2019a which is what's on our CI machine.
#matlab -nodisplay -nosplash -r "run('genDoc/generate_doc.m');exit"

# run mkdocs
# ported from https://github.com/mhausenblas/mkdocs-deploy-gh-pages/blob/master/action.sh
# with hints from https://github.com/DavidS/jekyll-deploy/blob/master/entrypoint.rb and https://docs.travis-ci.com/user/deployment/pages/
# maybe it should be its own script?

export PATH="~/.local/bin":"$PATH"
pip install --user mkdocs

if [ -n "${GH_PAGES_TOKEN}" ]; then
    # XXX this is destructive to the repo, but we're assuming this is being run in CI so no matter?

    #git config http."https://github.com/".extraheader "Authorization: token $GH_PAGES_TOKEN" # authenticate over HTTPS with the given token
    # ^ this doesn't work. github will accept 'token ...' for API calls, but not for git+https://
    # so instead we have to generate an HTTP basic auth:
    auth="$(echo -n "x-access-token:$GH_PAGES_TOKEN" | base64 | tr -d '\r' | tr -d '\n')"
    git config http."https://github.com/".extraheader "Authorization: basic "$auth"" # authenticate over HTTPS with the given token

    git config url."https://github".insteadOf "git@github.com:"  # force HTTPS, not SSH

    # if you can parse out the remote URL, you could instead try:
    # remote_repo="https://x-access-token:${GH_PAGES_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" # 
    # git remote rm origin
    # git remote add origin "${remote_repo}"
fi

if [ -n "${CUSTOM_DOMAIN}" ]; then
    echo "${CUSTOM_DOMAIN}" > "docs/CNAME"
fi

mkdocs gh-deploy --config-file "./mkdocs.yml" --force
