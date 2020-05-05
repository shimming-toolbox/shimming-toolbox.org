# createdifferenceoperators

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _CREATEDIFFERENCEOPERATORS_

    Returns sparse ("central difference") matrices Dx, Dy, & Dz that act as partial
    differential operators in row, column, and slice directions respectively.

    Syntax

    [Dx, Dy, Dz] = CREATEDIFFERENCEOPERATORS( gridSize, gridSpacing, order )
    
    Input
    
    gridSize 
        Actual 3D size of the vector the differential operators will 
        ultimately be applied to (i.e. gridSize = [nRows nColumns nSlices] )

    gridSpacing
        distance b/tw lattice points [dx dy dz]

    order 
        == 1
            1st order fwd differences 
            e.g. Dx*b + Dy*b + Dz*b = gradient of b

        == 2 
            2nd order central differences 
            e.g. Dx*b + Dy*b + Dz*b = Laplacian of b
    
     
2014
topfer@ualberta.ca


### Attributes


- nInputs : 3

- nOutputs : 3
