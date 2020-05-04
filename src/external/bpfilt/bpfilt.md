# bpfilt

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Bandpass filtering_

Syntax:
    y = bpfilt(signal, f1, f2, [options])

Description:
    This function performs bandpass filtering of a time series 
    with rectangle window.

Input Arguments:
    signal 	- a column vector of time series.
    f1 		- the lower bound of frequencies (in Hz).
    f2 		- the upper bound of frequencies (in Hz).

Options:
    fs      - the sampling frequency in Hz. Default is 1 Hz.
    isplot  - whether to produce plots.

Output Arguments:
    y 		- the filtered time series.

Examples:
    fs = 100;
    t  = 1:1/fs:10;
    x  = sin(t);
    y  = bpfilt(x,20,30);

See also

References:

History:
    07/13/2016 - Initial script.
    04/02/2019 by ryan.topfer@polymtl.ca

__________________________________________________________________________
Wonsang You(wsgyou@gmail.com)
07/13/2016
Copyright (c) 2016 Wonsang You.

    Folders named bpfilt

       external/bpfilt


### Attributes


- nInputs : 5

- nOutputs : 1
