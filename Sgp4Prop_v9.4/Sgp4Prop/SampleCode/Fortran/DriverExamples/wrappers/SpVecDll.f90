! This wrapper file was generated automatically by the GenDllWrappers program.
module SpVecDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes SpVec DLL for use in the program
! If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
function SpVecInit(apAddr) bind(C, name = "SpVecInit") result(errCode)
   integer :: errCode	! 0 if SpVec.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function SpVecInit
!*******************************************************************************



! Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
! The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
subroutine SpVecGetInfo(infoStr) bind(C, name = "SpVecGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about SpVec.dll
end subroutine SpVecGetInfo
!*******************************************************************************



! Loads a text file containing SpVec's
! The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
! 
! B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
! 
! This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
function SpVecLoadFile(spVecFile) bind(C, name = "SpVecLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: spVecFile(512)   ! The name of the file containing osculating vectors (SpVecs) to be loaded
end function SpVecLoadFile
!*******************************************************************************



! Saves the currently loaded SpVecs's to a file
! If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
! 
! The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
function SpVecSaveFile(spVecFile, saveMode, saveForm) bind(C, name = "SpVecSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: spVecFile(512)   ! The name of the file in which to save the settings
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: saveForm   ! Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future)
end function SpVecSaveFile
!*******************************************************************************



! Removes an SpVec represented by the satKey from memory
! If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function SpVecRemoveSat(satKey) bind(C, name = "SpVecRemoveSat") result(errCode)
   integer :: errCode	! 0 if the SpVec is removed successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The unique key of the satellite to be removed
end function SpVecRemoveSat
!*******************************************************************************



! Removes all SpVec's from memory
function SpVecRemoveAllSats() bind(C, name = "SpVecRemoveAllSats") result(errCode)
   integer :: errCode	! 0 if all SpVec's are removed successfully from memory, non-0 if there is an error
end function SpVecRemoveAllSats
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
! See SpVecGetLoaded for example.
! This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
function SpVecGetCount() bind(C, name = "SpVecGetCount") result(numSats)
   integer :: numSats	! The number of SpVec's currently loaded
end function SpVecGetCount
!*******************************************************************************



! Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
! It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
! 
! If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
subroutine SpVecGetLoaded(order, satKeys) bind(C, name = "SpVecGetLoaded")
   integer, value :: order   ! Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded
   integer(8), intent(out) :: satKeys(*)   ! The array in which to store the satKeys
end subroutine SpVecGetLoaded
!*******************************************************************************



! Adds an SpVec using its directly specified first and second lines
! If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
! 
! The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
function SpVecAddSatFrLines(line1, line2) bind(C, name = "SpVecAddSatFrLines") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added SpVec on success, a negative value on error
   character, intent(in) :: line1(512)   ! The first input line of the two line element set
   character, intent(in) :: line2(512)   ! The second input line of the two line element set
end function SpVecAddSatFrLines
!*******************************************************************************



! Works like SpVecAddSatFrLines but designed for Matlab
subroutine SpVecAddSatFrLinesML(line1, line2, satKey) bind(C, name = "SpVecAddSatFrLinesML")
   character, intent(in) :: line1(512)   ! The first input line of the two line element set
   character, intent(in) :: line2(512)   ! The second input line of the two line element set
   integer(8), intent(out) :: satKey   ! The satKey of the newly added SpVec on success, a negative value on error
end subroutine SpVecAddSatFrLinesML
!*******************************************************************************



! Adds an SpVec using its individually provided field values
function SpVecAddSatFrFields(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys) &
bind(C, name = "SpVecAddSatFrFields") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added SpVec on success, a negative value on error
   real(8), intent(in) :: pos(3)   ! position vector (km)
   real(8), intent(in) :: vel(3)   ! velocity vector (m/s)
   character, value :: secClass   ! Security classification: U=Unclass, C=Confidential, S=Secret
   integer, value :: satNum   ! Satellite number
   character, intent(in) :: satName(8)   ! Satellite name A8
   character, intent(in) :: epochDtg(17)   ! Satellite's epoch A17 (YYYYDDDHHMMSS.SSS)
   integer, value :: revNum   ! Revolution number
   integer, value :: elsetNum   ! Element set number
   real(8), value :: bterm   ! Bterm m^2/kg
   real(8), value :: agom   ! Agom  m^2/kg
   real(8), value :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(in) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
end function SpVecAddSatFrFields
!*******************************************************************************



! Works like SpVecAddSatFrFields but designed for Matlab 
subroutine SpVecAddSatFrFieldsML(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys, &
satKey) bind(C, name = "SpVecAddSatFrFieldsML")
   real(8), intent(in) :: pos(3)   ! position vector (km)
   real(8), intent(in) :: vel(3)   ! velocity vector (m/s)
   character, value :: secClass   ! Security classification: U=Unclass, C=Confidential, S=Secret
   integer, value :: satNum   ! Satellite number
   character, intent(in) :: satName(8)   ! Satellite name A8
   character, intent(in) :: epochDtg(17)   ! Satellite's epoch A17 (YYYYDDDHHMMSS.SSS)
   integer, value :: revNum   ! Revolution number
   integer, value :: elsetNum   ! Element set number
   real(8), value :: bterm   ! Bterm m^2/kg
   real(8), value :: agom   ! Agom  m^2/kg
   real(8), value :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(in) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
   integer(8), intent(out) :: satKey   ! The satKey of the newly added SpVec on success, a negative value on error
end subroutine SpVecAddSatFrFieldsML
!*******************************************************************************



! Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
! The satellite's unique key will not be changed in this function call. 
function SpVecUpdateSatFrFields(satKey, pos, vel, secClass, satName, revNum, elsetNum, bterm, agom, ogParm, coordSys) &
bind(C, name = "SpVecUpdateSatFrFields") result(errCode)
   integer :: errCode	! 0 if the SpVec is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The sattelite's unique key
   real(8), intent(in) :: pos(3)   ! position vector (km)
   real(8), intent(in) :: vel(3)   ! velocity vector (m/s)
   character, value :: secClass   ! Security classification: U=Unclass, C=Confidential, S=Secret
   character, intent(in) :: satName(8)   ! Satellite name A8
   integer, value :: revNum   ! Revolution number
   integer, value :: elsetNum   ! Element set number
   real(8), value :: bterm   ! Bterm m^2/kg
   real(8), value :: agom   ! Agom  m^2/kg
   real(8), value :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(in) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
end function SpVecUpdateSatFrFields
!*******************************************************************************



! Retrieves the value of a specific field of an SpVec
! 
! The table below shows the values for the xf_SpVec parameter:
! 
! table
! 
! Index
! Index Interpretation
! 
!  1-3First 3 elements of 1P
!  4-6Second 3 elements of 1P
!  7Security classification
!  9Satellite number
! 10Satellite common name
! 11Epoch date
! 12Epoch revolution number
! 13Elset number
! 14Ballistic coefficient
! 15Radiation pressure coefficient
! 16Outgassing parameter
! 17Input coordinate system
! 
function SpVecGetField(satKey, xf_SpVec, valueStr) bind(C, name = "SpVecGetField") result(errCode)
   integer :: errCode	! 0 if the SpVec is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_SpVec   ! Predefined number specifying which field to set
   character, intent(out) :: valueStr(512)   ! A string to contain the value of the requested field
end function SpVecGetField
!*******************************************************************************



! Updates the value of a field of an SpVec
! See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
! The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
function SpVecSetField(satKey, xf_SpVec, valueStr) bind(C, name = "SpVecSetField") result(errCode)
   integer :: errCode	! 0 if the SpVec is successfully updated, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   integer, value :: xf_SpVec   ! Predefined number specifying which field to set
   character, intent(in) :: valueStr(512)   ! The new value of the specified field, expressed as a string
end function SpVecSetField
!*******************************************************************************



! Retrieves all of the data for an SpVec satellite in a single function call
function SpVecGetAllFields(satKey, pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, &
coordSys) bind(C, name = "SpVecGetAllFields") result(errCode)
   integer :: errCode	! 0 if the SpVec is successfully retrieved, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: pos(3)   ! position vector (km)
   real(8), intent(out) :: vel(3)   ! velocity vector (m/s)
   character, intent(out) :: secClass   ! Security classification U: unclass, C: confidential, S: Secret
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: satName(8)   ! Satellite name A8
   character, intent(out) :: epochDtg(17)   ! Satellite's epoch A17 (YYYYDDDHHMMSS.SSS)
   integer, intent(out) :: revNum   ! Revolution number
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: bterm   ! Bterm m^2/kg
   real(8), intent(out) :: agom   ! Agom  m^2/kg
   real(8), intent(out) :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(out) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
end function SpVecGetAllFields
!*******************************************************************************



! Retrieves all of the data for an SpVec satellite in a single function call
function SpVecParse(line1, line2, pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys) &
bind(C, name = "SpVecParse") result(errCode)
   integer :: errCode	! 0 if the SpVec data is successfully parsed, non-0 if there is an error
   character, intent(in) :: line1(512)   ! the first input line of a 1P/2P card
   character, intent(in) :: line2(512)   ! the second input line of a 1P/2P card
   real(8), intent(out) :: pos(3)   ! position vector (km)
   real(8), intent(out) :: vel(3)   ! velocity vector (m/s)
   character, intent(out) :: secClass   ! Security classification U: unclass, C: confidential, S: Secret
   integer, intent(out) :: satNum   ! Satellite number
   character, intent(out) :: satName(8)   ! Satellite name A8
   character, intent(out) :: epochDtg(17)   ! Satellite's epoch A17 (YYYYDDDHHMMSS.SSS)
   integer, intent(out) :: revNum   ! Revolution number
   integer, intent(out) :: elsetNum   ! Element set number
   real(8), intent(out) :: bterm   ! Bterm m^2/kg
   real(8), intent(out) :: agom   ! Agom  m^2/kg
   real(8), intent(out) :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(out) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
end function SpVecParse
!*******************************************************************************



! Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
! This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
function SpVecLinesToArray(line1, line2, xa_spVec, xs_spVec) bind(C, name = "SpVecLinesToArray") result(errCode)
   integer :: errCode	! 0 if the SPVEC is parsed successfully, non-0 if there is an error.
   character, intent(in) :: line1(512)   ! The first line of the two line element set.
   character, intent(in) :: line2(512)   ! The second line of the two line element set
   real(8), intent(out) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(out) :: xs_spVec(512)   ! Output string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
end function SpVecLinesToArray
!*******************************************************************************



! Returns the first and second lines of the 1P/2P representation of an SpVec
function SpVecGetLines(satKey, line1, line2) bind(C, name = "SpVecGetLines") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   integer(8), value :: satKey   ! The satellite's unique key
   character, intent(out) :: line1(512)   ! The resulting first line of a 1P/2P card
   character, intent(out) :: line2(512)   ! The resulting second line of a 1P/2P card
end function SpVecGetLines
!*******************************************************************************



! Constructs 1P/2P cards from individually provided SpVec data fields
! Returned line1 and line2 are empty if the function fails to construct the lines as requested.
subroutine SpVecFieldsToLines(pos, vel, secClass, satNum, satName, epochDtg, revNum, elsetNum, bterm, agom, ogParm, coordSys, &
line1, line2) bind(C, name = "SpVecFieldsToLines")
   real(8), intent(in) :: pos(3)   ! position vector (km)
   real(8), intent(in) :: vel(3)   ! velocity vector (m/s)
   character, value :: secClass   ! Security classification U: unclass, C: confidential, S: Secret
   integer, value :: satNum   ! Satellite number
   character, intent(in) :: satName(8)   ! Satellite name A8
   character, intent(in) :: epochDtg(17)   ! Satellite's epoch A17 (YYYYDDDHHMMSS.SSS)
   integer, value :: revNum   ! Revolution number
   integer, value :: elsetNum   ! Element set number
   real(8), value :: bterm   ! Bterm m^2/kg
   real(8), value :: agom   ! Agom  m^2/kg
   real(8), value :: ogParm   ! Outgassing parameter (km/s^2)
   character, intent(in) :: coordSys(5)   ! Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000
   character, intent(out) :: line1(512)   ! The resulting first line of a 1P/2P card
   character, intent(out) :: line2(512)   ! The resulting second line of a 1P/2P card
end subroutine SpVecFieldsToLines
!*******************************************************************************



! Constructs 1P/2P cards from SPVEC data stored in the input arrays.
! This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
! Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
subroutine SpVecArrayToLines(xa_spVec, xs_spVec, line1, line2) bind(C, name = "SpVecArrayToLines")
   real(8), intent(in) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(in) :: xs_spVec(512)   ! Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
   character, intent(out) :: line1(512)   ! Returned first line of an SPVEC.
   character, intent(out) :: line2(512)   ! Returned second line of an SPVEC
end subroutine SpVecArrayToLines
!*******************************************************************************



! Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
! This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
function SpVecGetSatKey(satNum) bind(C, name = "SpVecGetSatKey") result(satKey)
   integer(8) :: satKey	! The satellite's unique key
   integer, value :: satNum   ! The input satellite number
end function SpVecGetSatKey
!*******************************************************************************



! This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
! This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
subroutine SpVecGetSatKeyML(satNum, satKey) bind(C, name = "SpVecGetSatKeyML")
   integer, value :: satNum   ! The input satellite number
   integer(8), intent(out) :: satKey   ! The satellite's unique key
end subroutine SpVecGetSatKeyML
!*******************************************************************************



! Computes a satKey from the input data
! This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
function SpVecFieldsToSatKey(satNum, epochDtg) bind(C, name = "SpVecFieldsToSatKey") result(satKey)
   integer(8) :: satKey	! The resulting satellite key
   integer, value :: satNum   ! The input satellite number
   character, intent(in) :: epochDtg(20)   ! [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20
end function SpVecFieldsToSatKey
!*******************************************************************************



! This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
! This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
subroutine SpVecFieldsToSatKeyML(satNum, epochDtg, satKey) bind(C, name = "SpVecFieldsToSatKeyML")
   integer, value :: satNum   ! The input satellite number
   character, intent(in) :: epochDtg(20)   ! [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20
   integer(8), intent(out) :: satKey   ! The resulting satellite key
end subroutine SpVecFieldsToSatKeyML
!*******************************************************************************



! Adds an SpVec using its individually provided field values
function SpVecAddSatFrArray(xa_spVec, xs_spVec) bind(C, name = "SpVecAddSatFrArray") result(satKey)
   integer(8) :: satKey	! The satKey of the newly added SPVEC on success, a negative value on error.
   real(8), intent(in) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(in) :: xs_spVec(512)   ! Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
end function SpVecAddSatFrArray
!*******************************************************************************



! Adds an SpVec using its individually provided field values
subroutine SpVecAddSatFrArrayML(xa_spVec, xs_spVec, satKey) bind(C, name = "SpVecAddSatFrArrayML")
   real(8), intent(in) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(in) :: xs_spVec(512)   ! Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
   integer(8), intent(out) :: satKey   ! The satKey of the newly added SPVEC on success, a negative value on error.
end subroutine SpVecAddSatFrArrayML
!*******************************************************************************



! Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
function SpVecUpdateSatFrArray(satKey, xa_spVec, xs_spVec) bind(C, name = "SpVecUpdateSatFrArray") result(errCode)
   integer :: errCode	! 0 if the SPVEC is successfully updated, non-0 if there is an error.
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(in) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(in) :: xs_spVec(512)   ! Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
end function SpVecUpdateSatFrArray
!*******************************************************************************



! Retrieves SPVEC data and stored it in the passing parameters
function SpVecDataToArray(satKey, xa_spVec, xs_spVec) bind(C, name = "SpVecDataToArray") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error
   integer(8), value :: satKey   ! The satellite's unique key
   real(8), intent(out) :: xa_spVec(512)   ! Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement
   character, intent(out) :: xs_spVec(512)   ! Output string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement
end function SpVecDataToArray
!*******************************************************************************

end interface




   
   ! Indexes of SPVEC data fields
   integer, parameter :: &
      XF_SPVEC_POS1     =  1, &    ! X component of satellite's position (km)
      XF_SPVEC_POS2     =  2, &    ! Y component of satellite's position (km)
      XF_SPVEC_POS3     =  3, &    ! Z component of satellite's position (km)
      XF_SPVEC_VEL1     =  4, &    ! X component of satellite's velocity (m/s)
      XF_SPVEC_VEL2     =  5, &    ! Y component of satellite's velocity (m/s)
      XF_SPVEC_VEL3     =  6, &    ! Z component of satellite's velocity (m/s)
      XF_SPVEC_SECCLASS =  7, &    ! Security classification
      XF_SPVEC_SATNUM   =  9, &    ! Satellite number
      XF_SPVEC_SATNAME  = 10, &    ! Satellite common name
      XF_SPVEC_EPOCH    = 11, &    ! Epoch date
      XF_SPVEC_REVNUM   = 12, &    ! Epoch revolution number
      XF_SPVEC_ELSETNUM = 13, &    ! Elset number
      XF_SPVEC_BTERM    = 14, &    ! Ballistic coefficient (m^2/kg)
      XF_SPVEC_AGOM     = 15, &    ! Radiation pressure coefficient (m^2/kg)
      XF_SPVEC_OGPARM   = 16, &    ! Outgassing parameter (km/s^2)
      XF_SPVEC_INPCOORD = 17;      ! Inpute coordinate system
      
      
   ! Indexes of SPVEC numerical data in an array
   integer, parameter :: &
      XA_SPVEC_SATNUM   =   0, &    ! Satellite number
      XA_SPVEC_EPOCH    =   1, &    ! Epoch date in days since 1950 UTC
      XA_SPVEC_REVNUM   =   2, &    ! Epoch revolution number
      XA_SPVEC_ELSETNUM =   3, &    ! Elset number
      XA_SPVEC_BTERM    =   4, &    ! Ballistic coefficient (m^2/kg)
      XA_SPVEC_AGOM     =   5, &    ! Radiation pressure coefficient (m^2/kg)
      XA_SPVEC_OGPARM   =   6, &    ! Outgassing parameter (km/s^2)
      XA_SPVEC_INPCOORD =   7, &    ! Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
   
      XA_SPVEC_POS1     =  20, &    ! X component of satellite's position (km)
      XA_SPVEC_POS2     =  21, &    ! Y component of satellite's position (km)
      XA_SPVEC_POS3     =  22, &    ! Z component of satellite's position (km)
      XA_SPVEC_VEL1     =  23, &    ! X component of satellite's velocity (m/s)
      XA_SPVEC_VEL2     =  24, &    ! Y component of satellite's velocity (m/s)
      XA_SPVEC_VEL3     =  25, &    ! Z component of satellite's velocity (m/s)
      
      XA_SPVEC_HASOWNCRL=  70, &    ! Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
      XA_SPVEC_GEOIDX   =  71, &    ! Geopotential model to use
      XA_SPVEC_BULGEFLG =  72, &    ! Earth gravity pertubations flag
      XA_SPVEC_DRAGFLG  =  73, &    ! Drag pertubations flag 
      XA_SPVEC_RADFLG   =  74, &    ! Radiation pressure pertubations flag
      XA_SPVEC_LUNSOLFLG=  75, &    ! Lunar/Solar pertubations flag
      XA_SPVEC_F10      =  76, &    ! F10 value
      XA_SPVEC_F10AVG   =  77, &    ! F10 average value
      XA_SPVEC_AP       =  78, &    ! Ap value
      XA_SPVEC_TRUNC    =  79, &    ! Geopotential truncation order/degree/zonals
      XA_SPVEC_CONVERG  =  80, &    ! Corrector step convergence criterion; exponent of 1/10; default = 10
      XA_SPVEC_OGFLG    =  81, &    ! Outgassing pertubations flag
      XA_SPVEC_TIDESFLG =  82, &    ! Solid earth and ocean tide pertubations flag
      XA_SPVEC_NTERMS   =  84, &    ! Nutation terms
      XA_SPVEC_REEVAL   =  85, &    ! Recompute pertubations at each corrector step
      XA_SPVEC_INTEGCTRL=  86, &    ! Variable of intergration control
      XA_SPVEC_VARSTEP  =  87, &    ! Variable step size control
      XA_SPVEC_INITSTEP =  88, &    ! Initial step size
      
      XA_SPVEC_RMS      =  99, &    ! weighted RM of last DC on the satellite 
      XA_SPVEC_COVELEMS = 100, &    ! the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
      
      XA_SPVEC_SIZE     = 512;
      
   
   ! Indexes of SPVEC text data in an array of chars
   integer, parameter :: &   
      XS_SPVEC_SECCLASS_1 =  0, &    ! Security classification
      XS_SPVEC_SATNAME_8  =  1, &    ! Satellite common name
      
      XS_SPVEC_SIZE       = 512;
   
   ! SPVEC's text data fields - new convention (start index, string length)
   integer, parameter :: &   
      XS_SPVEC_SECCLASS_0_1 =  0, &    ! Security classification
      XS_SPVEC_SATNAME_1_8  =  1, &    ! Satellite common name
      
      XS_SPVEC_LENGTH     = 512;
   
      
   ! Different input coordinate for SpVec
   integer, parameter :: &   
      SPVEC_INPCOORD_4P    =  0, &    ! Use input coordinate specified in 4P-card
      SPVEC_INPCOORD_TMDAT =  1, &    ! Input coordinate systems is coordinates of epoch
      SPVEC_INPCOORD_MMJ2K =  2;      ! Input coordinate systems is coordinates of J2000
   
end module SpVecDll
! ========================= End of auto generated code ==========================
