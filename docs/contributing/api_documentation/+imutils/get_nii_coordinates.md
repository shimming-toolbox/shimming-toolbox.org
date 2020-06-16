# imutils.get_nii_coordinates

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _GET_NII_COORDINATES Return voxel position "world-coordinates" in mm_

      
      [x, y, z] = get_nii_coordinates( niiFile )
      [x, y, z] = get_nii_coordinates( niiInfo )

Returns `x, y, z`: three 3-D arrays of voxel positions in mm.

The single input can be given either as:

1. `niiFile`—A path string to the NIfTI file of interest; or,

2. `niiInfo`—A struct of the form `niiInfo = niftiinfo( niiFile )`

__NOTE__
The function is implemented as
```
[i, j, k] = ndgrid( [0:niiInfo.ImageSize(1)-1], [0:niiInfo.ImageSize(2)-1], [0:niiInfo.ImageSize(3)-1] ) ;
[x, y, z] = niiInfo.Transform.transformPointsForward( i, j, k ) ;
```
__TODO__
* function should be further tested.


### Attributes


- nInputs : 1

- nOutputs : 3
