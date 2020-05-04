# affine

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Using 2D or 3D affine matrix to rotate, translate, scale, reflect and_

shear a 2D image or 3D volume. 2D image is represented by a 2D matrix,
3D volume is represented by a 3D matrix, and data type can be real
integer or floating-point.

You may notice that MATLAB has a function called 'imtransform.m' for
2D spatial transformation. However, keep in mind that 'imtransform.m'
assumes y for the 1st dimension, and x for the 2nd dimension. They are
equivalent otherwise.

In addition, if you adjust the 'new_elem_size' parameter, this 'affine.m'
is equivalent to 'interp2.m' for 2D image, and equivalent to 'interp3.m'
for 3D volume.

Usage: [new_img new_M] = ...
affine(old_img, old_M, [new_elem_size], [verbose], [bg], [method]);

old_img  -	original 2D image or 3D volume. We assume x for the 1st
dimension, y for the 2nd dimension, and z for the 3rd
dimension.

old_M  -	a 3x3 2D affine matrix for 2D image, or a 4x4 3D affine
matrix for 3D volume. We assume x for the 1st dimension,
y for the 2nd dimension, and z for the 3rd dimension.

new_elem_size (optional)  -  size of voxel along x y z direction for
a transformed 3D volume, or size of pixel along x y for
a transformed 2D image. We assume x for the 1st dimension
y for the 2nd dimension, and z for the 3rd dimension.
'new_elem_size' is 1 if it is default or empty.

You can increase its value to decrease the resampling rate,
and make the 2D image or 3D volume more coarse. It works
just like 'interp3'.

verbose (optional) - 1, 0
1:  show transforming progress in percentage
2:  progress will not be displayed
'verbose' is 1 if it is default or empty.

bg (optional)  -	background voxel intensity in any extra corner that
is caused by the interpolation. 0 in most cases. If it is
default or empty, 'bg' will be the average of two corner
voxel intensities in original data.

method (optional)  -	1, 2, or 3
1:  for Trilinear interpolation
2:  for Nearest Neighbor interpolation
3:  for Fischer's Bresenham interpolation
'method' is 1 if it is default or empty.

new_img  -	transformed 2D image or 3D volume

new_M  -	transformed affine matrix

Example 1 (3D rotation):
load mri.mat;   old_img = double(squeeze(D));
old_M = [0.88 0.5 3 -90; -0.5 0.88 3 -126; 0 0 2 -72; 0 0 0 1];
new_img = affine(old_img, old_M, 2);
[x y z] = meshgrid(1:128,1:128,1:27);
sz = size(new_img);
[x1 y1 z1] = meshgrid(1:sz(2),1:sz(1),1:sz(3));
figure; slice(x, y, z, old_img, 64, 64, 13.5);
shading flat; colormap(map); view(-66, 66);
figure; slice(x1, y1, z1, new_img, sz(1)/2, sz(2)/2, sz(3)/2);
shading flat; colormap(map); view(-66, 66);

Example 2 (2D interpolation):
load mri.mat;   old_img=D(:,:,1,13)';
old_M = [1 0 0; 0 1 0; 0 0 1];
new_img = affine(old_img, old_M, [.2 .4]);
figure; image(old_img); colormap(map);
figure; image(new_img); colormap(map);

This program is inspired by:
SPM5 Software from Wellcome Trust Centre for Neuroimaging
http://www.fil.ion.ucl.ac.uk/spm/software
Fischer, J., A. del Rio (2004). A Fast Method for Applying Rigid
Transformations to Volume Data, WSCG2004 Conference.
http://wscg.zcu.cz/wscg2004/Papers_2004_Short/M19.pdf

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 6

- nOutputs : 2
