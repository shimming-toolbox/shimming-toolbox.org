# fix_lines

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Improves the line style of eps files generated by print_

Examples:
    fix_lines fname
    fix_lines fname fname2
    fstrm_out = fixlines(fstrm_in)

This function improves the style of lines in eps files generated by
MATLAB's print function, making them more similar to those seen on
screen. Grid lines are also changed from a dashed style to a dotted
style, for greater differentiation from dashed lines.

The function also places embedded fonts after the postscript header, in
versions of MATLAB which place the fonts first (R2006b and earlier), in
order to allow programs such as Ghostscript to find the bounding box
information.

IN:
    fname - Name or path of source eps file.
    fname2 - Name or path of destination eps file. Default: same as fname.
    fstrm_in - File contents of a MATLAB-generated eps file.

OUT:
    fstrm_out - Contents of the eps file with line styles fixed.


### Attributes


- nInputs : 2

- nOutputs : 1
