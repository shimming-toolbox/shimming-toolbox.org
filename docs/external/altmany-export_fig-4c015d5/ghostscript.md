# ghostscript

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Calls a local GhostScript executable with the input command_

Example:
    [status result] = ghostscript(cmd)

Attempts to locate a ghostscript executable, finally asking the user to
specify the directory ghostcript was installed into. The resulting path
is stored for future reference.

Once found, the executable is called with the input command string.

This function requires that you have Ghostscript installed on your
system. You can download this from: http://www.ghostscript.com

IN:
    cmd - Command string to be passed into ghostscript.

OUT:
    status - 0 iff command ran without problem.
    result - Output from ghostscript.


### Attributes


- nInputs : 1

- nOutputs : -1
