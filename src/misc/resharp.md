# resharp

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _[LSF,MASK_ERO] = RESHARP(TFS,MASK,VOX,KER_RAD,TIK_REG)_

    LFS         : local field shift after background removal
    MASK_ERO    : eroded mask after convolution
    TFS         : input total field shift
    MASK        : binary mask defining the brain ROI
    VOX         : voxel size (mm), e.g. [1,1,1] for isotropic
    KER_RAD     : radius of convolution kernel (mm), e.g. 4
    TIK_REG     : Tikhonov regularization parameter, e.g. 5e-4

Method is described in the paper:
Sun, H. and Wilman, A. H. (2013),
Background field removal using spherical mean value filtering and Tikhonov regularization.
Magn Reson Med. doi: 10.1002/mrm.24765


### Attributes


- nInputs : 5

- nOutputs : 4
