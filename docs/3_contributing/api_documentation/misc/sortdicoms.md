# sortdicoms

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Arrange unsorted DICOMs into subdirectories according to acquisition series_

      
      [] = sortdicoms( unsortedDir ) 
      [] = sortdicoms( unsortedDir, sortedDir ) 
      [] = sortdicoms( unsortedDir, sortedDir, isCopying ) 

Copies and renames .dcm or .IMA images within `unsortedDir` into
subdirectories based on the image headers.

`sortedDir` is the destination parent folder where series-/scan-specific
subdirectories will be created if they do not already exist.  When called
without a second argument, `sortedDir = [unsortedDir '/sorted']` by
default.

To move rather than copy the files, call the function with the third argument
`isCopying = 0` (or `false`).

__NOTE__
This function is used to organize images transfered via Siemens 'real-time'
socket protocol, by which DICOMs with abstruse filenames are transfered
immediately upon reconstruction into a single directory (irrespective of
acquisition series/scan).


### Attributes


- nInputs : 3

- nOutputs : 0
