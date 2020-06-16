# make_ana

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Make ANALYZE 7.5 data structure specified by a 3D or 4D matrix._

Optional parameters can also be included, such as: voxel_size,
origin, datatype, and description.

Once the ANALYZE structure is made, it can be saved into ANALYZE 7.5
format data file using "save_untouch_nii" command (for more detail,
type: help save_untouch_nii).

Usage: ana = make_ana(img, [voxel_size], [origin], [datatype], [description])

Where:

img:		a 3D matrix [x y z], or a 4D matrix with time
series [x y z t]. When image is in RGB format,
make sure that the size of 4th dimension is
always 3 (i.e. [R G B]). In that case, make
sure that you must specify RGB datatype to 128.

voxel_size (optional):	Voxel size in millimeter for each
dimension. Default is [1 1 1].

origin (optional):	The AC origin. Default is [0 0 0].

datatype (optional):	Storage data type:
2 - uint8,  4 - int16,  8 - int32,  16 - float32,
64 - float64,  128 - RGB24
Default will use the data type of 'img' matrix
For RGB image, you must specify it to 128.

description (optional):	Description of data. Default is ''.

e.g.:
      origin = [33 44 13]; datatype = 64;
      ana = make_ana(img, [], origin, datatype);    % default voxel_size

ANALYZE 7.5 format: http://www.rotman-baycrest.on.ca/~jimmy/ANALYZE75.pdf

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : -1

- nOutputs : 1
