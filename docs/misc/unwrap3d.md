# unwrap3d

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _UNWRAP3D_

    UNWRAP3D calls a 3D path-based unwrapper (Abdul-Rahman et al 2007)

unwrappedPhase = UNWRAP3D( rawPhase, mask )
unwrappedPhase = UNWRAP3D( rawPhase, mask, Options )

     .......................
     
     rawPhase: 3d (double) array of wrapped phase
     mask:     3d (binary) array demarking region (of reliable raw phase
                measurements) to be unwrapped

     .......................

    
    The following Option-fields are supported

         .path2UnwrappedPhase 
                default: './unwrappedPhase.bin' 

         .isSavingBinaries
                    The following files are created in the dir of 
                    path2UnwrappedPhase: 
                       rawPhase.bin [float32], 
                       unwrappedPhase.bin [float32],
                       mask.bin [uint8]
                default: false
                    .bin files deleted. Assumption being the user simply wants
                    the unwrapped phase returned as a matlab array.

     .......................
topfer@ualberta.ca	2015


### Attributes


- nInputs : 3

- nOutputs : 1
