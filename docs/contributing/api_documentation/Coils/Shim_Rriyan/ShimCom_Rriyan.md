# ShimCom_Rriyan

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _- Shim Communication for RRI system_

.......

Description

    SHIMCOMRRI is responsible for all direct communication with the shim system
    (MXD & DSU). Declaration of a ShimComRri object immediately opens a serial
    (Com) port.

.......
    
Usage

    Shims = ShimComRri(  )

    Shims contains fields

        .Cmd
            
        .ComPort    

        .Data 

        .Params

=========================================================================
Notes

    MXD and DSU commands are listed in the RRI Hex Protocol Specification guide:
    9700052-0000 HexProtocolSpecification_REV-G

    Large portions of the following code are effectively a translation, into
    MATLAB, of the VB source code for "Demo DSU Host Software ver. 2.00"
    courtesy of Resonance Research, Inc.  

    For a primer on RS-232 communication in Matlab see
http://www.mathworks.com/help/matlab/matlab_external/overview-of-the-serial-port.html

    Part of series of classes pertaining to shimming:

     ProbeTracking
     ShimCal
     ShimCom
     ShimEval
     ShimOpt
     ShimSpecs
     ShimTest 
     ShimUse
      
     ShimComRri is a ShimCom subclass.

=========================================================================
Updated::20161121::ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ShimCom_Rriyan
       doc ShimCom_Rriyan

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


### deletecomport

**Synopsis**: _(custom helper function)_ 

Shims = DELETECOMPORT( Shims )

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
- InputNames : Shims
- OutputNames : Shims
- DefiningClass : ShimCom_Rriyan
 
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
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### testwave

**Synopsis**: _(DSU cmd 0x21)_ 

[] = TESTWAVE( Shims, channelIndex, isOn )

    channelIndex : number between 1 to 32 (see ShimCom_Rriyan.getchanneltobankkey)
    isOn : true (1) OR false (0)

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
- InputNames : Shims, iChannel, isOn
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchannelmatrixinterconnection

**Synopsis**: _(DSU cmd 0xFB)_ 

interconnections = GETMATRIXINTERCONNECTION( Shims, channelIndex )

    channelIndex : number between 1 to 32 (see ShimCom_Rriyan.getchanneltobankkey)

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
- InputNames : Shims, iChannel
- OutputNames : interconnections
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setmatrixinterconnectiontoself

**Synopsis**: _(DSU cmd 0x20)_ 

[] = SETMATRIXINTERCONNECTIONTOSELF( Shims, channelIndex, slotIndex )

    channelIndex : number between 1 to 32 (see ShimCom_Rriyan.getchanneltobankkey)
    slotIndex : [time constant module 1-4]: 
        0x00 (no connection), 
        0x01 (first module), 
        0x02 (second), 
        0x04 (third), 
        0x08 (fourth), 
        0x09 (first and fourth) etc. 

        (See corresponding entry in Hex Communication manual)

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
- InputNames : Shims, iChannel, iSlot
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setslice

**Synopsis**: _(DSU cmd 0xD0)_ 

[] = SETSLICE( Shims, channelIndex, sliceIndex, sliceIntensity )

    channelIndex : number between 1 to 32 (see ShimCom_Rriyan.getchanneltobankkey)
    sliceIndex   : number between 1 and 1000 
    percentSliceIntensity : number between -100 and 100

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
- InputNames : Shims, iChannel, iSlice, percentSliceIntensity
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getslice

**Synopsis**: _(DSU cmd 0xE0)_ 

percentSliceIntensity = GETSLICE( Shims, channelIndex, sliceIndex )

    channelIndex : number between 1 to 32 (see ShimCom_Rriyan.getchanneltobankkey)
    sliceIndex   : number between 1 and 1000 

    percentSliceIntensity : number between -100 and 100

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
- InputNames : Shims, iChannel, iSlice
- OutputNames : percentSliceIntensity
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchanneloutput

**Synopsis**: _(MXD cmd 0x47)_ 

ChannelOutput = getchanneloutput( Shims, bankIndex, channelIndex )

ChannelOutput contains fields
    .current [in amps]
    .voltage [in volts]
    .power [in Watts]
    .disspitatedPower [in Watts]

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
- InputNames : Shims, iBank, iChannel
- OutputNames : ChannelOutput
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchannellongstatus

**Synopsis**: _(MXD cmd 0x45)_ 

ChannelStatus = getchannellongstatus( Shims, bankIndex, channelIndex )

ChannelStatus contains fields
    .current [in amps]
    .voltage [in volts]
    .power [in Watts]
    .dissipatedPower [in Watts]
    .dacInputVoltage [in volts]
    .auxiliaryInputVoltage [in volts]
    .onOff [0=Off, 1=On]
    .auxiliaryEnable [0=Off, 1=On]
    .faults [see HEX protocol]

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
- InputNames : Shims, iBank, iChannel
- OutputNames : ChannelStatus
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setchannelbuffer

**Synopsis**: _*INVALID?_ 

 SETCHANNELBUFFER *INVALID?

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
- InputNames : Shims, iBank, iChannel, current
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setandloadshim

**Synopsis**: _(MXD cmd 0x44 || 0x54)_ 

Set shim current (in amps) for single channel

[] = SETANDLOADSHIM( Shims, channelIndexGlobal, current )
[] = SETANDLOADSHIM( Shims, bankIndex, channelIndexByBank, current )

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
- InputNames : Shims, varargin
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getsystemcurrenttime

**Synopsis**: _(MXD cmd 0x2C)_ 

SystemTime = GETSYSTEMCURRENTTIME( Shims )

SystemTime has fields
    
    .year
    .month
    .day
    .hour
    .minute
    .second

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
- InputNames : Shims
- OutputNames : SystemTime
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getallchanneloutputs

**Synopsis**: _GETALLCHANNELSOUTPUTS      (custom cmd)_ 

ChannelOutputs = GETALLCHANNELOUTPUTS( Shim )

ChannelOutputs has fields

    .current [amperes]
    .voltage [volts]
    .power [watts]
    .dissipatedPower [watts]

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
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setandloadallshims

**Synopsis**: _(custom cmd)_ 

Sets shim buffers (MXD cmd 0x22) and loads the settings (MXD cmd 0x23).

[] = SETANDLOADALLSHIMS( Shim, currents )

numel(currents) == Shims.Specs.nChannels || Shims.Specs.nActiveChannels

i.e. currents vector is either length 24 or 32

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
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setsystemcurrenttime

**Synopsis**: _(MXD cmd 0x2B)_ 

[] = SETSYSTEMCURRENTTIME( Shims, SystemTime )

SystemTime has fields
    
    .year
    .month
    .day
    .hour
    .minute
    .second

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
- InputNames : Shims, SystemTime
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getsysteminformation

**Synopsis**: _(MXD cmd 0x29)_ 

SystemInfo = GETSYSTEMINFORMATION( Shims )

SystemInfo has fields

    .SoftwareVersion
        .majorRevision
        .minorRevision
    .SystemModel
        .name
        .numberOfChannels
    .serialNumber

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
- InputNames : Shims
- OutputNames : SystemInfo
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getbanklongstatus

**Synopsis**: _(MXD cmd 0x26)_ 

BankStatus = GETBANKLONGSTATUS( Shims, bankIndex )
    
    bankIndex = 0, 1, 2, or 3

BankStatus has fields
    .highVoltagePositiveRail [in V]
    .highVoltageNegativeRail [in V]
    .lowVoltagePositiveRail  [in V]
    .lowVoltageNegativeRail  [in V]
    .heatsinkTemperature     [in degrees C]
    .channelsWithFaults     [0-7 bitwise: ch0, ch1, ch2,... ch7] 
    .faults           [See HEX protocol document]

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
- InputNames : Shims, iBank
- OutputNames : BankStatus
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getsystemlongstatus

**Synopsis**: _(MXD cmd 0x25)_ 

SystemStatus = GETSYSTEMLONGSTATUS( Shims )

SystemStatus has fields
    .totalOutputPower [in W]
    .onOff [1 - ON, 0 - OFF] 
    .globlErrorRegister  
        [0-7 bitwise: Error on a bank, Bank is missing, Bank communication
        error, TBD, TBD, TBD, Interlock Error, Fatal Error Requiring Shutdown
        Present)]

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
- InputNames : Shims
- OutputNames : SystemStatus
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setloadallshims

**Synopsis**: _(MXD cmd 0x23)_ 

    Loads buffered shim settings.

    [] = SETLOADALLSHIMS( Shims )

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
- InputNames : Shims
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setallshims

**Synopsis**: _(MXD cmd: 0x22)_ 

SETALLSHIMS( Shims, currents )

Sets all shims based on [nChannel x 1] current vector (in amps)

NB: for our system, currents vector has 32 entries (=total # amplifier
channels, including inactive channels).  Currents for inactive channels
should be zero.

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
- InputNames : Shims, currents
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setpoweroff

**Synopsis**: _(MXD cmd 0x21)_ 


[] = SETPOWEROFF( Shims )

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
- InputNames : Shims
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### setpoweron

**Synopsis**: _(MXD cmd 0x20)_ 


[] = SETPOWERON( Shims )

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
- InputNames : Shims
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchannelthresholddata

**Synopsis**: _(NACK? MXD cmd 0x16)_ 

ThresholdData = getchannelthresholddata( Shims, bankIndex, channelIndex )

ThresholdData contains fields
    .maxControlVoltage [in volts]
    .maxOutputCurrent [in amps]
    .maxOutputPower [in Watts]

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
- InputNames : Shims, iBank, iChannel
- OutputNames : ThresholdData
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### resetallshims

**Synopsis**: _(Custom cmd)_ 

Reset all shims to 0 A.

[] = RESETALLSHIMS( Shim )

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
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### clearsystemerrors

**Synopsis**: _(MXD cmd 0x0A)_ 


[] = CLEARSYSTEMERRORS( Shims )

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
- InputNames : Shims
- OutputNames : [N/A] 
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getsystemheartbeat

**Synopsis**: _(MXD cmd 0x09)_ 


Queries MXD and returns 'ACK' if responsive

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
- InputNames : Shims
- OutputNames : isAckReceived
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getbankadccalibrationdata

**Synopsis**: _(*INVALID? MXD cmd 0x02)_ 

[offset, slope] = GETBANKADCCALIBRATIONDATA( Shims, bankIndex )

    bankIndex = 0, 1, 2, or 3

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
- InputNames : Shims, iBank
- OutputNames : offset, slope
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### ShimCom_Rriyan

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
- InputNames : [N/A] 
- OutputNames : Shims
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### ampstodac

**Synopsis**: _AMPSTODAC_ 

Wraps a current value in Amperes to a count within the DAC's range.

dacCount = AMPSTODAC( Shims, current )

Note: Beware of clipping:

    Shims.Specs.Dac.maxCurrent = 5 A % [By default]

    if current >= Shims.Specs.Dac.maxCurrent, dacCount = 32767 ;
    elseif current <= Shims.Specs.Dac.maxCurrent, dacCount = -32768 ;

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | false |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : private
- InputNames : Shims, current
- OutputNames : dacCount
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### writetomachine

**Synopsis**: _WRITETOMACHINE_ 


Write to machine (and read back the system response)

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | false |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : private
- InputNames : Shims
- OutputNames : Shims, isMsgRead
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### sendcmd

**Synopsis**: _transmits a command from client to MXD or DSU systems_ 

    order of output: 

    sync -> lng  -> cmd  -> outputData -> C0 -> C1

.......

    Description

    sync 

        sync command for MXD (=='0x02') or DSU (=='0xC0') 

    lng

        length in bytes of entire message to be transmitted 
        (including sync, lng, cmd, ,outputData, crc)

    cmd 

        system command in hex format

    outputData

        formated according to command (see RRI manual)


.......

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | false |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : private
- InputNames : Shims
- OutputNames : Shims, isSendOk
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### isackreceived

**Synopsis**: _ISACKRECEIVED_ 

Checks data returned from master board for
    'ACK','NACK','INVALID', or 'Wrong'

<details markdown="block">
<summary><b>Details</b></summary>
 

| Attribute          | Value |
|:------------------:|:-----:|
| Static             | false |
| Abstract           | false |
| Sealed             | false |
| ExplicitConversion | false |
| Hidden             | false |

- Access : private
- InputNames : Shims
- OutputNames : isAckReceived, systemResponse
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchanneltobankkey

**Synopsis**: _(custom helper function)_ 

Maps the spine coil channels (1-24) to the corresponding MXD banks (0-3)
& channels (1-32)

.......

Syntax

    X = GETCHANNELTOBANKKEY();

.......

Description

    E.g. (top 6 rows of output)
    
    >> getchanneltobankkey()

Shim Coil || Bank || Channel || Channel ||
                      (by bank)  (global)
      1         0        5          6           
      2         0        0          1           
      3         0        6          7           
      4         1        0          9           
      5         0        1          2 
      6         0        2          3 

                    ...

.......

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
- OutputNames : channelToBankKey
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### mapcurrentstomxd

**Synopsis**: _(custom helper function)_ 

There are only 24 active channels in the 32 channel amplifier. MAPCURRENTSTOMXD
takes a 24-element vector and rearranges the elements into a 32-element vector
where indices corresponding to inactive channels are 0 and the original 1-24
channel values are arranged according to their global MXD channel index.

currentsOut = MAPCURRENTSTOMXD( currentsIn )

e.g. Insert active channel indices into corresponding cells of full currents
    vector (i.e. 32 channels, including inactive channels)

>> currentsOut = ShimCom_Rriyan.mapcurrentstomxd( [1 : 24] )

currentsOut =

       2
       5
       6
       9
      10
       1
       3
       0
       4
       7
       8
      11
      12
       0
       0
       0
      14
      17
      18
      21
      22
      13
      15
       0
      16
      19
      20
      23
      24
       0
       0
       0

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
- InputNames : currents
- OutputNames : currentsOut
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getchanneltobankmatrices

**Synopsis**: _(custom helper function)_ 

[X0,X1,X2,X3] = GETCHANNELTOBANKMATRICES()

Returns four [nChannelsPerBank x 24] matrices that when applied to
the [24 x 1] vector of shim currents will each return a truncated version
of the vector corresponding strictly to the channels belonging to amplifier
banks 0 through 3.

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
- OutputNames : X0, X1, X2, X3
- DefiningClass : ShimCom_Rriyan
 
</details>

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
      error('Wtf kind of computer is u running?')
end

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
- InputNames : Specs
- OutputNames : ComPort
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### getcommands

**Synopsis**: _GETCOMMANDS_ 

[] = GETCOMMANDS( )
-------------------------------------------------------------------------
System commands (as Hexadecimal strings)
I.  for the MXD
II. for DSU

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
- InputNames : [N/A] 
- OutputNames : Cmd
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### calculatecrc

**Synopsis**: _CALCULATECRC_ 

    
    uint16 crc = CALCULATECRC( uint8 dataMsg ) ;

    dataMsg
        integer array

    crc
        integer

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
- InputNames : dataMsg
- OutputNames : crc
- DefiningClass : ShimCom_Rriyan
 
</details>

---


### appendcrc

**Synopsis**: _APPENDCRC_ 

uint8 msg = APPENDCRC( uint8 msg, uint16 crc )

appendedMsg = APPENDCRC( msg, crc ) adds the 2 (low followed by high) CRC
bytes to the end of 'msg'

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
- InputNames : dataMsg, crc
- OutputNames : dataMsg
- DefiningClass : ShimCom_Rriyan
 
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
- DefiningClass : ShimCom_Rriyan
 
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
