# verify_nii_ext

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Verify NIFTI header extension to make sure that each extension section_

must be an integer multiple of 16 byte long that includes the first 8
bytes of esize and ecode. If the length of extension section is not the
above mentioned case, edata should be padded with all 0.

Usage: [ext, esize_total] = verify_nii_ext(ext)

ext - Structure of NIFTI header extension, which includes num_ext,
        and all the extended header sections in the header extension.
        Each extended header section will have its esize, ecode, and
        edata, where edata can be plain text, xml, or any raw data
        that was saved in the extended header section.

esize_total - Sum of all esize variable in all header sections.

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 1

- nOutputs : 2
