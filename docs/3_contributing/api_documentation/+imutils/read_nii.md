# imutils.read_nii

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _READ_NII Load NIfTI image, header, and (if present) the accompanying .json sidecar_

      
      [img, info]       = read_nii( niiFile )
      [img, info, json] = read_nii( niiFile, options )

The input `niiFile` is the path to the NIfTI image as a string scalar or
character vector. When called with 2 output arguments, the function is
equivalent short-hand for
      
      info = niftiinfo( niiFile ); img = niftiread( info ) 

The function checks the `niiFile` parent-folder for the presence of a
sidecar (an identically named file, but with a .json file extension).
When such a file exists, the 3rd output is returned as a struct via
`json = jsondecode( fileread( jsonFile ) );` otherwise, `json = []`.

__OPTIONS__

The function accepts an `options` struct of parameters (for now, only one)
as a 2nd argument for which the `.rescale` field can be assigned:

| `options.rescale` |  Effect                                                |
| ------------------| -------------------------------------------------------|
| 'off'             | Rescaling disabled                                     |
| 'basic'           | Rescale according to nii header info                   |
| 'auto' [default]  | Rescale and convert to physical units when possible    |

__NOTE__
For now, the sole effect of `'auto'` is to convert Siemens raw phase images
to physical units (radians), which requires converting from their original
integer type (between [0,4095]) to a 32-bit "single" float (between [-pi,pi)).
The json sidecar must be available to verify the Manufacturer and ImageType
entries. Otherwise, and for all other image inputs `'auto'` reverts to
`'basic'`.


### Attributes


- nInputs : 2

- nOutputs : 3
