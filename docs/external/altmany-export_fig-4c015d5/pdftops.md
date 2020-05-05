# pdftops

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Calls a local pdftops executable with the input command_

Example:
    [status result] = pdftops(cmd)

Attempts to locate a pdftops executable, finally asking the user to
specify the directory pdftops was installed into. The resulting path is
stored for future reference.

Once found, the executable is called with the input command string.

This function requires that you have pdftops (from the Xpdf package)
installed on your system. You can download this from:
http://www.foolabs.com/xpdf

IN:
    cmd - Command string to be passed into pdftops.

OUT:
    status - 0 iff command ran without problem.
    result - Output from pdftops.


### Attributes


- nInputs : 1

- nOutputs : -1
