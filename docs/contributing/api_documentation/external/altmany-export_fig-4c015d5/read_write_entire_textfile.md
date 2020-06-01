# read_write_entire_textfile

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Read or write a whole text file to/from memory_

Read or write an entire text file to/from memory, without leaving the
file open if an error occurs.

Reading:
    fstrm = read_write_entire_textfile(fname)
Writing:
    read_write_entire_textfile(fname, fstrm)

IN:
    fname - Pathname of text file to be read in.
    fstrm - String to be written to the file, including carriage returns.

OUT:
    fstrm - String read from the file. If an fstrm input is given the
            output is the same as that input.


### Attributes


- nInputs : 2

- nOutputs : 1
