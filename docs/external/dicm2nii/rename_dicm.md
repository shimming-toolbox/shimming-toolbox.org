# rename_dicm

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Rename dicom files so the names are human readable._

rename_dicm(files, outputNameFormat)

The first input is the dicom file(s) or a folder containing dicom files.
The second input is the format for the result file names. Support format
include:

1: Protocol_#####.dcm, such as run1_00001.dcm. If there is MoCo series,
     or users did not change run names, there will be name conflict.
    
2: Subj-Ser#-Acq#-Inst#.dcm, such as 2334ZL-0004-0001-00001.dcm. This is
     the BrainVoyager format. It won't have any name confict, but it is
     long and less descriptive. Note that BrainVoyager itself has problem
     to distinguish the two series of images for Siemens fieldmap, while
     this code can avoid this problem.

3: Protocol_Se#_Inst#, such as run1_004_00001.dcm. This gives short names,
     while it is descriptive and there is no name conflict most of time.

4: Subj_Protocol_In#, such as 2334ZL_run1_00001.dcm. This is useful if
     files for different subjects are in the same folder.

5: Protocol_Ser#-Acq#-Inst#, such as run1_003_001_00001.dcm. This ensures
     no name conflict, and is the default.

Whenever there is name confict, you will see red warning and the latter
files won't be renamed.

If the first input is not provided or empty, you will be asked to pick up
a folder.

See also DICM_HDR SORT_DICM


### Attributes


- nInputs : 2

- nOutputs : 0
