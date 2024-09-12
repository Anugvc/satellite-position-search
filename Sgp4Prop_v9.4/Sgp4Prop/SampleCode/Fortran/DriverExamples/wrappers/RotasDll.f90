! This wrapper file was generated automatically by the GenDllWrappers program.
module RotasDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Rotas DLL for use in the program
function RotasInit(apAddr) bind(C, name = "RotasInit") result(errCode)
   integer :: errCode	! 0 if the Rotas dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function RotasInit
!*******************************************************************************



! Returns information about the current version of Rotas DLL. 
! The information is placed in the string parameter passed in.
subroutine RotasGetInfo(infoStr) bind(C, name = "RotasGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Rotas.dll
end subroutine RotasGetInfo
!*******************************************************************************



! Loads Rotas-related parameters from an input text file
function RotasLoadFile(rotasInputFile) bind(C, name = "RotasLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: rotasInputFile(512)   ! The name of the file containing Rotas-related parameters
end function RotasLoadFile
!*******************************************************************************



! Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
function RotasLoadFileAll(rotasInputFile) bind(C, name = "RotasLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: rotasInputFile(512)   ! The name of the file containing Rotas control parameters and all Rotas related data
end function RotasLoadFileAll
!*******************************************************************************



! Loads a single Rotas-typed card
function RotasLoadCard(card) bind(C, name = "RotasLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Rotas-type input card
end function RotasLoadCard
!*******************************************************************************



! Saves current Rotas settings to a file
function RotasSaveFile(rotasFile, saveMode, saveForm) bind(C, name = "RotasSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: rotasFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function RotasSaveFile
!*******************************************************************************



! Builds and returns the Rotas P-Card from the current Rotas settings
subroutine RotasGetPCard(rotasPCard) bind(C, name = "RotasGetPCard")
   character, intent(out) :: rotasPCard(512)   ! The resulting Rotas P-Card string
end subroutine RotasGetPCard
!*******************************************************************************



! Retrieves all Rotas control parameters with a single function call
subroutine RotasGetPAll(rotasMode, grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, &
maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr) bind(C, name = "RotasGetPAll")
   character, intent(out) :: rotasMode(5)   ! Rotas processing mode: TAG=verify ob tab (default), FTAG=force assoc vs all input elsets, ALLEL=find the best # assoc elsets
   real(8), intent(out) :: grossBeta   ! gross beta threshold (deg) (default=2.0)
   real(8), intent(out) :: betaLimit   ! ASTAT 0 beta limit (deg) (default=0.05)
   real(8), intent(out) :: deltaTLimit   ! ASTAT 0 delta-t limit (min) (default=0.05)
   real(8), intent(out) :: deltaHLimit   ! ASTAT 0 delta-height limit (km) (default=10)
   integer, intent(out) :: astat2Mult   ! ASTAT 2 multiplier (default=4)
   integer, intent(out) :: prtFlag   ! Residual print flag: 1=print all, 2=print ASTAT 0/1, 3=print no residuals, 4=print ASTAT 0/1/2
   integer, intent(out) :: retagFlag   ! Retag flag: 0=don't retag (default), 1=retag ASTAT 0/1 to B3, 2=retag ASTAT 0/1 to TTY, 3=retag ASTAT 0/1/2 to B3
   integer, intent(out) :: ltcFlag   ! Type 5 observation light-time correct flag: 0=don't apply LTC, 1=apply LTC analytically, 2=apply LTC exactly
   integer, intent(out) :: maxNumAssoc   ! Max number of associations per ob (ALLEL mode only)
   integer, intent(out) :: debiasFlag   ! Debias observation flag: 0=don't apply debias, 1=debias ob by applying sensor's bias data
   integer, intent(out) :: diagMode   ! Diagnostic print flag
   integer, intent(out) :: covPrtFlag   ! Covariance flag: 1=Propagate covariance and compute covariance matrix (covariance matrix must be available)
   integer, intent(out) :: isTrackMode   ! Track mode: 1=use track processing (each track is treated as a single entity)
   integer, intent(out) :: remRetagObs   ! Retagged obs are removed from further association
   real(8), intent(out) :: extArr(128)   ! For future use
end subroutine RotasGetPAll
!*******************************************************************************



! Sets all Rotas control parameters with a single function call
subroutine RotasSetPAll(rotasMode, grossBeta, betaLimit, deltaTLimit, deltaHLimit, astat2Mult, prtFlag, retagFlag, ltcFlag, &
maxNumAssoc, debiasFlag, diagMode, covPrtFlag, isTrackMode, remRetagObs, extArr) bind(C, name = "RotasSetPAll")
   character, intent(in) :: rotasMode(5)   ! Rotas processing mode: TAG=verify ob tab (default), FTAG=force assoc vs all input elsets, ALLEL=find the best # assoc
   real(8), value :: grossBeta   ! gross beta threshold (deg) (default=2.0)
   real(8), value :: betaLimit   ! ASTAT 0 beta limit (deg) (default=0.05)
   real(8), value :: deltaTLimit   ! ASTAT 0 delta-t limit (min) (default=0.05)
   real(8), value :: deltaHLimit   ! ASTAT 0 delta-height limit (km) (default=10)
   integer, value :: astat2Mult   ! ASTAT 2 multiplier (default=4)
   integer, value :: prtFlag   ! Residual print flag: 1=print all, 2=print ASTAT 0/1, 3=print no residuals, 4=print ASTAT 0/1/2
   integer, value :: retagFlag   ! Retag flag: 0=don't retag (default), 1=retag ASTAT 0/1 to B3, 2=retag ASTAT 0/1 to TTY, 3=retag ASTAT 0/1/2 to B3
   integer, value :: ltcFlag   ! Type 5 observation light-time correct flag: 0=don't apply LTC, 1=apply LTC analytically, 2=apply LTC exactly
   integer, value :: maxNumAssoc   ! Max number of associations per ob (ALLEL mode only)
   integer, value :: debiasFlag   ! Debias observation flag: 0=don't apply debias, 1=debias ob by applying sensor's bias data
   integer, value :: diagMode   ! Diagnostic print flag
   integer, value :: covPrtFlag   ! Covariance flag: 1=Propagate covariance and compute covariance matrix (covariance matrix must be available)
   integer, value :: isTrackMode   ! Track mode: 1=use track processing (each track is treated as a single entity)
   integer, value :: remRetagObs   ! Retagged obs are removed from further association
   real(8), intent(in) :: extArr(128)   ! For future use
end subroutine RotasSetPAll
!*******************************************************************************



! Retrieves the value of a specified Rotas control parameter (P-card field)
! 
! The table below shows the values for the xf_RP parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
!  1  Rotas processing mode
!  2  Gross Beta limit (deg)
!  3  ASTAT 0 Beta limit (deg)
!  4  ASTAT 0 delta-t limit (min)
!  5  ASTAT 0 delta-height limit (km)
!  6  ASTAT 2 multiplier
!  7  Residual print flag
!  8  Retag ASTAT 1 ob flag
!  9  Light-time correction flag
! 10  Maximum number of ALLEL assoc's to compute
! 11  Diagnostic print flag
! 12  Covariance print flag
! 13  Perform track processing
! 14  Retagged ob are removed from further association
! 15  Debias ob flag
! 
subroutine RotasGetPField(xf_RP, retVal) bind(C, name = "RotasGetPField")
   integer, value :: xf_RP   ! Predefined number specifying which Rotas control parameter  to retrieve
   character, intent(out) :: retVal(512)   ! A string to hold the value of the requested Rotas parameter
end subroutine RotasGetPField
!*******************************************************************************



!  Sets the value of a specified Rotas control parameter (P-card field)
! See RotasGetPField for values for the xf_RP parameter.
subroutine RotasSetPField(xf_RP, valueStr) bind(C, name = "RotasSetPField")
   integer, value :: xf_RP   ! Predefined number specifying which Rotas control parameter to set
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end subroutine RotasSetPField
!*******************************************************************************



! Gets ASTAT 1 association multipliers
subroutine RotasGetAssocMultipliers(xa_assocMultp) bind(C, name = "RotasGetAssocMultipliers")
   integer, intent(out) :: xa_assocMultp(12)   ! ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement
end subroutine RotasGetAssocMultipliers
!*******************************************************************************



! Sets ASTAT 1 association multipliers
subroutine RotasSetAssocMultipliers(xa_assocMultp) bind(C, name = "RotasSetAssocMultipliers")
   integer, intent(in) :: xa_assocMultp(12)   ! ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement
end subroutine RotasSetAssocMultipliers
!*******************************************************************************



! Resets all Rotas control parameters back to their default values
subroutine RotasResetAll() bind(C, name = "RotasResetAll")
end subroutine RotasResetAll
!*******************************************************************************



! Determines if the observation/satellite pair can possibly have an association
function RotasHasASTAT(obsKey, satKey) bind(C, name = "RotasHasASTAT") result(hasASTAT)
   integer :: hasASTAT	! 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   integer(8), value :: obsKey   ! The obervation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
end function RotasHasASTAT
!*******************************************************************************



! Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
function RotasHasASTAT_MT(xa_rt_parms, obsKey, satKey) bind(C, name = "RotasHasASTAT_MT") result(hasASTAT)
   integer :: hasASTAT	! 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   real(8), intent(in) :: xa_rt_parms(16)   ! ROTAS control parameters - see XA_RT_PARMS_? for array arrangement
   integer(8), value :: obsKey   ! The obervation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
end function RotasHasASTAT_MT
!*******************************************************************************



! Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
function RotasHasASTATMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey) bind(C, name = "RotasHasASTATMultp_MT") result(hasASTAT)
   integer :: hasASTAT	! 0 if the observation/satellite pair doesn't have an association, 1 if the pair has an association
   integer, intent(in) :: xa_assocMultp(12)   ! ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement
   real(8), intent(in) :: xa_rt_parms(16)   ! ROTAS control parameters - see XA_RT_PARMS_? for array arrangement
   integer(8), value :: obsKey   ! The obervation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
end function RotasHasASTATMultp_MT
!*******************************************************************************



! Computes residuals for one observation against one satellite
! Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResiduals(obsKey, satKey, xa_ObsRes, satElts, obElts) &
bind(C, name = "RotasComputeObsResiduals") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: obsKey   ! The observation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
   real(8), intent(out) :: satElts(9)   ! satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th)
   real(8), intent(out) :: obElts(9)   ! observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th)
end function RotasComputeObsResiduals
!*******************************************************************************



! Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
! Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResiduals_MT(xa_rt_parms, obsKey, satKey, xa_ObsRes, satElts, obElts) &
bind(C, name = "RotasComputeObsResiduals_MT") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   real(8), intent(in) :: xa_rt_parms(16)   ! ROTAS control parameters - see XA_RT_PARMS_? for array arrangement
   integer(8), value :: obsKey   ! The observation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
   real(8), intent(out) :: satElts(9)   ! satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th)
   real(8), intent(out) :: obElts(9)   ! observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th)
end function RotasComputeObsResiduals_MT
!*******************************************************************************



! Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
! Obs type 0 (range rate only) cannot be used to compute residuals.
function RotasComputeObsResidualsMultp_MT(xa_assocMultp, xa_rt_parms, obsKey, satKey, xa_ObsRes, satElts, obElts) &
bind(C, name = "RotasComputeObsResidualsMultp_MT") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer, intent(in) :: xa_assocMultp(12)   ! ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement
   real(8), intent(in) :: xa_rt_parms(16)   ! ROTAS control parameters - see XA_RT_PARMS_? for array arrangement
   integer(8), value :: obsKey   ! The observation's unique key
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
   real(8), intent(out) :: satElts(9)   ! satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (7th-9th)
   real(8), intent(out) :: obElts(9)   ! observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (7th-9th)
end function RotasComputeObsResidualsMultp_MT
!*******************************************************************************



! Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
function RotasComputeTrackResiduals(obsKeys, trackStartIdx, trackLength, satKey, xa_ObsRes, trackObsKeys, b3ObsCard, satElts, &
obElts) bind(C, name = "RotasComputeTrackResiduals") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), intent(in) :: obsKeys(*)   ! The input array of obsKeys sorted in ascending order of sensor, satno, obsType, time, elev
   integer, value :: trackStartIdx   ! The start index of the first obs of the track
   integer, value :: trackLength   ! The input track length
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
   integer(8), intent(out) :: trackObsKeys(3)   ! The 3 obsKeys of the 3 obs that were chosen to represent the track
   character, intent(out) :: b3ObsCard(512)   ! The resulting B3-card created by IOMOD to represent the whole track
   real(8), intent(out) :: satElts(9)   ! satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (8th-9th)
   real(8), intent(out) :: obElts(9)   ! observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (8th-9th)
end function RotasComputeTrackResiduals
!*******************************************************************************



! Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
function RotasComputeTrackResiduals_MT(xa_assocMultp, xa_rt_parms, obsKeys, trackStartIdx, trackLength, satKey, xa_ObsRes, &
trackObsKeys, b3ObsCard, satElts, obElts) bind(C, name = "RotasComputeTrackResiduals_MT") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer, intent(in) :: xa_assocMultp(12)   ! ASTAT 1 association multiplier array, see XA_ASSOCMULTP_? for array arrangement
   real(8), intent(in) :: xa_rt_parms(16)   ! ROTAS control parameters - see XA_RT_PARMS_? for array arrangement
   integer(8), intent(in) :: obsKeys(*)   ! The input array of obsKeys sorted in ascending order of sensor, satno, obsType, time, elev
   integer, value :: trackStartIdx   ! The start index of the first obs of the track
   integer, value :: trackLength   ! The input track length
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
   integer(8), intent(out) :: trackObsKeys(3)   ! The 3 obsKeys of the 3 obs that were chosen to represent the track
   character, intent(out) :: b3ObsCard(512)   ! The resulting B3-card created by IOMOD to represent the whole track
   real(8), intent(out) :: satElts(9)   ! satellite state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); satellite LLH (8th-9th)
   real(8), intent(out) :: obElts(9)   ! observation state in ECI/TEME of Date: position (1st-3rd), velocity (4th-6th); observation LLH (8th-9th)
end function RotasComputeTrackResiduals_MT
!*******************************************************************************



! Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
function RotasCompObResDirect(obDataArr, satDataArr, xa_ObsRes) bind(C, name = "RotasCompObResDirect") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   real(8), intent(in) :: obDataArr(16)   ! The array storing observation data: position (1st-3rd), velocity (4th-6th), unused (7th-16th)
   real(8), intent(in) :: satDataArr(16)   ! The array storing satellite data: position (1st-3rd), velocity (4th-6th), unused (7th-16th)
   real(8), intent(out) :: xa_ObsRes(100)   ! The resulting array of obs residuals, see XA_OBSRES_? for array arrangement
end function RotasCompObResDirect
!*******************************************************************************



! Returns the name of the retag obs file
subroutine RotasGetRetagObsFile(retagObsFile) bind(C, name = "RotasGetRetagObsFile")
   character, intent(out) :: retagObsFile(512)   ! The resulting retag file name
end subroutine RotasGetRetagObsFile
!*******************************************************************************



! Sets the file name of the retag obs file
subroutine RotasSetRetagObsFile(retagObsFile) bind(C, name = "RotasSetRetagObsFile")
   character, intent(in) :: retagObsFile(512)   ! The retag file name
end subroutine RotasSetRetagObsFile
!*******************************************************************************

end interface




   
   ! Different light-time correction (LTC) options
   integer, parameter :: &
      LTC_DONTAPPLY  = 0, &   ! Don't apply LTC
      LTC_ANALYTIC   = 1, &   ! Apply LTC analytically
      LTC_EXACT      = 2;     ! Apply LTC exactly
   
   ! Residual computation methods
   integer, parameter :: &
      RESCOMPMETH_DELTA427M = 1, & ! Delta/427M method
      RESCOMPMETH_SPADOC4   = 2;   ! Spadoc 4 method
   
   ! PV Ob data
   integer, parameter :: &
      XA_OBPV_POSX     =  0, &    ! ob ECI position X (km) in TEME of Date
      XA_OBPV_POSY     =  1, &    ! ob ECI position Y (km) in TEME of Date
      XA_OBPV_POSZ     =  2, &    ! ob ECI position Z (km) in TEME of Date
      XA_OBPV_VELX     =  3, &    ! ob ECI velocity X (km/sec) in TEME of Date
      XA_OBPV_VELY     =  4, &    ! ob ECI velocity Y (km/sec) in TEME of Date
      XA_OBPV_VELZ     =  5, &    ! ob ECI velocity Z (km/sec) in TEME of Date
      XA_OBPV_TIME     =  6, &    ! ob time in days since 1950, UTC
      
      XA_OBPV_END      = 15, &    ! the last available index
      XA_OBPV_SIZE     = 16;
   
   ! Satellite state data
   integer, parameter :: &
      XA_SATPV_POSX    =  0, &    ! satellite ECI position X (km) in TEME of Date
      XA_SATPV_POSY    =  1, &    ! satellite ECI position Y (km) in TEME of Date
      XA_SATPV_POSZ    =  2, &    ! satellite ECI position Z (km) in TEME of Date
      XA_SATPV_VELX    =  3, &    ! satellite ECI velocity X (km/sec) in TEME of Date
      XA_SATPV_VELY    =  4, &    ! satellite ECI velocity Y (km/sec) in TEME of Date
      XA_SATPV_VELZ    =  5, &    ! satellite ECI velocity Z (km/sec) in TEME of Date
      
      XA_SATPV_END     = 15, &    ! the last available index
      XA_SATPV_SIZE    = 16;
   
      
   ! Obs residual data field indexes
   integer, parameter :: &
      XA_OBSRES_AZ     =  0, &         ! Azimuth residual (deg)
      XA_OBSRES_EL     =  1, &         ! Elevation residual (deg)
      XA_OBSRES_RANGE  =  2, &         ! Range residual (km)
      XA_OBSRES_HEIGHT =  3, &         ! Height residual (deg)
      XA_OBSRES_BETA   =  4, &         ! Beta residual (deg). asin(dot(priU, secW))
      XA_OBSRES_DELTAT =  5, &         ! Delta T residual (min)
      XA_OBSRES_VMAG   =  6, &         ! Vector magnitude (km)
      XA_OBSRES_AGE    =  7, &         ! Time since epoch (days)
      XA_OBSRES_SU     =  8, &         ! True argument of latitude (deg)
      XA_OBSRES_REVNUM =  9, &         ! Revolution number  
      XA_OBSRES_RNGRATE= 10, &         ! Range rate residual (km/sec)
      XA_OBSRES_ASTAT  = 11, &         ! Observation ASTAT
      XA_OBSRES_OBSTYPE= 12, &         ! Observation type
      XA_OBSRES_SATANOM= 13, &         ! Satellite true anomaly (deg)
      XA_OBSRES_SATELEV= 14, &         ! Satellite elevation (deg)
      XA_OBSRES_SATCAT = 15, &         ! Satellite maintenance category
      XA_OBSRES_OBSTIME= 16, &         ! Obs time in ds50UTC
      XA_OBSRES_OBSAZ  = 17, &         ! Obs azimuth (deg)
      XA_OBSRES_OBSEL  = 18, &         ! Obs elevation (deg)
      XA_OBSRES_VELANG = 19, &         ! Velocity angle residual (deg)
      XA_OBSRES_ANGMOM = 20, &         ! Angular momentum residual (deg).  acos(dot(priW, secW))
      XA_OBSRES_RA     = 21, &         ! Right ascension residual (deg) (for ob types 5, 9, 19)
      XA_OBSRES_DEC    = 22, &         ! Declination residual (deg) (for ob types 5, 9, 19)
      XA_OBSRES_POSX   = 23, &         ! Delta X position (km)
      XA_OBSRES_POSY   = 24, &         ! Delta Y position (km)
      XA_OBSRES_POSZ   = 25, &         ! Delta Z position (km)
      XA_OBSRES_VELX   = 26, &         ! Delta X velocity (km/sec)
      XA_OBSRES_VELY   = 27, &         ! Delta Y velocity (km/sec)
      XA_OBSRES_VELZ   = 28, &         ! Delta Z velocity (km/sec)
      XA_OBSRES_OBSRNG = 29, &         ! Angle only - Obs computed range (km)
   
      XA_OBSRES_OBSRA  = 30, &         ! Obs right ascension (deg)
      XA_OBSRES_OBSDEC = 31, &         ! Obs declination (deg)
      XA_OBSRES_LON    = 32, &         ! Delta east longitude (deg) 
      
      XA_OBSRES_POSU   = 33, &         ! Delta U position (km)
      XA_OBSRES_POSV   = 34, &         ! Delta V position (km)
      XA_OBSRES_POSW   = 35, &         ! Delta W position (km)
      XA_OBSRES_CHI    = 36, &         ! 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   
      XA_OBSRES_ANGSEP = 38, &         ! Angular Separation between Obs and State (Deg)
      XA_OBSRES_TDOA   = 39, &         ! TDOA Time Difference of Arrival residual (nano-second)
      XA_OBSRES_FDOA   = 40, &         ! FDOA Frequency Differecnce of Arrival (Hz)
   
      XA_OBSRES_SIZE   =100;           
   
   ! Indexes of Rotas Control parameter fields (Rotas P-Card)
   integer, parameter :: &
      XF_RP_MODE       =  1, &   ! Rotas processing mode
      XF_RP_GROSSBETA  =  2, &   ! Gross Beta limit (deg)
      XF_RP_BETALIM    =  3, &   ! ASTAT 0 Beta limit (deg)
      XF_RP_DELTATLIM  =  4, &   ! ASTAT 0 delta-t limit (min)
      XF_RP_DELTAHLIM  =  5, &   ! ASTAT 0 delta-height limit (km)
      XF_RP_ASTAT2MULT =  6, &   ! ASTAT 2 multiplier
      XF_RP_PRTFLAG    =  7, &   ! Residual print flag
      XF_RP_RETAGFLAG  =  8, &   ! Retag ASTAT 1 ob flag
      XF_RP_LTC        =  9, &   ! Light-time correction flag
      XF_RP_NUMASSOC   = 10, &   ! Maximum number of ALLEL assoc's to compute
      XF_RP_DIAGNOSTIC = 11, &   ! Diagnostic print flag
      XF_RP_PRTCOV     = 12, &   ! Covariance print flag
      XF_RP_TRACKFLAG  = 13, &   ! Perform track processing
      XF_RP_REMRETAG   = 14, &   ! Retagged ob are removed from further association
      XF_RP_DEBIAS     = 15, &   ! Debias ob flag
      XF_RP_RESCOMPMETH= 16;     ! Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   
   ! ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and 
   integer, parameter :: &
      XA_RT_PARMS_GROSSBETA   =  1, & ! Gross Beta limit (deg)
      XA_RT_PARMS_BETALIM     =  2, & ! ASTAT 0 Beta limit (deg)
      XA_RT_PARMS_DELTATLIM   =  3, & ! ASTAT 0 delta-t limit (min)
      XA_RT_PARMS_DELTAHLIM   =  4, & ! ASTAT 0 delta-height limit (km)
      XA_RT_PARMS_ASTAT2MULT  =  5, & ! ASTAT 2 multiplier
      XA_RT_PARMS_LTC         =  6, & ! Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
      XA_RT_PARMS_DEBIAS      =  7, & ! debias ob flag: 0= do not debias, 1= debias ob
      XA_RT_PARMS_RESCOMPMETH =  8, & ! Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
      XA_RT_PARMS_ANNUALAB	   =  9, & ! Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
      XA_RT_PARMS_DIURNALAB   = 10, & ! Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction   
      XA_RT_PARMS_SIZE        = 16;
   
   ! ROTAS Association Multipliers
   integer, parameter :: &
      XA_ASSOCMULTP_BETA_SYN   =  0, &     ! ASTAT 1 Beta multiplier for Synchronous
      XA_ASSOCMULTP_DELTAT_SYN =  1, &     ! ASTAT 1 Delta-t multiplier for Synchronous
      XA_ASSOCMULTP_DELTAH_SYN =  2, &     ! ASTAT 1 Delta-height multiplier for Synchronous
      XA_ASSOCMULTP_BETA_DS    =  3, &     ! ASTAT 1 Beta multiplier for Deep-space
      XA_ASSOCMULTP_DELTAT_DS  =  4, &     ! ASTAT 1 Delta-t multiplier for Deep-space
      XA_ASSOCMULTP_DELTAH_DS  =  5, &     ! ASTAT 1 Delta-height multiplier for Deep-space
      XA_ASSOCMULTP_BETA_DCY   =  6, &     ! ASTAT 1 Beta multiplier for Decaying
      XA_ASSOCMULTP_DELTAT_DCY =  7, &     ! ASTAT 1 Delta-t multiplier for Decaying
      XA_ASSOCMULTP_DELTAH_DCY =  8, &     ! ASTAT 1 Delta-height multiplier for Decaying
      XA_ASSOCMULTP_BETA_RTN   =  9, &     ! ASTAT 1 Beta multiplier for Routine
      XA_ASSOCMULTP_DELTAT_RTN = 10, &     ! ASTAT 1 Delta-t multiplier for Routine
      XA_ASSOCMULTP_DELTAH_RTN = 11, &     ! ASTAT 1 Delta-height multiplier for Routine   
      
      XA_ASSOCMULTP_SIZE       = 12;
      
end module RotasDll
! ========================= End of auto generated code ==========================
