# ShimCom

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _- Shim Communication_

.......

Description

    ShimCom is responsible for all direct communication with the shim system
    microcontoller (e.g. setting/querying shim currents). 
    Declaration of a ShimCom object immediately opens a serial (Com) port.

.......
    
Usage
     
    Note: ShimCom is an Abstract class, i.e. it is not 'used' in itself,
    rather, its subclasses (e.g. ShimOpt_Greg) are used when instantiated as
    objects.

    Shims = ShimCom(  )

    Shims contains fields

        .Cmd
            
        .ComPort    

        .Data 
            .output 
            .input  

        .Params

        .Specs

=========================================================================
Author::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ShimCom
       doc ShimCom


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>true</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: matlab.mixin.SetGet

- - -
## Properties


### Cmd

**Synopsis:** _ShimCom/Cmd is a property._

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
- DefiningClass : ShimCom

### ComPort

**Synopsis:** _ShimCom/ComPort is a property._

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
- DefiningClass : ShimCom

### Data

**Synopsis:** _ShimCom/Data is a property._

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
- DefiningClass : ShimCom

### Params

**Synopsis:** _ShimCom/Params is a property._

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
- DefiningClass : ShimCom

### Specs

**Synopsis:** _ShimCom/Specs is a property._

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
- DefiningClass : ShimCom

---
## Methods


---


### deletecomport

**Synopsis**: _(custom helper function)_ 

Shim = DELETECOMPORT( Shim )

Correct way to delete and clear the serial port object


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : Shim
- DefiningClass : ShimCom

---


### delete

**Synopsis**: _(custom helper function)_ 

DELETE( Shim )

Destructor. Calls Shim.deletecomport( )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom

---


### ShimCom

**Synopsis**: _- Shim Communication_ 

 SHIMCOM - Shim Communication


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : [N/A] 
- OutputNames : Shim
- DefiningClass : ShimCom

---


### convertfromtwoscomplement

**Synopsis**: _CONVERTFROMTWOSCOMPLEMENT_ 

    
int16 z = CONVERTFROMTWOSCOMPLEMENT( uint8 z )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : zUInt
- OutputNames : z
- DefiningClass : ShimCom

---


### mergeints

**Synopsis**: _MERGEINTS_ 


int16 z = MERGEINTS( uint8 highByte, uint8 lowByte, isSigned )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : highByte, lowByte, isSigned
- OutputNames : z
- DefiningClass : ShimCom

---


### splitint

**Synopsis**: _SPLITINT_ 

[lowByte, highByte] = SPLITINT( int16 z )

if z is positive
    z = (2^8)*highByte + lowByte ;        

else if z is in two's complement
    ...


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : z
- OutputNames : lowByte, highByte
- DefiningClass : ShimCom

---


### initializecomport

**Synopsis**: _Initialize (RS-232) Communication Port_ 

if ismac
      portName = '/dev/tty.usbserial' ;
elseif isunix
      portName = '/dev/ttyS0' ;
elseif ispc
      portName = 'COM4' ;
else
      error('What kind of computer is this!?')
end


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Specs
- OutputNames : ComPort
- DefiningClass : ShimCom

---


### getallchanneloutputs

**Synopsis**: _GETCHANNELOUTPUT_ 

ChannelOutput = getchanneloutput( Shim, bankIndex, channelIndex )

ChannelOutput contains fields
    .current [in amps]
    .voltage [in volts]
    .power [in Watts]
    .disspitatedPower [in Watts]
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : ChannelOutputs
- DefiningClass : ShimCom

---


### getchanneloutput

**Synopsis**: _RESETALLSHIMS_ 

Reset all shims to 0 A.

[] = RESETALLSHIMS( Shim )
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, iBank, iChannel
- OutputNames : ChannelOutput
- DefiningClass : ShimCom

---


### resetallshims

**Synopsis**: _SETANDLOADALLSHIMS_ 

Sets all shim buffers (in amps) and loads the settings.

[] = SETANDLOADALLSHIMS( Shim, currents )
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom

---


### setandloadallshims

**Synopsis**: _SETANDLOADSHIM_ 

Set shim current (in amps) for single channel

[] = SETANDLOADSHIM( Shim, channelIndexGlobal, current )
[] = SETANDLOADSHIM( Shim, bankIndex, channelIndexByBank, current )
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom

---


### setandloadshim

**Synopsis**: _GETSYSTEMHEARTBEAT_ 

Queries shim controller and returns TRUE if responsive
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, varargin
- OutputNames : [N/A] 
- DefiningClass : ShimCom

---


### getsystemheartbeat

**Synopsis**: _GETCOMMANDS     (STATIC METHOD!)_ 

Cmd = GETCOMMANDS( )

Returns struct of all available string commands,

e.g., For the RRI HEX implementation...

    Cmd.Mxd.getSystemHeartbeat          = '09' ;
    Cmd.Mxd.getChannelOutput            = '47' ;
    Cmd.Mxd.setAndLoadShimByBankChannel = '44' ;
    Cmd.Mxd.setAndLoadShimByChannel     = '54' ;
    etc...
=========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : isAckReceived
- DefiningClass : ShimCom

---


### getcommands

**Synopsis**: _=========================================================================_ 

  =========================================================================


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>true</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : [N/A] 
- OutputNames : Cmd
- DefiningClass : ShimCom

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
- DefiningClass : ShimCom

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
