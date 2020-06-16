# unxform_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Undo the flipping and rotations performed by xform_nii; spit back only_

the raw img data block. Initial cut will only deal with 3D volumes
strongly assume we have called xform_nii to write down the steps used
in xform_nii.

Usage:  a = load_nii('original_name');
           manipulate a.img to make array b;

           if you use unxform_nii to un-tranform the image (img) data
           block, then nii.original.hdr is the corresponding header.

           nii.original.img = unxform_nii(a, b);
           save_nii(nii.original,'newname');

Where, 'newname' is created with data in the same space as the
          original_name data    

- Jeff Gunter, 26-JUN-06


### Attributes


- nInputs : 2

- nOutputs : 1
