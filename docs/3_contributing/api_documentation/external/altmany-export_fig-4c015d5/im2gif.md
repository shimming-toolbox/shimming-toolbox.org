# im2gif

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Convert a multiframe image to an animated GIF file_

Examples:
    im2gif infile
    im2gif infile outfile
    im2gif(A, outfile)
    im2gif(..., '-nocrop')
    im2gif(..., '-nodither')
    im2gif(..., '-ncolors', n)
    im2gif(..., '-loops', n)
    im2gif(..., '-delay', n) 
    
This function converts a multiframe image to an animated GIF.

To create an animation from a series of figures, export to a multiframe
TIFF file using export_fig, then convert to a GIF, as follows:

     for a = 2 .^ (3:6)
        peaks(a);
        export_fig test.tif -nocrop -append
     end
     im2gif('test.tif', '-delay', 0.5);

IN:
    infile - string containing the name of the input image.
    outfile - string containing the name of the output image (must have the
              .gif extension). Default: infile, with .gif extension.
    A - HxWxCxN array of input images, stacked along fourth dimension, to
        be converted to gif.
    -nocrop - option indicating that the borders of the output are not to
              be cropped.
    -nodither - option indicating that dithering is not to be used when
                converting the image.
    -ncolors - option pair, the value of which indicates the maximum number
               of colors the GIF can have. This can also be a quantization
               tolerance, between 0 and 1. Default/maximum: 256.
    -loops - option pair, the value of which gives the number of times the
             animation is to be looped. Default: 65535.
    -delay - option pair, the value of which gives the time, in seconds,
             between frames. Default: 1/15.


### Attributes


- nInputs : -2

- nOutputs : 0
