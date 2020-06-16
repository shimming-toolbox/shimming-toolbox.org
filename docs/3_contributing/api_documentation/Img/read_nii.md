# read_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Load NIfTI image and header; and, when present, the accompanying .json sidecar_

      
      [img, info]       = read_nii( niiFile )
      [img, info, json] = read_nii( niiFile )

The input `niiFile` is the path to the NIfTI image as a string scalar or
character vector. When called with 2 output arguments, the function is
equivalent short-hand for
      
      info = niftiinfo( niiFile ); img = niftiread( info ) 

When called with the 3rd output argument, the function checks the parent
folder of `niiFile` for an identically named file but with a .json file extension.
When such a file is present, the 3rd output is returned as a struct via
`json = jsondecode( fileread( jsonFile ) );` otherwise, `json = []`.


### Attributes


- nInputs : 1

- nOutputs : 3
