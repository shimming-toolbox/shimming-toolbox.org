# print2array

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Exports a figure to an image array_

Examples:
    A = print2array
    A = print2array(figure_handle)
    A = print2array(figure_handle, resolution)
    A = print2array(figure_handle, resolution, renderer)
    A = print2array(figure_handle, resolution, renderer, gs_options)
    [A bcol] = print2array(...)

This function outputs a bitmap image of the given figure, at the desired
resolution.

If renderer is '-painters' then ghostcript needs to be installed. This
can be downloaded from: http://www.ghostscript.com

IN:
    figure_handle - The handle of the figure to be exported. Default: gcf.
    resolution - Resolution of the output, as a factor of screen
                 resolution. Default: 1.
    renderer - string containing the renderer paramater to be passed to
               print. Default: '-opengl'.
    gs_options - optional ghostscript options (e.g.: '-dNoOutputFonts'). If
                 multiple options are needed, enclose in call array: {'-a','-b'}

OUT:
    A - MxNx3 uint8 image of the figure.
    bcol - 1x3 uint8 vector of the background color


### Attributes


- nInputs : 4

- nOutputs : 2
