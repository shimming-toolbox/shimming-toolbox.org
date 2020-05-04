# view_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _VIEW_NII: Create or update a 3-View (Front, Top, Side) of the_

brain data that is specified by nii structure

Usage:  	status = view_nii([h], nii, [option])	or
status = view_nii(h, [option])

Where, h is the figure on which the 3-View will be plotted;
nii is the brain data in NIFTI format;
option is a struct that configures the view plotted, can be:

option.command = 'init'
option.command = 'update'
option.command = 'clearnii'
option.command = 'updatenii'
option.command = 'updateimg' (nii is nii.img here)

option.usecolorbar = 0 | [1]
option.usepanel = 0 | [1]
option.usecrosshair = 0 | [1]
option.usestretch = 0 | [1]
option.useimagesc = 0 | [1]
option.useinterp = [0] | 1

option.setarea = [x y w h] | [0.05 0.05 0.9 0.9]
option.setunit = ['vox'] | 'mm'
option.setviewpoint = [x y z] | [origin]
option.setscanid = [t] | [1]
option.setcrosshaircolor = [r g b] | [1 0 0]
option.setcolorindex = From 1 to 9 (default is 2 or 3)
option.setcolormap = (Mx3 matrix, 0 <= val <= 1)
option.setcolorlevel = No more than 256 (default 256)
option.sethighcolor = []
option.setcbarminmax = []
option.setvalue = []
option.glblocminmax = []
option.setbuttondown = ''
option.setcomplex = [0] | 1 | 2

Options description in detail:
==============================

1. command: A char string that can control program.

init: If option.command='init', the program will display
a 3-View plot on the figure specified by figure h
or on a new figure. If there is already a 3-View
plot on the figure, please use option.command =
'updatenii' (see detail below); otherwise, the
new 3-View plot will superimpose on the old one.
If there is no option provided, the program will
assume that this is an initial plot. If the figure
handle is omitted, the program knows that it is
an initial plot.

update: If there is no command specified, and a figure
handle of the existing 3-View plot is provided,
the program will choose option.command='update'
to update the 3-View plot with some new option
items.

clearnii: Clear 3-View plot on specific figure

updatenii: If a new nii is going to be loaded on a fig
that has already 3-View plot on it, use this
command to clear existing 3-View plot, and then
display with new nii. So, the new nii will not
superimpose on the existing one. All options
for 'init' can be used for 'updatenii'.

updateimg: If a new 3D matrix with the same dimension
is going to be loaded, option.command='updateimg'
can be used as a light-weighted 'updatenii, since
it only updates the 3 slices with new values.
inputing argument nii should be a 3D matrix
(nii.img) instead of nii struct. No other option
should be used together with 'updateimg' to keep
this command as simple as possible.


2. usecolorbar: If specified and usecolorbar=0, the program
will not include the colorbar in plot area; otherwise,
a colorbar will be included in plot area.

3. usepanel: If specified and usepanel=0, the control panel
at lower right cornor will be invisible; otherwise,
it will be visible.

4. usecrosshair: If specified and usecrosshair=0, the crosshair
will be invisible; otherwise, it will be visible.

5. usestretch: If specified and usestretch=0, the 3 slices will
not be stretched, and will be displayed according to
the actual voxel size; otherwise, the 3 slices will be
stretched to the edge.

6. useimagesc: If specified and useimagesc=0, images data will
be used directly to match the colormap (like 'image'
command); otherwise, image data will be scaled to full
colormap with 'imagesc' command in Matlab.

7. useinterp: If specified and useinterp=1, the image will be
displayed using interpolation. Otherwise, it will be
displayed like mosaic, and each tile stands for a
pixel. This option does not apply to 'setvalue' option
is set.


8. setarea: 3-View plot will be displayed on this specific
region. If it is not specified, program will set the
plot area to [0.05 0.05 0.9 0.9].

9. setunit: It can be specified to setunit='voxel' or 'mm'
and the view will change the axes unit of [X Y Z]
accordingly.

10. setviewpoint: If specified, [X Y Z] values will be used
to set the viewpoint of 3-View plot.

11. setscanid: If specified, [t] value will be used to display
the specified image scan in NIFTI data.

12. setcrosshaircolor: If specified, [r g b] value will be used
for Crosshair Color. Otherwise, red will be the default.

13. setcolorindex: If specified, the 3-View will choose the
following colormap:  2 - Bipolar; 3 - Gray; 4 - Jet;
5 - Cool; 6 - Bone; 7 - Hot; 8 - Copper; 9 - Pink;
If not specified, it will choose 3 - Gray if all data
values are not less than 0; otherwise, it will choose
2 - Bipolar if there is value less than 0. (Contrast
control can only apply to 3 - Gray colormap.

14. setcolormap: 3-View plot will use it as a customized colormap.
It is a 3-column matrix with value between 0 and 1. If
using MS-Windows version of Matlab, the number of rows
can not be more than 256, because of Matlab limitation.
When colormap is used, setcolorlevel option will be
disabled automatically.

15. setcolorlevel: If specified (must be no more than 256, and
cannot be used for customized colormap), row number of
colormap will be squeezed down to this level; otherwise,
it will assume that setcolorlevel=256.

16. sethighcolor: If specified, program will squeeze down the
colormap, and allocate sethighcolor (an Mx3 matrix)
to high-end portion of the colormap. The sum of M and
setcolorlevel should be less than 256. If setcolormap
option is used, sethighcolor will be inserted on top
of the setcolormap, and the setcolorlevel option will
be disabled automatically.

17. setcbarminmax: if specified, the [min max] will be used to
set the min and max of the colorbar, which does not
include any data for highcolor.

18. setvalue: If specified, setvalue.val (with the same size as
the source data on solution points) in the source area
setvalue.idx will be superimposed on the current nii
image. So, the size of setvalue.val should be equal to
the size of setvalue.idx. To use this feature, it needs
single or double nii structure for background image.

19. glblocminmax: If specified, pgm will use glblocminmax to
calculate the colormap, instead of minmax of image.

20. setbuttondown: If specified, pgm will evaluate the command
after a click or slide action is invoked to the new
view point.

21. setcomplex: This option will decide how complex data to be
displayed:  0 - Real part of complex data; 1 - Imaginary
part of complex data; 2 - Modulus (magnitude) of complex
data;  If not specified, it will be set to 0 (Real part
of complex data as default option. This option only apply
when option.command is set to 'init or 'updatenii'.


Additional Options for 'update' command:
=======================================

option.enablecursormove = [1] | 0
option.enableviewpoint = 0 | [1]
option.enableorigin = 0 | [1]
option.enableunit = 0 | [1]
option.enablecrosshair = 0 | [1]
option.enablehistogram = 0 | [1]
option.enablecolormap = 0 | [1]
option.enablecontrast = 0 | [1]
option.enablebrightness = 0 | [1]
option.enableslider = 0 | [1]
option.enabledirlabel = 0 | [1]


e.g.:
nii = load_nii('T1');		% T1.img/hdr
view_nii(nii);

or

h = figure('unit','normal','pos', [0.18 0.08 0.64 0.85]);
opt.setarea = [0.05 0.05 0.9 0.9];
view_nii(h, nii, opt);


Part of this file is copied and modified from:
http://www.mathworks.com/matlabcentral/fileexchange/1878-mri-analyze-tools

NIFTI data format can be found on: http://nifti.nimh.nih.gov

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : -1

- nOutputs : 1
