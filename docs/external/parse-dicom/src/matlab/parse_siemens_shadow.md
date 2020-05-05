# parse_siemens_shadow

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _[img, ser, mrprot] = parse_siemens_shadow(dcm, debugOutput=false)_

function to parse siemens numaris 4 shadow data
returns three structs with image, series header, mrprot info
does not work with arrayed dcm()
     dependencies: parse_mrprot.m
                   c_str.m
                   mread.m
    E. Auerbach, CMRR, Univ. of Minnesota, 2013

    Update::20180409::ryan.topfer@polymtl.ca :
    Optional fast output for nargout == 1 OR 2, since parsing mrprot apparently
    takes an order of magnitude longer (~1s per dicom file). Only applies to
    dicom images* (not SPEC)


### Attributes


- nInputs : -1

- nOutputs : 3
