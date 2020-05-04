# dicm_hdr

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Return header of a dicom file in a struct._

[s, err] = dicm_hdr(dicomFileName, dict, iFrames);

The mandatory 1st input is the dicom file name. The optional 2nd input can be
a dicom dict, which may have only part of the full dict. The partial dict can
be returned by dict = dicm_dict(vendor, fieldNames). The use of partial dict
may speed up header read considerably. See rename_dicm for example.

The optional 3rd intput is only needed for multi-frame dicom files. When there
are many frames, it may be very slow to read all items in
PerFrameFunctionalGroupsSequence for all frames. The 3rd input can be used to
specify the frames to read. By default, items for only 1st, 2nd and last
frames are read.

The optional 2nd output contains information in case of error, and will be
empty if there is no error.

DICM_HDR is like dicominfo from Matlab, but is independent of Image Processing
Toolbox. The limitation is it can deal with only little endian data for
popular vendors. The advantage is that it decodes most private and shadow tags
for Siemens, GE and Philips dicom, and runs faster, especially for partial
header and multi-frame dicom.

This can also read Philips PAR file and AFNI HEAD file, and return needed
fields for dicm2nii to convert into nifti.

See also DICM_DICT, DICM2NII, DICM_IMG, RENAME_DICM, SORT_DICM


### Attributes


- nInputs : 3

- nOutputs : 3
