# ShimSpecs_Prisma

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _SHIMSPECS_Prisma_

Shim System Specifications for Siemens Prisma shims
     
     ShimSpecs_Prisma is a ShimSpecs subclass

=========================================================================
Author::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ShimSpecs_Prisma
       doc ShimSpecs_Prisma


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: ShimSpecs

- - -
## Properties


### Id

**Synopsis:** _- system identifiers_

 Id -  system identifiers

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs

### Amp

**Synopsis:** _- relating to amplification_

 Amp -  relating to amplification

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs

### Com

**Synopsis:** _- relating to communication (e.g. RS-232)_

 Com -  relating to communication (e.g. RS-232)

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs

### Dac

**Synopsis:** _- relating to digital-to-analog conversion_

 Dac -  relating to digital-to-analog conversion 

<table>
<table border=1><tr><th>Dependent</th><th>Constant</th><th>Abstract</th><th>Transient</th><th>Hidden</th><th>GetObservable</th><th>SetObservable</th><th>AbortSet</th><th>NonCopyable</th><th>HasDefault</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs

---
## Methods


---


### ShimSpecs_Prisma

**Synopsis**: _SHIMSPECS - Shim System Specifications_ 

 SHIMSPECS - Shim System Specifications


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : [N/A] 
- OutputNames : Shim
- DefiningClass : ShimSpecs_Prisma

---


### converttomultipole

**Synopsis**: _CONVERTTOMULTIPOLE_ 

shimValues = CONVERTTOMULTIPOLE( shimValues )

Shim values stored in MrProt (private Siemens DICOM.Hdr) are in units of
DAC counts for the gradient offsets and in units of mA for the 2nd order shims.
CONVERTTOMULTIPOLE uses the information given by the Siemens commandline tool
    AdjValidate -shim -info
to convert a vector of shim settings in those units into the "multipole" values
which are used in the Siemens GUI display (i.e. Shim3d)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : shimValues
- OutputNames : shimValues
- DefiningClass : ShimSpecs_Prisma

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
- DefiningClass : ShimSpecs_Prisma
