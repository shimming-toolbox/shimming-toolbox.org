# save_untouch_slice

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Save back to the back to the original image a portion of slices that_

were loaded by "load_untouch_nii". You can process those slices matrix
in any way, as long as their dimension is not changed.

Usage: save_untouch_slice(slice, filename, ...
slice_idx, [img_idx], [dim5_idx], [dim6_idx], [dim7_idx])

Example:
nii = load_nii('avg152T1_LR_nifti.nii');
save_nii(nii, 'test.nii');
view_nii(nii);
nii = load_untouch_nii('test.nii','','','','','',[40 51:53]);
nii.img = ones(91,109,4)*122;
save_untouch_slice(nii.img, 'test.nii', [40 51:52]);
nii = load_nii('test.nii');
view_nii(nii);

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 7

- nOutputs : 0
