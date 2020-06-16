# collapse_nii_scan

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Collapse multiple single-scan NIFTI files into a multiple-scan NIFTI file_

Usage: collapse_nii_scan(scan_file_pattern, [collapsed_fileprefix], [scan_file_folder])

Here, scan_file_pattern should look like: 'myscan_0*.img'
If collapsed_fileprefix is omit, 'multi_scan' will be used
If scan_file_folder is omit, current file folder will be used

The order of volumes in the collapsed file will be the order of
corresponding filenames for those selected scan files.

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 3

- nOutputs : 0
