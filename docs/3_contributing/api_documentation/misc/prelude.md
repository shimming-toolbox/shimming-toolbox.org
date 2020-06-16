# prelude

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _PRELUDE_

    PRELUDE calls FSL Prelude

unwrappedPhase = PRELUDE( rawPhase, mag )
unwrappedPhase = PRELUDE( rawPhase, mag, Options )

     .......................

     rawPhase: 3d array of the wrapped phase values
     mag:      3d array of the corresponding magnitude data

     .......................
    
    The following Option-fields are supported

         .voxelSize
                default: [1 1 1]

         .path2UnwrappedPhase 
                default: 'unwrappedPhase.nii' 
                        temporarily created in the same directory as the raw
                        phase input, however it is subsequently deleted
                        (assumption being the user wants the unwrapped phase
                        returned merely as a matlab array).

         .mask


         .isUnwrappingIn2D
                         default: true

         .isSavingNiftis
                         default: false

     .......................
topfer@ualberta.ca	2014


### Attributes


- nInputs : 3

- nOutputs : 1
