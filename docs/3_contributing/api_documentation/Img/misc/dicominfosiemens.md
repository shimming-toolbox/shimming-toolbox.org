# dicominfosiemens

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Return DICOM Hdr, augmented with fields from Siemens private header_

      
       Hdr = dicominfosiemens( filename ) 
       Hdr = dicominfosiemens( Hdr ) 

Wraps to `dicominfo` to return the standard header struct, and augments it
with fields .Img, .Ser, .MrProt courtesy of `parse_siemens_shadow`.

The input can be either the DICOM filename, or the corresponding Hdr struct as
returned by `dicominfo( filename )`

__ETC__
See also
dicominfo, parse_siemens_shadow


### Attributes


- nInputs : -1

- nOutputs : 1
