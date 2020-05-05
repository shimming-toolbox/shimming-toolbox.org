# load_untouch_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Load NIFTI or ANALYZE dataset, but not applying any appropriate affine_

geometric transform or voxel intensity scaling.

Although according to NIFTI website, all those header information are
supposed to be applied to the loaded NIFTI image, there are some
situations that people do want to leave the original NIFTI header and
data untouched. They will probably just use MATLAB to do certain image
processing regardless of image orientation, and to save data back with
the same NIfTI header.

Since this program is only served for those situations, please use it
together with "save_untouch_nii.m", and do not use "save_nii.m" or
"view_nii.m" for the data that is loaded by "load_untouch_nii.m". For
normal situation, you should use "load_nii.m" instead.

Usage: nii = load_untouch_nii(filename, [img_idx], [dim5_idx], [dim6_idx], ...
[dim7_idx], [old_RGB], [slice_idx])

filename  - 	NIFTI or ANALYZE file name.

img_idx (optional)  -  a numerical array of image volume indices.
Only the specified volumes will be loaded. All available image
volumes will be loaded, if it is default or empty.

The number of images scans can be obtained from get_nii_frame.m,
or simply: hdr.dime.dim(5).

dim5_idx (optional)  -  a numerical array of 5th dimension indices.
Only the specified range will be loaded. All available range
will be loaded, if it is default or empty.

dim6_idx (optional)  -  a numerical array of 6th dimension indices.
Only the specified range will be loaded. All available range
will be loaded, if it is default or empty.

dim7_idx (optional)  -  a numerical array of 7th dimension indices.
Only the specified range will be loaded. All available range
will be loaded, if it is default or empty.

old_RGB (optional)  -  a scale number to tell difference of new RGB24
from old RGB24. New RGB24 uses RGB triple sequentially for each
voxel, like [R1 G1 B1 R2 G2 B2 ...]. Analyze 6.0 from AnalyzeDirect
uses old RGB24, in a way like [R1 R2 ... G1 G2 ... B1 B2 ...] for
each slices. If the image that you view is garbled, try to set
old_RGB variable to 1 and try again, because it could be in
old RGB24. It will be set to 0, if it is default or empty.

slice_idx (optional)  -  a numerical array of image slice indices.
Only the specified volumes will be loaded. All available image
slices will be loaded, if it is default or empty.

Returned values:

nii structure:

hdr -		struct with NIFTI header fields.

filetype -	Analyze format .hdr/.img (0);
NIFTI .hdr/.img (1);
NIFTI .nii (2)

fileprefix - 	NIFTI filename without extension.

machine - 	machine string variable.

img - 		3D (or 4D) matrix of NIFTI data.

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 7

- nOutputs : 1
