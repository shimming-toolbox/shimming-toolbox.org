# sunwrap

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Magnitude-sorted List, Multi-clustering Phase Unwrapping Algorithm_

    sunwrap(complexImage, relativeMagnitudeThreshold)

    This file contains the reference implementation of the magnitude-sorted
    list, multi-clustering phase unwrapping algorithm published in the
    journal 'Magnetic Resonance in Medicine' by Florian Maier et al. in
    2014.

    The algorithm was implemented to unwrap the phase of magnetic resonance
    images used for temperature imaging. The input 'complexImage' needs to
    be an 1D, 2D, or 3D complex matrix. Additionally, the variable
    'relativeMagnitudeThreshold' can be defined in the interval [0,1]. The
    algorithm calculcates the actual threshold based on the maximum
    magnitude value in the image and this ratio. The algorithm returns a
    double matrix containing the unwrapped phase values in rad.

    This algorithm was designed and implemented by Florian Maier.
    Copyright (c) 2014 The University of Texas M. D. Anderson Cancer Center

    Folders named sunwrap

       external/sunwrap


### Attributes


- nInputs : 2

- nOutputs : 1
