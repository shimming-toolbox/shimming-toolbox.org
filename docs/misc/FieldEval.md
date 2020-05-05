# FieldEval

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _- [B0] Field Evaluation_

.......

Usage

Field = FieldEval( Mag, Phase )
Field = FieldEval( Mag, Phase, Params )

Mag and Phase should either be paths to the respective DICOM directories,
OR, instantiated MaRdI-type image objects (e.g. Mag = MaRdI( path_to_Mag_DICOMs ) )

Params may contain the following fields

    .mask
        binary array indicating phase region to be unwrapped 
        [default: formed by thresholding magnitude images > Params.threshold)

    .threshold  
    (as a fraction (<1) of max measured magnitude intensity)
    Determines the phase region to be unwrapped (i.e. areas of low signal are
    ignored) 
        [default: 0.01] 

    .unwrapper
        'Sunwrap' [default for 2d image (single slice)], calls sunwrap( ) (Maier, et al. MRM 2015)
        'AbdulRahman_2007' [default for 3d image volume], calls unwrap3d( ), which wraps to the Abdul-Rahman binary
        'FslPrelude', calls prelude( ), which wraps to FSL-prelude 

.......

NOTE

FieldEval is a MaRdI subclass [FieldEval < MaRdI]
See MaRdI documentation for additional features.

=========================================================================
Author::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for FieldEval
       doc FieldEval


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: MaRdI

- - -
## Properties


### Model

**Synopsis:** _FieldEval/Model is a property._

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : FieldEval

### img

**Synopsis:** _MaRdI/img is a property._

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : MaRdI

### Aux

**Synopsis:** _MaRdI/Aux is a property._

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : MaRdI

### Hdr

**Synopsis:** _- full Siemens DICOM header of 1st img (i.e. Img.img(:,:,1) )_

 Hdr -  full Siemens DICOM header of 1st img (i.e. Img.img(:,:,1) )

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : protected
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : MaRdI

### Hdrs

**Synopsis:** _- cell array of (truncated) DICOM headers courtesy of dicominfo()_

 Hdrs -  cell array of (truncated) DICOM headers courtesy of dicominfo()

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : protected
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : MaRdI

### Ref

**Synopsis:** _- Reference properties - prior to manipulation_

 Ref -  Reference properties - prior to manipulation

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : protected
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : MaRdI

---
## Methods


---


### scalefieldstrength

**Synopsis**: _SCALEFIELDSTRENGTH_ 

[] = SCALEFIELDSTRENGTH( Field, B01 )

Scales Field (and, if present, FieldEval objects within Field.Model) to
new (scanner) "main" field strength B01.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, B01
- OutputNames : [N/A] 
- DefiningClass : FieldEval

---


### chartriro

**Synopsis**: _CHARTRIRO_ 

[] = CHARTRIRO( Field )
[] = CHARTRIRO( Field, p )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, p
- OutputNames : [N/A] 
- DefiningClass : FieldEval

---


### getriro

**Synopsis**: _GETRIRO_ 

Riro = GETRIRO( Field )
Riro = GETRIRO( Field, p )

Returns estimate of the respiration-induced resonance offset corresponding
to tracker measurement p assuming the linear field model
(i.e. Riro[ p(t) ] ).

If nargin == 1, Riro is a copy of Field.Model.Riro
(e.g. inspired-expired field difference);


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, p
- OutputNames : Riro
- DefiningClass : FieldEval

---


### computevoxelshiftmap

**Synopsis**: _COMPUTEVOXELSHIFTMAP_ 

Returns a copy of Field as VoxelShiftMap wherein the Field.img data has been
transformed to a voxel shift map (with units of pixels as opposed to Hz)
according to the formula (generalized from Jezzard & Balaban, 1995) :

VoxelShiftMap.img = Field.img / pixelBandwidthPe ;

VoxelShiftMap = COMPUTEVOXELSHIFTMAP( Field, pixelBandwidthPe )
VoxelShiftMap = COMPUTEVOXELSHIFTMAP( Field, R, nPhaseEncode, echoSpacing )
VoxelShiftMap = COMPUTEVOXELSHIFTMAP( Field, R, nPhaseEncode, echoSpacing, nInterleaves )


According to https://lcni.uoregon.edu/kb-articles/kb-0003

    "You can either use the actual echo spacing and the actual number of phase
    encodes for the number of echoes, or the effective echo spacing and the
    number of reconstructed phase lines (easier to get from the DICOM)."


The pixelBandwidth in the phase encode direction accounts for these terms:

pixelBandwidthPe = ( R * nInterleaves ) / ( nPhaseEncode * echoSpacing )

pixelBandwidthPe
    Bandwidth per pixel (Hz/pixel) in phase encode direction. For EPI this may
    be stored in the DICOM field (0019, 1028). This is equivalent to the
    inverse of the "effective echo spacing", divided by the size of the image 
    matrix in the phase encode dimension.

R
    The in-plane acceleration factor.

nPhaseEncode
    The actual size (e.g. # rows or columns) of the *reconstructed* image
    in the phase encode dimension (i.e. this will be greater or equal to
    the *acquired* number of phase encode lines, which depends on partial
    Fourier + parallel imaging)

echoSpacing
    The actual inter-echo spacing (time between the k_x = 0 crossing of 
    one phase encode line, to the zero-crossing on the next line). Note
    that the actual echoSpacing = the "effective echo spacing" divided by
    the in-plane acceleration factor R.

nInterleaves
    number of interleaves for multi-shot
    [default: 1, single-shot]


Another useful website with explanations for terms like phase-encode bandwidth

http://support.brainvoyager.com/functional-analysis-preparation/27-pre-processing/459-epi-distortion-correction-echo-spacing.html

NOTE
    
    I've only assumed that the definition of pixelBandwidthPe above is consistent
    with that of Siemens (ie. DICOM field (0019,1028)). In particular,
    I haven't verified that nInterleaves figures into their definition or not.
    Should be OK for single-shot.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, varargin
- OutputNames : VoxelShiftMap
- DefiningClass : FieldEval

---


### plotfieldhistogram

**Synopsis**: _PLOTFIELDHISTOGRAM_ 

[] = PLOTFIELDHISTOGRAM( Field )
[] = PLOTFIELDHISTOGRAM( Field, voi )
[] = PLOTFIELDHISTOGRAM( Field, voi, Params )

Plots histogram of the distribution in Field.img() using the Matlab
HISTOGRAM function.

Inputs

voi
    volume of interest binary mask (same size as Field.img) indicating
    region over which the distribution is to be binned.
    [default : Field.Hdr.MaskingImage]

Params

    .xLimits
         horizontal limits in Hz 
         [default : max(abs(field(:))) .* [ -1 1 ] ]

    .yLimits
         vertical limits as count #

    .fontSize
        [default : 16]
    .yAxisLocation
        [default : 'left'] 

    .textContent
         string appears in textbox (e.g. 'Standard Deviation = 5 Hz')
         [default : '']

    .textPosition
         [X Y]
         position of textbox relative to graph's origin


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, voi, Params
- OutputNames : [N/A] 
- DefiningClass : FieldEval

---


### getvaliditymask

**Synopsis**: _GETVALIDITYMASK_ 

Returns binary mask - TRUE where field values are well defined and within
the expected range

mask = GETVALIDITYMASK( Field )
mask = GETVALIDITYMASK( Field, maxAbsField )

.......................

maxAbsField
    maximum absolute voxel value assumed to represent an accurate field
    measurement. Voxels with abs-values greater than this might stem from
    errors in the unwrapping.  [default: 500 Hz]
    (Set to Inf to ignore the criterion)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, maxAbsField
- OutputNames : mask
- DefiningClass : FieldEval

---


### assessfielddistribution

**Synopsis**: _ASSESSSHIM_ 

Stats = ASSESSFIELDDISTRIBUTION( Field )
Stats = ASSESSFIELDDISTRIBUTION( Field, VOI )
Stats = ASSESSFIELDDISTRIBUTION( Field, VOI, filename )

VOI
     binary array the same size as Field.img indicating the region of
     interest over which field calculations are made. 
     default: Field.Hdr.MaskingImage

filename
    output to text file using writetable()

Stats contains fields

    .volume
        volume of region of interest (VOI) [units: cm^3]

    .mean
        mean value of the field over the VOI

    .median
        median value of the field over the VOI

    .std
        standard deviation of Field.img over the VOI
    
    .rmsePerCm3
        L2 norm of the field (i.e. residual) over the VOI normalized by the volume

    .meanAbs
        mean absolute value of the field over the VOI.

    .medianAbs
        median absolute value of the field over the VOI

    .min
    .max


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, voi, filename
- OutputNames : Stats
- DefiningClass : FieldEval

---


### extractharmonicfield

**Synopsis**: _EXTRACTHARMONICFIELD_ 

Extract (smooth) harmonic field via RESHARP (Sun, H. Magn Res Med, 2014)

------

    Syntax

    [LocalField, BkgrField] = EXTRACTHARMONICFIELD( Field, Params )

    Returns 2 FieldEval-type Field objects: 
        LocalField : LocalField.img is the non-harmonic (high-pass) signal element
        BkgrField  : BkgrField.img is the harmonic (low-pass) signal element

    Inputs
        
    Field
        FieldEval-type object containing GRE field data in Field.img

Params
    .filterRadius 
        scalar filter radius [units: mm] 
            (default = 4)

    .regularization
        Tikhonov regularization parameter
            (default = 0)

    .maxIterations
       max iterations of conjugate gradient solver 
            (default = 500)

    .tolerance
       min acceptable discepancy (Ax - b)/|norm(b)| for conjugate gradient solver
            (default = 1E-6)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Field, Params
- OutputNames : LocalField, BackgroundField
- DefiningClass : FieldEval

---


### copy

**Synopsis**: _COPY_ 

Make a copy of a FieldEval (i.e. handle) object.

ImgCopy = Copy( Img ) ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : ImgCopy
- DefiningClass : FieldEval

---


### FieldEval

**Synopsis**: _- [B0] Field Evaluation_ 

.......

Usage

Field = FieldEval( Mag, Phase )
Field = FieldEval( Mag, Phase, Params )

Mag and Phase should either be paths to the respective DICOM directories,
OR, instantiated MaRdI-type image objects (e.g. Mag = MaRdI( path_to_Mag_DICOMs ) )

Params may contain the following fields

    .mask
        binary array indicating phase region to be unwrapped 
        [default: formed by thresholding magnitude images > Params.threshold)

    .threshold  
    (as a fraction (<1) of max measured magnitude intensity)
    Determines the phase region to be unwrapped (i.e. areas of low signal are
    ignored) 
        [default: 0.01] 

    .unwrapper
        'Sunwrap' [default for 2d image (single slice)], calls sunwrap( ) (Maier, et al. MRM 2015)
        'AbdulRahman_2007' [default for 3d image volume], calls unwrap3d( ), which wraps to the Abdul-Rahman binary
        'FslPrelude', calls prelude( ), which wraps to FSL-prelude 

.......

NOTE

FieldEval is a MaRdI subclass [FieldEval < MaRdI]
See MaRdI documentation for additional features.

=========================================================================
Author::ryan.topfer@polymtl.ca
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : Field
- DefiningClass : FieldEval

---


### modelfield

**Synopsis**: _Fit B0 maps to auxiliary respiratory recording_ 

.......

Description

Maps static B0 and respiration-induced resonance offset (RIRO) assuming a
linear model of field variation w/breath-amplitude (Ref: Topfer et al. MRM 2018)

[FieldFit] = MODELFIELD( Fields )
[FieldFit] = MODELFIELD( Fields, Params )

.......

Usage

Returns FieldEval-type object FieldFit, where FieldFit.img is the respiration-independent static field estimate,
and FieldFit.Model.Riro.img is the respiration-dependent component.

Inputs:

Fields:

    Case 1: Fields pertains to a field map time-series:
    
        Fields should be a single object of type FieldEval, with Fields.Aux containing
        the corresponding respiratory (e.g. bellows) recording in the form of a
        ProbeTracking object.

    Case 2: Fields pertains to separate inspired and expired field maps: 

        Fields should be a cell array, with Fields{1} and Fields{2}
        respectively containing the FieldEval objects corresponding to the
        'inspired' and 'expired' acquisitions.

Params:
    Optional parameters struct can possess any of the following entries:

    .maxAbsField [default = 600]
        maximum absolute field value a voxel can possess in units of Hz to be deemed reliable

    .maxAbsFieldDifference [default = 150]
        maximum absolute field value a voxel can possess in units of Hz to be deemed reliable

    pDc : DC auxiliary pressure reading corresponding to the mean respiratory state 
    
        
        [default in Case 2: (FieldInspired.Aux.Data.p + FieldExpired.Aux.Data.p ) /2 ]


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Fields, Params
- OutputNames : Field
- DefiningClass : FieldEval

---


### mapfield

**Synopsis**: _MAPFIELD_ 

Field = MAPFIELD( Mag, Phase )
Field = MAPFIELD( Mag, Phase, Params )

Mag and Phase should either be paths to the respective DICOM directories,
OR, instantiated MaRdI-type image objects (e.g. Mag = MaRdI( path_to_Mag_DICOMs ) )

Params may contain the following fields

    .mask
        binary array indicating phase region to be unwrapped 
        [default: formed by thresholding magnitude images > Params.threshold)

    .threshold  
    (as a fraction (<1) of max measured magnitude intensity)
    Determines the phase region to be unwrapped (i.e. areas of low signal are
    ignored) 
        [default: 0.01] 

    .unwrapper
        'Sunwrap' [default for 2d image (single slice)], calls sunwrap( ) (Maier, et al. MRM 2015)
        'AbdulRahman_2007' [default for 3d image volume], calls unwrap3d( ), which wraps to the Abdul-Rahman binary
        'FslPrelude', calls prelude( ), which wraps to FSL-prelude


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : Field
- DefiningClass : FieldEval

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
- DefiningClass : FieldEval

---


### write

**Synopsis**: _Ma(t)-R-dI(com)_ 

Write MaRdI image object to DICOM and/or NifTI

.....

    Usage 

    WRITE( Img )
    WRITE( Img, saveDirectory )
    WRITE( Img, saveDirectory, imgFormat ) 
    WRITE( Img, saveDirectory, imgFormat, isSavingSingleNiis ) 

    Inputs

    default saveDirectory = './tmp'
    
    imgFormat can be:
        'dcm' [default]
        'nii' (creating temporary DICOMs which are deleted after the system call to dcm2niix)
        'both' (does not delete the DICOMs)

    isSavingSingleNiis (boolean):
        false [default] : DICOMs are combined into single NifTI file
        true : Separate .nii output for each image (passes '-s y' argument to dcm2niix)

.....

Adapted from dicom_write_volume.m (D.Kroon, University of Twente, 2009)
https://www.mathworks.com/matlabcentral/fileexchange/27941-dicom-toolbox?focused=5189263&tab=function


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, saveDirectory, imgFormat, isSavingSingleNiis
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### unwrapphase

**Synopsis**: _UNWRAPPHASE_ 

Interface to SUNWRAP, to FSL Prelude, or to Abdul-Rahman's path-based phase unwrapper

.......
    
Usage

    [] = UNWRAPPHASE( Phase )
    [] = UNWRAPPHASE( Phase, Mag )
    [] = UNWRAPPHASE( Phase, Mag, Options )
    
    Phase and Mag are objects of type MaRdI.

    Options is a struct that can contain the following fields:

    .unwrapper 
        == 'AbdulRahman_2007' [default if Phase.img is 3D] : 
            calls UNWRAP3D. 
            Not permitted if Phase.img is 2D (will default to SUNWRAP)
            If Mag is supplied, Phase.Hdr.MaskingImage must
            See HELP UNWRAP3D for description of permitted Options 

        == 'Sunwrap' [default if Phase.img is 2D] : 
            calls SUNWRAP. See HELP SUNWRAP for more details.

        == 'FslPrelude' : calls PRELUDE. 
            See HELP PRELUDE for description of permitted Options 

    .threshold  [default = 0.01] 
        Relative threshold of Mag.img used to define the unwrapping region in
        the SUNWRAP case and for the other 2 cases when Phase.Hdr.MaskingImage
        is undefined (Mag.getreliabilitymask() is called).

    NOTE: UNWRAP3D and PRELUDE support an Options.mask input to which
    Phase.Hdr.MaskingImage will always be assigned. To assign the mask
    manually, run Phase.setmaskingimage before calling Phase.unwrapphase.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Phase, varargin
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### timestd

**Synopsis**: _TIMESTD_ 

standardDeviation = TIMESTD( Img )

Assumes 5th dimension of Img.img corresponds to time:
    
    standardDeviation = std( Img.img, 0, 5 ) ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : timeStd
- DefiningClass : MaRdI

---


### timeaverage

**Synopsis**: _TIMEAVERAGE_ 

Img = TIMEAVERAGE( Img)

Assumes 5th dimension of Img.img corresponds to time:
    
    timeAverage = mean( Img.img, 5 ) ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : timeAverage
- DefiningClass : MaRdI

---


### setmaskingimage

**Synopsis**: _SETMASKINGIMAGE_ 

[] = SETMASKINGIMAGE( Img, mask )

Copies valid mask (a logical array of 1's and 0's) to Img.Hdr.MaskingImage

The purpose of this function is to specify the signal spatial support (e.g.
of mag, phase, field data) within the image grid. e.g. it is called during
phase unwrapping/field mapping, but it might also be called prior to regridding
if the interpolation should exclude certain voxels.

To be valid, mask must either be the same size as Img.img OR the same size as
Img.getgridsize() (i.e. the size of a single image volume of a
multi-echo/multi-measurement stack), in which case, the single mask is simply
copied such that the assigned Img.Hdr.MaskingImage always possesses the same
dimensions as Img.img


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, mask
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### segmentspinalcanal

**Synopsis**: _SEGMENTSPINALCANAL_ 

segment T2* multiecho data using the Spinal Cord Toolbox (must be installed + in path)

[ mask, weights ] = SEGMENTSPINALCANAL( Img, Params )

Params

    .dataLoadDir 
        DICOM folder
    
    .dataSaveDir 

    .isUsingPropsegCsf
        [default = false]

NOTE
    The protocol is basically that of Topfer R, et al. Magn Reson Med, 2018. 
    It hasn't been tested extensively for different acquisition prtocols/systems


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, Params
- OutputNames : mask, weights
- DefiningClass : MaRdI

---


### resliceimg

**Synopsis**: _RESLICEIMG_ 

Interpolate a MaRdI image (Img.img) and update Img.Hdr accordingly.

In general, RESLICEIMG() uses MATLAB's scatteredInterpolant class.
The exception is when the image input (Img.img) is 2d and the target
output (prescribed by inputs X,Y,Z) is a volume. This scenario is
incompatible with scatteredInterpolant, and nearest-neighbor substitution is
used instead.

-----
Basic Usage

[] = RESLICEIMG( Img, X, Y, Z )
[] = RESLICEIMG( Img, X, Y, Z, mask )

Inputs:

X, Y, Z:
        2d or 3d arrays (size=output image grid) describing the X, Y, Z patient
        coordinates (i.e. of the DICOM reference coordinate system) of the
        target (output) voxels. In general, if one is interpolating from one
        image grid (Img) to another (MaRdI-type object Img2), these arrays are
        obtained by the call: [X,Y,Z] = Img2.getvoxelpositions()

mask: [Optional, default = true(size output image grid)]
        A logical array (size=output image grid) specifying the subset of the
        output voxels that are of interest. (i.e. voxels in the output image
        with a corresponding mask entry == FALSE will simply be assigned zero).
        Note: Specifying the region of interest for extrapolation with this
        variable can greatly accelerate the interpolation!

-----

Advanced Usage TODO

    [F] = RESLICEIMG( Img, X, Y, Z, mask, F ) 

    case:
        interpolationMethod [default='linear']
        is a string supported by the scatteredInterpolant constructor.
    F is the object of type 'scatteredInterpolant' used for interpolation.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, X_Ep, Y_Ep, Z_Ep, varargin
- OutputNames : F
- DefiningClass : MaRdI

---


### isocenter

**Synopsis**: _ISOCENTER_ 

xyzIso = ISOCENTER( Img )

Returns the 3-element vector of the x, y and z coordinates of the magnet
isocenter in the patient coordinate system


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : xyzIso
- DefiningClass : MaRdI

---


### isphase

**Synopsis**: _Returns TRUE if Img is a phase image, FALSE otherwise._ 


isPhase = ISPHASE( Img )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : isPhase
- DefiningClass : MaRdI

---


### ismagnitude

**Synopsis**: _Returns TRUE if Img is a magnitude image, FALSE otherwise._ 


isMag = ISMAGNITUDE( Img )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : isMag
- DefiningClass : MaRdI

---


### getvoxelspacing

**Synopsis**: _GETVOXELSPACING_ 

h = GETVOXELSPACING( Img )
        
Returns 3-component grid-spacing vector [units: mm]:

    h(1) : row spacing (between centers of adjacent rows, i.e. vertical spacing). 

    h(2) : column spacing (between the centers of adjacent columns,
    i.e. horizontal spacing).    

    h(3) : slice spacing (between the centers of adjacent slices, i.e.
    from the DICOM hdr, this is Hdr.SpacingBetweenSlices - for a 2D acquisition
    this not necessarily the same as Hdr.SliceThickness).


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : h
- DefiningClass : MaRdI

---


### getvoxelpositions

**Synopsis**: _GETVOXELPOSITIONS_ 

[X,Y,Z] = GETVOXELPOSITIONS( Img )

    Returns three 3D arrays of doubles, each element containing the
    location [units: mm] of the corresponding voxel with respect to 
    DICOM's 'Reference Coordinate System'.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : X, Y, Z
- DefiningClass : MaRdI

---


### getreliabilitymask

**Synopsis**: _GETRELIABILITYMASK_ 

mask = getreliabilitymask( Mag )
mask = getreliabilitymask( Mag, threshold )

For each echo and each measurement, GETRELIABILITYMASK normalizes
Mag.img(:,:,:,iEcho,iMeasurement) and returns a logical mask wherein
elements are assigned TRUE whenever the corresponding normalized magnitude
voxel is > threshold

By default, threshold = 0.01


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Mag, threshold
- OutputNames : mask
- DefiningClass : MaRdI

---


### getnumberofvoxels

**Synopsis**: _GETNUMBEROFVOXELS_ 

 GETNUMBEROFVOXELS


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : nVoxels
- DefiningClass : MaRdI

---


### getgyromagneticratio

**Synopsis**: _GETGYROMAGNETICRATIO_ 

Gyro = getgyromagneticratio( Img )

Examines .Hdr of MaRdI-type Img for .ImagedNucleus and returns gyromagnetic
ratio in units of rad/s/T.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : GYRO
- DefiningClass : MaRdI

---


### getgridsize

**Synopsis**: _Image dimensions as 3-element vector (rows, columns, slices)_ 


gridSize = GETGRIDSIZE( Img )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : gridSize
- DefiningClass : MaRdI

---


### getfieldofview

**Synopsis**: _GETFIELDOFVIEW_ 

fov = GETFIELDOFVIEW( Img ) ;

Returns field of view in units of mm : [Row Column Slice] dimensions


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : fieldOfView
- DefiningClass : MaRdI

---


### getechotime

**Synopsis**: _GETECHOTIME_ 

TE = GETECHOTIME( Img )
TE = GETECHOTIME( Img, iEcho )

Returns vector of echo times in units of ms.
If 2nd argument (echo index iEcho) is provided, GETECHOTIME returns the TE of
the corresponding echo.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, iEcho
- OutputNames : echoTime
- DefiningClass : MaRdI

---


### getpartialfourierfactors

**Synopsis**: _Returns fraction of k-space coverage in each dim_ 

pff = GETPARTIALFOURIERFACTORS( Img )

Returns 3-element vector of partial Fourier factors in read, phase (in-plane),
and partition (slice) encoding directions.

NOTE:
Siemens uses an enumeration scheme to store Partial Fourier info in the DICOM header:

pff --> Siemens DICOM Hdr entry
4/8 --> 0x1  = 1
5/8 --> 0x2  = 2
6/8 --> 0x4  = 4
7/8 --> 0x8  = 8
8/8 --> 0x10 = 16 (i.e. no partial Fourier)

See: https://github.com/malaterre/GDCM/blob/master/Source/DataDictionary/CSAHeader.xml


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : pff
- DefiningClass : MaRdI

---


### getnumberofslices

**Synopsis**: _Returns number of acquired slices_ 

nSlices = GETNUMBEROFSLICES( Img )

NOTE: nSlices is not necessarily equal to size( Img.img, 3).
e.g. For a 3d (slab) encoding, GETNUMBEROFSLICES returns 1.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : nSlices
- DefiningClass : MaRdI

---


### getnumberofmeasurements

**Synopsis**: _Returns the number of measurements_ 

n = GETNUMBEROFMEASUREMENTS( Img )

NOTE

GETNUMBEROFMEASUREMENTS( Img ) is equivalent to n = size( Img.img, 5 ),
however GETNUMBEROFMEASUREMENTS also checks the DICOM header in Img.Hdr and
issues a warning if n differs from the expected value
(Img.Hdr.MrProt.lRepetitions +1).


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : nVolumes
- DefiningClass : MaRdI

---


### getimagetype

**Synopsis**: _Returns image type as string_ 

imgType = GETIMAGETYPE( Img )

Returns either 'PHASE', 'MAGNITUDE', or 'UNKNOWN'


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : imgType
- DefiningClass : MaRdI

---


### getimagingfrequency

**Synopsis**: _Returns Larmor frequency in Hz_ 


f0 = GETIMAGINGFREQUENCY( Img ) ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : f0
- DefiningClass : MaRdI

---


### getacquisitiontime

**Synopsis**: _GETACQUISITIONTIME_ 

t = GETACQUISITIONTIME( Img )

Derives from the AcquisitionTime field in Siemens DICOM header to return
an array of doubles describing the milliseconds elapsed since midnight

dimensions of t: [ nSlices x nEchoes x nMeasurements ]

t - t(1) yields the elapsed time since acquisition of the 1st k-space point
in the series.

For EPI MOSAIC (which has a single AcquisitionTime value for each volume),
t( iSlice ) = AcquisitionTime (first slice) + iSlice*(volumeTR/nSlices)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : t
- DefiningClass : MaRdI

---


### filter

**Synopsis**: _FILTER_ 

3D low-pass (weighted or unweighted) or median filtering.
Wraps to smooth3() or medfilt3() accordingly.

[] = FILTER( Img )
[] = FILTER( Img, weights )
[] = FILTER( Img, weights, Params )

Img
    the MaRdI-type image volume.

weights
    an array of data weights (>=0) to penalize (for smooth3) or exclude (for
    medfilt3()) identifiable outliers.  Dimensions of weights must be the
    same as the image volume (i.e. Img.getgridsize() )

Params
    an optional struct for which the following Params.fields are supported

    .kernelSize
        in number of voxels
        default = [3 3 3] 

    .method
        'gaussian' OR 'box' OR 'median'
        default = 'gaussian'


TODO
    Add support for 2d (single slice) images


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, weights, Params
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### exist

**Synopsis**: _EXIST_ 

 EXIST


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : is
- DefiningClass : MaRdI

---


### estimatekorigintime

**Synopsis**: _ESTIMATEKORIGINTIME_ 

t0 = ESTIMATEKORIGINTIME( Img )

Returns an estimate of when the k-space origin of an image was sampled
relative to the AcquisitionTime (field in Siemens DICOM header) as a double
in units of milliseconds.

See also: MaRdI.getacquisitiontime()

NOTE: This is a crude estimate and only the case of Cartesian k-space
sampling, beginning at the k_min periphery, has been considered in the
current implementation!


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : t0
- DefiningClass : MaRdI

---


### associateaux

**Synopsis**: _- link image to corresponding auxiliary recording object_ 

Usage

    [] = ASSOCIATEAUX( Img, Aux )
    [] = ASSOCIATEAUX( Img, Aux, Params )

.......

Description
    
Function compares an acquired image (typically, a time-series of multiple
images) and an auxiliary recording (e.g. respiratory trace, ideally
featuring synchronization triggers) and returns (copies to Img.Aux) an
estimate of the Aux recording corresponding to each image measurement.

Cases:
    
    1. Single measurement Aux:
        The value is copied across all image time points

    2. Single measurement Img:
        If Aux possesses multiple measurements, the image is presumed to have
        been taken during a breath-hold. In this case, the Aux signal variance
        is calculated over a shifting time-window (width = total image
        acquisition time) and the median Aux value over the window pertaining
        to the least variance is returned. (Length of Aux recording must be >=
        total scan time).

    3. Img and Aux are both time-series:
        Length of Aux recording must be >= length of the image time-series.

        3.0: Img and Aux time-points already correspond: 
             Aux is simply copied. 

        3.1: Aux recording possesses a single synchronization trigger:
            The trigger is assumed to correspond to the first image in the time series.
            Aux is cropped and linearly interpolated.

        3.2: Aux recording possesses multiple synchronization triggers:
            NOT IMPLEMENTED

        3.3: Aux recording does not possess triggers:
            DEPRECATED 
.......

Params - optional struct for which the following Params.fields are supported

Only used in Case 3 (image time series):

    .interpolationMethod    [default = 'linear']
        argument to INTERP1(), used to interpolate between Aux samples
        (see INTERP1 for other options)

    .auxDelay   [default = 0]
        estimation of transmission delay inherent in the Aux recording process [units: ms]


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img, Aux, Params
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### adjvalidateshim

**Synopsis**: _ADJVALIDATESHIM_ 

[f0, g0, s0] = ADJVALIDATESHIM( Img )

ADJVALIDATESHIM is not a particularly revealing name for a function; however,
it is based on the Siemens AdjValidate commandline tool, with a "-shim" input
argument.

f0 = scalar Larmor (Tx) freq. [ units : Hz ]
g0 = 3-element vector of the linear gradient offsets (gX, gY, gZ) [units : DAC bits]
s0 = 5-element vector of 2nd order shim currents [units : mA]

To convert to the units of the 3D Shim card on the Siemens (Prisma) console,
see
ShimSpecs_IUGM_Prisma_fit.converttomultipole( )
ShimSpecs_HGM_Prisma_fit.converttomultipole( )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : f0, g0, s0
- DefiningClass : MaRdI

---


### scalephasetofrequency

**Synopsis**: _SCALEPHASETOFREQUENCY_ 

Converts unwrapped phase [units:rad] to field [units: Hz]

    Field = scalephasetofrequency( UnwrappedPhase )
    Phase = scalephasetofrequency( Field, -1 )
    
    The 'undo' mode with -1 as the 2nd argument scales from Hz back to rad


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : protected
- InputNames : Img, undoFlag
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### iscoincident

**Synopsis**: _Check coincidence of 2 images_ 

isSame = ISCOINCIDENT( Img1, Img2 )

Returns TRUE if Img1 and Img2 possess coincident voxel positions
and number of measurements/volumes

TODO: Check additional properties + add outputs for each?


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : protected
- InputNames : Img1, Img2
- OutputNames : isSame
- DefiningClass : MaRdI

---


### getinterpolant

**Synopsis**: _Return object of type scatteredInterpolant_ 

GETINTERPOLANT returns an instance of Matlab's scatteredInterpolant class,
useful for interpolating between different image grids (voxel positions).

Interpolant = GETINTERPOLANT( Img )
Interpolant = GETINTERPOLANT( Img, method )
Interpolant = GETINTERPOLANT( Img, method, extrapolationMethod )

Default Interpolant property assignments:

    .Method = 'linear' [i.e. the *interpolation* method]

    .ExtrapolationMethod = 'none' 

    .Values = [vectorized voxel values of 1st echo/measurement, i.e.: Img.img(:,:,:,1,1)]

Note that all 3 properties can be reassigned at any point upon return.

For info on the 2 optional arguments, see help scatteredInterpolant


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : protected
- InputNames : Img, method, extrapolationMethod
- OutputNames : Interpolant
- DefiningClass : MaRdI

---


### zeropad

**Synopsis**: _ZEROPAD_ 

Img = ZEROPAD( Img, padSize, padDirection )

padSize = [ nZerosRows nZerosColumns nZerosSlices ]

padDirection == 'post' || 'pre' || 'both'

-------
    See also PADARRAY()


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : Img, padSize, padDirection
- OutputNames : Img
- DefiningClass : MaRdI

---


### nii

**Synopsis**: _- Write MaRdI image to NiFtI file_ 

Wraps to NII( ) (which wraps to the NiFtI toolbox)

.....
    Syntax

    nii( Img ) 
.....

WARNING

    nii() function is convenient for quickly writing a file to throw
    into an external viewing application (e.g. ImageJ). 
    The nifti Hdr info (i.e. orientation) is probably all wrong. 

    To save NifTI's properly (takes longer) use Img.write()


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : Img
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### cropimg

**Synopsis**: _CROPIMG_ 

Img = CROPIMG( Img, croppedDims )
Img = CROPIMG( Img, croppedDims, centralPoint )

centralPoint are the indices of the original img voxel to become the centralPoint of
the cropped array.

default  (nargin == 2)
    centralPoint = round( size(Img.img)/2 );

note:
if centralPoint +/- croppedDims/2 exceeds the original bounds, the array is cropped at the bound (as opposed to zero filling)
-------
*** TODO

    make compatible for odd-sized arrays


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td></tr>
</table>

- Access : public
- InputNames : Img, gridSizeImgCropped, centralPoint
- OutputNames : Img
- DefiningClass : MaRdI

---


### savefigure

**Synopsis**: _SAVEFIGURE_ 

    Description
    
    Write .png image to file using the 'export_fig' tool

     .......................

    Syntax

    Parameters = SAVEFIGURE( img, Parameters )
    
    Returns employed Parameters struct.

     .......................
    
    The following Parameter.fields are supported

    .filename
        default = './tmp'

    .colormap
        default = 'gray'

    .scaling
        default = [min(img) max(img)]

    .magnification
        default = 1

    .isColorbar
        default = false

    .isBackgroundTransparent
        default = false


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : img, Params
- OutputNames : Params
- DefiningClass : MaRdI

---


### tablestudy

**Synopsis**: _TABLESTUDY_ 

Returns a cell array ( studyDirs ) pertaining to the study directory input
( sortedDicomDir ) where each element in the second column is a MaRdI-loadable
images series. (The 1st column is merely the row index.)

e.g. Protocol to load MaRdI-object :

    % omit semi-colon to display the full cell array (i.e. with the row indices)
    [ studyDirs ] = MaRdI.tablestudy( sortedDicomDir ) 

    % determine the row index of the series you want to load (e.g. 10):
    Img = MaRdI( studyDirs{ 10, 2 } ) ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : sortedDicomDir
- OutputNames : studyDirs
- DefiningClass : MaRdI

---


### sortimages

**Synopsis**: _SORTIMAGES_ 

Arrange unsorted DICOMs (e.g. as delivered via Siemens socket) into organized
subdirectories.

[] = SORTDATA( unsortedDicomDir )
[] = SORTDATA( unsortedDicomDir, sortedDicomDir )
[] = SORTDATA( unsortedDicomDir, sortedDicomDir, isCopying )

If sortedDicomDir is unspecified, a subdirectory ('sorted') is created
within unsortedDicomDir to contain the sorted images.

isCopying (Boolean) is TRUE by default. Set to 0 to move the files instead
of copying. Note that the files will still be renamed.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : unsortedDicomDir, sortedDicomDir, isCopying
- OutputNames : [N/A] 
- DefiningClass : MaRdI

---


### dicominfosiemens

**Synopsis**: _DICOMINFOSIEMENS_ 

Hdr = DICOMINFOSIEMENS

Wraps to Matlab's DICOMINFO to return the standard DICOM Hdr, but also
add fields returned by PARSE_SIEMENS_SHADOW.

(Also replaces original Hdr. fields with more precise values should they
be available in Hdr.MrProt., e.g. In the case of Siemens socket-delivered
images, some fields are missing, & others are simply of reduced precision,
e.g. Hdr.ImagingFrequency is rounded to kHz)

See also DICOMINFO, PARSE_SIEMENS_SHADOW


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : filename
- OutputNames : Hdr
- DefiningClass : MaRdI

---


### segmentspinalcanal_s

**Synopsis**: _SEGMENTSPINALCANAL_S_ 


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Params
- OutputNames : mask, weights
- DefiningClass : MaRdI

---


### getfulldir

**Synopsis**: _GETFULLDIR_ 

fullDir = GETFULLDIR( parentDir, index )

    Searches parentDir[ectory] for subdirectory beginning with index- (e.g.
    .../dataLoadDir/[index]-* ) to return its full path.

    (Useful for rapidly initializing MaRdI with a dicom folder.)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : dataLoadDir, iDir
- OutputNames : fullDir
- DefiningClass : MaRdI

---


### findimages

**Synopsis**: _FINDIMAGES_ 

list = FINDIMAGES( imageDirectory )

Calls dir() to return list of .dcm OR .IMA files in imageDirectory and its echo_* subdirectories


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : imgDir
- OutputNames : list
- DefiningClass : MaRdI

---


### compareimggrids

**Synopsis**: _COMPAREIMGGRIDS_ 

isSame = COMPAREIMGGRIDS( Img1, Img2 )
isSame = COMPAREIMGGRIDS( X1, Y1, Z1, X2, Y2, Z2 )

Returns TRUE if voxel positions of Img1 and Img2 are identical


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : isSame
- DefiningClass : MaRdI

---

### set
[ _built-in method derived from class_ **matlab.mixin.SetGet** ]
For more info, see MATLAB documentation]

---

### get
[ _built-in method derived from class_ **matlab.mixin.SetGet** ]
For more info, see MATLAB documentation]

---

### setdisp
[ _built-in method derived from class_ **matlab.mixin.SetGet** ]
For more info, see MATLAB documentation]

---

### getdisp
[ _built-in method derived from class_ **matlab.mixin.SetGet** ]
For more info, see MATLAB documentation]

---

### eq
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### ne
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### lt
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### gt
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### le
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### ge
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### delete
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### isvalid
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### findprop
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### notify
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### notify
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### addlistener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### listener
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]

---

### findobj
[ _built-in method derived from class_ **handle** ]
For more info, see MATLAB documentation]
