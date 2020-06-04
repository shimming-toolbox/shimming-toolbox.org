# realtime_zshim

**Filetype:** _MATLAB&reg; function_

**Synopsis:** _************************************************************************_

function realtime_zshim(scan_obj, varargin)

DESCRIPTION: This function will generate static and dynaminc (due to
respiration) Gz components based on a fieldmap time series (magnitude and
phase images to be found in 'FM_mag_path' and 'FM_phase_path') and
respiratory trace information obtained from Siemens bellows
(PMUresp_signal.resp). An additional multi-gradient echo (MGRE) magnitiude
image is used (found in MGRE_mag_path) to generate an ROI and resample
the static and dynaminc Gz component maps to match the MGRE image.
Lastly the average Gz values within the ROI are computed for each slice.

INPUTS:

(1)  If working with a DICOM socket transfer (online processing mode):
       realtime_zshim("scan_obj", 0) (move files from mounted drive) or
       realtime_zshim("scan_obj", 1) (copy files from mounted drive)

(2)  If working with previously sorted DICOMS (offline processing):
       realtime_zshim("scan_obj")

-> "scan_obj" should be either 'phantom' or 'human'

'phantom' -> a central square-shaped ROI will be generated for averaging
the Gz field
'human' -> The spinal cord toolbox (SCT) will be used to segment the spinal cord


### Attributes


- nInputs : -2

- nOutputs : 0
