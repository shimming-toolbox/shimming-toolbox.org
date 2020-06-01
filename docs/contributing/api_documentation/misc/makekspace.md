# makekspace

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _produces 3D array of k-space coordinates_

    MAKEKSPACE returns K(kx,ky,kz)  

    Syntax

    MAKEKSPACE(gridDimensionVector)
    MAKEKSPACE(gridDimensionVector,Options)

    Description

    K = MAKEKSPACE(gridDimensionVector,Options) returns k-space coordinate
    array

    The following Option-fields are supported
        .voxelSize 
            k-space step size becomes 
            dK = 2pi*(Options.gridDimensionVector .* voxelSize)^-1 
            default = [1 1 1]


### Attributes


- nInputs : 2

- nOutputs : 1
