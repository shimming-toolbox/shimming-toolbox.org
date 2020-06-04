# probe

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _PROBE_

    Description
    
    Reads pressure data from microcontroller 


    Syntax

    PROBE( Parameters )

     .......................
    
    The following Parameter.fields are supported
    
    .isPlottingInRealtime
        default = false

        Plots pressure vs. time during acquisition. 

    .isSavingPressureLog
        default = true

    .pressureLogFilename
        default = [./pressureLog.bin]

    .pressureTimesFilename
        default = [PATH_TO_PRESSURE_LOG /pressureTimes.bin]

    .isForcingOverwrite
        default = false

        Will overwrite the log files if they already exist. 

    .runTime 
        default = 60
    
        Total sampling time in seconds.

    .skipSampleFactor  
        default = 1 

        The sampling rate of the microcontroller itself is fixed at 100 Hz.
        100 Hz is therefore the maximum sampling rate.
        Should computational efficiency become an issue (MATLAB not keeping up
        with the microcontroller), lesser rates are possible by skipping samples.
        E.g. Should one wish to skip every third sample, Options.skipSampleFactor
        (which must always be an integer > 0) would be set to 3, corresponding 
        to an effective sample rate of 100/3 Hz.
      
     To be supported:

     .portName




Based on sonde.m written by Imanne Al Maachi.

Updated 08/2015 by Ryan
topfer@ualberta.ca
=========================================================================


### Attributes


- nInputs : 1

- nOutputs : 0
