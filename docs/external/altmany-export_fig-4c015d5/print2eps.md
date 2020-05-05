# print2eps

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Prints figures to eps with improved line styles_

Examples:
    print2eps filename
    print2eps(filename, fig_handle)
    print2eps(filename, fig_handle, export_options)
    print2eps(filename, fig_handle, export_options, print_options)

This function saves a figure as an eps file, with two improvements over
MATLAB's print command. First, it improves the line style, making dashed
lines more like those on screen and giving grid lines a dotted line style.
Secondly, it substitutes original font names back into the eps file,
where these have been changed by MATLAB, for up to 11 different fonts.

IN:
    filename - string containing the name (optionally including full or
               relative path) of the file the figure is to be saved as. A
               ".eps" extension is added if not there already. If a path is
               not specified, the figure is saved in the current directory.
    fig_handle - The handle of the figure to be saved. Default: gcf().
    export_options - array or struct of optional scalar values:
        bb_padding - Scalar value of amount of padding to add to border around
                     the cropped image, in points (if >1) or percent (if <1).
                     Can be negative as well as positive; Default: 0
        crop       - Crop amount. Deafult: 0
        fontswap   - Whether to swap non-default fonts in figure. Default: true
        renderer   - Renderer used to generate bounding-box. Default: 'opengl'
    print_options - Additional parameter strings to be passed to the print command


### Attributes


- nInputs : -4

- nOutputs : 0
