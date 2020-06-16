# ShimCom_revC

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _- Shim Communication for the 8-channel AC/DC neck coil_

.......
    
Usage

    Shims = ShimCom_revC(  )

    Shims contains fields

        .Cmd
            
        .ComPort    

        .Data 

        .Params

=========================================================================
     ShimCom_revC is a ShimCom subclass.

=========================================================================
Updated::20181028::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ShimCom_revC
       doc ShimCom_revC

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute            | Value |
|:--------------------:|:-----:|
| Hidden               | false |
| Sealed               | false |
| Abstract             | false |
| Enumeration          | false |
| ConstructOnLoad      | false |
| HandleCompatible     | true  |
| RestrictsSubclassing | false |

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: ShimCom
 
</details>

- - -
## Properties

 
-----
 
### Cmd

**Synopsis:** _ShimCom/Cmd is a property._

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
- DefiningClass : ShimCom
 
</details>
 
-----
 
### ComPort

**Synopsis:** _ShimCom/ComPort is a property._

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
- DefiningClass : ShimCom
 
</details>
 
-----
 
### Data

**Synopsis:** _ShimCom/Data is a property._

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
- DefiningClass : ShimCom
 
</details>
 
-----
 
### Params

**Synopsis:** _ShimCom/Params is a property._

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
- DefiningClass : ShimCom
 
</details>
 
-----
 
### Specs

**Synopsis:** _ShimCom/Specs is a property._

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
- DefiningClass : ShimCom
 
</details>

---
## Methods


---


### currenttostring

**Synopsis**: _CURRENTTOSTRING_ 

Scale current (float in amperes) to uint16, convert to string, and if the resulting length is < 5,
pad with leading '0':

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
- InputNames : Shim, current
- OutputNames : current
- DefiningClass : ShimCom_revC
 
</details>

---


### calibratedac

**Synopsis**: _CALIBRATEDAC_ 

 CALIBRATEDAC

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
- InputNames : Shim
- OutputNames : isCalibrationSuccesful, isChannelCalibrationSuccesful
- DefiningClass : ShimCom_revC
 
</details>

---


### sendcmd

**Synopsis**: _SENDCMD_ 


    Transmits command from client to shim microcontroller

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
- InputNames : Shim, command
- OutputNames : isSendOk
- DefiningClass : ShimCom_revC
 
</details>

---


### getallchanneloutputs

**Synopsis**: _GETALLCHANNELSOUTPUTS_ 

ChannelOutputs = GETALLCHANNELOUTPUTS( Shim )

ChannelOutputs has fields

    .current [units: A]
    .voltage [units: mV]

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
- InputNames : Shim
- OutputNames : ChannelOutputs
- DefiningClass : ShimCom_revC
 
</details>

---


### getchanneloutput

**Synopsis**: _GETCHANNELOUTPUT_ 


[ChannelOutput] = getchanneloutput( Shim , [], iChannel )

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
- InputNames : Shim, ~, iChannel
- OutputNames : ChannelOutput
- DefiningClass : ShimCom_revC
 
</details>

---


### closecomport

**Synopsis**: _CLOSECOMPORT_ 


Close serial communication port

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
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### opencomport

**Synopsis**: _OPENCOMPORT_ 


Open serial communication port & reset Arduino Board

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
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### resetallshims

**Synopsis**: _RESETALLSHIMS_ 


    Shim currents reset to 0 A

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
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### setandrampallshims

**Synopsis**: _SETANDRAMPALLSHIMS_ 

[] = SETANDRAMPALLSHIMS( Shim, currents )

Update all channels with currents (8-element vector w/units in A) by ramping
current up over 1.0 s

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
- InputNames : Shim, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### setandloadallshims

**Synopsis**: _SETANDLOADALLSHIM_ 

[] = SETANDLOADALLSHIMS( Shim, currents )

Update all channels with currents (8-element vector w/units in A)

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
- InputNames : Shim, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### setandloadshim

**Synopsis**: _SETANDLOADSHIM_ 

Set shim current (in units of Amps) for single channel

[] = SETANDLOADSHIM( Shims, channelIndex, current )

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
- InputNames : Shim, iCh, current
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC
 
</details>

---


### getsystemheartbeat

**Synopsis**: _GETSYSTEMHEARTBEAT_ 

 GETSYSTEMHEARTBEAT

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
- InputNames : Shim
- OutputNames : isAckReceived
- DefiningClass : ShimCom_revC
 
</details>

---


### ShimCom_revC

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
- DefiningClass : ShimCom_revC
 
</details>

---


### initializecomport

**Synopsis**: _:_ 

-  Initialize (RS-232) Communication Port

--------------------------------------------------------------------------

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : Specs
- OutputNames : ComPort
- DefiningClass : ShimCom_revC
 
</details>

---


### getcommands

**Synopsis**: _:_ 

- Get shim system commands

--------------------------------------------------------------------------

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : [N/A] 
- OutputNames : Cmd
- DefiningClass : ShimCom_revC
 
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
- DefiningClass : ShimCom_revC
 
</details>

---


### deletecomport

**Synopsis**: _(custom helper function)_ 

Shim = DELETECOMPORT( Shim )

Correct way to delete and clear the serial port object

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
- InputNames : Shim
- OutputNames : Shim
- DefiningClass : ShimCom
 
</details>

---


### delete

**Synopsis**: _(custom helper function)_ 

DELETE( Shim )

Destructor. Calls Shim.deletecomport( )

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
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom
 
</details>

---


### convertfromtwoscomplement

**Synopsis**: _CONVERTFROMTWOSCOMPLEMENT_ 

    
int16 z = CONVERTFROMTWOSCOMPLEMENT( uint8 z )

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : zUInt
- OutputNames : z
- DefiningClass : ShimCom
 
</details>

---


### mergeints

**Synopsis**: _MERGEINTS_ 


int16 z = MERGEINTS( uint8 highByte, uint8 lowByte, isSigned )

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : highByte, lowByte, isSigned
- OutputNames : z
- DefiningClass : ShimCom
 
</details>

---


### splitint

**Synopsis**: _SPLITINT_ 

[lowByte, highByte] = SPLITINT( int16 z )

if z is positive
    z = (2^8)*highByte + lowByte ;        

else if z is in two's complement
    ...

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | true  |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : public
- InputNames : z
- OutputNames : lowByte, highByte
- DefiningClass : ShimCom
 
</details>

---

### set
— _built-in method derived from class_ **matlab.mixin.SetGet**. 
For more info, refer to the MATLAB documentation.

---

### get
— _built-in method derived from class_ **matlab.mixin.SetGet**. 
For more info, refer to the MATLAB documentation.

---

### setdisp
— _built-in method derived from class_ **matlab.mixin.SetGet**. 
For more info, refer to the MATLAB documentation.

---

### getdisp
— _built-in method derived from class_ **matlab.mixin.SetGet**. 
For more info, refer to the MATLAB documentation.

---

### eq
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### ne
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### lt
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### gt
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### le
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### ge
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### isvalid
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### findprop
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### notify
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### notify
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### addlistener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### listener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### addlistener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### listener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### addlistener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### listener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### addlistener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### listener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### addlistener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### listener
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.

---

### findobj
— _built-in method derived from class_ **handle**. 
For more info, refer to the MATLAB documentation.
