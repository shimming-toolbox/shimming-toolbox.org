# nii_tool

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Basic function to create, load and save NIfTI file._

rst = nii_tool(cmd, para);

To list all command, type
nii_tool ?

To get help information for each command, include '?' in cmd, for example:
nii_tool init?
nii_tool('init?')

Here is a list of all command:

nii_tool('default', 'version', 1, 'rgb_dim', 1);
nii = nii_tool('init', img);
nii_tool('save', nii, filename, force_3D);
hdr = nii_tool('hdr', filename);
img = nii_tool('img', filename_or_hdr);
ext = nii_tool('ext', filename_or_hdr);
nii = nii_tool('load', filename_or_hdr);
nii = nii_tool('cat3D', filenames);
nii_tool('RGBStyle', 'afni');

Detail for each command is described below.

oldVal = nii_tool('default', 'version', 1, 'rgb_dim', 1);
oldVal = nii_tool('default', struct('version', 1, 'rgb_dim', 1));

- Set/query default NIfTI version and/or rgb_dim. To check the setting, run
nii_tool('default') without other input. The input for 'default' command can
be either a struct with fields of 'version' and/or 'rgb_dim', or
parameter/value pairs. See nii_tool('RGBstyle') for meaning of rgb_dim.

Note that the setting will be saved for future use. If one wants to change the
settting temporarily, it is better to return the oldVal, and to restore it
after done:

oldVal = nii_tool('default', 'version', 2); % set version 2 as default
% 'init' and 'save' NIfTI using above version
nii_tool('default', oldVal); % restore default setting

The default version setting affects 'init' command only. If you 'load' a NIfTI
file, modify it, and then 'save' it, the version will be the same as the
original file, unless it is changed explicitly (see help for 'save' command).
All 'load' command ('load', 'hdr', 'ext', 'img') will read any version
correctly, regardless of version setting.


nii = nii_tool('init', img, RGB_dim);

- Initialize nii struct based on img, normally 3D or 4D array. Most fields in
the returned nii.hdr contain default values, and need to be updated based on
dicom or other information. Important ones include pixdim and s/qform_code and
related parameters.

The NIfTI datatype will depend on data type of img. Most Matlab data types are
supported, including 8/16/32/64 bit signed and unsigned integers, single and
double floating numbers. Single/double complex and logical array are also
supported.

nii_tool returns img with the same data type as it is stored, while numeric
values in hdr are in double. This also applies to the struct returned by any
nii_tool loading sub-functions.

The optional third input is needed only if img contains RGB/RGBA data. It
specifies which dimension in img is for RGB or RGBA. In other words, if a
non-empty third input is provided, img will be interpreted as RGB or RGBA
data.

Another way to signify RGB/RGBA data is to permute color dim to 8th-dim of img
(RGB_dim of 8 can be omitted then). Since NIfTI img can have up to 7 dim,
nii_tool chooses to store RGB/RGBA in 8th dim. Although this looks lengthy
(4th to 7th dim are often all ones), nii_tool can deal with up to 7 dim
without causing any confusion. This is why the returned nii.img will always
store RGB in 8th dim.


hdr = nii_tool('hdr', filename);

- Return hdr struct of the provided NIfTI file.


img = nii_tool('img', filename_or_hdr);

- Return image data in a NIfTI file. The second input can be NIfTI file name,
or hdr struct returned by nii_tool('hdr', filename).


ext = nii_tool('ext', filename_or_hdr);

- Return NIfTI extension in a NIfTI file. The second input can be NIfTI file
name, or hdr struct returned by nii_tool('hdr', filename). The returned ext
will have field 'edata_decoded' if 'ecode' is of known type, such as dicom
(2), text (4 or 6) or Matlab (40).

Here is an example to add data in myFile.mat as extension to nii struct, which
can be from 'init' or 'load':

fid = fopen('myFile.mat'); % open the MAT file
myEdata = fread(fid, inf, '*uint8'); % load all bytes as byte column
fclose(fid);
len = int32(numel(myEdata)); % number of bytes in int32
myEdata = [typecast(len, 'uint8')'; myEdata]; % include len in myEdata
nii.ext.ecode = 40; % 40 for Matlab extension
nii.ext.edata = myEdata; % myEdata must be uint8 array

nii_tool will take care of rest when you 'save' nii to a file.

In case a NIfTI ext causes problem (for example, some FSL builds have problem
in reading NIfTI img with ecode>30), one can remove the ext easily:

nii = nii_tool('load', 'file_with_ext.nii'); % load the file with ext
nii.ext = []; % or nii = rmfield(nii, 'ext'); % remove ext
nii_tool('save', nii, 'file_without_ext.nii'); % save it


nii = nii_tool('load', filename_or_hdr);

- Load NIfTI file into nii struct. The returned struct includes NIfTI 'hdr'
and 'img', as well as 'ext' if the file contains NIfTI extension.


nii_tool('save', nii, filename, force_3D);

- Save struct nii into filename. The format of the file is determined by the
file extension, such as .img, .nii, .img.gz, .nii.gz etc. If filename is not
provided, nii.hdr.file_name must contain a file name. Note that 'save' command
always overwrites file in case of name conflict.

If filename has no extension, '.nii' will be used as default.

If the 4th input, force_3D, is true (default false), the output file will be
3D only, which means multiple volume data will be split into multiple files.
This is the format SPM likes. You can use this command to convert 4D into 3D
by 'load' a 4D file, then 'save' it as 3D files. The 3D file names will have
5-digit like '_00001' appended to indicate volume index.

The NIfTI version can be set by nii_tool('default'). One can override the
default version by specifying it in nii.hdr.version. To convert between
versions, load a NIfTI file, specify new version, and save it. For example:

nii = nii_tool('load', 'file_nifti1.nii'); % load version 1 file
nii.hdr.version = 2; % force to NIfTI-2
nii_tool('save', nii, 'file_nifti2.nii'); % save as version 2 file

Following example shows how to change data type of a nii file:
nii = nii_tool('load', 'file_int16.nii'); % load int16 type file
nii.img = single(nii.img); % change data type to single/float32
nii_tool('save', nii, 'file_float.nii'); % nii_tool will take care of hdr


nii = nii_tool('cat3D', files);

- Concatenate SPM 3D files into a 4D dataset. The input 'files' can be cellstr
with file names, or char with wildcards (* or ?). If it is cellstr, the volume
order in the 4D data corresponds to those files. If wildcards are used, the
volume order is based on alphabetical order of file names.

Note that the files to be concatenated must have the same datatype, dim, voxel
size, scaling slope and intercept, transformation matrix, etc. This is true if
files are for the same series.

Following example shows how to convert a series of 3D files into a 4D file:

nii = nii_tool('cat3D', './data/fSubj2-0003*.nii'); % load files for series 3
nii_tool('save', nii, './data/fSubj2-0003_4D.nii'); % save as a 4D file


oldStyle = nii_tool('RGBStyle', 'afni');

- Set/query the method to save/load RGB or RGBA NIfTI file. The default method
can be set by nii_tool('default', [version rgb_dim]), where rgb_dim can be 1,
3 or 4, as explained below.

The default style is 'afni' style (or 1), which is defined by NIfTI standard,
but is not well supported by fsl or mricron.

If the second input is set to 'mricron' (or 3), nii_tool will save/load file
using the old RGB fashion (dim 3 for RGB). This works for mricron at least
till version 4 August 2014.

If the second input is set to 'fsl' (or 4), nii_tool will save/load RGB or
RGBA layer into 4th dimension (and the file is not encoded as RGB data, but as
normal file). This violates the NIfTI rule, but it seems it is the only way,
for now (till fsl version 5.0.8), to work for fslview.

If no new style (second input) is provided, it means to query the current
style (one of 'afni', 'mricron' and 'fsl').

Following shows how to convert between mricron style and fsl style:

nii_tool('RGBStyle', 'mricron'); % later load/save uses mricron style
nii = nii_tool('load', 'mricronStyle.nii'); % load dim3-RGB file
nii_tool('RGBStyle', 'fsl'); % switch to fsl style
nii_tool('save', nii, 'fslRGB.nii'); % fsl can read it as RGB

Note that, if one wants to convert fsl style (non-RGB file by NIfTI standard)
to other styles, an extra step is needed to change the RGB dim from 4th to 8th
dim before 'save':

nii = nii_tool('load', 'fslStyleFile.nii'); % no need to set 'RGBStyle'
nii.img = permute(nii.img, [1:3 5:8 4]); % force it to be RGB data
nii_tool('RGBStyle', 'mricron'); % switch to RGB mricron style
nii_tool('save', nii, 'mricronRGB.nii'); % now mricron can read it as RGB

Also note that the setting by nii_tool('RGBStyle') is effective only for
current Matlab session. If one clears all, or starts a new Matlab session, the
default style by nii_tool('default') will take effect.


### Attributes


- nInputs : -2

- nOutputs : -1
