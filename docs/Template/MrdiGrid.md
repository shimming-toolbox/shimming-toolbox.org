# MrdiGrid

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _MR DICOM Image Grid: Image grid properties._

Details

blah blah blah

    Documentation for MrdiGrid
       doc MrdiGrid


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- SuperclassList : [N/A] 

- - -
## Properties


### units

**Synopsis:** _of fov, grid positions, grid spacing_

  Units of fov, grid positions, grid spacing

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : none
- GetMethod : 
- SetMethod : 
- DefaultValue : mm
- Validation: 
Class: char
Validator functions: 
- DefiningClass : MrdiGrid

### coordinateSystem

**Synopsis:** _Grid coordinate system as string. Default = 'PCS' (patient coordinate system)_

  Grid coordinate system as string. Default = 'PCS' (patient coordinate system)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : PCS
- Validation: 
Class: char
Validator functions: 
- DefiningClass : MrdiGrid

### fov

**Synopsis:** _Field of view dimensions: [Row, Column, Slice]_

  Field of view dimensions: [Row, Column, Slice]

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.fov
- SetMethod : 
- DefaultValue : 
- Validation: 
Class: double
Validator functions: mustBeNonnegative
- DefiningClass : MrdiGrid

### nPoints

**Synopsis:** _Number of grid points (i.e. number of image pixels or voxels)_

  Number of grid points (i.e. number of image pixels or voxels)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.nPoints
- SetMethod : 
- DefaultValue : 
- Validation: 
Validator functions: mustBeInteger
- DefiningClass : MrdiGrid

### rotationMatrix

**Synopsis:** _[Column, Row, Slice] orientations as 3x3 mtx of direction cosine column vectors_

From <a href="matlab: web('https://en.wikipedia.org/wiki/Direction_cosine')">Wikipedia</a>:
    "The direction cosines of a vector are the cosines of the angles between
    the vector and the three coordinate axes. Equivalently, they are the
    contributions of each component of the basis to a unit vector in that
    direction."     

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.rotationMatrix
- SetMethod : 
- DefaultValue : [N/A] 
- Validation: 
Class: double
Validator functions: mustBeReal
- DefiningClass : MrdiGrid

### xyz

**Synopsis:** _4D array of grid positions:_

xCoordinates=xyz(:,:,:,1) 3-column mtx: rows=[x y z]-patient coordinates of the vectorized grid positions.
See also MrdiGrid.gridpositions

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.xyz
- SetMethod : MrdiGrid.set.xyz
- DefaultValue : 
- Validation: 
Class: double
Validator functions: mustBeReal
- DefiningClass : MrdiGrid

### size

**Synopsis:** _Image array dimensions: [#Rows, #Columns, #Slices]_

  Image array dimensions: [#Rows, #Columns, #Slices]

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : 
- SetMethod : 
- DefaultValue : [N/A] 
- Validation: 
Validator functions: mustBeInteger,mustBePositive
- DefiningClass : MrdiGrid

### spacing

**Synopsis:** _Grid-spacing vector: [Between-Rows, "-Columns, "-Slices]_

  Grid-spacing vector: [Between-Rows, "-Columns, "-Slices]

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : 
- SetMethod : 
- DefaultValue : [N/A] 
- Validation: 
Class: double
Validator functions: mustBeNonnegative
- DefiningClass : MrdiGrid

### sliceLocation

**Synopsis:** _Slice [X;Y,Z] positions. DICOM Hdr Tag: (0020,1041)_

  Slice [X;Y,Z] positions. DICOM Hdr Tag: (0020,1041)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.sliceLocation
- SetMethod : 
- DefaultValue : 
- Validation: 
Class: double
Validator functions: mustBeReal
- DefiningClass : MrdiGrid

### sliceNormalVector

**Synopsis:** _3rd column vector of rotationMatrix: Unit vector indicating slice_

direction (ascending vs. descending)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : MrdiGrid.get.sliceNormalVector
- SetMethod : 
- DefaultValue : 
- Validation: 
Validator functions: 
- DefiningClass : MrdiGrid

### imageOrientationPatient

**Synopsis:** _Column and Row direction cosines. DICOM Hdr Tag: (0020,0037)_

  Column and Row direction cosines. DICOM Hdr Tag: (0020,0037)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation: 
Class: double
Validator functions: mustBeReal
- DefiningClass : MrdiGrid

### imagePositionPatient

**Synopsis:** _[X Y Z] coordinates of 1st voxel,img(1,1,1). DICOM Hdr Tag: (0020,0032)_

  [X Y Z] coordinates of 1st voxel,img(1,1,1). DICOM Hdr Tag: (0020,0032)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : private
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation: 
Validator functions: mustBeReal
- DefiningClass : MrdiGrid

---
## Methods


---


### MrdiGrid

**Synopsis**: _MR DICOM Image Grid: Image grid properties._ 

Details

blah blah blah


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Hdrs
- OutputNames : Grid
- DefiningClass : MrdiGrid

---


### neq

**Synopsis**: _Return FALSE if positions of 2 MrdiGrid objects coincide_ 

 NEQ  Return FALSE if positions of 2 MrdiGrid objects coincide


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : Grid1, Grid2
- OutputNames : isNotEqual
- DefiningClass : MrdiGrid

---


### eq

**Synopsis**: _Return TRUE if positions of 2 MrdiGrid objects coincide_ 

 EQ  Return TRUE if positions of 2 MrdiGrid objects coincide


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : Grid1, Grid2
- OutputNames : isEqual
- DefiningClass : MrdiGrid

---


### gridpositions

**Synopsis**: _Return [x,y,z]: Three 2- or 3-D arrays of voxel positions_ 

[x,y,z] = Grid.gridpositions( )

Returns three 3D arrays of doubles, each element containing the
location [units: mm] of the corresponding voxel with respect to
DICOM's 'Reference Coordinate System'.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Grid
- OutputNames : x, y, z
- DefiningClass : MrdiGrid

---


### comparegrids

**Synopsis**: _Return TRUE if voxel positions coincide_ 

    
Wrapper function to isequal().

isSame = COMPAREGRIDS( Grid1, Grid2 )
isSame = COMPAREGRIDS( xyz1, xyz2 )
isSame = COMPAREGRIDS( X1, Y1, Z1, X2, Y2, Z2 )

See also isequal


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : isSame
- DefiningClass : MrdiGrid

---


### updategrid

**Synopsis**: _Update image grid positions_ 


UPDATEGRID( Grid, X, Y, Z )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Grid, X, Y, Z
- OutputNames : [N/A] 
- DefiningClass : MrdiGrid

---


### initializefromdicom

**Synopsis**: _INITIALIZEFROMDICOM_ 

 INITIALIZEFROMDICOM


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Grid, Hdrs
- OutputNames : Grid
- DefiningClass : MrdiGrid

---


### empty

**Synopsis**: _Returns an empty object array of the given size_ 


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : E
- DefiningClass : MrdiGrid
