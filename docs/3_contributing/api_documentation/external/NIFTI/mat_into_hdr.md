# mat_into_hdr

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _The old versions of SPM (any version before SPM5) store_

an affine matrix of the SPM Reoriented image into a matlab file
(.mat extension). The file name of this SPM matlab file is the
same as the SPM Reoriented image file (.img/.hdr extension).

This program will convert the ANALYZE 7.5 SPM Reoriented image
file into NIfTI format, and integrate the affine matrix in the
SPM matlab file into its header file (.hdr extension).

WARNING: Before you run this program, please save the header
file (.hdr extension) into another file name or into another
folder location, because all header files (.hdr extension)
will be overwritten after they are converted into NIfTI
format.

Usage: mat_into_hdr(filename);

filename:	file name(s) with .hdr or .mat file extension, like:
'*.hdr', or '*.mat', or a single .hdr or .mat file.
e.g.	mat_into_hdr('T1.hdr')
mat_into_hdr('*.mat')


### Attributes


- nInputs : 1

- nOutputs : 0
