! This wrapper file was generated automatically by the GenDllWrappers program.
module ObsOpsDll
implicit none

interface


! Notes: This function has been deprecated since v9.0.    
! Initializes ObsOps DLL for use in the program
function ObsOpsInit(apAddr) bind(C, name = "ObsOpsInit") result(errCode)
   integer :: errCode	! 0 if ObsOps.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function ObsOpsInit
!*******************************************************************************



! Returns information about the current version of ObsOps DLL. 
! The information is placed in the string parameter passed in.
subroutine ObsOpsGetInfo(infoStr) bind(C, name = "ObsOpsGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about ObsOps.dll
end subroutine ObsOpsGetInfo
!*******************************************************************************



! Loads Iomod parameters from an input text file
function IomodLoadFile(iomodInputFile) bind(C, name = "IomodLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: iomodInputFile(512)   ! The name of the file containing IOMOD-related parameters
end function IomodLoadFile
!*******************************************************************************



! Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
function IomodLoadFileAll(iomodInputFile) bind(C, name = "IomodLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: iomodInputFile(512)   ! The name of the file containing Iomod control parameters and all Iomod related data
end function IomodLoadFileAll
!*******************************************************************************



! Saves any currently loaded IOMOD-related settings to a file
function IomodSaveFile(iomodFile, saveMode, saveForm) bind(C, name = "IomodSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: iomodFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function IomodSaveFile
!*******************************************************************************



! Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
subroutine IomodGetIpCard(iomodIPCard) bind(C, name = "IomodGetIpCard")
   character, intent(out) :: iomodIPCard(512)   ! the resulting IOMOD IP card
end subroutine IomodGetIpCard
!*******************************************************************************



! Retrieves all IOMOD parameters with a single function call
subroutine IomodGetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName, runDC, runRotas, extArr) &
bind(C, name = "IomodGetIpAll")
   integer, intent(out) :: printIOHG   ! control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
   integer, intent(out) :: useFirst3Obs   ! use first 3 obs flag
   integer, intent(out) :: satNum   ! satelite number
   integer, intent(out) :: sortOrder   ! obs sorting order
   character, intent(out) :: satName(8)   ! international designator
   integer, intent(out) :: runDC   ! run DC flag: 1=yes, 0=no
   integer, intent(out) :: runRotas   ! run ROTAS flag: 1=yes, 0=no
   real(8), intent(out) :: extArr(128)   ! the extra array (future use)
end subroutine IomodGetIpAll
!*******************************************************************************



! Sets all IOMOD parameters with a single function call
subroutine IomodSetIpAll(printIOHG, useFirst3Obs, satNum, sortOrder, satName, runDC, runRotas, extArr) &
bind(C, name = "IomodSetIpAll")
   integer, value :: printIOHG   ! control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
   integer, value :: useFirst3Obs   ! use first 3 obs flag
   integer, value :: satNum   ! satelite number
   integer, value :: sortOrder   ! obs sorting order
   character, intent(in) :: satName(8)   ! international designator
   integer, value :: runDC   ! run DC flag: 1=yes, 0=no
   integer, value :: runRotas   ! run ROTAS flag: 1=yes, 0=no
   real(8), intent(in) :: extArr(128)   ! the extra array (future use)
end subroutine IomodSetIpAll
!*******************************************************************************



! Retrieves the value of a specified IOMOD parameter
! 
! The table below indicates which index values for the xf_IP parameter:
! 
! table
! 
! xf_IP named constants/values
! Interpretation
! 
! XF_IP_PRINTIOHG  = 1control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
! IOHG
! XF_IP_USE1ST3OBS = 2use first 3 obs flag
! XF_IP_SATNUM     = 3satelite number
! XF_IP_SORTORDER  = 4obs sorting order
! XF_IP_SATNAME    = 5international designator 
! XF_IP_RUNDC      = 6run DC flag: 1=yes, 0=no [deprecated]
! XF_IP_RUNROTAS   = 7run ROTAS flag: 1=yes, 0=no [deprecated]
! 
subroutine IomodGetIpField(xf_IP, retVal) bind(C, name = "IomodGetIpField")
   integer, value :: xf_IP   ! Predefined number specifying which IOMOD parameter to retrieve
   character, intent(out) :: retVal(512)   ! A string to hold the value of the requested IOMOD parameter
end subroutine IomodGetIpField
!*******************************************************************************



! Sets the value of a specified IOMOD parameter
! See IomodGetIpField for a description of the xf_IP parameter.
subroutine IomodSetIpField(xf_IP, valueStr) bind(C, name = "IomodSetIpField")
   integer, value :: xf_IP   ! Predefined number specifying which IOMOD parameter to set, see XF_IP_? for field specification
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end subroutine IomodSetIpField
!*******************************************************************************



! Computes initial orbit vector from many observations using Herrick-Gibbs method
function ManyObsToPosVel(obsKeyArr, arrSize, timeDs50UTC, pos, vel, arr3ObsKeys) bind(C, name = "ManyObsToPosVel") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the obsKey array contains obsKeys that are available for IOMOD
   integer, value :: arrSize   ! the size of the obsKeyArr
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
   integer(8), intent(out) :: arr3ObsKeys(3)   ! the resulting 3 obsKeys that were used by IOMOD
end function ManyObsToPosVel
!*******************************************************************************



! Computes initial orbit vector from three selected observations using Herrick-Gibbs method
function ThreeObsToPosVel(arr3ObsKeys, timeDs50UTC, pos, vel) bind(C, name = "ThreeObsToPosVel") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: arr3ObsKeys(3)   ! the three input obsKeys
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
end function ThreeObsToPosVel
!*******************************************************************************



! Computes initial orbit vector directly from the input sensor/observation data - thread safe
function Iomod_OS(xa_senLoc, numObs, xa_obsArr, timeDs50UTC, pos, vel) bind(C, name = "Iomod_OS") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   real(8), intent(in) :: xa_senLoc(16)   ! array contains sensor location data, see XA_SENLOC_? for array arrangement
   integer, value :: numObs   ! number of input obs in xa_obsArr
   real(8), intent(in) :: xa_obsArr(64, *)   ! array of input obs.  see XA_OBS_?
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
end function Iomod_OS
!*******************************************************************************



! Computes initial orbit vector from two selected observations using Two-Ob method
! Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
function TwoObsToPosVel(arr2ObsKeys, timeDs50UTC, pos, vel) bind(C, name = "TwoObsToPosVel") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: arr2ObsKeys(2)   ! the two input obsKeys
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
end function TwoObsToPosVel
!*******************************************************************************



! Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
function AnglesOnlyToPosVel(arr3ObsKeys, range1, range3, nhrev, ind, maxIt, pdInc, criVal, timeDs50UTC, pos, vel) &
bind(C, name = "AnglesOnlyToPosVel") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: arr3ObsKeys(3)   ! the three input obsKeys
   real(8), value :: range1   ! the range guess to first observation (km)
   real(8), value :: range3   ! the range guess to third observation (km)
   integer, value :: nhrev   ! number of half revolutions
   integer, value :: ind   ! solution number
   integer, value :: maxIt   ! maximum number of iterations
   real(8), value :: pdInc   ! partial derivative increment
   real(8), value :: criVal   ! convergence criterion
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
end function AnglesOnlyToPosVel
!*******************************************************************************



! Computes the track length of a track whose first observation started at the input startIdx.
! This routine can be used in a loop to find all the tracks in the observation list.
! Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
! by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
function FindTrack(obsKeyArr, arrSize, startIdx, trackLength) bind(C, name = "FindTrack") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the input obsKeyArr
   integer, value :: arrSize   ! the size of the obsKeyArr (number of obs)
   integer, value :: startIdx   ! the index of the first observation to start computing the track length
   integer, intent(out) :: trackLength   ! the track length (trackLength = 1 for single obs)
end function FindTrack
!*******************************************************************************



! Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
function ATrackToPosVel(obsKeys, trackStartIdx, trackLength, timeDs50UTC, pos, vel, trackObsKeys) &
bind(C, name = "ATrackToPosVel") result(errCode)
   integer :: errCode	! 0 if the computation is successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeys(*)   ! the input obsKeyArr
   integer, value :: trackStartIdx   ! the index of the first observation that starts the track
   integer, value :: trackLength   ! the track length
   real(8), intent(out) :: timeDs50UTC   ! the resulting time of the new vector in ds50UTC
   real(8), intent(out) :: pos(3)   ! the resulting position vector (km)
   real(8), intent(out) :: vel(3)   ! the resulting velocity vector (km/s)
   integer(8), intent(out) :: trackObsKeys(3)   ! obsKeys of the tree obs that are used by IOMOD
end function ATrackToPosVel
!*******************************************************************************



! Returns the default values of the triangulation settings
subroutine TriGetDefParams(xa_tri) bind(C, name = "TriGetDefParams")
   real(8), intent(out) :: xa_tri(32)   ! triangulation parameters.  see XA_TRI_?
end subroutine TriGetDefParams
!*******************************************************************************



! Triangulates the input obs and write generated obs with range data to the specified output file
function TriComputeToFile(obsKeyArr, arrSize, xa_tri, toFile) bind(C, name = "TriComputeToFile") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the input obsKeyArr contains obsKeys that are available for triangulation
   integer, value :: arrSize   ! the size of the obsKeyArr (number of obs)
   real(8), intent(in) :: xa_tri(32)   ! triangulation parameters.  see XA_TRI_?
   character, intent(in) :: toFile(512)   ! output file that stores the generated obs with the computed range data
end function TriComputeToFile
!*******************************************************************************



! Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
function TriCompute1(obsKeyArr, arrSize, xa_tri, numOvlps, xa_ovlp, numFits, xa_fit, maxGenObs, nGenObs, genObsKeys) &
bind(C, name = "TriCompute1") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the input obsKeyArr contains obsKeys that are available for triangulation
   integer, value :: arrSize   ! the size of the obsKeyArr (number of obs)
   real(8), intent(in) :: xa_tri(32)   ! triangulation parameters.  see XA_TRI_?
   integer, intent(out) :: numOvlps   ! number of overlap tracks
   real(8), intent(out) :: xa_ovlp(8, *)   ! overlap data.  see XA_OVLP_?
   integer, intent(out) :: numFits   ! number of qualified tracks for fitting
   real(8), intent(out) :: xa_fit(32, *)   ! polyfit data.  see XA_FIT_?
   integer, value :: maxGenObs   ! maximum number of generated obs
   integer, intent(out) :: nGenObs   ! number of actual obs generated by triangulation process (nGenObs always lt or eq maxGenObs)
   integer(8), intent(out) :: genObsKeys(*)   ! generate obs with range, then load them into memory, and return the obsKeys of all generated obs
end function TriCompute1
!*******************************************************************************



! Triangulates the input obs and returns the overlap and polyfit information 
function TriCompute2(obsKeyArr, arrSize, xa_tri, numOvlps, xa_ovlp, numFits, xa_fit) bind(C, name = "TriCompute2") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the input obsKeyArr contains obsKeys that are available for triangulation
   integer, value :: arrSize   ! the size of the obsKeyArr (number of obs)
   real(8), intent(in) :: xa_tri(32)   ! triangulation parameters.  see XA_TRI_?
   integer, intent(out) :: numOvlps   ! number of overlap tracks
   real(8), intent(out) :: xa_ovlp(8, *)   ! overlap data.  see XA_OVLP_?
   integer, intent(out) :: numFits   ! number of qualified tracks for fitting
   real(8), intent(out) :: xa_fit(32, *)   ! polyfit data.  see XA_FIT_?
end function TriCompute2
!*******************************************************************************



! Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
function TriCompute3(obsKeyArr, arrSize, xa_tri, maxGenObs, nGenObs, genObsKeys) bind(C, name = "TriCompute3") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeyArr(*)   ! the input obsKeyArr contains obsKeys that are available for triangulation
   integer, value :: arrSize   ! the size of the obsKeyArr (number of obs)
   real(8), intent(in) :: xa_tri(32)   ! triangulation parameters.  see XA_TRI_?
   integer, value :: maxGenObs   ! maximum number of generated obs
   integer, intent(out) :: nGenObs   ! number of actual obs generated by triangulation process (nGenObs always lt or eq maxGenObs)
   integer(8), intent(out) :: genObsKeys(*)   ! generate obs with range, then load them into memory, and return the obsKeys of all generated obs
end function TriCompute3
!*******************************************************************************



! Returns the default values of the waterfall altitude (km)
function GetWaterfallAlt() bind(C, name = "GetWaterfallAlt") result(assumedAltitude)
   real(8) :: assumedAltitude	! The default altitude (km) being used in the Waterfall algorithm
end function GetWaterfallAlt
!*******************************************************************************



! Converts angle-only observation to lat/lon/height positions
function AnglesOnlyToLLH(obsKey, assumedAltitude, rho, llhs, numSols) bind(C, name = "AnglesOnlyToLLH") result(errCode)
   integer :: errCode	! Returns 0 if the conversion is successful, non-0 if there is an error
   integer(8), value :: obsKey   ! The unique key of the angle-only observation that needs to be converted by the waterfall calculation
   real(8), value :: assumedAltitude   ! The input assumed altitude (km) to calculate LLH (set to 0 to indicate default altitude should be used)
   real(8), intent(out) :: rho(2)   ! The ouput calculated range to sphere of assumed altitude
   real(8), intent(out) :: llhs(3, 2)   ! The calculated LLH at sphere of assumed altitude
   integer, intent(out) :: numSols   ! Number of Waterfall Solutions
end function AnglesOnlyToLLH
!*******************************************************************************



! Calculates length of output arrays for Lomb
! Used to allocated px, py, prob before call to Lomb
function LombLengthOut(ofac, hifac, nSample) bind(C, name = "LombLengthOut") result(nout)
   integer :: nout	! Used to allocated px, py, prob before call to Lomb
   real(8), value :: ofac   ! Oversample factor, typical value is "4" or "5"
   real(8), value :: hifac   ! Ratio of highest frequency to Nyquist frequency
   integer, value :: nSample   ! Number of samples for x and y
end function LombLengthOut
!*******************************************************************************



! Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
! Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
subroutine Lomb(x, y, nSample, ofac, hifac, px, py, prob, pxmax, pymax, probMax) bind(C, name = "Lomb")
   real(8), intent(in) :: x(*)   ! array times to input (units don't matter, can be days, seconds, etc...), length of nSample
   real(8), intent(in) :: y(*)   ! array of data (such as Visual Magnitude) associated with times to input, length of nSample
   integer, value :: nSample   ! Number of samples for x and y
   real(8), value :: ofac   ! Oversample factor, typical value is "4" or "5"
   real(8), value :: hifac   ! Ratio of highest frequency to Nyquist frequency
   real(8), intent(out) :: px(*)   ! array of frequencies, should be of length (0.5d0*ofac*hifac*nSample)
   real(8), intent(out) :: py(*)   ! array of powers associated with frequencies, should be of length (0.5d0*ofac*hifac*nSample)
   real(8), intent(out) :: prob(*)   ! array of false alarm probabilities corresponding to py, should be of length (0.5d0*ofac*hifac*nSample)
   real(8), intent(out) :: pxmax   ! most powerful frequency
   real(8), intent(out) :: pymax   ! power of most powerful frequency
   real(8), intent(out) :: probMax   ! false alarm probability of most powerful frequency
end subroutine Lomb
!*******************************************************************************



! Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
function LombFalseProb(py, nout, ofac) bind(C, name = "LombFalseProb") result(prob)
   real(8) :: prob	! False Alarm Probability
   real(8), value :: py   ! Power
   integer, value :: nout   ! Number of output frequencies (0.5*ofac*hifac*n)
   real(8), value :: ofac   ! oversample factor
end function LombFalseProb
!*******************************************************************************



! Find Power of given False Alarm Probablility
function LombFalseProbInv(prob, nout, ofac) bind(C, name = "LombFalseProbInv") result(py)
   real(8) :: py	! Power
   real(8), value :: prob   ! False Alarm Probability
   integer, value :: nout   ! Number of output frequencies (0.5*ofac*hifac*n)
   real(8), value :: ofac   ! oversample factor
end function LombFalseProbInv
!*******************************************************************************



! Calculate length of output for LombWaveFit
function LombLengthCoef(nFreq) bind(C, name = "LombLengthCoef") result(nCoeffs)
   integer :: nCoeffs	! Returned number of coefficients to use in LombWaveFit and LombCalcValueFromTime, use to allocate coeffs
   integer, value :: nFreq   ! Number of frequencies of interest
end function LombLengthCoef
!*******************************************************************************



! Fits user defined frequencies to data to find the magnitudes
! Solves the equation
! y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
! For coefficients A and B corresponding to each frequency
subroutine LombWaveFit(x, y, nSamples, freq, nfreq, coeffs) bind(C, name = "LombWaveFit")
   real(8), intent(in) :: x(*)   ! Times, length of nSamples
   real(8), intent(in) :: y(*)   ! Data, length of nSamples
   integer, value :: nSamples   ! Number of input samples, length of x and y
   real(8), intent(in) :: freq(*)   ! set of frequencies to fit, should not be same as output of Lomb, lenth of nfreq
   integer, value :: nfreq   ! number of frequencies, length of freq
   real(8), intent(out) :: coeffs(*)   ! resulting coefficients(A(1) B(1) ... A(nfreq) B(nfreq) C), will have length(2*nfreq+1)
end subroutine LombWaveFit
!*******************************************************************************



! Calculate value of y given time, x, 
! and frequencies and magnitudes that were gotten from wavefit
! solves the equation
! y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
! for y
function LombCalcValueFromTime(x, mags, freq, nfreq) bind(C, name = "LombCalcValueFromTime") result(y)
   real(8) :: y	! resulting y value
   real(8), value :: x   ! Time
   real(8), intent(in) :: mags(*)   ! Magnitudes from wavefit, length of (2*nfreq+1)
   real(8), intent(in) :: freq(*)   ! frequencies of interest, length of nfreq
   integer, value :: nfreq   ! Number of frequencies of interest
end function LombCalcValueFromTime
!*******************************************************************************



! Given two observations, calculate the angle between them
! Supports obsType 1,2,3,4,5,8,9,18,19
subroutine AngleBetweenObs(obsKey1, obsKey2, angSep, errCode) bind(C, name = "AngleBetweenObs")
   integer(8), value :: obsKey1   ! 1st obsKey
   integer(8), value :: obsKey2   ! 2nd obsKey
   real(8), intent(out) :: angSep   ! Angular Separation(Deg)
   integer, intent(out) :: errCode   ! Error Code, 1 - Obs times not equal (will still do calculation), 2 - Calculation errored out, sensor numbers are different, or unsupported obs type
end subroutine AngleBetweenObs
!*******************************************************************************

end interface




   
   ! Different obs selection options 
   integer, parameter :: &
      OBSSELMODE_AUTO   = 0, &  ! auto select 3 obs among the loaded/selected obs
      OBSSELMODE_1ST3OBS= 1;    ! use the first 3 obs in list of loaded/selected obs
   
   
   ! Indexes for accessing Iomod control parameters
   integer, parameter :: &
      XF_IP_PRINTIOHG  = 1, &   ! control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
      XF_IP_USE1ST3OBS = 2, &   ! use first 3 obs flag
      XF_IP_SATNUM     = 3, &   ! satelite number
      XF_IP_SORTORDER  = 4, &   ! obs sorting order
      XF_IP_SATNAME    = 5, &   ! international designator 
      XF_IP_RUNDC      = 6, &   ! run DC flag: 1=yes, 0=no
      XF_IP_RUNROTAS   = 7;     ! run ROTAS flag: 1=yes, 0=no
      
   ! Indexes of TRI configuration parameters
   integer, parameter :: &
      XA_TRI_USEDEFAULT       =  0, &  ! I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
      XA_TRI_OBSTYPEOUT       =  1, &  ! I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
      XA_TRI_APPLYBIAS        =  2, &  ! I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
      XA_TRI_LTC              =  3, &  ! I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC 
      XA_TRI_CREATEOBSSIZE    =  4, &  ! I - number of obs created for each overlap track
      XA_TRI_DEFANGLEORDER    =  5, &  ! I - default order of the Polyfit for angle RA/DEC
      XA_TRI_DEFRANGEORDER    =  6, &  ! I - default order of the Polyfit for range
      XA_TRI_DEFEFGORDER      =  7, &  ! I - default order of the Polyfit for EFG components
      XA_TRI_AUTOFITANGLE     =  8, &  ! I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
      XA_TRI_AUTOFITRANGE     =  9, &  ! I - whether or not to use auto for range (increase order if needed when doing Polyfit)
      XA_TRI_ANCHORRADEC      = 10, &  ! I - anchor order of RA/DEC  
      XA_TRI_SEPSATNO         = 11, &  ! I - check to see satellite number is different
      XA_TRI_RARMSLIM         = 12, &  ! D - limit RMS for RA (arcsec)
      XA_TRI_DECRMSLIM        = 13, &  ! D - limit RMS for Dec (arcsec)
      XA_TRI_RANGERMSLIM      = 14, &  ! D - limit RMS for Range (km)
      XA_TRI_TRKSEPARATION    = 15, &  ! D - track separation criteria (minutes)
      XA_TRI_MINSTEREOANGLE   = 16, &  ! D - minimum stereoscopic angle (deg)
                                       
      XA_TRI_SIZE             = 32;   
   
   ! Indexes of overlap track data 
   integer, parameter :: &
      XA_OVLP_SATNUM       =  0, &     ! I - Satellite number
      XA_OVLP_SENNUM1      =  1, &     ! I - Sensor number of track 1
      XA_OVLP_SENNUM2      =  2, &     ! I - Sensor number of track 2
      XA_OVLP_STARTTIME    =  3, &     ! D - Overlap track's start time (in DS50UTC)
      XA_OVLP_ENDTIME      =  4, &     ! D - Overlap track's end time (in DS50UTC)
      
      XA_OVLP_SIZE         =  8;       !
      
   ! Indexes of polyfitting track data
   integer, parameter :: &
      XA_FIT_SATNUM        =  0, &     ! I - Satellite number
      XA_FIT_SENNUM1       =  1, &     ! I - Sensor number of track 1
      XA_FIT_SENNUM2       =  2, &     ! I - Sensor number of track 2
      
      XA_FIT_RAORDER1      =  3, &     ! I - Right ascension polyfit order of track 1
      XA_FIT_RAORDER2      =  4, &     ! I - Right ascension polyfit order of track 2
      XA_FIT_RARMS1        =  5, &     ! D - Right ascension RMS of track 1
      XA_FIT_RARMS2        =  6, &     ! D - Right ascension RMS of track 2
      
      XA_FIT_DECORDER1     =  7, &     ! I - Declination polyfit order of track 1
      XA_FIT_DECORDER2     =  8, &     ! I - Declination polyfit order of track 2
      XA_FIT_DECMS1        =  9, &     ! D - Declination RMS of track 1
      XA_FIT_DECRMS2       = 10, &     ! D - Declination RMS of track 2
      
      XA_FIT_RANGEORDER1   = 11, &     ! I - Declination polyfit order of track 1
      XA_FIT_RANGEORDER2   = 12, &     ! I - Declination polyfit order of track 2
      XA_FIT_RANGERMS1     = 13, &     ! D - Declination RMS of track 1
      XA_FIT_RANGERMS2     = 14, &     ! D - Declination RMS of track 2
      
      XA_FIT_THETA1        = 15, &     ! D - First stereoscopic angle (deg)
      XA_FIT_THETA2        = 16, &     ! D - Second stereoscopic angle (deg)
      XA_FIT_THETA3        = 17, &     ! D - Third stereoscopic angle (deg)
      
      XA_FIT_SIZE          =  32;       !
   
      
end module ObsOpsDll
! ========================= End of auto generated code ==========================
