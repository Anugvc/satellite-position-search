! This wrapper file was generated automatically by the GenDllWrappers program.
module ComboDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Combo dll for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
function ComboInit(apAddr) bind(C, name = "ComboInit") result(errCode)
   integer :: errCode	! 0 if the Combo dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function ComboInit
!*******************************************************************************



! Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
! The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
subroutine ComboGetInfo(infoStr) bind(C, name = "ComboGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Combo.dll
end subroutine ComboGetInfo
!*******************************************************************************



! Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
function ComboLoadFile(comboInputFile) bind(C, name = "ComboLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: comboInputFile(512)   ! The name of the file containing Combo-related parameters
end function ComboLoadFile
!*******************************************************************************



! Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
function ComboLoadFileAll(comboInputFile) bind(C, name = "ComboLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: comboInputFile(512)   ! The name of the file containing Combo control parameters and all Combo related data
end function ComboLoadFileAll
!*******************************************************************************



! Loads a single Combo-typed card (7P, 8P, and 9P)
function ComboLoadCard(card) bind(C, name = "ComboLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Combo-type input card
end function ComboLoadCard
!*******************************************************************************



! Saves any currently loaded COMBO-related settings to a file
! The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
function ComboSaveFile(comboFile, saveMode, saveForm) bind(C, name = "ComboSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: comboFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function ComboSaveFile
!*******************************************************************************



! Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
subroutine ComboGetNumOfPriSecSats(numPriSats, numSecSats) bind(C, name = "ComboGetNumOfPriSecSats")
   integer, intent(out) :: numPriSats   ! The number of primary satellites that were entered via 7P/9P cards or Combo parameter free format
   integer, intent(out) :: numSecSats   ! The number of secondary satellites that were entered via 7P/8P cards or Combo parameter free format
end subroutine ComboGetNumOfPriSecSats
!*******************************************************************************



! Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
subroutine ComboGetPriSatNums(priSatNums) bind(C, name = "ComboGetPriSatNums")
   integer, intent(out) :: priSatNums(*)   ! An array to hold the primary satellite numbers
end subroutine ComboGetPriSatNums
!*******************************************************************************



! Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
subroutine ComboGetSecSatNums(secSatNums) bind(C, name = "ComboGetSecSatNums")
   integer, intent(out) :: secSatNums(*)   ! An array to hold the secondary satellite numbers
end subroutine ComboGetSecSatNums
!*******************************************************************************



! Constructs Combo 7P-Card from COMBO control parameters
subroutine ComboGet7pCard(combo7pCard) bind(C, name = "ComboGet7pCard")
   character, intent(out) :: combo7pCard(512)   ! A string to hold the resulting Combo Parameter Card (7P-Card)
end subroutine ComboGet7pCard
!*******************************************************************************



! Retrieves all Combo control parameters with a single function call
subroutine ComboGet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, &
closeProxLim, relEphInterval, prtOpt) bind(C, name = "ComboGet7pAll")
   integer, intent(out) :: timeFlg   ! Input time format:	0 = Input time is in minutes since epoch (MSE),	1 = Input time is in days since 1950, UTC (ds50UTC)
   real(8), intent(out) :: startTime   ! Begin time in ds50UTC or MSE, depending on timeFlg
   real(8), intent(out) :: stopTime   ! End time  in ds50UTC or MSE, depending on timeFlg
   integer, intent(out) :: relMinFlg   ! Control for computing relative minima: 0 = Do not compute relative minima, 1 = Compute relative minima
   integer, intent(out) :: absMinFlg   ! Control for computing absolute minimum:	0 = Do not compute absolute minimum, 1 = Compute absolute minimum
   integer, intent(out) :: closeProxFlg   ! Control for computing periods of close proximity: 0 = Do not compute periods of close proximity, 1 = Compute periods of close proximity
   integer, intent(out) :: relEphFlg   ! Control for computing relative ephemeris: 0 = Do not compute relative ephemeris, 1 = Compute relative ephemeris
   real(8), intent(out) :: pocSigma   ! Probability of collision sigma
   real(8), intent(out) :: relMinLim   ! Maximum separation for relative minima (km)
   real(8), intent(out) :: closeProxLim   ! Close proximity limit
   real(8), intent(out) :: relEphInterval   ! Relative ephemeris sampling interval (min)
   integer, intent(out) :: prtOpt   ! Print options:	0 = Relative geometry only, 1 = Position/velocity (plus option 0), 2 = Lat, lon, height (plus option 1), 3 = Relative position (plus option 2), 4 = No output
end subroutine ComboGet7pAll
!*******************************************************************************



! Sets all Combo control parameters with a single function call
subroutine ComboSet7pAll(timeFlg, startTime, stopTime, relMinFlg, absMinFlg, closeProxFlg, relEphFlg, pocSigma, relMinLim, &
closeProxLim, relEphInterval, prtOpt) bind(C, name = "ComboSet7pAll")
   integer, value :: timeFlg   ! Input time format:	0 = Input time is in minutes since epoch (MSE),	1 = Input time is in days since 1950, UTC (ds50UTC)
   real(8), value :: startTime   ! Begin time in ds50UTC or MSE, depending on timeFlg
   real(8), value :: stopTime   ! End time  in ds50UTC or MSE, depending on timeFlg
   integer, value :: relMinFlg   ! Control for computing relative minima: 0 = Do not compute relative minima, 1 = Compute relative minima
   integer, value :: absMinFlg   ! Control for computing absolute minimum:	0 = Do not compute absolute minimum, 1 = Compute absolute minimum
   integer, value :: closeProxFlg   ! Control for computing periods of close proximity: 0 = Do not compute periods of close proximity, 1 = Compute periods of close proximity
   integer, value :: relEphFlg   ! Control for computing relative ephemeris: 0 = Do not compute relative ephemeris, 1 = Compute relative ephemeris
   real(8), value :: pocSigma   ! Probability of collision sigma
   real(8), value :: relMinLim   ! Maximum separation for relative minima (km)
   real(8), value :: closeProxLim   ! Close proximity limit
   real(8), value :: relEphInterval   ! Relative ephemeris sampling interval (min)
   integer, value :: prtOpt   ! Print options:	0 = Relative geometry only, 1 = Position/velocity (plus option 0), 2 = Lat, lon, height (plus option 1), 3 = Relative position (plus option 2), 4 = No output
end subroutine ComboSet7pAll
!*******************************************************************************



! Retrieves the value of a single Combo control parameter (7P-card)
subroutine ComboGet7pField(xf_7P, retVal) bind(C, name = "ComboGet7pField")
   integer, value :: xf_7P   ! Predefined number specifying which Combo control parameter to retrieve, see XF_7P_? for field specification
   character, intent(out) :: retVal(512)   ! A string to hold the value of the requested COMBO control parameter
end subroutine ComboGet7pField
!*******************************************************************************



! Sets the value of a single Combo control parameter (7P-card)
! See ComboGet7pField for a list of index values for the parameter xf_7P.
subroutine ComboSet7pField(xf_7P, valueStr) bind(C, name = "ComboSet7pField")
   integer, value :: xf_7P   ! Predefined number specifying which Combo control parameter to set, see XF_7P_? for field specification
   character, intent(in) :: valueStr(512)   ! the new value of the specified COMBO control parameter, expressed as a string
end subroutine ComboSet7pField
!*******************************************************************************



! Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
! 
! If absMinDs50UTC = 0 or absMinDist = 1.0E20, this means no absolute minimum found. Otherwise, the absMinDs50UTC and absMinDist are returned whether or not absMinDist is greater than the specified "Close proximity limit".
! 
! Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
! 
!     table
! 
! Value
! Value Interpretation
! 
! 101 Primary satellite's epoch too far from the time span
! 102 Secondary satellite's epoch too far from the time span
! 103 Primary/secondary satellites are identical
! 104 Secondary satellite failed perigee/apogee test
! 105 Secondary satellite is considered a brief span
! 106 Secondary satellite is in sustained relative geometry
! 
! 
! When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
function ComboCompPriSec(priSatKey, secSatKey, absMinDs50UTC, absMinDist, relMinDs50UTCs, numOfRelMins, entryDs50UTCs, &
exitDs50UTCs, numOfEntryExits) bind(C, name = "ComboCompPriSec") result(errCode)
   integer :: errCode	! 0 if the COMBO data was computed successfully, non-0 if there is an error
   integer(8), value :: priSatKey   ! The primary satellite's unique key
   integer(8), value :: secSatKey   ! The secondary satellite's unique key
   real(8), intent(out) :: absMinDs50UTC   ! Time (in days since 1950, UTC) when the primary and secondary satellites are in closest approach (absolute minimum)
   real(8), intent(out) :: absMinDist   ! Absolute minimum distance (km) between primary and secondary satellites obtained at the time absMinDs50UTC
   real(8), intent(out) :: relMinDs50UTCs(1000)   ! Times (in days since 1950, UTC) when  the primary and secondary satellites are at relative minima
   integer, intent(out) :: numOfRelMins   ! Number of relative minima found during the requested time span
   real(8), intent(out) :: entryDs50UTCs(1000)   ! Times (in days since 1950, UTC) when the primary and secondary satellites approach the distance as specified in the "Maximum separation for relative minima"
   real(8), intent(out) :: exitDs50UTCs(1000)   ! Times (in days since 1950, UTC) when the primary and secondary satellites leave the distance as specified in the "Maximum separation for relative minima"
   integer, intent(out) :: numOfEntryExits   ! Number of times when the primary and secondary satellites enter and exit the "Maximum separation for relative minima"
end function ComboCompPriSec
!*******************************************************************************



! Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
! This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
function ComboCompPriSec_MT(xa_cb_parms, priSatKey, secSatKey, absMinDs50UTC, absMinDist, relMinDs50UTCs, numOfRelMins, &
entryDs50UTCs, exitDs50UTCs, numOfEntryExits) bind(C, name = "ComboCompPriSec_MT") result(errCode)
   integer :: errCode	! 0 if the COMBO data was computed successfully, non-0 if there is an error
   real(8), intent(in) :: xa_cb_parms(16)   ! Combo control parameters - see XA_CB_PARMS_? for array arrangement
   integer(8), value :: priSatKey   ! The primary satellite's unique key
   integer(8), value :: secSatKey   ! The secondary satellite's unique key
   real(8), intent(out) :: absMinDs50UTC   ! Time (in days since 1950, UTC) when the primary and secondary satellites are in closest approach (absolute minimum)
   real(8), intent(out) :: absMinDist   ! Absolute minimum distance (km) between primary and secondary satellites obtained at the time absMinDs50UTC
   real(8), intent(out) :: relMinDs50UTCs(1000)   ! Times (in days since 1950, UTC) when  the primary and secondary satellites are at relative minima
   integer, intent(out) :: numOfRelMins   ! Number of relative minima found during the requested time span
   real(8), intent(out) :: entryDs50UTCs(1000)   ! Times (in days since 1950, UTC) when the primary and secondary satellites approach the distance as specified in the "Maximum separation for relative minima"
   real(8), intent(out) :: exitDs50UTCs(1000)   ! Times (in days since 1950, UTC) when the primary and secondary satellites leave the distance as specified in the "Maximum separation for relative minima"
   integer, intent(out) :: numOfEntryExits   ! Number of times when the primary and secondary satellites enter and exit the "Maximum separation for relative minima"
end function ComboCompPriSec_MT
!*******************************************************************************



! Computes probability of collision between a primary and secondary satellite
function ComboPOC(priSatPos, priSatVel, priSatCov, priSatRad, secSatPos, secSatVel, secSatCov, secSatRad, xf_CovType, xa_cb_poc) &
bind(C, name = "ComboPOC") result(errCode)
   integer :: errCode	! 0 if the probability of collision is computed successfully, non-0 if there is an error
   real(8), intent(in) :: priSatPos(3)   ! The primary satellite's ECI position vector (km)
   real(8), intent(in) :: priSatVel(3)   ! The primary satellite's ECI velocity vector (km/s)
   real(8), intent(in) :: priSatCov(3, 3)   ! The primary satellite's 3x3 covariance matrix
   real(8), value :: priSatRad   ! The primary satellite's effective radius (m)
   real(8), intent(in) :: secSatPos(3)   ! The secondary satellite's ECI position vector (km)
   real(8), intent(in) :: secSatVel(3)   ! The secondary satellite's ECI velocity vector (km/s)
   real(8), intent(in) :: secSatCov(3, 3)   ! The secondary satellite's 3x3 covariance matrix
   real(8), value :: secSatRad   ! The secondary satellite's effective radius (m)
   integer, value :: xf_CovType   ! Input covariance type: 1 = ECI, 2 = UVW
   real(8), intent(out) :: xa_cb_poc(4)   ! The resulting probability of collision, see XA_CB_POC_? for array arragement
end function ComboPOC
!*******************************************************************************



! Computes probability of collision using data from a CSM/OCM file
function ComboCSMPOC(csmFile, sumR, xa_cb_poc) bind(C, name = "ComboCSMPOC") result(errCode)
   integer :: errCode	! 0 if the POC was computed successfully, non-0 if there is an error
   character, intent(in) :: csmFile(512)   ! ocm or csm file
   real(8), value :: sumR   ! hard-body radius (R1 + R2) (m), if not zero, overwrite values in csm's
   real(8), intent(out) :: xa_cb_poc(4)   ! The resulting probability of collision, see XA_CB_POC_? for array arragement
end function ComboCSMPOC
!*******************************************************************************

end interface




   
   ! Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
   integer, parameter :: &
      XA_CB_PARMS_TIMEFLG     =  1,   &   ! input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
      XA_CB_PARMS_STARTTIME   =  2,   &   ! begin time
      XA_CB_PARMS_STOPTIME    =  3,   &   ! end time
      XA_CB_PARMS_MAXSEP      =  4,   &   ! maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
      XA_CB_PARMS_PROXLIM     =  5,   &   ! close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value   
      XA_CB_PARMS_SIZE        = 16;
   
   ! Constants represent combo failed cases
   integer, parameter :: &
      FAILED_PRITOOFAR = 101,    &  ! Primary satellite's epoch too far from time span
      FAILED_SECTOOFAR = 102,    &  ! Secondary satellite's epoch too far from time span
      FAILED_SAMESAT   = 103,    &  ! Primary/secondary satellites are identical  
      FAILED_ALTITUDE  = 104,    &  ! Secondary satellite failed perigee/apogee test 
      WARN_BRIEFSPAN   = 105,    &  ! Secondary satellite is considered a brief span
      WARN_SUSRELGEO   = 106;       ! Secondary satellite is in sustained relative geometry
      
   ! Indexes of LAMOD 7P-card fields
   integer, parameter :: &
      XF_7P_TIMEFLAG    = 1,    &  ! Input time format : 0: Minutes since epoch, 1: UTC
      XF_7P_BEGTIME     = 2,    &  ! Begin time
      XF_7P_ENDTIME     = 3,    &  ! End time
      XF_7P_RELMINFLG   = 4,    &  ! Control flag for computing relative minima
      XF_7P_ABSMINFLG   = 5,    &  ! Control flag for computing absolute minimum
      XF_7P_EETIMES     = 6,    &  ! Control flag for computing periods of close proximity
      XF_7P_RELEPHFLG   = 7,    &  ! Control flag for computing relative ephemeris
      XF_7P_POCSIGMA    = 8,    &  ! Control flag for computing probability of collision
      XF_7P_RELMINLIM   = 9,    &  ! Maximum separation for relative minima
      XF_7P_ABSMINLIM   = 10,   &  ! Close proximity limit
      XF_7P_RELEPHINT   = 11,   &  ! Relative ephemeris sampling interval 
      XF_7P_PRTOPT      = 12,   &  ! Print options
      XF_7P_PRADIUS     = 13,   &  ! Primary satellite effective radius (m)
      XF_7P_SRADIUS     = 14;      ! Secondary satellite effective radius (m)
      
   ! Different input of covariance matrix to compute POC   
   integer, parameter :: &
      XF_COVTYPE_ECI   = 1,     &  ! ECI pos, vel, and ECI covariance
      XF_COVTYPE_UVW   = 2;        ! EFG pos, vel, and UVW covariance
      
   ! Indexes of Combo's POC data
   integer, parameter :: &
      XA_CB_POC_NORMSQR  = 0, &   ! Normalized distance (n-sigma) to circumscribing square
      XA_CB_POC_SQR      = 1, &   ! POC of square
      XA_CB_POC_NORMCIR  = 2, &   ! Normalized distance (n-sigma) to circle
      XA_CB_POC_CIR      = 3, &   ! POC of circle
      
      XA_CB_POC_SIZE     = 4;
      
   
end module ComboDll
! ========================= End of auto generated code ==========================
