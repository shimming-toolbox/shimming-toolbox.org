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


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: ShimCom

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
- GetMethod : 
- SetMethod : 
- DefaultValue : 
- Validation : [N/A] 
- DefiningClass : ShimCom

---
## Methods


---


### currenttostring

**Synopsis**: _CURRENTTOSTRING_ 

Scale current (float in amperes) to uint16, convert to string, and if the resulting length is < 5,
pad with leading '0':


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, current
- OutputNames : current
- DefiningClass : ShimCom_revC

---


### calibratedac

**Synopsis**: _CALIBRATEDAC_ 

 CALIBRATEDAC


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : isCalibrationSuccesful, isChannelCalibrationSuccesful
- DefiningClass : ShimCom_revC

---


### sendcmd

**Synopsis**: _SENDCMD_ 


    Transmits command from client to shim microcontroller


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, command
- OutputNames : isSendOk
- DefiningClass : ShimCom_revC

---


### getallchanneloutputs

**Synopsis**: _GETALLCHANNELSOUTPUTS_ 

ChannelOutputs = GETALLCHANNELOUTPUTS( Shim )

ChannelOutputs has fields

    .current [units: A]
    .voltage [units: mV]


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : ChannelOutputs
- DefiningClass : ShimCom_revC

---


### getchanneloutput

**Synopsis**: _GETCHANNELOUTPUT_ 


[ChannelOutput] = getchanneloutput( Shim , [], iChannel )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, ~, iChannel
- OutputNames : ChannelOutput
- DefiningClass : ShimCom_revC

---


### closecomport

**Synopsis**: _CLOSECOMPORT_ 


Close serial communication port


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### opencomport

**Synopsis**: _OPENCOMPORT_ 


Open serial communication port & reset Arduino Board


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### resetallshims

**Synopsis**: _RESETALLSHIMS_ 


    Shim currents reset to 0 A


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### setandrampallshims

**Synopsis**: _SETANDRAMPALLSHIMS_ 

[] = SETANDRAMPALLSHIMS( Shim, currents )

Update all channels with currents (8-element vector w/units in A) by ramping
current up over 1.0 s


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### setandloadallshims

**Synopsis**: _SETANDLOADALLSHIM_ 

[] = SETANDLOADALLSHIMS( Shim, currents )

Update all channels with currents (8-element vector w/units in A)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### setandloadshim

**Synopsis**: _SETANDLOADSHIM_ 

Set shim current (in units of Amps) for single channel

[] = SETANDLOADSHIM( Shims, channelIndex, current )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim, iCh, current
- OutputNames : [N/A] 
- DefiningClass : ShimCom_revC

---


### getsystemheartbeat

**Synopsis**: _GETSYSTEMHEARTBEAT_ 

 GETSYSTEMHEARTBEAT


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Shim
- OutputNames : isAckReceived
- DefiningClass : ShimCom_revC

---


### ShimCom_revC

**Synopsis**: _SHIMCOM - Shim Communication_ 

 SHIMCOM - Shim Communication


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Specs
- OutputNames : Shim
- DefiningClass : ShimCom_revC

---


### initializecomport

**Synopsis**: _:_ 

-  Initialize (RS-232) Communication Port

--------------------------------------------------------------------------


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Specs
- OutputNames : ComPort
- DefiningClass : ShimCom_revC

---


### getcommands

**Synopsis**: _:_ 

- Get shim system commands

--------------------------------------------------------------------------


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : [N/A] 
- OutputNames : Cmd
- DefiningClass : ShimCom_revC

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
- DefiningClass : ShimCom_revC

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
