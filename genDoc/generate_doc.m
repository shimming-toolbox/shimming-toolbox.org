%% HEADER
% This will eventually be a function called from a matlab running server
%
%
%

%% Initial setup
% create new temp folder
!mkdir temp
cd temp

% Clone shimming-toolbox repos and add to matlab path
!git clone https://github.com/shimming-toolbox/helpDocMd.git
addpath(genpath('./helpDocMd/src'))
!git clone https://github.com/shimming-toolbox/shimming-toolbox.org.git
!git clone https://github.com/shimming-toolbox/shimming-toolbox.git


%% branch
% Look if there is a remote branch called update-website
% - If yes, delete it
% create a branch called update-website
% git checkout -b update-website
%% API doc
% delete current shimming-toolbox.org/docs/contributing/API-documentation/*
rmdir shimming-toolbox.org/docs/contributing/API-documentation s
!mkdir shimming-toolbox.org/docs/contributing/API-documentation

% Generate APIDoc to shimming-toolbox.org/docs/contributing/API-documentation/*
% Idea, Add Ui, tests, misc... seperatly
% Documentor('./shimming-toolbox/Img') Currently not working

% Delete then add mkdocs.yml APIdoc navigation
%% README, LICENSE, etc

% Python script that (might as well be matlab at this point?) 
% - Reads current mkdocs.yml configuration file   Need YAML fix for names
% with spaces
% - Looks at shimming-toolbox for the appropriate files
% -- README will most likely need to be split up
% -- LICENSE (put where it says in mkdocs.yml)
% -- Other Ressources (Depending on if it's already in shimming-toolbox.org)
% - delete them from shimming-toolbox.org
% - Add them to shimming-toolbox.org

%% branch
% cd shimming-toolbox.org
% !git add .
% !git commit -m"Update website"
% !git push -u origin update-website % (force merge on master eventually?)

%%
% Delete temp folder and all subfolders
cd ..
rmdir temp s

disp('done')