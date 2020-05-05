# dicm2nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Convert dicom and more into nii or img/hdr files._

DICM2NII(dcmSource, niiFolder, outFormat, MoCoOption)

The input arguments are all optional:
1. source file or folder. It can be a zip or tgz file, a folder containing
      dicom files, or other convertible files. It can also contain wildcards
      like 'run1_*' for all files start with 'run1_'.
2. folder to save result files.
3. output file format:
       0 or 'nii'           for single nii uncompressed.
       1 or 'nii.gz'        for single nii compressed (default).
       2 or 'hdr'           for hdr/img pair uncompressed.
       3 or 'hdr.gz'        for hdr/img pair compressed.
       4 or '3D.nii'        for 3D nii uncompressed (SPM12).
       5 or '3D.nii.gz'     for 3D nii compressed.
       6 or '3D.hdr'        for 3D hdr/img pair uncompressed (SPM8).
       7 or '3D.hdr.gz'     for 3D hdr/img pair compressed.
4. MoCo series options:
       0 create files for both original and MoCo series.
       1 ignore MoCo series if both present (default).
       2 ignore original series if both present.
      Note that if only one of the two series is present, it will be converted
      always. In the future, this option may be removed, and all files will be
      converted. 

The optional output is converted PatientName(s).

Typical examples:
dicm2nii; % bring up user interface if there is no input argument
dicm2nii('D:/myProj/zip/subj1.zip', 'D:/myProj/subj1/data'); % zip file
dicm2nii('D:/myProj/subj1/dicom/', 'D:/myProj/subj1/data'); % folder

Less useful examples:
dicm2nii('D:/myProj/dicom/', 'D:/myProj/subj2/data', 'nii'); % no gz compress
dicm2nii('D:/myProj/dicom/run2*', 'D:/myProj/subj/data'); % convert run2 only
dicm2nii('D:/dicom/', 'D:/data', '3D.nii'); % SPM style files

If there is no input, or any of the first two input is empty, the graphic user
interface will appear.

If the first input is a zip/tgz file, such as those downloaded from dicom
server, DICM2NII will extract files into a temp folder, create NIfTI files
into the data folder, and then delete the temp folder. For this reason, it is
better to keep the compressed file as backup.

If a folder is the data source, DICM2NII will convert all files in the folder
and its subfolders (there is no need to sort files for different series).

Please note that, if a file in the middle of a series is missing, the series
will normally be skipped without converting, and a warning message in red text
will be shown in Command Windows, and the message will also be saved into a
text file under the data folder.

For MoCo series, motion parameters, RBMoCoTrans and RBMoCoRot, are also saved.

A Matlab data file, dcmHeaders.mat, is always saved into the data folder. This
file contains dicom header from the first file for created series and some
information from last file in field LastFile. Some extra information may also
be saved into this file.

Slice timing information, if available, is stored in nii header, such as
slice_code and slice_duration. But the simple way may be to use the field
SliceTiming in dcmHeaders.mat. That timing is actually those numbers for FSL
when using custom slice timing. This is the universal method to specify any
kind of slice order, and for now, is the only way which works for multiband.
Slice order is one of the most confusing parameters, and it is recommended to
use this method to avoid mistake. Following shows how to convert this timing
into slice timing in ms and slice order for SPM:
    
load('dcmHeaders.mat'); % or drag and drop the MAT file into Matlab
s = h.myFuncSeries; % field name is the same as nii file name
spm_ms = (0.5 - s.SliceTiming) * s.RepetitionTime;
[~, spm_order] = sort(-s.SliceTiming);

Some information, such as TE, phase encoding direction and effective dwell
time are stored in descrip of nii header. These are useful for fieldmap B0
unwarp correction. Acquisition start time and date are also stored, and this
may be useful if one wants to align the functional data to some physiological
recording, like pulse, respiration or ECG.

If there is DTI series, bval and bvec files will be generated for FSL etc. For
DTI series, B_value and DiffusionGradientDirection for all directions are
saved into the dcmHeaders.mat file.

Starting from 20150514, the converter stores some useful information in NIfTI
text extension (ecode=6). nii_tool can decode these information easily:
ext = nii_tool('ext', 'myNiftiFile.nii'); % read NIfTI extension
ext.edata_decoded contains all above mentioned information, and more.

Please note that some information, such as the slice order information, phase
encoding direction and DTI bvec are in image reference, rather than NIfTI
coordinate system. This is because most analysis packages require information
in image space. For this reason, in case the image in a NIfTI file is flipped
or re-oriented, these information may not be correct anymore.

The output file names adopt SeriesDescription or ProtocolName of each series
used on scanner console. If both original and MoCo series are requested,
'_MoCo' will be appended for MoCo series. For phase image, such as those from
field map, '_phase' will be appended to the name. If multiple subjects data
are mixed (strongly discouraged), subject name will be in file name. In case
of name conflict, SeriesNumber, such as '_s005', will be appended to make file
names unique. It is suggested to use short and descriptive SeriesDescription
on the scanner console, and use names containing only letters, numbers and
underscores.

For SPM 3D files, the file names will have volume index in format of '_00001'
appended to above name.

Please report any bug to xiangrui.li@gmail.com or at
http://www.mathworks.com/matlabcentral/fileexchange/42997

    Folders named dicm2nii

       external/dicm2nii


### Attributes


- nInputs : -3

- nOutputs : -1
