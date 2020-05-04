# bet

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _- brain extraction tool_

    calls on BET of FSL package 
        
    Syntax

    BET(Mag)
    BET(Mag, Options)

    Description
        (see BET man page)

    Mask            = BET(Mag)                   
        returns binary brain mask based on (single-echo) 3D magnitude input 

    Mask, f         = BET(Mag, Options)
        also returns additional fractional intensity threshold 

    Mask, f, skull  = BET(Mag, Options)
        also returns binary mask of skull (might not be useful)

    The following Option-fields are supported

        voxelSize
                default: [1 1 1] (isotropic)

        f 
            "fractional intensity threshold"
                default: 0.5

    2013 topfer@ualberta.ca


### Attributes


- nInputs : 2

- nOutputs : 3
