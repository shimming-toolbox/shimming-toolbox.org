# assignifempty

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Assigns values to object or struct fields when empty_

[StructObjOut] = ASSIGNIFEMPTY( StructObjIn, fieldName, x )
[StructObjOut] = ASSIGNIFEMPTY( StructObjIn, Assignments )

ASSIGNIFEMPTY( StructObjIn, fieldName, x )

    Calls MYISFIELDFILLED to check if the data struct or object StructObjIn has
    a non-empty field called fieldName and returns StructObjOut: a copy of the
    input StructObjIn, wherein fieldName is assigned the value of x if and only
    if the entry was non-existent or empty.

[StructObjOut] = ASSIGNIFEMPTY( StructObjIn, Assignments )

    Assignments is a struct or object possessing all the fields/properties that
    are to be assigned (copied) to StructObjOut. This is equivalent to making
    repeated calls to ASSIGNIFEMPTY() with multiple fieldNames and x-values.

    e.g. 
        StructObjIn.w1 = 'Hello' ;
    
        Assignments.w2 = 'World' ;
        Assignments.w3 = '!' ;

        StructObjOut = assignifempty( StructObjIn, Assignments ) ;
        display( StructObjOut ) ;

        StructObjOut =

            w1: 'Hello'
            w2: 'World'
            w3: '!'


### Attributes


- nInputs : -2

- nOutputs : 1
