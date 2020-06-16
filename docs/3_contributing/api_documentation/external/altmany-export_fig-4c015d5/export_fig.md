# export_fig

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Exports figures in a publication-quality format_

Examples:
    imageData = export_fig
    [imageData, alpha] = export_fig
    export_fig filename
    export_fig filename -format1 -format2
    export_fig ... -nocrop
    export_fig ... -transparent
    export_fig ... -native
    export_fig ... -m<val>
    export_fig ... -r<val>
    export_fig ... -a<val>
    export_fig ... -q<val>
    export_fig ... -p<val>
    export_fig ... -d<gs_option>
    export_fig ... -depsc
    export_fig ... -<renderer>
    export_fig ... -<colorspace>
    export_fig ... -append
    export_fig ... -bookmark
    export_fig ... -clipboard
    export_fig ... -update
    export_fig ... -nofontswap
    export_fig(..., handle)

This function saves a figure or single axes to one or more vector and/or
bitmap file formats, and/or outputs a rasterized version to the workspace,
with the following properties:
    - Figure/axes reproduced as it appears on screen
    - Cropped borders (optional)
    - Embedded fonts (vector formats)
    - Improved line and grid line styles
    - Anti-aliased graphics (bitmap formats)
    - Render images at native resolution (optional for bitmap formats)
    - Transparent background supported (pdf, eps, png)
    - Semi-transparent patch objects supported (png only)
    - RGB, CMYK or grayscale output (CMYK only with pdf, eps, tiff)
    - Variable image compression, including lossless (pdf, eps, jpg)
    - Optionally append to file (pdf, tiff)
    - Vector formats: pdf, eps
    - Bitmap formats: png, tiff, jpg, bmp, export to workspace

This function is especially suited to exporting figures for use in
publications and presentations, because of the high quality and
portability of media produced.

Note that the background color and figure dimensions are reproduced
(the latter approximately, and ignoring cropping & magnification) in the
output file. For transparent background (and semi-transparent patch
objects), use the -transparent option or set the figure 'Color' property
to 'none'. To make axes transparent set the axes 'Color' property to
'none'. PDF, EPS and PNG are the only formats that support a transparent
background, while only PNG format supports transparency of patch objects.

The choice of renderer (opengl, zbuffer or painters) has a large impact
on the quality of output. The default value (opengl for bitmaps, painters
for vector formats) generally gives good results, but if you aren't
satisfied then try another renderer.  Notes: 1) For vector formats (EPS,
PDF), only painters generates vector graphics. 2) For bitmaps, only
opengl can render transparent patch objects correctly. 3) For bitmaps,
only painters will correctly scale line dash and dot lengths when
magnifying or anti-aliasing. 4) Fonts may be substitued with Courier when
using painters.

When exporting to vector format (PDF & EPS) and bitmap format using the
painters renderer, this function requires that ghostscript is installed
on your system. You can download this from:
    http://www.ghostscript.com
When exporting to eps it additionally requires pdftops, from the Xpdf
suite of functions. You can download this from:
    http://www.foolabs.com/xpdf

Inputs:
    filename - string containing the name (optionally including full or
               relative path) of the file the figure is to be saved as. If
               a path is not specified, the figure is saved in the current
               directory. If no name and no output arguments are specified,
               the default name, 'export_fig_out', is used. If neither a
               file extension nor a format are specified, a ".png" is added
               and the figure saved in that format.
    -format1, -format2, etc. - strings containing the extensions of the
                               file formats the figure is to be saved as.
                               Valid options are: '-pdf', '-eps', '-png',
                               '-tif', '-jpg' and '-bmp'. All combinations
                               of formats are valid.
    -nocrop - option indicating that the borders of the output are not to
              be cropped.
    -transparent - option indicating that the figure background is to be
                   made transparent (png, pdf and eps output only).
    -m<val> - option where val indicates the factor to magnify the
              on-screen figure pixel dimensions by when generating bitmap
              outputs (does not affect vector formats). Default: '-m1'.
    -r<val> - option val indicates the resolution (in pixels per inch) to
              export bitmap and vector outputs at, keeping the dimensions
              of the on-screen figure. Default: '-r864' (for vector output
              only). Note that the -m option overides the -r option for
              bitmap outputs only.
    -native - option indicating that the output resolution (when outputting
              a bitmap format) should be such that the vertical resolution
              of the first suitable image found in the figure is at the
              native resolution of that image. To specify a particular
              image to use, give it the tag 'export_fig_native'. Notes:
              This overrides any value set with the -m and -r options. It
              also assumes that the image is displayed front-to-parallel
              with the screen. The output resolution is approximate and
              should not be relied upon. Anti-aliasing can have adverse
              effects on image quality (disable with the -a1 option).
    -a1, -a2, -a3, -a4 - option indicating the amount of anti-aliasing to
                         use for bitmap outputs. '-a1' means no anti-
                         aliasing; '-a4' is the maximum amount (default).
    -<renderer> - option to force a particular renderer (painters, opengl or
                  zbuffer). Default value: opengl for bitmap formats or
                  figures with patches and/or transparent annotations;
                  painters for vector formats without patches/transparencies.
    -<colorspace> - option indicating which colorspace color figures should
                    be saved in: RGB (default), CMYK or gray. CMYK is only
                    supported in pdf, eps and tiff output.
    -q<val> - option to vary bitmap image quality (in pdf, eps and jpg
              files only).  Larger val, in the range 0-100, gives higher
              quality/lower compression. val > 100 gives lossless
              compression. Default: '-q95' for jpg, ghostscript prepress
              default for pdf & eps. Note: lossless compression can
              sometimes give a smaller file size than the default lossy
              compression, depending on the type of images.
    -p<val> - option to pad a border of width val to exported files, where
              val is either a relative size with respect to cropped image
              size (i.e. p=0.01 adds a 1% border). For EPS & PDF formats,
              val can also be integer in units of 1/72" points (abs(val)>1).
              val can be positive (padding) or negative (extra cropping).
              If used, the -nocrop flag will be ignored, i.e. the image will
              always be cropped and then padded. Default: 0 (i.e. no padding).
    -append - option indicating that if the file (pdfs only) already
              exists, the figure is to be appended as a new page, instead
              of being overwritten (default).
    -bookmark - option to indicate that a bookmark with the name of the
                figure is to be created in the output file (pdf only).
    -clipboard - option to save output as an image on the system clipboard.
                 Note: background transparency is not preserved in clipboard
    -d<gs_option> - option to indicate a ghostscript setting. For example,
                    -dMaxBitmap=0 or -dNoOutputFonts (Ghostscript 9.15+).
    -depsc -  option to use EPS level-3 rather than the default level-2 print
              device. This solves some bugs with Matlab's default -depsc2 device
              such as discolored subplot lines on images (vector formats only).
    -update - option to download and install the latest version of export_fig
    -nofontswap - option to avoid font swapping. Font swapping is automatically
              done in vector formats (only): 11 standard Matlab fonts are
              replaced by the original figure fonts. This option prevents this.
    handle -  The handle of the figure, axes or uipanels (can be an array of
              handles, but the objects must be in the same figure) to be
              saved. Default: gcf.

Outputs:
    imageData - MxNxC uint8 image array of the exported image.
    alpha     - MxN single array of alphamatte values in the range [0,1],
                for the case when the background is transparent.

    Some helpful examples and tips can be found at:
       https://github.com/altmany/export_fig

    See also PRINT, SAVEAS, ScreenCapture (on the Matlab File Exchange)


### Attributes


- nInputs : -1

- nOutputs : 2
