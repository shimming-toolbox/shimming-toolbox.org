# make_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Make NIfTI structure specified by an N-D matrix. Usually, N is 3 for_

3D matrix [x y z], or 4 for 4D matrix with time series [x y z t].
Optional parameters can also be included, such as: voxel_size,
origin, datatype, and description.

Once the NIfTI structure is made, it can be saved into NIfTI file
using "save_nii" command (for more detail, type: help save_nii).

Usage: nii = make_nii(img, [voxel_size], [origin], [datatype], [description])

Where:

img:		Usually, img is a 3D matrix [x y z], or a 4D
matrix with time series [x y z t]. However,
NIfTI allows a maximum of 7D matrix. When the
image is in RGB format, make sure that the size
of 4th dimension is always 3 (i.e. [R G B]). In
that case, make sure that you must specify RGB
datatype, which is either 128 or 511.

voxel_size (optional):	Voxel size in millimeter for each
dimension. Default is [1 1 1].

origin (optional):	The AC origin. Default is [0 0 0].

datatype (optional):	Storage data type:
2 - uint8,  4 - int16,  8 - int32,  16 - float32,
64 - float64,  128 - RGB24,  256 - int8,  511 - RGB96,
512 - uint16,  768 - uint32
Default will use the data type of 'img' matrix
For RGB image, you must specify it to either 128
or 511.

description (optional):	Description of data. Default is ''.

e.g.:
      origin = [33 44 13]; datatype = 64;
      nii = make_nii(img, [], origin, datatype);    % default voxel_size

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : -1

- nOutputs : 1
