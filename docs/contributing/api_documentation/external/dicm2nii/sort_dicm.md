# sort_dicm

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Sort dicom files for different subjects into subject folders._

subjects = SORT_DICM(dicmFolder);
The optional input is the top folder containing dicom file and/or subfodlers
which may contain dicom files and/or subfolders.

Optionally, it returns subfolder names for the dicom files.

It is suggested not to mix dicom files for different subjects into a folder.
However if, for any reason, a folder contains dicom files for multiple
subjects, this function will create a subfolder under the dicom folder for
each subject, and move corresponding files into each subject folder. If a
subject has more than one studies, each study will have a subfolder.

See also DICM2NII, DICM_HDR, RENAME_DICM


### Attributes


- nInputs : 1

- nOutputs : -1
