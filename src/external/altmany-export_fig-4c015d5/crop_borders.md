# crop_borders

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Crop the borders of an image or stack of images_

    [B, vA, vB, bb_rel] = crop_borders(A, bcol, [padding])

IN:
    A - HxWxCxN stack of images.
    bcol - Cx1 background colour vector.
    padding - scalar indicating how much padding to have in relation to
              the cropped-image-size (0<=padding<=1). Default: 0

OUT:
    B - JxKxCxN cropped stack of images.
    vA     - coordinates in A that contain the cropped image
    vB     - coordinates in B where the cropped version of A is placed
    bb_rel - relative bounding box (used for eps-cropping)


### Attributes


- nInputs : 3

- nOutputs : 4
