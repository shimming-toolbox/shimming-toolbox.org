# dicm_dict

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Return dicom dictionary for specified vendor._

dict = dicm_hdr(vendor, dicmFields);

The vendor is used to assign those vendor-specific private tags for SIEMENS,
GE and Philips. Other vendors can be added easily into the file.

If only partial dictionary is needed, the struct fields can be used as
the 2nd input.

See also DICM_HDR, DICM2NII, DICM_IMG


### Attributes


- nInputs : 2

- nOutputs : 1
