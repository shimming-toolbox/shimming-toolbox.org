# imutils.load_niftis

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _LOAD_NIFTIS Load a nifti acquisition from dcm2bids_

      [niftis, info, json] = load_niftis(path)

If `path` is a folder containing niftis, directly output niftis. If `path` is
a folder containing acquisitions, ask the user for which acquisition.

The output `niftis` is a 5d matlab vector stored according to (x,y,z,repetitions,echo)
The output `info` and `json` are the corresponding header information
stored as (echoes)

TODO : Currently, not all files will work, need to be more thorough when
looking for echoes, acquistions, and channels.


### Attributes


- nInputs : 1

- nOutputs : 3
