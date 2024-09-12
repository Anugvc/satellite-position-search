! This wrapper file was generated automatically by the GenDllWrappers program.
module VcmDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Vcm DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
function VcmInit(apAddr) bind(C, name = "VcmInit") result(errCode)
   integer :: errCode	! 0 if Vcm.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function VcmInit
!*******************************************************************************



! Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
! The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
subroutine VcmGetInfo(infoStr) bind(C, name = "VcmGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Vcm.dll
end subroutine VcmGetInfo
!*******************************************************************************



! Loads a text file containing Vcm's
! The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
! 
! State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
! 
! This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
function VcmLoadFile(vcmFile) bind(C, name = "VcmLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: vcmFile(512)   ! The name of the file containing VCMs to be loaded
end function VcmLoadFile
!*******************************************************************************



! Saves the currently loaded VCM's to a file
! If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
! 
! The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
function VcmSaveFile(vcmFile, saveMode, saveForm) bind(C, name = "VcmSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: vcmFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function VcmSaveFile
!*******************************************************************************



! Removes a VCM represented by the satKey from memory
! If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function VcmRemoveSat(satKey) bind(C, name = "VcmRemoveSat") result(errCode)
   integer :: errCode	! 0 if the VCM is removed successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function VcmRemoveSat
!*******************************************************************************



! Removes all VCM's from memory
! The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
function VcmRemoveAllSats() bind(C, name = "VcmRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all VCM's are removed successfully from memory, non-0 if there is an error
end function VcmRemoveAllSats
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
! See VcmGetLoaded for an example.
! This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
function VcmGetCount() bind(C, name = "VcmGetCount") result(numSats)
   integer :: numSats	! The number of VCM's currently loaded
end function VcmGetCount
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
! It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
! 
! If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
subroutine VcmGetLoaded(order, satKeys) bind(C, name = "VcmGetLoaded")
   integer, value :: order   ! Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded
   integer(8), intent(out) :: satKeys(*)   ! The array in which to store the satKeys
end subroutine VcmGetLoaded
!*******************************************************************************



! Adds a VCM using its 1-line or concatenated string formats
! If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
! 
! The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
function VcmAddSatFrLines(vcmString) bind(C, name = "VcmAddSatFrLines") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added VCM on success, a negative value on error
   character, intent(in) :: vcmString(4000)   ! 1-line or concatenated string representation of the VCM
end function VcmAddSatFrLines
!*******************************************************************************



! Works like VcmAddSatFrLines but designed for Matlab
subroutine VcmAddSatFrLinesML(vcmString, satKey) bind(C, name = "VcmAddSatFrLinesML")
   character, intent(in) :: vcmString(4000)   ! 1-line or concatenated string representation of the VCM
   integer(8), intent(out) :: satKey   ! The satKey of the newly added VCM on success, a negative value on error
end subroutine VcmAddSatFrLinesML
!*******************************************************************************



! Adds a VCM using its individually provided field values
! 
! The table below indicates starting character position for each field in the xs_vcm parameter:
! 
! table
! 
! Starting Character Position
! Input Description
! 
!  0satellite name, A8
!  8common satellite name, A25
! 33geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)
! 39drag model, A12
! 51lunar solar pertubations, A3 (ON, OFF)
! 54radiation pressure pertubations, A3 (ON, OFF)
! 57Earth + ocean tides pertubation, A3 (ON, OFF)
! 60intrack thrust, A3 (ON, OFF)
! 63integration mode, A6 (ASW, OSW, SPADOC, ...)
! 69coordinate system, A5
! 74type of partial derivatives, A8
! 82step mode, A4 (AUTO, TIME, S)
! 86fixed step size indicator, A3 (ON, OFF)
! 89initial step size selection, A6 (AUTO, MANUAL)
! 
!  
! The table below indicates the index for each field in the xa_vcm array:
! 
! table
! 
! Index (xa_vcm)
! index Interpretation
! 
!   0satellite number
!   1satellite's epoch time
!   2epoch revolution number
!   3J2K position X (km)
!   4J2K position Y (km)
!   5J2K position Z (km)
!   6J2K velocity X (km/s)
!   7J2K velocity Y (km/s)
!   8J2K velocity Z (km/s)
!   9ECI position X (km)
!  10ECI position Y (km)
!  11ECI position Z (km)
!  12ECI velocity X (km/s)
!  13ECI velocity Y (km/s)
!  14ECI velocity Z (km/s)
!  15EFG position X (km)
!  16EFG position Y (km)
!  17EFG position Z (km)
!  18EFG velocity X (km/s)
!  19EFG velocity Y (km/s)
!  20EFG velocity Z (km/s)
!  21geopotential zonals
!  22geopotential tesserals
!  23ballistic coefficient (m^2/kg)
!  24BDOT (m^2/kg-s)
!  25solar radiation pressure coefficient (m^2/kg)
!  26energy dissipation rate (w/kg)
!  27outgassing parameter/thrust acceleration (km/s^2)
!  28center of mass offset (m)
!  29solar flux F10
!  30average F10
!  31average Ap
!  32TAI - UTC (s)
!  33UT1 - UTC (s)
!  34UT1 rate (ms/day)
!  35polar motion X (arcsec)
!  36polar motion Y (arcsec)
!  37nutation terms
!  38leap second time in days since 1950 UTC
!  39initial step size
!  40integrator control error
!  41position u sigma (km)
!  42position v sigma (km)
!  43position w sigma (km)
!  44velocity u sigma (km/s)
!  45velocity v sigma (km/s)
!  46velocity w sigma (km/s)
!  47covariance matrix size
!  48weighted RM of last DC on the satellite
! 100the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
! covmtx)
! 
! 
! The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
! 
! For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
! 
! For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
function VcmAddSatFrFields(xs_vcm, xa_vcm) bind(C, name = "VcmAddSatFrFields") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added VCM on success, a negative value on error
   character, intent(in) :: xs_vcm(512)   ! The input string that contains all VCM's text fields
   real(8), intent(in) :: xa_vcm(512)   ! The input array that contains all VCM's numerical fields. see XA_VCM_?
end function VcmAddSatFrFields
!*******************************************************************************



! Works like VcmAddSatFrFields but designed for Matlab
! 
! See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
subroutine VcmAddSatFrFieldsML(xs_vcm, xa_vcm, satKey) bind(C, name = "VcmAddSatFrFieldsML")
   character, intent(in) :: xs_vcm(512)   ! The input string that contains all VCM's text fields
   real(8), intent(in) :: xa_vcm(512)   ! The input array that contains all VCM's numerical fields.  see XA_VCM_?
   integer(8), intent(out) :: satKey   ! The satKey of the newly added VCM on success, a negative value on error
end subroutine VcmAddSatFrFieldsML
!*******************************************************************************



! Retrieves VCM data associated with the input satKey
function VcmRetrieveAllData(satKey, xs_vcm, xa_vcm) bind(C, name = "VcmRetrieveAllData") result(errCode)
   integer :: errCode	! 0 if the VCM data is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satKey of the loaded VCM
   character, intent(out) :: xs_vcm(512)   ! The output string that contains all VCM's text fields
   real(8), intent(out) :: xa_vcm(512)   ! The output array that contains all VCM's numerical fields.  see XA_VCM_?
end function VcmRetrieveAllData
!*******************************************************************************



! Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
! 
! See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
function VcmUpdateSatFrFields(satKey, xs_vcm, xa_vcm) bind(C, name = "VcmUpdateSatFrFields") result(errCode)
   integer :: errCode	! 0 if the Vcm data is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to update
   character, intent(in) :: xs_vcm(512)   ! The input string that contains all VCM's text fields
   real(8), intent(in) :: xa_vcm(512)   ! The input array that contains all VCM's numerical fields.  see XA_VCM_?
end function VcmUpdateSatFrFields
!*******************************************************************************



! Retrieves the value of a specific field of a VCM
! 
! The table below shows the values for the xf_Vcm parameter:
! 
! table
! 
! index
! index Interpretation
! 
!  1  Satellite number I5
!  2  Satellite international designator A8
!  3  Epoch YYYYDDDHHMMSS.SSS A17
!  4  Revolution number I5
!  5  position X (km) F16.8 
!  6  position Y (km) F16.8 
!  7  position Z (km) F16.8   
!  8  velocity X (km/s) F16.12
!  9  velocity Y (km/s) F16.12
! 10  velocity Z (km/s) F16.12
! 11  Geo Name A6
! 12  Geo zonals I2
! 13  Geo tesserals I2
! 14  Drag modelel A12 (NONE, JAC70/MSIS90) 
! 15  Lunar solar A3 (ON/OFF)
! 16  Radiation pressure pertubations A3 (ON/OFF)
! 17  Earth + ocean tides pertubations A3 (ON/OFF)
! 18  Intrack thrust A3 (ON/OFF)
! 19  Ballistic coefficient (m^2/kg)
! 20  Radiation pressure coefficient  (m^2/kg)
! 21  Outgassing parameter (km/s^2)
! 22  Center of mass offset (m)
! 23  Solar flux F10 I3
! 24  Solar flux F10 average I3
! 25  Ap average F5.1
! 26  TAI minus UTC (s)I2
! 27  UT1 minus UTC (s) F7.5
! 28  UT1 rate (ms/day)  F5.3
! 29  Polar motion X (arcsec) F6.4
! 30  Polar motion Y (arcsec) F6.4
! 31  Nutation terms I3
! 32  Leap second time YYYYDDDHHMMSS.SSS A17
! 33  Integration mode A6 (ASW, OSW, SPADOC)
! 34  Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)
! 35  Integration step mode A4 (AUTO/TIME, S)
! 36  Fixed step size indicator A3 (ON/OFF)
! 37  Initial step size selection A6 (AUTO/MANUAL)
! 38  Initial integration step size F8.3
! 39  Integrator error control E9.3
! 40  Weighted RMS of last DC E10.5
! 41  BDOT (M2/KG-S)
! 42  EDR (W/KG)
! 
function VcmGetField(satKey, xf_Vcm, valueStr) bind(C, name = "VcmGetField") result(errCode)
   integer :: errCode	! 0 if the VCM is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_Vcm   ! Predefined number specifying which field to set
   character, intent(out) :: valueStr(512)   ! A string to contain the value of the requested field
end function VcmGetField
!*******************************************************************************



! Updates the value of a specific field of a VCM
! See VcmGetField for a description of the xf_Vcm parameter.
function VcmSetField(satKey, xf_Vcm, valueStr) bind(C, name = "VcmSetField") result(errCode)
   integer :: errCode	! 0 if the VCM is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_Vcm   ! Predefined number specifying which field to set
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end function VcmSetField
!*******************************************************************************



! Retrieves all of the data for a VCM in a single function call
function VcmGetAllFields(satKey, satNum, satName, epochDtg, revNum, posECI, velECI, geoName, geoZonals, geoTesserals, dragModel, &
lunarSolar, radPress, earthTides, intrackThrust, bTerm, agom, ogParm, cmOffset, f10, f10Avg, apAvg, tconRec, nTerms, leapYrDtg, &
integMode, partials, stepMode, fixStep, stepSelection, initStepSize, errCtrl, rms) &
bind(C, name = "VcmGetAllFields") result(errCode)
   integer :: errCode	! ! 0 if the VCM is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: satName(8)   ! Satellite name A8
   character, intent(out) :: epochDtg(17)   ! Satellite epoch time A17 YYYYDDDHHMMSS.SSS
   integer, intent(out) :: revNum   ! Revolution number
   real(8), intent(out) :: posECI(3)   ! ECI position
   real(8), intent(out) :: velECI(3)   ! ECI velocity
   character, intent(out) :: geoName(6)   ! Geopotential name A6 (WGS-72, WGS-84, EGM-96...)
   integer, intent(out) :: geoZonals   ! Geopotential zonals
   integer, intent(out) :: geoTesserals   ! Geopotential tesserals
   character, intent(out) :: dragModel(12)   ! Drag model A12 (NONE, JAC70/MSIS90...)
   character, intent(out) :: lunarSolar(3)   ! Lunar solar pertubations A3: ON, OFF
   character, intent(out) :: radPress(3)   ! Radiation pressure pertubations A3: ON, OFF
   character, intent(out) :: earthTides(3)   ! Earth + ocean tides pertubations A3: ON, OFF
   character, intent(out) :: intrackThrust(3)   ! Intrack thrust A3: ON, OFF
   real(8), intent(out) :: bTerm   ! Ballistic coefficient (m2/kg) E13.10
   real(8), intent(out) :: agom   ! Solar radiation pressure coefficient (m2/kg) E13.10
   real(8), intent(out) :: ogParm   ! Outgassing parameter/Thrust acceleration (m/s2) E13.10
   real(8), intent(out) :: cmOffset   ! Center of mass offset (m)
   integer, intent(out) :: f10   ! Solar flux F10 I3
   integer, intent(out) :: f10Avg   ! Soluar flux F10 average I3
   real(8), intent(out) :: apAvg   ! Ap average F5.1
   real(8), intent(out) :: tconRec(5)   ! 1: TaiMinusUTC, 2: UT1MinusUTC, 3: UT1Rate, 4: PolarX, 5: PolarY
   integer, intent(out) :: nTerms   ! Number of nutation terms I3
   character, intent(out) :: leapYrDtg(17)   ! Leap second time
   character, intent(out) :: integMode(6)   ! Integration mode A6: ASW, OSW, SPADOC (SPECTR=1 if ASW, OSW)
   character, intent(out) :: partials(8)   ! Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
   character, intent(out) :: stepMode(4)   ! Integrator step mode A4: AUTO, TIME, S
   character, intent(out) :: fixStep(3)   ! Fixed step size indicator A3: ON, OFF
   character, intent(out) :: stepSelection(6)   ! Initial step size selection A6: AUTO, MANUAL
   real(8), intent(out) :: initStepSize   ! Initial integration step size  F8.3
   real(8), intent(out) :: errCtrl   ! Integrator error control  E9.3
   real(8), intent(out) :: rms   ! Weighted RMS of last DC on the satellite E10.5
end function VcmGetAllFields
!*******************************************************************************



! Returns the concatenated string representation of a VCM by the satellite's satKey
function VcmGetLines(satKey, vcmLines) bind(C, name = "VcmGetLines") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   integer(8), value :: satKey   ! The satellite's unique key
   character, intent(out) :: vcmLines(4000)   ! The resulting concatenated string representation of the VCM
end function VcmGetLines
!*******************************************************************************



! Converts VCM 1-line format to multi-line format (as a concatenated string)
function Vcm1LineToMultiLine(vcm1Line, vcmLines) bind(C, name = "Vcm1LineToMultiLine") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   character, intent(in) :: vcm1Line(1500)   ! The input VCM 1-line format
   character, intent(out) :: vcmLines(4000)   ! The resulting concatenated string
end function Vcm1LineToMultiLine
!*******************************************************************************



! Converts VCM multi-line format (as a concatenated string) to 1-line format 
function VcmMultiLineTo1Line(vcmLines, vcm1Line) bind(C, name = "VcmMultiLineTo1Line") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   character, intent(in) :: vcmLines(4000)   ! The input concatenated string
   character, intent(out) :: vcm1Line(1500)   ! The resulting VCM 1-line format
end function VcmMultiLineTo1Line
!*******************************************************************************



! Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
! This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function VcmGetSatKey(satNum) bind(C, name = "VcmGetSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! The input satellite number
end function VcmGetSatKey
!*******************************************************************************



! Works like VcmGetSatKey but designed for Matlab
subroutine VcmGetSatKeyML(satNum, satKey) bind(C, name = "VcmGetSatKeyML")
   integer, value :: satNum   ! The input satellite number
   integer(8), intent(out) :: satKey   ! The satellite's unique key
end subroutine VcmGetSatKeyML
!*******************************************************************************



! Computes a satKey from the input data
! This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
function VcmFieldsToSatKey(satNum, epochDtg) bind(C, name = "VcmFieldsToSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! The input satellite number
   character, intent(in) :: epochDtg(20)   ! [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20
end function VcmFieldsToSatKey
!*******************************************************************************



! Works like VcmFieldsToSatKey but designed for Matlab
subroutine VcmFieldsToSatKeyML(satNum, epochDtg, satKey) bind(C, name = "VcmFieldsToSatKeyML")
   integer, value :: satNum   ! The input satellite number
   character, intent(in) :: epochDtg(20)   ! [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20
   integer(8), intent(out) :: satKey   ! The satellite's unique key
end subroutine VcmFieldsToSatKeyML
!*******************************************************************************



! Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
subroutine VcmArrayToVcmLines(xa_vcm, xs_vcm, vcmLines) bind(C, name = "VcmArrayToVcmLines")
   real(8), intent(in) :: xa_vcm(512)   ! Array containing VCM's numerical fields, see XA_VCM_? for array arrangement
   character, intent(in) :: xs_vcm(512)   ! Input string that contains all VCM's text fields, see XS_VCM_? for column arrangement
   character, intent(out) :: vcmLines(4000)   ! The resulting concatenated string representation of a VCM
end subroutine VcmArrayToVcmLines
!*******************************************************************************



! Constructs a 1-line VCM from the VCM data stored in the input arrays.
subroutine VcmArrayToVcm1Line(xa_vcm, xs_vcm, vcm1Line) bind(C, name = "VcmArrayToVcm1Line")
   real(8), intent(in) :: xa_vcm(512)   ! Array containing VCM's numerical fields, see XA_VCM_? for array arrangement
   character, intent(in) :: xs_vcm(512)   ! Input string that contains all VCM's text fields, see XS_VCM_? for column arrangement
   character, intent(out) :: vcm1Line(1500)   ! The resulting 1-line VCM
end subroutine VcmArrayToVcm1Line
!*******************************************************************************



! Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
! This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
function VcmStringToArray(vcmString, xa_vcm, xs_vcm) bind(C, name = "VcmStringToArray") result(errCode)
   integer :: errCode	! 0 if the VCM is parsed successfully, non-0 if there is an error.
   character, intent(in) :: vcmString(4000)   ! An input 1-line or concatenated string representation of the VCM
   real(8), intent(out) :: xa_vcm(512)   ! Array containing VCM's numerical fields, see XA_VCM_? for array arrangement
   character, intent(out) :: xs_vcm(512)   ! Output string that contains all VCM's text fields, see XS_VCM_? for column arrangement
end function VcmStringToArray
!*******************************************************************************

end interface




   
   ! Maximum string length of a multi-line VCM concatenated into one big string
   integer, parameter :: VCMSTRLEN = 4000;
   
   
   ! Maximum string length of a 1-line VCM string
   integer, parameter :: VCM1LINELEN = 1500;
   
   
   ! Starting location of the VCM's text data fields
   integer, parameter :: &
      XS_VCM_SATNAME       =   0, &   ! satellite name A8
      XS_VCM_COMMNAME      =   8, &   ! common satellite name A25
      XS_VCM_GEONAME       =  33, &   ! geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
      XS_VCM_DRAGMOD       =  39, &   ! drag model A12
      XS_VCM_LUNAR         =  51, &   ! lunar solar pertubations A3 (ON, OFF)
      XS_VCM_RADPRESS      =  54, &   ! radiation pressure pertubations A3 (ON, OFF)
      XS_VCM_EARTHTIDES    =  57, &   ! Earth + ocean tides pertubation A3 (ON, OFF)
      XS_VCM_INTRACK       =  60, &   ! intrack thrust A3 (ON, OFF)
      XS_VCM_INTEGMODE     =  63, &   ! integration mode A6 (ASW, OSW, SPADOC, ...)
      XS_VCM_COORDSYS      =  69, &   ! coordinate system A5
      XS_VCM_PARTIALS      =  74, &   ! type of partial derivatives A8
      XS_VCM_STEPMODE      =  82, &   ! step mode A4 (AUTO, TIME, S)
      XS_VCM_FIXEDSTEP     =  86, &   ! fixed step size indicator A3 (ON, OFF)
      XS_VCM_STEPSEL       =  89, &   ! initial step size selection A6 (AUTO, MANUAL)
      
      XS_VCM_SIZE          = 512;
   
   ! VCM's text data fields - new convention (start index, string length)
   integer, parameter :: &
      XS_VCM_SATNAME_0_8      =   0, &   ! satellite name A8
      XS_VCM_COMMNAME_8_25    =   8, &   ! common satellite name A25
      XS_VCM_GEONAME_33_6     =  33, &   ! geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
      XS_VCM_DRAGMOD_39_12    =  39, &   ! drag model A12
      XS_VCM_LUNAR_51_3       =  51, &   ! lunar solar pertubations A3 (ON, OFF)
      XS_VCM_RADPRESS_54_3    =  54, &   ! radiation pressure pertubations A3 (ON, OFF)
      XS_VCM_EARTHTIDES_57_3  =  57, &   ! Earth + ocean tides pertubation A3 (ON, OFF)
      XS_VCM_INTRACK_60_3     =  60, &   ! intrack thrust A3 (ON, OFF)
      XS_VCM_INTEGMODE_63_6   =  63, &   ! integration mode A6 (ASW, OSW, SPADOC, ...)
      XS_VCM_COORDSYS_69_5    =  69, &   ! coordinate system A5
      XS_VCM_PARTIALS_74_8    =  74, &   ! type of partial derivatives A8
      XS_VCM_STEPMODE_82_4    =  82, &   ! step mode A4 (AUTO, TIME, S)
      XS_VCM_FIXEDSTEP_86_3   =  86, &   ! fixed step size indicator A3 (ON, OFF)
      XS_VCM_STEPSEL_89_6     =  89, &   ! initial step size selection A6 (AUTO, MANUAL)
      
      XS_VCM_LENGTH           = 512;
   
   ! Indexes to access data from an array containing VCM numerical data fields
   integer, parameter :: &   
      XA_VCM_SATNUM        =   0, &   ! satellite number
      XA_VCM_EPOCHDS50UTC  =   1, &   ! satellite's epoch time
      XA_VCM_REVNUM        =   2, &   ! epoch revolution number
      XA_VCM_J2KPOSX       =   3, &   ! J2K position X (km)
      XA_VCM_J2KPOSY       =   4, &   ! J2K position Y (km)
      XA_VCM_J2KPOSZ       =   5, &   ! J2K position Z (km)
      XA_VCM_J2KVELX       =   6, &   ! J2K velocity X (km/s)
      XA_VCM_J2KVELY       =   7, &   ! J2K velocity Y (km/s)
      XA_VCM_J2KVELZ       =   8, &   ! J2K velocity Z (km/s)
      XA_VCM_ECIPOSX       =   9, &   ! ECI position X (km)
      XA_VCM_ECIPOSY       =  10, &   ! ECI position Y (km)
      XA_VCM_ECIPOSZ       =  11, &   ! ECI position Z (km)
      XA_VCM_ECIVELX       =  12, &   ! ECI velocity X (km/s)
      XA_VCM_ECIVELY       =  13, &   ! ECI velocity Y (km/s)
      XA_VCM_ECIVELZ       =  14, &   ! ECI velocity Z (km/s)
      XA_VCM_EFGPOSX       =  15, &   ! EFG position X (km)
      XA_VCM_EFGPOSY       =  16, &   ! EFG position Y (km)
      XA_VCM_EFGPOSZ       =  17, &   ! EFG position Z (km)
      XA_VCM_EFGVELX       =  18, &   ! EFG velocity X (km/s)
      XA_VCM_EFGVELY       =  19, &   ! EFG velocity Y (km/s)
      XA_VCM_EFGVELZ       =  20, &   ! EFG velocity Z (km/s)
      XA_VCM_GEOZON        =  21, &   ! geopotential zonals
      XA_VCM_GEOTES        =  22, &   ! geopotential tesserals
      XA_VCM_BTERM         =  23, &   ! ballistic coefficient (m^2/kg)
      XA_VCM_BDOT          =  24, &   ! BDOT (m^2/kg-s)
      XA_VCM_AGOM          =  25, &   ! solar radiation pressure coefficient (m^2/kg)
      XA_VCM_EDR           =  26, &   ! energy dissipation rate (w/kg)
      XA_VCM_OGPARM        =  27, &   ! outgassing parameter/thrust acceleration (m/s^2)
      XA_VCM_CMOFFSET      =  28, &   ! center of mass offset (m)
      XA_VCM_F10           =  29, &   ! solar flux F10
      XA_VCM_F10AVG        =  30, &   ! average F10
      XA_VCM_APAVG         =  31, &   ! average Ap
      XA_VCM_TAIMUTC       =  32, &   ! TAI - UTC (s)
      XA_VCM_UT1MUTC       =  33, &   ! UT1 - UTC (s)
      XA_VCM_UT1RATE       =  34, &   ! UT1 rate (ms/day)
      XA_VCM_POLMOTX       =  35, &   ! polar motion X (arcsec)
      XA_VCM_POLMOTY       =  36, &   ! polar motion Y (arcsec)
      XA_VCM_NUTTERMS      =  37, &   ! nutation terms
      XA_VCM_LEAPDS50UTC   =  38, &   ! leap second time in days since 1950 UTC
      XA_VCM_INITSTEP      =  39, &   ! initial step size
      XA_VCM_ERRCTRL       =  40, &   ! integrator control error 
      XA_VCM_POSUSIG       =  41, &   ! position u sigma (km)   
      XA_VCM_POSVSIG       =  42, &   ! position v sigma (km)
      XA_VCM_POSWSIG       =  43, &   ! position w sigma (km)
      XA_VCM_VELUSIG       =  44, &   ! velocity u sigma (km/s)
      XA_VCM_VELVSIG       =  45, &   ! velocity v sigma (km/s)
      XA_VCM_VELWSIG       =  46, &   ! velocity w sigma (km/s)
      XA_VCM_COVMTXSIZE    =  47, &   ! covariance matrix size
      XA_VCM_RMS           =  48, &   ! weighted RM of last DC on the satellite
      XA_VCM_COVELEMS      = 100, &   ! the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
      
      XA_VCM_SIZE          = 512;
   
   ! Indexes of VCM data fields
   integer, parameter :: &
      XF_VCM_SATNUM    =  1, &    ! Satellite number I5
      XF_VCM_SATNAME   =  2, &    ! Satellite international designator A8
      XF_VCM_EPOCH     =  3, &    ! Epoch YYYYDDDHHMMSS.SSS A17
      XF_VCM_REVNUM    =  4, &    ! Revolution number I5
      XF_VCM_POSX      =  5, &    ! position X (km) F16.8 
      XF_VCM_POSY      =  6, &    ! position Y (km) F16.8 
      XF_VCM_POSZ      =  7, &    ! position Z (km) F16.8   
      XF_VCM_VELX      =  8, &    ! velocity X (km/s) F16.12
      XF_VCM_VELY      =  9, &    ! velocity Y (km/s) F16.12
      XF_VCM_VELZ      = 10, &    ! velocity Z (km/s) F16.12
      XF_VCM_GEONAME   = 11, &    ! Geo Name A6
      XF_VCM_GEOZONALS = 12, &    ! Geo zonals I2
      XF_VCM_GEOTESSER = 13, &    ! Geo tesserals I2
      XF_VCM_DRAGMODE  = 14, &    ! Drag modelel A12 (NONE, JAC70/MSIS90) 
      XF_VCM_LUNSOL    = 15, &    ! Lunar solar A3 (ON/OFF)
      XF_VCM_RADPRESS  = 16, &    ! Radiation pressure pertubations A3 (ON/OFF)
      XF_VCM_ERTHTIDES = 17, &    ! Earth + ocean tides pertubations A3 (ON/OFF)
      XF_VCM_INTRACK   = 18, &    ! Intrack thrust A3 (ON/OFF)
      XF_VCM_BTERM     = 19, &    ! Ballistic coefficient (m^2/kg)
      XF_VCM_AGOM      = 20, &    ! Radiation pressure coefficient  (m^2/kg)
      XF_VCM_OGPARM    = 21, &    ! Outgassing parameter (m/s^2)
      XF_VCM_CMOFFSET  = 22, &    ! Center of mass offset (m)
      XF_VCM_F10       = 23, &    ! Solar flux F10 I3
      XF_VCM_F10AVG    = 24, &    ! Solar flux F10 average I3
      XF_VCM_APAVG     = 25, &    ! Ap average F5.1
      XF_VCM_TAIMUTC   = 26, &    ! TAI minus UTC (s)I2
      XF_VCM_UT1MUTC   = 27, &    ! UT1 minus UTC (s) F7.5
      XF_VCM_UT1RATE   = 28, &    ! UT1 rate (ms/day)  F5.3
      XF_VCM_POLARX    = 29, &    ! Polar motion X (arcsec) F6.4
      XF_VCM_POLARY    = 30, &    ! Polar motion Y (arcsec) F6.4
      XF_VCM_NTERMS    = 31, &    ! Nutation terms I3
      XF_VCM_LEAPYR    = 32, &    ! Leap second time YYYYDDDHHMMSS.SSS A17
      XF_VCM_INTEGMODE = 33, &    ! Integration mode A6 (ASW, OSW, SPADOC)
      XF_VCM_PARTIALS  = 34, &    ! Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
      XF_VCM_STEPMODE  = 35, &    ! Integration step mode A4 (AUTO/TIME, S)
      XF_VCM_FIXEDSTEP = 36, &    ! Fixed step size indicator A3 (ON/OFF)
      XF_VCM_STEPSLCTN = 37, &    ! Initial step size selection A6 (AUTO/MANUAL)
      XF_VCM_STEPSIZE  = 38, &    ! Initial integration step size F8.3
      XF_VCM_ERRCTRL   = 39, &    ! Integrator error control E9.3
      XF_VCM_RMS       = 40, &    ! Weighted rms of last DC E10.5
      XF_VCM_BDOT      = 41, &    ! BDOT (M2/KG-S)
      XF_VCM_EDR       = 42;      ! EDR (W/KG)
      
   
   !*******************************************************************************
   ! Different ingetration control/step mode
   integer, parameter :: &
      STEPMODE_AUTO = 0, &
      STEPMODE_TIME = 1, &
      STEPMODE_S    = 2;
      
   
end module VcmDll
! ========================= End of auto generated code ==========================
