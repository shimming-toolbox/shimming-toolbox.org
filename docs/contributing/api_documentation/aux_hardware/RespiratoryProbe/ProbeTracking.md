# ProbeTracking

**Filetype:** _MATLAB&reg; classdef_

**Synopsis:** _- Respiratory probe_

This class deals with respiratory sensor recording.

.......

Usage

    P = ProbeTracking() ;
    P = ProbeTracking( Specs ) ;

    When called without arguments, ProbeTracking will attempt to find a
    connected probe device (in /dev/) based on a set of known device names
    (operating system and station dependent). 

        [TODO: Add KnownDevices.m ?]

    If a device is discovered, by default and if properly configured (see
    NOTE [1]), a second ("daemon") MATLAB session is launched in the background
    to record continuously from the device. 
    
    To record and display the signal at any given moment, the user calls 
    P.recordphysiosignal(), which reads back the live recording from the
    daemon session through a shared memory-mapping. A graphical STOP button
    appears which, when pressed, ends this windowed recording and saves it to file
    without ending the background recording (so P.recordphysiosignal() can be
    called again). 

    For more options, type: help ProbeTracking.recordphysiosignal

    P = ProbeTracking( Specs ) ;

        Specs.isRecordingDaemonEnabled (bool)
            true: device I/O (probe recording) and signal processing are 
              performed in a secondary background/daemon MATLAB session.
              User session can still monitor the live recording with Probe.recordphysiosignal()
            false: device I/O and signal processing is done in the same 
              session. This is useful for debugging. 

    For dual recording (e.g., pressure + capacitive probe), do the
    following:
    Plug both probes, then launch the deamon for one probe:
      P = ProbeTracking();
    Then, create a new structure with portName of the 2nd probe:
      AuxSpecs.portName = 'tty.usbmodem4873121' (find the proper port address under /dev after plugging the usb)
    Create a new object (daemon):
      C = ProbeTracking(AuxSpecs)
    To record with both probes:
      P.recordphysiosignal(C)

.......

    NOTE [1]: The daemon configuration requires 3 things: 

        1. The file '~/startup.m' must exist and you must add the
        realtime_shimming_repository directory to the MATLAB path, e.g.

            addpath( genpath( '~/Code/realtime_shimming_repository/' ) ) ;
        
        2. For #3 to work, matlab needs to exist in the system path, 
        e.g. add the following lines (adapted to refer to your version of MATLAB)
        to ~/.bash_profile (or ~/.bashrc)

            # add MATLAB path
            export PATH=$PATH:/Applications/MATLAB_R2015a.app/bin/ 

        3. The user needs to start their MATLAB session from the command line,
        and from their home folder, e.g. 
            
            user@polymtl ~ $ matlab &

.......

    P has properties:
        .Data 
        .Log
        .Source    
        .Specs

=========================================================================
Author: ryan.topfer@polymtl.ca
=========================================================================

    Documentation for ProbeTracking
       doc ProbeTracking


__ATTRIBUTES__


<table>
<table border=1><tr><th>Hidden</th><th>Sealed</th><th>Abstract</th><th>Enumeration</th><th>ConstructOnLoad</th><th>HandleCompatible</th><th>RestrictsSubclassing</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td><td>true</td><td>false</td></tr>
</table>

- InferiorClasses : [N/A] 
- ContainingPackage : [N/A] 
- EventList : [N/A] 
- EnumerationMemberList : [N/A] 
- Superclasses: matlab.mixin.SetGet

- - -
## Properties


### Data

**Synopsis:** _ProbeTracking/Data is a property._

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
- DefiningClass : ProbeTracking

### Log

**Synopsis:** _ProbeTracking/Log is a property._

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
- DefiningClass : ProbeTracking

### Source

**Synopsis:** _ProbeTracking/Source is a property._

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
- DefiningClass : ProbeTracking

### Specs

**Synopsis:** _- state = {active, inactive, inert, void}_

 Specs -  state = {active, inactive, inert, void}

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
- DefiningClass : ProbeTracking

---
## Methods


---


### resetdaemon

**Synopsis**: _RESETDAEMON_ 

Resets the daemon recording: i.e. Preceding recording is retained in Aux.Log
but the signal processing will begin afresh. (Use when patient position
changes, for example.)


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### saverecording

**Synopsis**: _SAVERECORDING_ 

    SAVERECORDING( Aux )
    SAVERECORDING( Aux, logFilename )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux, logFilename
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### recordphysiosignal

**Synopsis**: _RECORDPHYSIOSIGNAL_ 

Continuously tracks respiratory probe.

Syntax

[] = RECORDPHYSIOSIGNAL( Aux, Params )
[] = RECORDPHYSIOSIGNAL( Aux, Aux2, Params )


RECORDPHYSIOSIGNAL( Aux, Params ) will begin a new recording (and, optionally, real-time plotting)
from the probe 'Aux'.

With an additional probe input 'Aux2', dual recording is performed
NOTE: Aux and Aux2 must possess the same sampling period (i.e. Aux.Specs.dt == Aux2.Specs.dt)

.......................
    
    The following Params.fields are supported

    .isSavingData
        default = true

    .filename
        default: Named by ProbeTracking.saverecording() 

    .runTime 
        Total sampling time in seconds.
        default = 15*60 [i.e. 15 minutes] 

    .isPlottingInRealTime
        [default : true ]

    .refreshRate  
        Rate at which the real-time display refreshes. 
        Problems may arise if this is too fast!
        [default : 4 Hz ]


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux1, varargin
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### recordandplotphysiosignal

**Synopsis**: _RECORDANDPLOTPHYSIOSIGNAL_ 

    
Calls ProbeTracking.recordphysiosignal() to record probe data, after which
user is prompted whether to proceed (e.g. save + return) or re-record.

[] = RECORDANDPLOTPHYSIOSIGNAL( Aux, Parameters )

See HELP ProbeTracking.recordphysiosignal() for accepted Parameters


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux, Params
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### killrecordingdaemon

**Synopsis**: _KILLRECORDINGDAEMON_ 


Sends STOP byte to daemon session


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### getupdate

**Synopsis**: _GETUPDATE_ 


[pRaw, p] = GETUPDATE( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : pRaw, p, t
- DefiningClass : ProbeTracking

---


### clearrecording

**Synopsis**: _CLEARRECORDING_ 

Empties subfields of Aux.Data

[] = CLEARRECORDING( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### stoprecording

**Synopsis**: _STOPRECORDING_ 

Closes communication port/source + marks recording end time

[] = STOPRECORDING( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### calibratelimiting

**Synopsis**: _CALIBRATELIMITING_ 

[] = CALIBRATELIMITING( Aux )

Record 1 min of signal to determine the theshold levels beyond which limiting
will be applied.

5 standard deviations either above or below the mean determines levels.

Limits are saved in Aux.Specs.clipLimits


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux, Params
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### beginrecording

**Synopsis**: _- Initialize & open (RS-232) communication port_ 

[isRecording] = BEGINRECORDING( Aux )

Opens Aux.Source

Returns TRUE if successful


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : isRecording
- DefiningClass : ProbeTracking

---


### delete

**Synopsis**: _DELETE_ 


DELETE( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### copy

**Synopsis**: _COPY_ 


Aux = COPY( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : Aux
- OutputNames : AuxCopy
- DefiningClass : ProbeTracking

---


### ProbeTracking

**Synopsis**: _PROBETRACKING_ 

 PROBETRACKING


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : varargin
- OutputNames : Aux
- DefiningClass : ProbeTracking

---


### launchrecordingdaemon

**Synopsis**: _LAUNCHRECORDINGDAEMON_ 


[] = LAUNCHRECORDINDAEMON( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### createrecordingdaemon

**Synopsis**: _CREATERECORDINGDAEMON_ 

CREATERECORDINDAEMON( Aux )

Saves the instantiated Aux object, and launches a background (daemon) Matlab
session to load the object and begin background recording.

The daemon session reads directly from the USB (Com) port while the user
session reads from a file buffer.


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### writeupdatetologfile

**Synopsis**: _WRITEUPDATETOLOGFILE_ 

 WRITEUPDATETOLOGFILE


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### readupdatefromlogfile

**Synopsis**: _READUPDATEFROMLOGFILE_ 

 READUPDATEFROMLOGFILE


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Aux
- OutputNames : nSamples, pRaw, p, t, trigger
- DefiningClass : ProbeTracking

---


### createlogfile

**Synopsis**: _CREATELOGFILE_ 


[] = CREATELOGFILE( Aux )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>false</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : private
- InputNames : Aux
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### selectmedianmeasurement

**Synopsis**: _SELECTMEDIANMEASUREMENT_ 

    medianMeasure = SELECTMEDIANMEASUREMENT( measurementLog ) 
    medianMeasure = SELECTMEDIANMEASUREMENT( measurementLog, nSamplesApnea ) 
    medianMeasure = SELECTMEDIANMEASUREMENT( measurementLog, nSamplesApnea, isUserSelectionEnabled ) 

    Plots measurementLog and the user selects START and END (apnea) indices
    over which to calculate the median. The median measurement is superposed
    over the measurementLog graph and the user is asked if the result is 
    satisfactory (or redo).


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : measurementLog, nSamplesApnea, isUserSelectionEnabled
- OutputNames : medianMeasure
- DefiningClass : ProbeTracking

---


### findflattest

**Synopsis**: _FINDFLATTEST_ 

iFlattest = FINDFLATTEST( measurementLog, nSamples )

Calculates measurementLog variance over sliding window (nSamples long) and
returns index (iFlattest) corresponding to start of the most constant segment
(e.g. a breath-hold).


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : measurementLog, nSamples
- OutputNames : iFlattest
- DefiningClass : ProbeTracking

---


### plotmeasurementlog

**Synopsis**: _PLOTMEASUREMENTLOG_ 

PLOTMEASUREMENTLOG( measurementLog ) ;
PLOTMEASUREMENTLOG( measurementLog, Params )

Supported fields to Params struct

    .figureTitle
        [default: 'Respiration']

    .sampleTimes
        vector (length == length(measurementLog)) of sample times in seconds

    .yLabel
        [default: 'Amplitude (AU)']


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : measurementLog, Params
- OutputNames : [N/A] 
- DefiningClass : ProbeTracking

---


### loadlog_siemens

**Synopsis**: _Load Siemens PMU recording_ 

[ Data ] = loadlog_siemens( filename )

Input

    filename
        name of PMU log (text) file 


Function based on load_PMU_resp.m by eva.alonso.ortiz@gmail.com
which derived from
https://github.com/timothyv/Physiological-Log-Extraction-for-Modeling--PhLEM--Toolbox
https://cfn.upenn.edu/aguirre/wiki/public:pulse-oximetry_during_fmri_scanning


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : filename
- OutputNames : Data
- DefiningClass : ProbeTracking

---


### loadlog

**Synopsis**: _LOADLOG_ 

Loads a respiratory recording and returns Data struct

Data = loadlog( filename )

filename must be the path to a .mat file saved by ProbeTracking,
or to a text file with a .resp file extension, indicating a Siemens PMU
recording, in which case loadlog wraps to loadlog_siemens()


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : filename
- OutputNames : Data
- DefiningClass : ProbeTracking

---


### loadmeasurementlog

**Synopsis**: _LOADMEASUREMENTLOG_ 

Reads binary file of data measurements (e.g. pressure recording) to return
vector(s) of doubles.

measurementLog                = LOADMEASUREMENTLOG( measurementLogFilename ) ;
[measurementLog, sampleTimes] = LOADMEASUREMENTLOG( measurementLogFilename, sampleTimesFilename )


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : measurementLogFilename, sampleTimesFilename
- OutputNames : p, sampleTimes
- DefiningClass : ProbeTracking

---


### declareprobe

**Synopsis**: _Declares serial object for probe_ 

[Source, AuxSpecs] = declareprobe( AuxSpecs )

AuxSpecs can have the following fields

.isRecordingDaemonEnabled
    Perform device I/O (probe recording) and signal processing in a 
    secondary background/daemon MATLAB session.
    User session can monitor the live recording with Probe.recordphysiosignal()
    [default = true]

.portName
    Address of the probe-associated serial port within file system
    e.g. AuxSpecs.portName = '/dev/tty.usbmodem487312' ;


#### Attributes:

<table>
<table border=1><tr><th>Static</th><th>Abstract</th><th>Sealed</th><th>ExplicitConversion</th><th>Hidden</th></tr>
<tr><td>true</td><td>false</td><td>false</td><td>false</td><td>false</td></tr>
</table>

- Access : public
- InputNames : AuxSpecs
- OutputNames : Source, AuxSpecs
- DefiningClass : ProbeTracking

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
- DefiningClass : ProbeTracking

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
