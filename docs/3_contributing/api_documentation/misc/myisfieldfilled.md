# myisfieldfilled

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Check if field of struct or object exists AND is non-empty_

isFieldFilled = MYISFIELDFILLED( StructObjIn, fieldName )

StructObjIn is a structure, object, or an array of structures to search
fieldName is the name of the field for which the function searches

-> Returns TRUE if fieldName exists *AND* is the field is filled (non-empty)
-> Returns FALSE otherwise

MYISFIELDFILLED wraps to MYISFIELD( ) and is equivalent to

isFieldFilled = myisfield( StructObjIn, fieldName ) && ~isempty( StructObjIn(1).(fieldName) )

See also: MYISFIELD, ASSIGNIFEMPTY


### Attributes


- nInputs : 2

- nOutputs : 1
