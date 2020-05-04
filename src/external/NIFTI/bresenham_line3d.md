# bresenham_line3d

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _Generate X Y Z coordinates of a 3D Bresenham's line between_

two given points.

A very useful application of this algorithm can be found in the
implementation of Fischer's Bresenham interpolation method in my
another program that can rotate three dimensional image volume
with an affine matrix:
http://www.mathworks.com/matlabcentral/fileexchange/loadFile.do?objectId=21080

Usage: [X Y Z] = bresenham_line3d(P1, P2, [precision]);

P1	- vector for Point1, where P1 = [x1 y1 z1]

P2	- vector for Point2, where P2 = [x2 y2 z2]

precision (optional) - Although according to Bresenham's line
algorithm, point coordinates x1 y1 z1 and x2 y2 z2 should
be integer numbers, this program extends its limit to all
real numbers. If any of them are floating numbers, you
should specify how many digits of decimal that you would
like to preserve. Be aware that the length of output X Y
Z coordinates will increase in 10 times for each decimal
digit that you want to preserve. By default, the precision
is 0, which means that they will be rounded to the nearest
integer.

X	- a set of x coordinates on Bresenham's line

Y	- a set of y coordinates on Bresenham's line

Z	- a set of z coordinates on Bresenham's line

Therefore, all points in XYZ set (i.e. P(i) = [X(i) Y(i) Z(i)])
will constitute the Bresenham's line between P1 and P1.

Example:
P1 = [12 37 6];     P2 = [46 3 35];
[X Y Z] = bresenham_line3d(P1, P2);
figure; plot3(X,Y,Z,'s','markerface','b');

This program is ported to MATLAB from:

B.Pendleton.  line3d - 3D Bresenham's (a 3D line drawing algorithm)
ftp://ftp.isc.org/pub/usenet/comp.sources.unix/volume26/line3d, 1992

Which is also referenced by:

Fischer, J., A. del Rio (2004).  A Fast Method for Applying Rigid
Transformations to Volume Data, WSCG2004 Conference.
http://wscg.zcu.cz/wscg2004/Papers_2004_Short/M19.pdf

- Jimmy Shen (jimmy@rotman-baycrest.on.ca)


### Attributes


- nInputs : 3

- nOutputs : 3
