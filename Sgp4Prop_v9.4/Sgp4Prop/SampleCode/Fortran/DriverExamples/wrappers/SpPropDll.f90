! This wrapper file was generated automatically by the GenDllWrappers program.
module SpPropDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes SpProp DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
function SpInit(apAddr) bind(C, name = "SpInit") result(errCode)
   integer :: errCode	! 0 if SpProp.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function SpInit
!*******************************************************************************



! Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
! The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
subroutine SpGetInfo(infoStr) bind(C, name = "SpGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about SpProp.dll
end subroutine SpGetInfo
!*******************************************************************************



! Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
function SpLoadFile(spInputFile) bind(C, name = "SpLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: spInputFile(512)   ! The name of the file containing SP-related parameters
end function SpLoadFile
!*******************************************************************************



! Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
function SpLoadFileAll(spInputFile) bind(C, name = "SpLoadFileAll") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: spInputFile(512)   ! The name of the file containing SP-related parameters and SP elsets
end function SpLoadFileAll
!*******************************************************************************



! Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
! The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
function SpSaveFile(spFile, saveMode, saveForm) bind(C, name = "SpSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: spFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function SpSaveFile
!*******************************************************************************



! Initializes an SP satellite from an SP TLE, SPVEC, or VCM
! Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
! 
! The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
function SpInitSat(satKey) bind(C, name = "SpInitSat") result(errCode)
   integer :: errCode	! 0 if the satellite is successfully initialized and added to SpProp.dll's set of satellites, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
end function SpInitSat
!*******************************************************************************



! Removes a satellite, represented by the satKey, from the set of currently loaded satellites
! Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
! If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function SpRemoveSat(satKey) bind(C, name = "SpRemoveSat") result(errCode)
   integer :: errCode	! 0 if the satellite is removed successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function SpRemoveSat
!*******************************************************************************



! Removes all currently loaded satellites from memory
! Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
! The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
function SpRemoveAllSats() bind(C, name = "SpRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all satellites are removed successfully from memory, non-0 if there is an error
end function SpRemoveAllSats
!*******************************************************************************



! Returns the number of SP objects currently created. 
function SpGetCount() bind(C, name = "SpGetCount") result(numSats)
   integer :: numSats	! The number of SP objects currently created.
end function SpGetCount
!*******************************************************************************



! Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
subroutine SpReset() bind(C, name = "SpReset")
end subroutine SpReset
!*******************************************************************************



! Retrieves the value of an SP application control parameter
! 
! The table below shows the values for the xf_SpApp parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 1 Geopotential directory path
! 2 Buffer size
! 3 Run mode
! 4 Save partials data
! 5 Specter compatibility mode
! 6 Consider parameter
! 7 Decay altitude
! 8 Output coordinate system
! 9 Additional VCM options
! 
subroutine SpGetApCtrl(xf_SpApp, valueStr) bind(C, name = "SpGetApCtrl")
   integer, value :: xf_SpApp   ! Predefined value specifying which application control parameter to retrieve
   character, intent(out) :: valueStr(512)   ! A string to hold the retrieved application control parameter
end subroutine SpGetApCtrl
!*******************************************************************************



! Retrieves all SP application control parameters with a single function call
subroutine SpGetApCtrlAll(geoDir, bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord) &
bind(C, name = "SpGetApCtrlAll")
   character, intent(out) :: geoDir(512)   ! geopotential directory path
   integer, intent(out) :: bufSize   ! buffer size [5000]
   integer, intent(out) :: runMode   ! run mode: 0=performance priority, [1]=memory priority
   integer, intent(out) :: savePartials   ! propagate covariance matrix: 0=don't propagate, 1=propagate covariance matrix (if VCM has it)
   integer, intent(out) :: isSpectr   ! spectr mode: 0=not compatible, 1=SPECTR compatible
   real(8), intent(out) :: consider   ! consider parameter (set it to 12 to match operational system)
   integer, intent(out) :: decayAlt   ! decay altitude (km) [10]
   integer, intent(out) :: outCoord   ! ouput cooridnate system: [0]=TEME of Date, 1=TEME of Epoch, 2=MEME of J2K
end subroutine SpGetApCtrlAll
!*******************************************************************************



! Sets an SP application control parameter
! See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
subroutine SpSetApCtrl(xf_SpApp, valueStr) bind(C, name = "SpSetApCtrl")
   integer, value :: xf_SpApp   ! predefined value specifying which application control parameter to set
   character, intent(in) :: valueStr(512)   ! the new value of the specified parameter, expressed as a string
end subroutine SpSetApCtrl
!*******************************************************************************



! Sets all SP application control parameters with a single function call
subroutine SpSetApCtrlAll(geoDir, bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord) &
bind(C, name = "SpSetApCtrlAll")
   character, intent(in) :: geoDir(512)   ! geopotential directory path
   integer, value :: bufSize   ! buffer size [5000]
   integer, value :: runMode   ! run mode: 0=performance priority, [1]=memory priority
   integer, value :: savePartials   ! propagate covariance matrix: 0=don't propagate, 1=propagate covariance matrix (if VCM has it)
   integer, value :: isSpectr   ! spectr mode: 0=not compatible, 1=SPECTR compatible
   real(8), value :: consider   ! consider parameter (set it to 12 to match operational system)
   integer, value :: decayAlt   ! decay altitude (km) [10]
   integer, value :: outCoord   ! ouput cooridnate system: [0]=TEME of Date, 1=TEME of Epoch, 2=MEME of J2K
end subroutine SpSetApCtrlAll
!*******************************************************************************



! Retrieves the value of a numerical integration control parameter
! 
! The table below shows the values for xf_4P parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 1   Geopotential model to use
! 2   Earth gravity pertubations flag
! 3   Drag pertubations flag 
! 4   Radiation pressure pertubations flag
! 5   Lunar/Solar pertubations flag
! 6   F10 value
! 7   F10 average value
! 8   Ap value
! 9   Geopotential truncation order/degree/zonals
! 10  Corrector step convergence criterion; exponent of 1/10; default = 10
! 11  Outgassing pertubations flag
! 12  Solid earth ocean tide pertubations flag
! 13  Input vector coordinate system
! 14  Nutation terms
! 15  Recompute pertubations at each corrector step
! 16  Variable of intergration control
! 17  Variable step size control
! 18  Initial step size
! 21  DCA file name
! 22  Solar flux file name
! 23  Geopotential file name
! 24  JPL file name
! 25  JPL start time
! 26  JPL stop time
! 
subroutine SpGet4P(xf_4P, valueStr) bind(C, name = "SpGet4P")
   integer, value :: xf_4P   ! Predefined value specifying which application control parameter to retrieve
   character, intent(out) :: valueStr(512)   ! A string to hold the retrieved application control parameter
end subroutine SpGet4P
!*******************************************************************************



! Sets the value of a numerical integration control parameter
! See SpGet4P for a list of the values for the xf_4P parameter.
! For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
! If the user needs to load these files instantly, please call the SpLoadFile() instead
subroutine SpSet4P(xf_4P, valueStr) bind(C, name = "SpSet4P")
   integer, value :: xf_4P   ! predefined value specifying which application control parameter to set
   character, intent(in) :: valueStr(512)   ! the new value of the specified parameter, expressed as a string
end subroutine SpSet4P
!*******************************************************************************



! Retrieves prediction control parameters
subroutine SpGetPredCtrl(startFrEpoch, stopFrEpoch, startTime, stopTime, interval) bind(C, name = "SpGetPredCtrl")
   integer, intent(out) :: startFrEpoch   ! start time flag: 0=in days since 1950 UTC, 1=in minutes since epoch
   integer, intent(out) :: stopFrEpoch   ! stop time flag : 0=in days since 1950 UTC, 1=in minutes since epoch
   real(8), intent(out) :: startTime   ! start time value
   real(8), intent(out) :: stopTime   ! stop time value
   real(8), intent(out) :: interval   ! step size (min)
end subroutine SpGetPredCtrl
!*******************************************************************************



! Sets prediction control parameters
subroutine SpSetPredCtrl(startFrEpoch, stopFrEpoch, startTime, stopTime, interval) bind(C, name = "SpSetPredCtrl")
   integer, value :: startFrEpoch   ! start time flag: 0=in days since 1950 UTC, 1=in minutes since epoch
   integer, value :: stopFrEpoch   ! stop time flag : 0=in days since 1950 UTC, 1=in minutes since epoch
   real(8), value :: startTime   ! start time value
   real(8), value :: stopTime   ! stop time value
   real(8), value :: interval   ! step size (min)
end subroutine SpSetPredCtrl
!*******************************************************************************



! Retrieves the value of a field of an SP satellite
! 
! The table below shows the values for the xf_SpSat parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
! 1  Satellite number I5
! 2  Satellite's epoch time in days since 1950, UTC 
! 3  Satellite's epoch time in days since 1950, TAI
! 4  Mu value 
! 5  Covariance Matrix flag
! 6  Integration mode
! 7  Nutation terms
! 8  Specter compatibility mode
! 
function SpGetSatData(satKey, xf_SpSat, valueStr) bind(C, name = "SpGetSatData") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_SpSat   ! Predefined number specifying which field to retrieve
   character, intent(out) :: valueStr(512)   ! A string containing the value of the specified field
end function SpGetSatData
!*******************************************************************************



! Retrieves all fields of an SP satellite with a single function call
function SpGetSatDataAll(satKey, satNum, epochDs50UTC, epochDs50TAI, mu, hasCovMtx, integMode, nTerms, isSpectr) &
bind(C, name = "SpGetSatDataAll") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   real(8), intent(out) :: epochDs50UTC   ! Satellite's epoch time in days since 1950 UTC
   real(8), intent(out) :: epochDs50TAI   ! Satellite's epoch time in days since 1950 TAI
   real(8), intent(out) :: mu   ! mu value from Satellite's geopotential model
   integer, intent(out) :: hasCovMtx   ! 0=This satellite doesn't have covariance matrix, 1=This satellite has covariance matrix
   integer, intent(out) :: integMode   ! Partials computation mode: 0=no partials, 1=numerical, 2=semi-analytic
   integer, intent(out) :: nTerms   ! number of nutation terms
   integer, intent(out) :: isSpectr   ! Spectr compatible mode: 0=not compatible, 1=compatible
end function SpGetSatDataAll
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
! satellite's epoch time
function SpPropMse(satKey, mse, xa_timeTypes, revNum, posJ2K, velJ2K) bind(C, name = "SpPropMse") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: mse   ! The requested time in minutes since the satellite's epoch time
   real(8), intent(out) :: xa_timeTypes(5)   ! The output array that stores different time types, see XA_TIMETYPES_? for array arrangement
   integer, intent(out) :: revNum   ! The resulting revolution number
   real(8), intent(out) :: posJ2K(3)   ! The resulting position vector (km) in MEME of J2K
   real(8), intent(out) :: velJ2K(3)   ! The resulting velocity vector (km/s) in MEME of J2K
end function SpPropMse
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
function SpPropDs50UTC(satKey, ds50UTC, xa_timeTypes, revNum, posJ2K, velJ2K) bind(C, name = "SpPropDs50UTC") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in days since 1950 UTC
   real(8), intent(out) :: xa_timeTypes(5)   ! The output array that stores different time types, see XA_TIMETYPES_? for array arrangement
   integer, intent(out) :: revNum   ! The resulting revolution number
   real(8), intent(out) :: posJ2K(3)   ! The resuling position vector (km) in MEME of J2K
   real(8), intent(out) :: velJ2K(3)   ! The resulting velocity vector (km/s) in MEME of J2K
end function SpPropDs50UTC
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! It only returns the latitude, longitude, and height at that time in coordinate system of Date
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! 
! This function is built especially for application that plots ground trace.
function SpPropDs50UtcLLH(satKey, ds50UTC, llh) bind(C, name = "SpPropDs50UtcLLH") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in days since 1950 UTC
   real(8), intent(out) :: llh(3)   ! The resulting array: 1=geodetic latitude (deg), 2=geodetic longitude (deg), 3=height (km)
end function SpPropDs50UtcLLH
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! It only returns the satellite's ECI position in TEME of DATE
! It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
! 
! This function is built especially for application that plots satellites' positions in 3D.
function SpPropDs50UtcPos(satKey, ds50UTC, pos) bind(C, name = "SpPropDs50UtcPos") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in days since 1950 UTC
   real(8), intent(out) :: pos(3)   ! The resulting ECI position (km) in TEME of Date
end function SpPropDs50UtcPos
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
! 
! All propagation data is returned by this function.
function SpPropAll(satKey, timeType, timeIn, covType, xa_spOut) bind(C, name = "SpPropAll") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, 2 on error.
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   integer, value :: timeType   ! The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC
   real(8), value :: timeIn   ! The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC.
   integer, value :: covType   ! Covariance matrix type, if available: 0=don't propagate, 1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   real(8), intent(out) :: xa_spOut(128)   ! The array that stores all Sp propagation data, see XA_SPOUT_? for array arrangement
end function SpPropAll
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
! It only returns the position and velocity in TEME of Date
function SpGetStateDs50UTC(satKey, ds50UTC, posDate, velDate) bind(C, name = "SpGetStateDs50UTC") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested time in days since 1950 UTC
   real(8), intent(out) :: posDate(3)   ! The resulting ECI position (km) in TEME of Date
   real(8), intent(out) :: velDate(3)   ! The resulting ECI velocity (km/s) in TEME of Date
end function SpGetStateDs50UTC
!*******************************************************************************



! Reepochs the state of an existing SP object associated with the satKey. 
! Proper initialization is handled internally so no need to call SpSatInit() afterward 
function SpSetStateDs50UTC(satKey, ds50UTC, posDate, velDate) bind(C, name = "SpSetStateDs50UTC") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), value :: ds50UTC   ! The requested new epoch time in days since 1950 UTC
   real(8), intent(in) :: posDate(3)   ! The initial ECI position (km) in TEME of Date
   real(8), intent(in) :: velDate(3)   ! The initial ECI velocity (km/s) in TEME of Date
end function SpSetStateDs50UTC
!*******************************************************************************



! Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
! Then propagates the updated SP object to the requested time propTimeDs50UTC. 
! Resulting propagated data will be stored in propDataArr.
function SpSetAndProp(satKey, setDataArr, propTimeDs50UTC, propDataArr) bind(C, name = "SpSetAndProp") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(in) :: setDataArr(128)   ! 0-2: posECI (km), 3-5: velECI (km/s), 6: bTerm (m2/kg), 7: agom (m2/kg)
   real(8), value :: propTimeDs50UTC   ! The requested time in days since 1950 UTC
   real(8), intent(out) :: propDataArr(128)   ! 0-2: out posECI (km), 3-5: out velECI (km/s), 6-127: NA
end function SpSetAndProp
!*******************************************************************************



! This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
! Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
function SpGetPropOut(satKey, index, destArr) bind(C, name = "SpGetPropOut") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: index   ! Index specified ouput data
   real(8), intent(out) :: destArr(*)   ! The resulting array
end function SpGetPropOut
!*******************************************************************************



! Returns the covariance matrix of a satellite
! Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
function SpGetCovMtx(satKey, covType, covMtx) bind(C, name = "SpGetCovMtx") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: covType   ! Covariance matrix type: 1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   real(8), intent(out) :: covMtx(6, 6)   ! Resulting covariance matrix 6x6
end function SpGetCovMtx
!*******************************************************************************



! Computes the covariance sigma from the input covariance matrix
subroutine SpCompCovSigma(covMtx, covSigma) bind(C, name = "SpCompCovSigma")
   real(8), intent(in) :: covMtx(6, 6)   ! Input covariance matrix
   real(8), intent(out) :: covSigma(6)   ! Resulting covariance sigma
end subroutine SpCompCovSigma
!*******************************************************************************



! Sets all numerical integration control parameters with a single function call
subroutine SpSet4pAll(geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, &
inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile, fluxFile, geoFile, jplFile, jplStart, jplStop) &
bind(C, name = "SpSet4pAll")
   integer, value :: geoIdx   ! geopotential model
   integer, value :: bulgePert   ! earth gravity flag
   integer, value :: dragPert   ! drag pertubation flag
   integer, value :: radPresPert   ! radiation pressure pertubation flag
   integer, value :: lunSolPert   ! lunar/solar pertubation flag
   integer, value :: f10   ! f10 value
   integer, value :: f10Avg   ! f10 average value
   integer, value :: ap   ! ap
   integer, value :: trunc   ! geo truncation order/degree/zonals
   integer, value :: incr   ! corrector step convergenece criterion
   integer, value :: ogPert   ! outgassing pertubation flag
   integer, value :: tidePert   ! solid earth + ocean tide pertubation flag
   integer, value :: inCoord   ! input vector coordinate system
   integer, value :: nTerms   ! nutation terms
   integer, value :: reEval   ! recompute pertubations at each corrector step
   integer, value :: integStepMode   ! variable of integration control
   integer, value :: stepSizeMethod   ! variable step size control
   real(8), value :: initStepSize   ! initial step size
   character, intent(in) :: dcaFile(512)   ! DCA file name
   character, intent(in) :: fluxFile(512)   ! Flux file name
   character, intent(in) :: geoFile(512)   ! Geo file name
   character, intent(in) :: jplFile(512)   ! JPL file name
   character, intent(in) :: jplStart(512)   ! JPL start time
   character, intent(in) :: jplStop(512)   ! JPL stop time
end subroutine SpSet4pAll
!*******************************************************************************



! Retrieves all numerical integration control parameters with a single function call
subroutine SpGet4pAll(geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, &
inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile, fluxFile, geoFile, jplFile, jplStart, jplStop) &
bind(C, name = "SpGet4pAll")
   integer, intent(out) :: geoIdx   ! geopotential model
   integer, intent(out) :: bulgePert   ! earth gravity flag
   integer, intent(out) :: dragPert   ! drag pertubation flag
   integer, intent(out) :: radPresPert   ! radiation pressure pertubation flag
   integer, intent(out) :: lunSolPert   ! lunar/solar pertubation flag
   integer, intent(out) :: f10   ! f10 value
   integer, intent(out) :: f10Avg   ! f10 average value
   integer, intent(out) :: ap   ! ap
   integer, intent(out) :: trunc   ! geo truncation order/degree/zonals
   integer, intent(out) :: incr   ! corrector step convergenece criterion
   integer, intent(out) :: ogPert   ! outgassing pertubation flag
   integer, intent(out) :: tidePert   ! solid earth + ocean tide pertubation flag
   integer, intent(out) :: inCoord   ! input vector coordinate system
   integer, intent(out) :: nTerms   ! nutation terms
   integer, intent(out) :: reEval   ! recompute pertubations at each corrector step
   integer, intent(out) :: integStepMode   ! variable of integration control
   integer, intent(out) :: stepSizeMethod   ! variable step size control
   real(8), intent(out) :: initStepSize   ! initial step size
   character, intent(out) :: dcaFile(512)   ! DCA file name
   character, intent(out) :: fluxFile(512)   ! Flux file name
   character, intent(out) :: geoFile(512)   ! Geo file name
   character, intent(out) :: jplFile(512)   ! JPL file name
   character, intent(out) :: jplStart(512)   ! JPL start time
   character, intent(out) :: jplStop(512)   ! JPL stop time
end subroutine SpGet4pAll
!*******************************************************************************



! Read the integration control settings from a 4P-Card
function SpSet4PCard(card4P) bind(C, name = "SpSet4PCard") result(errCode)
   integer :: errCode	! 0 if the input 4P card is read successfully, non-0 if there is an error
   character, intent(in) :: card4P(512)   ! The input 4P card
end function SpSet4PCard
!*******************************************************************************



! Builds and returns the integration control card (4P-Card) from the current settings
subroutine SpGet4PCard(card4P) bind(C, name = "SpGet4PCard")
   character, intent(out) :: card4P(512)   ! A string to hold the retrieved 4P card
end subroutine SpGet4PCard
!*******************************************************************************



! Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
function SpAddFluxRec(refDs50UTC, f10, f10Avg, ap) bind(C, name = "SpAddFluxRec") result(errCode)
   integer :: errCode	! 0 if successful, non-0 if there is an error
   real(8), value :: refDs50UTC   ! Time tag of this record (DS50; UTC)
   real(8), value :: f10   ! f10 value
   real(8), value :: f10Avg   ! f10avg value
   real(8), intent(in) :: ap(8)   ! Array of 3-hourly values of Ap
end function SpAddFluxRec
!*******************************************************************************



! Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
! This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
! An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
function SpGetEphemTimes(satKey, maxEphPts, startDs50UTC, stopDs50UTC, minStepSize, actualEphPts, ds50UTCArr) &
bind(C, name = "SpGetEphemTimes") result(errCode)
   integer :: errCode	! 0 if the function successfully returns all the ephemeris times of the specified start/stop time span, non-0 if there is an error. Also if
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: maxEphPts   ! Maximum number of possible ephemeris points that the function won't go over. That means actualEphPts can't be greater than maxEphPts even though the time span may have more points than that
   real(8), value :: startDs50UTC   ! Start time in days since 1950 UTC
   real(8), value :: stopDs50UTC   ! Stop time in days since 1950 UTC
   real(8), value :: minStepSize   ! Option to thin ephem points. Only pick ephem point when its next ephem point is older than the specified minStepSize (minutes). Set to 0 to get all ephem points (SP natural integration step size)
   integer, intent(out) :: actualEphPts   ! Actual number of ephem points that meet the requirements
   real(8), intent(out) :: ds50UTCArr(*)   ! The resulting time array, in days since 1950 UTC, of all ephem points that meet the requirements
end function SpGetEphemTimes
!*******************************************************************************



! Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
! Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
! that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function SpGenEphems(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, ephemArr, genEphemPts) &
bind(C, name = "SpGenEphems") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to generate ephemerides.
   real(8), value :: startDs50UTC   ! Start time expressed in days since 1950, UTC.
   real(8), value :: stopDs50UTC   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes, set to 0 if want to use SP natural integration step size
   integer, value :: sp_ephem   ! Output ephemeris type: 1=ECI, 2=J2K.
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(7, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function SpGenEphems
!*******************************************************************************



! This function is similar to SpGenEphems but also returns covariance matrix data
! Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
function SpGenEphemsCov(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, ephemArr, genEphemPts) &
bind(C, name = "SpGenEphemsCov") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   integer(8), value :: satKey   ! The unique key of the satellite to generate ephemerides.
   real(8), value :: startDs50UTC   ! Start time expressed in days since 1950, UTC.
   real(8), value :: stopDs50UTC   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes, set to 0 if want to use SP natural integration step size
   integer, value :: sp_ephem   ! Output ephemeris type: 1=ECI, 2=J2K.
   integer, value :: covType   ! Covariance matrix type, if available: 0=don't propagate,  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(28, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function SpGenEphemsCov
!*******************************************************************************



! Generates ephemerides for the input vcm (in string format) for the specified time span and step size
! Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
! that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function SpGenEphemsVcm_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, ephemArr, genEphemPts) &
bind(C, name = "SpGenEphemsVcm_OS") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   character, intent(in) :: vcmString(4000)   ! 1-line or concatenated string representation of the VCM
   real(8), value :: startDs50UTC   ! Start time expressed in days since 1950, UTC.
   real(8), value :: stopDs50UTC   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes, set to 0 if want to use SP natural integration step size
   integer, value :: sp_ephem   ! Output ephemeris type: 1=ECI, 2=J2K.
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(7, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function SpGenEphemsVcm_OS
!*******************************************************************************



! This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
function SpGenEphemsVcmCov_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, ephemArr, genEphemPts) &
bind(C, name = "SpGenEphemsVcmCov_OS") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error (see error decoder in GP_ERR_?).
   character, intent(in) :: vcmString(4000)   ! 1-line or concatenated string representation of the VCM
   real(8), value :: startDs50UTC   ! Start time expressed in days since 1950, UTC.
   real(8), value :: stopDs50UTC   ! End time expressed in days since 1950, UTC.
   real(8), value :: stepSize   ! Step size in minutes, set to 0 if want to use SP natural integration step size
   integer, value :: sp_ephem   ! Output ephemeris type: 1=ECI, 2=J2K.
   integer, value :: covType   ! Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   integer, value :: arrSize   ! Size of input ephemArr
   real(8), intent(out) :: ephemArr(28, *)   ! Output ephemerides - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec), 7-27: 21-elements lower triagular covariance matrix
   integer, intent(out) :: genEphemPts   ! Actual number of ephemeris points generated (always &le; arrSize)
end function SpGenEphemsVcmCov_OS
!*******************************************************************************



! Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
function SpPropAllSats(satKeys, numOfSats, ds50UTC, ephemArr) bind(C, name = "SpPropAllSats") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, non-0 if there is an error.
   integer(8), intent(in) :: satKeys(*)   ! The satellite keys of all input satellites
   integer, value :: numOfSats   ! The total number of satellites
   real(8), value :: ds50UTC   ! The time to propagate all satelllites to, expressed in days since 1950, UTC.
   real(8), intent(out) :: ephemArr(6, *)   ! 0-2: pos (km), 3-5: vel (km/sec) - ECI TEME of Date
end function SpPropAllSats
!*******************************************************************************



! Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
! 
! All propagation data is returned by this function.
function SpPropAllExt(satKey, timeType, timeIn, spCoord, xf_CovMtx, stmType, xa_spExt) &
bind(C, name = "SpPropAllExt") result(errCode)
   integer :: errCode	! 0 if the propagation is successful, 2 on error.
   integer(8), value :: satKey   ! The unique key of the satellite to propagate.
   integer, value :: timeType   ! The propagation time type: 0 = minutes since epoch, 1 = days since 1950, UTC
   real(8), value :: timeIn   ! The time to propagate to, expressed in either minutes since epoch or days since 1950, UTC.
   integer, value :: spCoord   ! Output coordinate systems for pos/vel/acc, see SPCOORD_? for options
   integer, value :: xf_CovMtx   ! Covariance matrix type, see XF_COVMTX_? for options
   integer, value :: stmType   ! State transition matrix type, see STMTYPE_? for options
   real(8), intent(out) :: xa_spExt(128)   ! The array that stores all Sp propagation data, see XA_SPEXT_? for array arrangement
end function SpPropAllExt
!*******************************************************************************

end interface




   
   ! VCM additional options
   integer, parameter :: &
      VCMOPT_USEOWN    = 0,  & ! use VCM's own data
      VCMOPT_USEGLOBAL = 1;    ! force VCM to use global solar flux and timing constants data
   
   ! Run Modes
   integer, parameter :: &
      IDX_RUNMODE_PERF = 0, & ! Perfromance priority. This mode allows the buffer of integration points to extend freely
      IDX_RUNMODE_MEM  = 1;   ! Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
      
   !*******************************************************************************
      
   ! Partials Saving Modes
   integer, parameter :: &
      IDX_PARTIALS_SAVE = 1, &   ! Save partials in the buffer
      IDX_PARTIALS_DONT = 0;     ! Don't save partials in the buffer
   
   ! Indexes of different covariance matrices
   integer, parameter :: &
      XF_COVMTX_UVW_DATE  =  1, &   ! UVW convariance matrix - TEME of DATE
      XF_COVMTX_XYZ_DATE  =  2, &   ! Cartesian covariance matrix - TEME of DATE 
      XF_COVMTX_EQNX_DATE =  3, &   ! Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
      XF_COVMTX_UVW_J2K   = 11, &   ! UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
      XF_COVMTX_XYZ_J2K   = 12, &   ! Cartesian covariance matrix - MEME of J2K
      XF_COVMTX_EQNX_J2K  = 13;     ! Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   !*******************************************************************************
   
   ! Indexes of Lunar/Solar and Planets perturbation modes
   integer, parameter :: &
      LSPERT_NONE      = 0, & ! Lunar/Solar perturbation off
      LSPERT_ANALYTIC  = 1, & ! Lunar/Solar perturbation on (using Analytic mode)
      LSPERT_JPL       = 2, & ! Lunar/Solar perturbation using JPL ephemeris file
      LSPERT_ALL       = 3, & ! Lunar/Solar + All planets perturbation using JPL ephemeris file 
      LSPERT_BIG       = 4, & ! Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets) 
      LSPERT_MED       = 5, & ! Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets) 
      LSPERT_SMA       = 6;   ! Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   
   !*******************************************************************************   
      
   ! State Transition Matrix Types
   integer, parameter :: &
      STMTYPE_UVW       = 1, &   ! UVW state transition matrix
      STMTYPE_XYZ       = 2, &   ! Cartesian state transition matrix
      STMTYPE_EQNX      = 3;     ! Equinoctial state transition matrix
      
   ! Different output coordinate systems options for pos/vel/acc
   integer, parameter :: &
      SPCOORD_ECI      = 1, &    ! Output coordinate systems in TEME of Date
      SPCOORD_J2K      = 2;      ! Output coordinate systems in MEME of J2K 
      
   ! Different drag perturbation models
   integer, parameter :: &
      DRGMDL_JAC64   =  1, &   ! Jacchia 64 model
      DRGMDL_JAC70   =  2, &   ! Jacchia 70 model
      DRGMDL_DCA1    =  3, &   ! Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
      DRGMDL_JBH09   = 40, &   ! JBH09 model
      DRGMDL_JBHDCA2 = 41;     ! JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2) 
   
   ! Indexes of SP 4P card fields
   integer, parameter :: &
      XF_4P_GEOIDX   = 1,  &    ! Geopotential model to use
      XF_4P_BULGEFLG = 2,  &    ! Earth gravity pertubations flag
      XF_4P_DRAGFLG  = 3,  &    ! Drag pertubations flag 
      XF_4P_RADFLG   = 4,  &    ! Radiation pressure pertubations flag
      XF_4P_LUNSOL   = 5,  &    ! Lunar/Solar pertubations flag
      XF_4P_F10      = 6,  &    ! F10 value
      XF_4P_F10AVG   = 7,  &    ! F10 average value
      XF_4P_AP       = 8,  &    ! Ap value
      XF_4P_TRUNC    = 9,  &    ! Geopotential truncation order/degree/zonals
      XF_4P_CONVERG  = 10, &    ! Corrector step convergence criterion; exponent of 1/10; default = 10
      XF_4P_OGFLG    = 11, &    ! Outgassing pertubations flag
      XF_4P_TIDESFLG = 12, &    ! Solid earth and ocean tide pertubations flag
      XF_4P_INCOORD  = 13, &    ! Input vector coordinate system
      XF_4P_NTERMS   = 14, &    ! Nutation terms
      XF_4P_REEVAL   = 15, &    ! Recompute pertubations at each corrector step
      XF_4P_INTEGCTRL= 16, &    ! Variable of intergration control
      XF_4P_VARSTEP  = 17, &    ! Variable step size control
      XF_4P_INITSTEP = 18, &    ! Initial step size
   
      XF_4P_DCAFILE  = 21, &    ! DCA file name
      XF_4P_FLUXFILE = 22, &    ! Solar flux file name
      XF_4P_GEOFILE  = 23, &    ! Geopotential file name
      XF_4P_JPLFILE  = 24, &    ! JPL file name
      XF_4P_JPLSTART = 25, &    ! JPL start time
      XF_4P_JPLSTOP  = 26;      ! JPL stop time
   
      !XF_4P_PLANETS  = 27, &    ! Sets perturbations from all planets to on
      !XF_4P_MERCURY  = 28, &    ! Sets perturbation from Mercury to on
      !XF_4P_VENUS    = 29, &    ! Sets perturbation from Venus to on
      !XF_4P_MARS     = 30, &    ! Sets perturbation from Mars to on
      !XF_4P_JUPITER  = 31, &    ! Sets perturbation from Jupiter to on
      !XF_4P_SATURN   = 32, &    ! Sets perturbation from Saturn to on
      !XF_4P_URANUS   = 33, &    ! Sets perturbation from Uranus to on
      !XF_4P_NEPTUNE  = 34, &    ! Sets perturbation from Neptune to on
      !XF_4P_PLUTO    = 35;      ! Sets perturbation from Pluto to on
      
   !*******************************************************************************
   
   ! Indexes of SP application control (preference) parameters
   integer, parameter :: &
      XF_SPAPP_GEODIR   = 1, &   ! Geopotential directory path
      XF_SPAPP_BUFSIZE  = 2, &   ! Buffer size
      XF_SPAPP_RUNMODE  = 3, &   ! Run mode
      XF_SPAPP_SAVEPART = 4, &   ! Save partials data
      XF_SPAPP_SPECTR   = 5, &   ! Specter compatibility mode
      XF_SPAPP_CONSIDER = 6, &   ! Consider parameter
      XF_SPAPP_DECAYALT = 7, &   ! Decay altitude
      XF_SPAPP_OUTCOORD = 8, &   ! Output coordinate system
      XF_SPAPP_VCMOPT   = 9;     ! VCM additional options
   
   !*******************************************************************************
   
   ! Indexes of data fields of an initialized SP satellite
   integer, parameter :: &
      XF_SPSAT_SATNUM  = 1, &   ! Satellite number I5
      XF_SPSAT_DS50UTC = 2, &   ! Satellite's epoch time in days since 1950, UTC 
      XF_SPSAT_DS50TAI = 3, &   ! Satellite's epoch time in days since 1950, TAI
      XF_SPSAT_MU      = 4, &   ! Mu value 
      XF_SPSAT_HASCOV  = 5, &   ! Covariance Matrix flag
      XF_SPSAT_INTMODE = 6, &   ! Integration mode
      XF_SPSAT_NTERMS  = 7, &   ! Nutation terms
      XF_SPSAT_SPECTR  = 8;     ! Specter compatibility mode
   
   !*******************************************************************************
   
   !! Indexes of Planetary Control
   !integer, parameter :: &
   !   XAI_PLANET_MERCURY = 1, & ! 0 = off, 1 = on
   !   XAI_PLANET_VENUS   = 2, & ! 0 = off, 1 = on
   !   XAI_PLANET_EARTH   = 3, & ! Not used
   !   XAI_PLANET_MARS    = 4, & ! 0 = off, 1 = on
   !   XAI_PLANET_JUPITER = 5, & ! 0 = off, 1 = on
   !   XAI_PLANET_SATRUN  = 6, & ! 0 = off, 1 = on
   !   XAI_PLANET_URANUS  = 7, & ! 0 = off, 1 = on
   !   XAI_PLANET_NEPTUNE = 8, & ! 0 = off, 1 = on
   !   XAI_PLANET_PLUTO   = 9, & ! 0 = off, 1 = on
   !   XAI_PLANET_SIZE    = 9;   ! Size of array
   !
   !!*******************************************************************************
      
   ! Different time types for passing to SpPropAll
   integer, parameter :: &
      SP_TIMETYPE_MSE      = 0, & ! propagation time is in minutes since epoch
      SP_TIMETYPE_DS50UTC  = 1;   ! propagation time is in days since 1950, UTC
      
   
   ! Sp propagated data   
   integer, parameter :: &   
      XA_SPOUT_UTC       =  0, &  ! Propagation time in days since 1950, UTC
      XA_SPOUT_MSE       =  1, &  ! Propagation time in minutes since the satellite's epoch time   
      XA_SPOUT_UT1       =  2, &  ! Propagation time in days since 1950, UT1
      XA_SPOUT_TAI       =  3, &  ! Propagation time in days since 1950, TAI
      XA_SPOUT_ET        =  4, &  ! Propagation time in days since 1950, ET
      XA_SPOUT_REVNUM    =  5, &  ! Revolution number
      XA_SPOUT_NTERMS    =  6, &  ! Number of nutation terms
      XA_SPOUT_ISSPECTR  =  7, &  ! Spectr compatible mode (0=not compatible, 1=compatible)
      XA_SPOUT_HASCOVMTX =  8, &  ! Has input covariance matrix (0=no, 1=yes)
   
      XA_SPOUT_J2KPOSX   = 10, &  ! J2K position X (km)
      XA_SPOUT_J2KPOSY   = 11, &  ! J2K position Y (km)
      XA_SPOUT_J2KPOSZ   = 12, &  ! J2K position Z (km)
      XA_SPOUT_J2KVELX   = 13, &  ! J2K velocity X (km/s)
      XA_SPOUT_J2KVELY   = 14, &  ! J2K velocity Y (km/s)
      XA_SPOUT_J2KVELZ   = 15, &  ! J2K velocity Z (km/s)
      XA_SPOUT_ECIPOSX   = 16, &  ! ECI position X (km)
      XA_SPOUT_ECIPOSY   = 17, &  ! ECI position Y (km)
      XA_SPOUT_ECIPOSZ   = 18, &  ! ECI position Z (km)
      XA_SPOUT_ECIVELX   = 19, &  ! ECI velocity X (km/s)
      XA_SPOUT_ECIVELY   = 20, &  ! ECI velocity Y (km/s)
      XA_SPOUT_ECIVELZ   = 21, &  ! ECI velocity Z (km/s)
      XA_SPOUT_LAT       = 22, &  ! Geodetic latitude (deg)
      XA_SPOUT_LON       = 23, &  ! Geodetic longitude (deg)
      XA_SPOUT_HEIGHT    = 24, &  ! Height above geoid (km)
   
      XA_SPOUT_COVTYPE   = 30, &  ! Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
      XA_SPOUT_COVMTX    = 31, &  ! 6 by 6 covariance matrix (31-66)
      
      XA_SPOUT_J2KACCX   = 70, &  ! J2K acceleration X (km/s^2)
      XA_SPOUT_J2KACCY   = 71, &  ! J2K acceleration Y (km/s^2)
      XA_SPOUT_J2KACCZ   = 72, &  ! J2K acceleration Z (km/s^2)
      XA_SPOUT_ECIACCX   = 73, &  ! ECI acceleration X (km/s^2)
      XA_SPOUT_ECIACCY   = 74, &  ! ECI acceleration Y (km/s^2)
      XA_SPOUT_ECIACCZ   = 75, &  ! ECI acceleration Z (km/s^2)
      
      XA_SPOUT_SIZE      = 128;     
      
   ! Sp extended propagation data   
   integer, parameter :: &   
      XA_SPEXT_UTC       =  0, &  ! Propagation time in days since 1950, UTC
      XA_SPEXT_MSE       =  1, &  ! Propagation time in minutes since the satellite's epoch time   
      XA_SPEXT_UT1       =  2, &  ! Propagation time in days since 1950, UT1
      XA_SPEXT_TAI       =  3, &  ! Propagation time in days since 1950, TAI
      XA_SPEXT_ET        =  4, &  ! Propagation time in days since 1950, ET
      XA_SPEXT_REVNUM    =  5, &  ! Revolution number
      XA_SPEXT_NTERMS    =  6, &  ! Number of nutation terms
      XA_SPEXT_ISSPECTR  =  7, &  ! Spectr compatible mode (0=not compatible, 1=compatible)
      XA_SPEXT_HASCOVMTX =  8, &  ! Has input covariance matrix (0=no, 1=yes)
   
      XA_SPEXT_COORD     = 10, &  ! Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
      XA_SPEXT_POSX      = 11, &  ! position X (km)
      XA_SPEXT_POSY      = 12, &  ! position Y (km)
      XA_SPEXT_POSZ      = 13, &  ! position Z (km)
      XA_SPEXT_VELX      = 14, &  ! velocity X (km/s)
      XA_SPEXT_VELY      = 15, &  ! velocity Y (km/s)
      XA_SPEXT_VELZ      = 16, &  ! velocity Z (km/s)
      XA_SPEXT_ACCX      = 17, &  ! acceleration X (km/s^2)
      XA_SPEXT_ACCY      = 18, &  ! acceleration Y (km/s^2)
      XA_SPEXT_ACCZ      = 19, &  ! acceleration Z (km/s^2)
      
      XA_SPEXT_COVTYPE   = 30, &  ! Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
      XA_SPEXT_COVMTX    = 31, &  ! 6 by 6 covariance matrix (31-66/1D format - 36 elements)
      
      XA_SPEXT_STMTYPE   = 70, &  ! State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
      XA_SPEXT_STM       = 71, &  ! 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
      
      XA_SPEXT_SIZE      = 128;     
      
   
   ! Different options for generating ephemerides from SP
   integer, parameter :: &
      SP_EPHEM_ECI   = 1,    &  ! ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
      SP_EPHEM_J2K   = 2;       ! MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec) 
      
   
   ! Different time types returned by the SP propagator
   integer, parameter :: &   
      XA_TIMETYPES_MSE  = 0, &  ! Time in minutes since the satellite's epoch time   
      XA_TIMETYPES_UTC  = 1, &  ! Time in days since 1950, UTC
      XA_TIMETYPES_UT1  = 2, &  ! Time in days since 1950, UT1
      XA_TIMETYPES_TAI  = 3, &  ! Time in days since 1950, TAI
      XA_TIMETYPES_ET   = 4, &  ! Time in days since 1950, ET
      
      XA_TIMETYPES_SIZE = 5;      
      
      
end module SpPropDll
! ========================= End of auto generated code ==========================
