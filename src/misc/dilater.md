# dilater

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _dilates a 3D binary mask by 'R'_

    DILATER convolves binary input image ROI with an ellipsoid defined by
    radius (or radii) R to return an expanded ROI.

    Syntax

    dilatedRoi = DILATER( roi, R)

    Description

    dilatedRoi = RILATER(ROI,R) returns ROI dilated by R. If R is a single
    scalar, every dimension is dilated by R. If R is a 3-component vector
    [Rx Ry Rz], each dimension is then dilated by its corresponding R value.

see also SHAVER( )

=========================================================================
Updated::20170210::ryan.topfer@polymtl.ca
=========================================================================


### Attributes


- nInputs : 2

- nOutputs : 1
