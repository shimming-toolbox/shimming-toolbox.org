# eps2pdf

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Convert an eps file to pdf format using ghostscript_

Examples:
    eps2pdf source dest
    eps2pdf(source, dest, crop)
    eps2pdf(source, dest, crop, append)
    eps2pdf(source, dest, crop, append, gray)
    eps2pdf(source, dest, crop, append, gray, quality)
    eps2pdf(source, dest, crop, append, gray, quality, gs_options)

This function converts an eps file to pdf format. The output can be
optionally cropped and also converted to grayscale. If the output pdf
file already exists then the eps file can optionally be appended as a new
page on the end of the eps file. The level of bitmap compression can also
optionally be set.

This function requires that you have ghostscript installed on your
system. Ghostscript can be downloaded from: http://www.ghostscript.com

Inputs:
    source  - filename of the source eps file to convert. The filename is
              assumed to already have the extension ".eps".
    dest    - filename of the destination pdf file. The filename is assumed
              to already have the extension ".pdf".
    crop    - boolean indicating whether to crop the borders off the pdf.
              Default: true.
    append  - boolean indicating whether the eps should be appended to the
              end of the pdf as a new page (if the pdf exists already).
              Default: false.
    gray    - boolean indicating whether the output pdf should be grayscale
              or not. Default: false.
    quality - scalar indicating the level of image bitmap quality to
              output. A larger value gives a higher quality. quality > 100
              gives lossless output. Default: ghostscript prepress default.
    gs_options - optional ghostscript options (e.g.: '-dNoOutputFonts'). If
                 multiple options are needed, enclose in call array: {'-a','-b'}


### Attributes


- nInputs : 7

- nOutputs : 0
