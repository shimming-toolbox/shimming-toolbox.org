# medfilt3

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _1-D, 2-D and 3-D median filtering._

    B = MEDFILT3(A,[M N P]) performs median filtering of the 3-D array A.
    Each output pixel contains the median value in the M-by-N-by-P
    neighborhood around the corresponding pixel in the input array.

    B = MEDFILT3(A,[M N]) performs median filtering of the matrix A. Each
    output pixel contains the median value in the M-by-N neighborhood
    around the corresponding pixel.

    B = MEDFILT3(A,M) performs median filtering of the vector A. Each
    output pixel contains the median value in the M neighborhood
    around the corresponding pixel.

    B = MEDFILT3(A) performs median filtering using a 3 or 3x3 or 3x3x3
    neighborhood according to the size of A.

    B = MEDFILT3(A,...,PADOPT) pads array A using PADOPT option:

       String values for PADOPT (default = 'replicate'):
       'circular'    Pads with circular repetition of elements.
       'replicate'   Repeats border elements of A. (DEFAULT)
       'symmetric'   Pads array with mirror reflections of itself.

       If PADOPT is a scalar, A is padded with this scalar.

    Class Support
    -------------
      Input array can be numeric or logical. The returned array is of class
      single or double.

    Notes
    -----
      M, N and P must be odd integers. If not, they are incremented by 1.

      If NANMEDIAN exists (Statistics Toolbox is required), then MEDFILT3
      treats NaNs as missing values.

      If you work with very large 3D arrays, an "Out of memory" error may
      appear. The chunk factor (CHUNKFACTOR, default value = 1) must be
      increased to reduce the size of the chunks. This will imply more
      iterations whose number is directly proportional to CHUNKFACTOR. Use
      the following syntax: MEDFILT3(A,[...],PADOPT,CHUNKFACTOR)

    Examples
    --------
      %>> 1-D median filtering <<
      t = linspace(0,2*pi,100);
      y = cos(t);
      I = round(rand(1,5)*99+1);
      y(I) = rand(size(I));
      ys = medfilt3(y,5);
      plot(t,y,':',t,ys)

      %>> 2-D median filtering <<
      % original image
      I = imread('eight.tif');
      % noisy image
      J = I;
      rand('state',sum(100*clock))
      J(rand(size(J))<0.01) = 255;
      J(rand(size(J))<0.01) = 0;
      % denoised image
      K = medfilt3(J);
      % figures
      figure
      subplot(121),imshow(J), subplot(122), imshow(K)

      %>> 3-D median filtering <<
      rand('state',0)
      [x,y,z,V] = flow(50);
      noisyV = V + 0.1*double(rand(size(V))>0.95);
      clear V
      figure
      subplot(121)
      hpatch = patch(isosurface(x,y,z,noisyV,0));
      isonormals(x,y,z,noisyV,hpatch)
      set(hpatch,'FaceColor','red','EdgeColor','none')
      daspect([1,4,4]), view([-65,20]), axis tight off
      camlight left; lighting phong 
      subplot(122)
      %--------
      denoisedV = medfilt3(noisyV,7);
      %--------
      hpatch = patch(isosurface(x,y,z,denoisedV,0));
      isonormals(x,y,z,denoisedV,hpatch)
      set(hpatch,'FaceColor','red','EdgeColor','none')
      daspect([1,4,4]), view([-65,20]), axis tight off
      camlight left; lighting phong
        
    See also MEDFILT1, MEDFILT2, HMF.

    -- Damien Garcia -- 2007/08, revised 2010/04
    website: <a
    href="matlab:web('http://www.biomecardio.com')">www.BiomeCardio.com</a>

RT::20180722::downloaded code from:
https://github.com/havaeimo/Matlab/blob/master/Matlab/MATLAB/medfilt3.m


### Attributes


- nInputs : 4

- nOutputs : 1
