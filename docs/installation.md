# Installation

Before running this software you will need to install the following dependencies:
- MATLAB version 2019B or later
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
% Change ~/Code/shimming-toolbox/ to wherever the repository was downloaded/cloned:
PATH_SHIMMINGTOOLBOX = '~/Code/shimming-toolbox/' ;
addpath( genpath( PATH_SHIMMINGTOOLBOX ) ) ;
```

For "daemon mode" to work, the MATLAB session must be started from the command line, and from the home folder, e.g.:

```
user@polymtl ~ $ matlab &
```

For the command line start, MATLAB also needs to exist within the system path, e.g. For MacOS, add the following lines (adapted to refer to your version of MATLAB) to ~/.bash_profile

```
# add MATLAB path
export PATH=$PATH:/Applications/MATLAB_R2020a.app/bin/
```

*For phase unwrapping:*

To use the optional Abdul-Rahman 3D phase unwrapper, binaries must be compiled from the source code found in /external/source/
