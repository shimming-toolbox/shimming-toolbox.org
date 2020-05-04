# fslview

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _view 3d array in fslview_

    Syntax

    fslview( img )
    fslview( img1, Parameters )
    fslview( img1, Parameters, img2, img3, ... )

    Description

    creates temporary nifti conversion of img and passes it to fslview

    
        Parameters (object) to fslview input 
        (see manual 'man fslview')
        
    The following Parameters fields are supported
    
    .voxelSize (3-component vector)
        default:
            [1 1 1] ;

    .l (color map: Full list avaible in FSLView GUI)  
        (e.g. one of: Greyscale, Red-Yellow, Blue-Lightblue,
        Red, Green, Blue, Yellow, Pink, Hot, Cool, Copper, ...)
        default: 
            Parameters.l = 'Greyscale'

    .b (brightness)
        if scalar: 
            brightness = [-Abs|.b|,+Abs|.b|] 
        if 2 component vector: 
            brightness = [.b(1), .b(2)] 
        default: 
            brightness = [min(img), max(img)] 


=========================================================================
Ryan Topfer 2012
topfer@ualberta.ca


### Attributes


- nInputs : -3

- nOutputs : 0
