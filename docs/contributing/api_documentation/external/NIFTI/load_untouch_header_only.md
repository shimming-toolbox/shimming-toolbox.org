# load_untouch_header_only

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Load NIfTI / Analyze header without applying any appropriate affine_

geometric transform or voxel intensity scaling. It is equivalent to
hdr field when using load_untouch_nii to load dataset. Support both
*.nii and *.hdr file extension. If file extension is not provided,
*.hdr will be used as default.

Usage: [header, ext, filetype, machine] = load_untouch_header_only(filename)

filename - NIfTI / Analyze file name.

Returned values:

header - struct with NIfTI / Analyze header fields.

ext - NIfTI extension if it is not empty.

filetype	- 0 for Analyze format (*.hdr/*.img);
1 for NIFTI format in 2 files (*.hdr/*.img);
2 for NIFTI format in 1 file (*.nii).

machine    - a string, see below for details. The default here is 'ieee-le'.

     'native'      or 'n' - local machine format - the default
     'ieee-le'     or 'l' - IEEE floating point with little-endian
                            byte ordering
     'ieee-be'     or 'b' - IEEE floating point with big-endian
                            byte ordering
     'vaxd'        or 'd' - VAX D floating point and VAX ordering
     'vaxg'        or 'g' - VAX G floating point and VAX ordering
     'cray'        or 'c' - Cray floating point with big-endian
                            byte ordering
     'ieee-le.l64' or 'a' - IEEE floating point with little-endian
                            byte ordering and 64 bit long data type
     'ieee-be.l64' or 's' - IEEE floating point with big-endian byte
                            ordering and 64 bit long data type.

Part of this file is copied and modified from:
http://www.mathworks.com/matlabcentral/fileexchange/1878-mri-analyze-tools

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 1

- nOutputs : 4
