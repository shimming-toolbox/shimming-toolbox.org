# createellipsoid

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _CREATEELLIPSOID_

    Creates ellipsoidal region (cells == 1) within an otherwise 0 array


    Syntax

    CREATEELLIPSOID(gridDimensions, radii)
    CREATEELLIPSOID(gridDimensions, radii, offset)


    Description

    ellipsoid = CREATEELLIPSOID(gridDimensions, radii) returns an
    array of size gridDimensions with an ellipsoid defined by radii at
    the center

    ellipsoid =CREATEELLIPSOID(gridDimensions, radii, offset) center
    of the ellipsoid is offset


    all inputs may be single scalars or 3 element vectors (a scalar
    will treat every direction the same: scalarValue *[ 1 1 1 ] )
    
    gridDimensions should consist of odd numbers


### Attributes


- nInputs : 3

- nOutputs : 1
