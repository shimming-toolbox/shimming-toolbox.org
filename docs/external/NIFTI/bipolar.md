# bipolar

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _returns an M-by-3 matrix containing a blue-red colormap, in_

in which red stands for positive, blue stands for negative,
and white stands for 0.

Usage: cmap = bipolar(M, lo, hi, contrast);  or  cmap = bipolar;

cmap:  output M-by-3 matrix for BIPOLAR colormap.
M:	  number of shades in the colormap. By default, it is the
same length as the current colormap.
lo:	  the lowest value to represent.
hi:	  the highest value to represent.

Inspired from the LORETA PASCAL program:
http://www.unizh.ch/keyinst/NewLORETA

jimmy@rotman-baycrest.on.ca

----------------------------------------------------------------


### Attributes


- nInputs : 4

- nOutputs : 1
