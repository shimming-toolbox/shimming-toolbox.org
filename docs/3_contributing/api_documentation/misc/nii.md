# nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _NII_

    NII


    Syntax

    NII(A)
    NII(A,Options)
    .......................

    Description
    
    NII calls the make_nii() and save_nii() functions of the NifTI toolbox.
    However the toolbox seems to reverse read/phase-encode (column/row) order
    compared with that of the original image (DICOM). NII then first swaps 
    the rows & columns such that there is no apparent rotation after writing to
    file with save_nii().

    .......................
    
    Input 
    
    A 
        data array being saved as nifti

    Options
        object with possible fields:
            .voxelSize
                (default: [1 1 1])
       
            .filename
                (without or without .nii extension)
                (default: './tmp.nii')

TODO DOCUMENTATION


### Attributes


- nInputs : 2

- nOutputs : 1
