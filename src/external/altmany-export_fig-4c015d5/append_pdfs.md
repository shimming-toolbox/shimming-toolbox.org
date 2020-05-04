# append_pdfs

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Appends/concatenates multiple PDF files_

Example:
    append_pdfs(output, input1, input2, ...)
    append_pdfs(output, input_list{:})
    append_pdfs test.pdf temp1.pdf temp2.pdf

This function appends multiple PDF files to an existing PDF file, or
concatenates them into a PDF file if the output file doesn't yet exist.

This function requires that you have ghostscript installed on your
system. Ghostscript can be downloaded from: http://www.ghostscript.com

IN:
     output - string of output file name (including the extension, .pdf).
              If it exists it is appended to; if not, it is created.
     input1 - string of an input file name (including the extension, .pdf).
              All input files are appended in order.
     input_list - cell array list of input file name strings. All input
                  files are appended in order.


### Attributes


- nInputs : -1

- nOutputs : 0
