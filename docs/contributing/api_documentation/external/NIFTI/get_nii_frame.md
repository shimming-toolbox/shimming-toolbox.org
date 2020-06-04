# get_nii_frame

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Return time frame of a NIFTI dataset. Support both *.nii and_

*.hdr/*.img file extension. If file extension is not provided,
*.hdr/*.img will be used as default.

It is a lightweighted "load_nii_hdr", and is equivalent to
hdr.dime.dim(5)

Usage: [ total_scan ] = get_nii_frame(filename)

filename - NIFTI file name.

Returned values:

total_scan - total number of image scans for the time frame

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 1

- nOutputs : 1
