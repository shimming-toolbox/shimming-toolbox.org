# ShimSpecs_Sim

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _SHIMSPECS_SIM_

Shim system specifications for a simulated coil design.

Usage

    Specs = ShimSpecs_Sim( Specs )

**This class only serves to typecast a parameters struct defined in a ShimOpt_
class (e.g. ShimOpt_SphericalHarmonics, or ShimOpt_Sim) into a "ShimSpecs"
object given that certain functions may expect the latter as opposed to a
generic struct.**

First used in Lopez Rios et al. Integrated AC / DC coil and dipole Tx array
for 7T MRI of the spinal cord. In: Proc. 27th Annu. Meet. ISMRM, Montreal,
Canada, 2019. Abstr. 0220.

ShimSpecs_Sim is a ShimSpecs subclass. For more info, see ShimSpecs.m

=========================================================================
Author::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ShimSpecs_Sim
       doc ShimSpecs_Sim

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute            | Value |
|:--------------------:|:-----:|
| Hidden               | false |
| Sealed               | false |
| Abstract             | false |
| Enumeration          | false |
| ConstructOnLoad      | false |
| HandleCompatible     | false |
| RestrictsSubclassing | false |

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: ShimSpecs
 
</details>

- - -
## Properties

 
-----
 
### Id

**Synopsis:** _- system identifiers_

 Id -  system identifiers

<details markdown="block">
<summary><b>Details</b></summary>
 
| Attribute     | Value |
|:-------------:|:-----:|
| Dependent     | false |
| Constant      | false |
| Abstract      | false |
| Transient     | false |
| Hidden        | false |
| GetObservable | false |
| SetObservable | false |
| AbortSet      | false |
| NonCopyable   | false |
| HasDefault    | false |

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs
 
</details>
 
-----
 
### Amp

**Synopsis:** _- relating to amplification_

 Amp -  relating to amplification

<details markdown="block">
<summary><b>Details</b></summary>
 
| Attribute     | Value |
|:-------------:|:-----:|
| Dependent     | false |
| Constant      | false |
| Abstract      | false |
| Transient     | false |
| Hidden        | false |
| GetObservable | false |
| SetObservable | false |
| AbortSet      | false |
| NonCopyable   | false |
| HasDefault    | false |

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs
 
</details>
 
-----
 
### Com

**Synopsis:** _- relating to communication (e.g. RS-232)_

 Com -  relating to communication (e.g. RS-232)

<details markdown="block">
<summary><b>Details</b></summary>
 
| Attribute     | Value |
|:-------------:|:-----:|
| Dependent     | false |
| Constant      | false |
| Abstract      | false |
| Transient     | false |
| Hidden        | false |
| GetObservable | false |
| SetObservable | false |
| AbortSet      | false |
| NonCopyable   | false |
| HasDefault    | false |

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs
 
</details>
 
-----
 
### Dac

**Synopsis:** _- relating to digital-to-analog conversion_

 Dac -  relating to digital-to-analog conversion 

<details markdown="block">
<summary><b>Details</b></summary>
 
| Attribute     | Value |
|:-------------:|:-----:|
| Dependent     | false |
| Constant      | false |
| Abstract      | false |
| Transient     | false |
| Hidden        | false |
| GetObservable | false |
| SetObservable | false |
| AbortSet      | false |
| NonCopyable   | false |
| HasDefault    | false |

- GetAccess : public
- SetAccess : public
- PartialMatchPriority : [N/A] 
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimSpecs
 
</details>

---
## Methods


---


### ShimSpecs_Sim

**Synopsis**: _Constructor_ 

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | false |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : Specs
- OutputNames : Shim
- DefiningClass : ShimSpecs_Sim
 
</details>

---


### empty

**Synopsis**: _Returns an empty object array of the given size_ 

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | true  |

- Access : public
- InputNames : varargin
- OutputNames : E
- DefiningClass : ShimSpecs_Sim
 
</details>
