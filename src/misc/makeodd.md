# makeodd

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _returns dataArray with odd dimensions_

    
    Syntax

    A = MAKEODD(A)
    A = MAKEODD(A, option)
    A = MAKEODD(A, option, gridDimensionVector) ;

    returns array A with odd dimensions.
    
    option

        if 'isPadding', even dimensions are padded with a slice of zeros 
            (default: even dimensions have a slice shaved off)

        if 'isUndoing', odd dimensions are padded with a slice of zeros
            (default: make ODD!)

        gridDimensionVector
            specifies final array size
            (default: minimum change from original size such that 'option'
            is satisfied)


### Attributes


- nInputs : 3

- nOutputs : 1
