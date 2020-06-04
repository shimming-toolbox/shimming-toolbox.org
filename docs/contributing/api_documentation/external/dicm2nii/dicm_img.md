# dicm_img

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Read image of a dicom file._

img = dicm_img(metaStructOrFilename, xpose);

The mandatory first input is the dicom file name, or the struct returned by
dicm_hdr. The output keeps the data type in dicom file.

The second input is for special purpose. When it is provided and is false, the
returned img won't be transposed. This is likely only useful for dicm2nii.m,
where the Columns and Rows parameters become counter-intuitive.

DICM_IMG is like dicomread from Matlab, but is independent of Image Processing
Toolbox.

Limitation: DICM_IMG reads only little endian format, and can deal with only
JPEG compression.

See also DICM_HDR, DICM_DICT, DICM2NII


### Attributes


- nInputs : 2

- nOutputs : 1
