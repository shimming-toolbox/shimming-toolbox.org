# reslice_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _The basic application of the 'reslice_nii.m' program is to perform_

any 3D affine transform defined by a NIfTI format image.

In addition, the 'reslice_nii.m' program can also be applied to
generate an isotropic image from either a NIfTI format image or
an ANALYZE format image.

The resliced NIfTI file will always be in RAS orientation.

This program only supports real integer or floating-point data type.
For other data type, the program will exit with an error message
"Transform of this NIFTI data is not supported by the program".

Usage: reslice_nii(old_fn, new_fn, [voxel_size], [verbose], [bg], ...
[method], [img_idx], [preferredForm]);

old_fn  -	filename for original NIfTI file

new_fn  -	filename for resliced NIfTI file

voxel_size (optional)  - size of a voxel in millimeter along x y z
direction for resliced NIfTI file. 'voxel_size' will use
the rounded minimum voxel_size in original NIfTI header,
if it is default or empty.

verbose (optional) - 1, 0
1:  show transforming progress in percentage
2:  progress will not be displayed
'verbose' is 1 if it is default or empty.

bg (optional)  -	background voxel intensity in any extra corner that
is caused by 3D interpolation. 0 in most cases. 'bg'
will be the average of two corner voxel intensities
in original image volume, if it is default or empty.

method (optional)  -	1, 2, or 3
1:  for Trilinear interpolation
2:  for Nearest Neighbor interpolation
3:  for Fischer's Bresenham interpolation
'method' is 1 if it is default or empty.

img_idx (optional)  -  a numerical array of image volume indices. Only
the specified volumes will be loaded. All available image
volumes will be loaded, if it is default or empty.

The number of images scans can be obtained from get_nii_frame.m,
or simply: hdr.dime.dim(5).

preferredForm (optional)  -  selects which transformation from voxels
to RAS coordinates; values are s,q,S,Q.  Lower case s,q indicate
"prefer sform or qform, but use others if preferred not present".
Upper case indicate the program is forced to use the specificied
tranform or fail loading.  'preferredForm' will be 's', if it is
default or empty.	- Jeff Gunter

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 8

- nOutputs : 0
