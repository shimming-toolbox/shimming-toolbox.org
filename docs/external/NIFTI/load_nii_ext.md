# load_nii_ext

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Load NIFTI header extension after its header is loaded using load_nii_hdr._

Usage: ext = load_nii_ext(filename)

filename - NIFTI file name.

Returned values:

ext - Structure of NIFTI header extension, which includes num_ext,
        and all the extended header sections in the header extension.
        Each extended header section will have its esize, ecode, and
        edata, where edata can be plain text, xml, or any raw data
        that was saved in the extended header section.

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 1

- nOutputs : 1
