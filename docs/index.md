# shimming-toolbox

!!! warning
    This website is a work in progress. 

## Overview

This library consists of programs to perform shimming (static and real-time).
First designed for use with the 24-channel spine shim ([Topfer R, et al., MRM,
2018](https://doi.org/10.1002/mrm.27089)).

## Dependencies and Installation

Before running this software you will need to install the following dependencies:
- MATLAB (tested on R2015A, but more recent versions are expected to work)
  - Optimization toolbox
  - Image processing toolbox
- [dcm2niix](https://github.com/rordenlab/dcm2niix#install)
- [SCT v 4.0.0](https://github.com/neuropoly/spinalcordtoolbox)

To install, download (or `git clone`) this repository and add this folder (with sub-folders) to the Matlab path.

Create the folder '~/Matlab/shimming/' and copy into it the contents [here](https://drive.google.com/open?id=15mZNpsuuNweMUO6H2iWdf5DxA4sQ_aYR)

For certain features (e.g. recording from a respiratory sensor in "daemon mode"),
the Matlab path should be configured automatically at session start-up by adding the following lines to '~/startup.m'
(create the file if it does not exist):

```
% Change ~/Code/realtime_shimming_repository/ to wherever the repository was downloaded/cloned:
PATH_TO_REALTIME_SHIMMING_REPOSITORY = '~/Code/realtime_shimming_repository/' ;
addpath( genpath( PATH_TO_REALTIME_SHIMMING_REPOSITORY ) ) ;
```

For "daemon mode" to work, the MATLAB session must be started from the command line, and from the home folder, e.g.:

```
user@polymtl ~ $ matlab &
```

For the command line start, MATLAB also needs to exist within the system path, e.g. add the following lines (adapted to refer to your version of MATLAB) to ~/.bash_profile

```
# add MATLAB path
export PATH=$PATH:/Applications/MATLAB_R2015a.app/bin/
```

*For phase unwrapping:*

To use the optional Abdul-Rahman 3D phase unwrapper, binaries must be compiled from the source code found in /external/source/
