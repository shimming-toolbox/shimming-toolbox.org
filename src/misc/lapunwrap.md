# lapunwrap

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _phase unwrapping using Laplacian operator_

    LAPUNWRAP returns unwrapped phase array object  

    Syntax

    LAPUNWRAP(rawPhase)
    LAPUNWRAP(rawPhase,Options)

    Description

    UnwrappedPhaseObj = LAPUNWRAP(rawPhase,[Options]) returns object with
    identical fields to the input data object.


    The following Option-fields are supported
        voxelSize
            default: [1 1 1] isotropic

Based on Schofield & Zhu "Fast phase unwrapping algorithm for interferometric applications" Optics Letters 2003


### Attributes


- nInputs : 2

- nOutputs : 1
