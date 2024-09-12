! This wrapper file was generated automatically by the GenDllWrappers program.
module ObsDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes Obs DLL for use in the program
function ObsInit(apAddr) bind(C, name = "ObsInit") result(errCode)
   integer :: errCode	! 0 if Obs.dll is initialized successfully, non-0 if there is an error
   integer(8), value :: apAddr   ! The handle that was returned from DllMainInit()
end function ObsInit
!*******************************************************************************



! Returns information about the current version of Obs DLL. 
! The information is placed in the string parameter passed in.
subroutine ObsGetInfo(infoStr) bind(C, name = "ObsGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about Obs.dll
end subroutine ObsGetInfo
!*******************************************************************************



! Sets the year for transmission observation format (TTY) input files
subroutine ObsSetTTYYear(ttyYear) bind(C, name = "ObsSetTTYYear")
   integer, value :: ttyYear   ! 2 or 4 digits year
end subroutine ObsSetTTYYear
!*******************************************************************************



! Loads observation data from an input text file
function ObsLoadFile(obsFile) bind(C, name = "ObsLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: obsFile(512)   ! The name of the file containing obs-related data
end function ObsLoadFile
!*******************************************************************************



! Saves the currently loaded obs data to a file
function ObsSaveFile(obsFile, saveMode, obsForm) bind(C, name = "ObsSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: obsFile(512)   ! The name of the file in which to save the loaded obs
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: obsForm   ! Specifies the mode in which to save the file (0 = B3 format, 1 = TTY, 2 = CSV)
end function ObsSaveFile
!*******************************************************************************



! Removes an obs, represented by the obsKey, from the set of currently loaded observations
function ObsRemove(obsKey) bind(C, name = "ObsRemove") result(errCode)
   integer :: errCode	! 0 if the observation is successfully removed, non-0 if there is an error
   integer(8), value :: obsKey   ! The observation's unique key
end function ObsRemove
!*******************************************************************************



! Removes all currently loaded observations from memory
function ObsRemoveAll() bind(C, name = "ObsRemoveAll") result(errCode)
   integer :: errCode	! 0 if all the loaded observations are removed successfully, non-0 if there is an error
end function ObsRemoveAll
!*******************************************************************************



! Returns the number of observations currently loaded
function ObsGetCount() bind(C, name = "ObsGetCount") result(numObss)
   integer :: numObss	! the number of observations currently loaded
end function ObsGetCount
!*******************************************************************************



! Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
! Sort options (order):
! (+/-)1 = (descending/ascending) time, sensor, obsType, elev
! (+/-)2 = (descending/ascending) time, elevation
! (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
! (+/-)4 = (descending/ascending) sensor, satno, time, elev
! (+/-)5 = (descending/ascending) sensor, time, elevation
! (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
! (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
! (+/-)8 = (reversed/same)        order as obs were read
! 9 : as is in the tree
subroutine ObsGetLoaded(order, obsKeys) bind(C, name = "ObsGetLoaded")
   integer, value :: order   ! Specifies the order in which the obsKeys should be returned
   integer(8), intent(out) :: obsKeys(*)   ! The array in which to store the obsKeys
end subroutine ObsGetLoaded
!*******************************************************************************



! Loads a single observation-typed card
function ObsLoadCard(card) bind(C, name = "ObsLoadCard") result(errCode)
   integer :: errCode	! 0 if the input card is read successfully, non-0 if there is an error
   character, intent(in) :: card(512)   ! Any single observation-typed card (B3, B3E, TTY, ...) but not OBSFIL=
end function ObsLoadCard
!*******************************************************************************



! Loads a one-line or two-line observation 
function ObsLoadTwoCards(card1, card2) bind(C, name = "ObsLoadTwoCards") result(errCode)
   integer :: errCode	! 0 if the input card1/card2 are read successfully, non-0 if there is an error
   character, intent(in) :: card1(512)   ! Any single observation-typed card (B3, B3E, TTY, ...) or Card #1 of TTY obs type 4, 7, 8, 9
   character, intent(in) :: card2(512)   ! Card #2 of TTY obs type 4, 7, 8, 9
end function ObsLoadTwoCards
!*******************************************************************************



! Adds an observation from a string in B3 observation format
function ObsAddFrB3Card(card) bind(C, name = "ObsAddFrB3Card") result(obsKey)
   integer(8) :: obsKey	! The obsKey of the newly added observation on success, a negative value on error
   character, intent(in) :: card(512)   ! The input string in B3 observation format
end function ObsAddFrB3Card
!*******************************************************************************



! Works like ObsAddFrB3Card but designed for Matlab
subroutine ObsAddFrB3CardML(card, obsKey) bind(C, name = "ObsAddFrB3CardML")
   character, intent(in) :: card(512)   ! The input string in B3 observation format
   integer(8), intent(out) :: obsKey   ! The obsKey of the newly added observation on success, a negative value on error
end subroutine ObsAddFrB3CardML
!*******************************************************************************



! Converts B3 format to csv format without loading B3 obs into memory
function ObsB3ToCsv(card, csvLine) bind(C, name = "ObsB3ToCsv") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error
   character, intent(in) :: card(512)   ! The input string in B3 observation format
   character, intent(out) :: csvLine(512)   ! The output string in csv observation format
end function ObsB3ToCsv
!*******************************************************************************



! Converts CSV format to B3 format without loading CSV obs into memory
function ObsCsvToB3(csvLine, newSatno, card) bind(C, name = "ObsCsvToB3") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error
   character, intent(in) :: csvLine(512)   ! The input string in csv observation format
   integer, value :: newSatno   ! New satellite number to replace what's in CSV obs if desired (value of zero does not renumber)
   character, intent(out) :: card(512)   ! The output string in B3 observation format
end function ObsCsvToB3
!*******************************************************************************



! Adds an observation from a TTY (1 line or 2 lines) observation format
function ObsAddFrTTYCards(card1, card2) bind(C, name = "ObsAddFrTTYCards") result(obsKey)
   integer(8) :: obsKey	! The obsKey of the newly added observation on success, a negative value on error
   character, intent(in) :: card1(512)   ! Card #1 of a TTY obs
   character, intent(in) :: card2(512)   ! Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types
end function ObsAddFrTTYCards
!*******************************************************************************



! Works like ObsAddFrTTYCards but designed for Matlab
subroutine ObsAddFrTTYCardsML(card1, card2, obsKey) bind(C, name = "ObsAddFrTTYCardsML")
   character, intent(in) :: card1(512)   ! Card #1 of a TTY obs
   character, intent(in) :: card2(512)   ! Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types
   integer(8), intent(out) :: obsKey   ! The obsKey of the newly added observation on success, a negative value on error
end subroutine ObsAddFrTTYCardsML
!*******************************************************************************



! Converts TTY format to CSV format without loading TTY obs into memory
function ObsTTYToCsv(card1, card2, csvLine) bind(C, name = "ObsTTYToCsv") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error
   character, intent(in) :: card1(512)   ! Card #1 of a TTY obs
   character, intent(in) :: card2(512)   ! Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types
   character, intent(out) :: csvLine(512)   ! The obs in csv format
end function ObsTTYToCsv
!*******************************************************************************



! Converts CSV format to TTY format without loading CSV obs into memory
function ObsCsvToTTY(csvLine, newSatno, card1, card2) bind(C, name = "ObsCsvToTTY") result(errCode)
   integer :: errCode	! 0 if the conversion is successful, non-0 if there is an error
   character, intent(in) :: csvLine(512)   ! The obs in csv format
   integer, value :: newSatno   ! New satellite number to replace what's in CSV obs if desired (value of zero does not renumber)
   character, intent(out) :: card1(512)   ! Card #1 of a TTY obs
   character, intent(out) :: card2(512)   ! Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types
end function ObsCsvToTTY
!*******************************************************************************



! Adds one observation using csv obs string 
function ObsAddFrCsv(csvLine) bind(C, name = "ObsAddFrCsv") result(obsKey)
   integer(8) :: obsKey	! The obsKey of the newly added observation on success, a negative value on error
   character, intent(in) :: csvLine(512)   ! Input csv obs string
end function ObsAddFrCsv
!*******************************************************************************



! Adds one observation using csv obs string - for MatLab
subroutine ObsAddFrCsvML(csvLine, obsKey) bind(C, name = "ObsAddFrCsvML")
   character, intent(in) :: csvLine(512)   ! Input csv obs string
   integer(8), intent(out) :: obsKey   ! The obsKey of the newly added observation on success, a negative value on error
end subroutine ObsAddFrCsvML
!*******************************************************************************



! Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
function ObsAddFrFields(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, &
obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr) bind(C, name = "ObsAddFrFields") result(obsKey)
   integer(8) :: obsKey	! The obsKey of the newly added observation on success, a negative value on error
   character, value :: secClass   ! security classification
   integer, value :: satNum   ! satellite number
   integer, value :: senNum   ! sensor number
   real(8), value :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   integer, value :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, value :: astat   ! association status assigned by SPADOC
   integer, value :: siteTag   ! original satellite number
   integer, value :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   real(8), intent(in) :: vel(3)   ! velocity XYZ (km/s) (ECI or EFG)
   real(8), intent(in) :: extArr(128)   ! extra array - future use
end function ObsAddFrFields
!*******************************************************************************



! Works like ObsAddFrFields but designed for Matlab
subroutine ObsAddFrFieldsML(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, &
rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr, obsKey) bind(C, name = "ObsAddFrFieldsML")
   character, value :: secClass   ! security classification
   integer, value :: satNum   ! satellite number
   integer, value :: senNum   ! sensor number
   real(8), value :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   integer, value :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, value :: astat   ! association status assigned by SPADOC
   integer, value :: siteTag   ! original satellite number
   integer, value :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   real(8), intent(in) :: vel(3)   ! velocity XYZ (km/s) (ECI or EFG)
   real(8), intent(in) :: extArr(128)   ! extra array - future use
   integer(8), intent(out) :: obsKey   ! The obsKey of the newly added observation on success, a negative value on error
end subroutine ObsAddFrFieldsML
!*******************************************************************************



! Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
function ObsAddFrArray(xa_obs) bind(C, name = "ObsAddFrArray") result(obsKey)
   integer(8) :: obsKey	! The obsKey of the newly added observation on success, a negative value on error
   real(8), intent(in) :: xa_obs(64)   ! Array containing observation data, see XA_OBS_? for array arrangement
end function ObsAddFrArray
!*******************************************************************************



! Works like ObsAddFrArray but designed for Matlab
subroutine ObsAddFrArrayML(xa_obs, obsKey) bind(C, name = "ObsAddFrArrayML")
   real(8), intent(in) :: xa_obs(64)   ! Array containing observation data, see XA_OBS_? for array arrangement
   integer(8), intent(out) :: obsKey   ! The obsKey of the newly added observation on success, a negative value on error
end subroutine ObsAddFrArrayML
!*******************************************************************************



! Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
function ObsGetAllFields(obsKey, secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, &
rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr) bind(C, name = "ObsGetAllFields") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error
   integer(8), value :: obsKey   ! The unique key of the requested observation
   character, intent(out) :: secClass   ! security classification
   integer, intent(out) :: satNum   ! satellite number
   integer, intent(out) :: senNum   ! sensor number
   real(8), intent(out) :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), intent(out) :: elOrDec   ! elevation or declination (deg)
   real(8), intent(out) :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), intent(out) :: range   ! range (km)
   real(8), intent(out) :: rangeRate   ! range rate (km/s)
   real(8), intent(out) :: elRate   ! elevation rate (deg/s)
   real(8), intent(out) :: azRate   ! azimuth rate (deg/s)
   real(8), intent(out) :: rangeAccel   ! range acceleration (km/s^2)
   character, intent(out) :: obsType   ! observation type
   integer, intent(out) :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, intent(out) :: astat   ! association status assigned by SPADOC
   integer, intent(out) :: siteTag   ! original satellite number
   integer, intent(out) :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(out) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   real(8), intent(out) :: vel(3)   ! velocity XYZ (km/s) (ECI or EFG)
   real(8), intent(out) :: extArr(128)   ! extra array - future use
end function ObsGetAllFields
!*******************************************************************************



! Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
! See ObsGetField for description of xa_obs elements
function ObsDataToArray(obsKey, xa_obs) bind(C, name = "ObsDataToArray") result(errCode)
   integer :: errCode	! 0 if all values are retrieved successfully, non-0 if there is an error
   integer(8), value :: obsKey   ! The unique key of the requested observation
   real(8), intent(out) :: xa_obs(64)   ! The array containing observation data, see XA_OBS_? for array arrangement
end function ObsDataToArray
!*******************************************************************************



! Updates existing observation data with the provided new data
function ObsUpdateFrFields(obsKey, secClass, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, &
astat, siteTag, spadocTag, pos, vel, extArr) bind(C, name = "ObsUpdateFrFields") result(errCode)
   integer :: errCode	! 0 if the requested observation is successfully updated, non-0 if there is an error
   integer(8), value :: obsKey   ! The unique key of the requested observation
   character, value :: secClass   ! security classification
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   integer, value :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track obs)
   integer, value :: astat   ! association status assigned by SPADOC
   integer, value :: siteTag   ! original satellite number
   integer, value :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   real(8), intent(in) :: vel(3)   ! velocity XYZ (km/s) (ECI or EFG)
   real(8), intent(in) :: extArr(128)   ! extra array - future use
end function ObsUpdateFrFields
!*******************************************************************************



! Retrieves the value of a specific field of an observation
function ObsGetField(obsKey, xf_Obs, strValue) bind(C, name = "ObsGetField") result(errCode)
   integer :: errCode	! 0 if the observation data is successfully retrieved, non-0 if there is an error
   integer(8), value :: obsKey   ! The observation's unique key
   integer, value :: xf_Obs   ! The predefined number specifying which field to retrieve, see XF_OBS_? for field specification
   character, intent(out) :: strValue(512)   ! A string to contain the value of the requested field
end function ObsGetField
!*******************************************************************************



! Updates the value of a field of an observation
! See ObsGetField for a description of the xf_Obs parameter.
! Satellite number, sensor number, and observation time are not allowed to be updated.
function ObsSetField(obsKey, xf_Obs, strValue) bind(C, name = "ObsSetField") result(errCode)
   integer :: errCode	! 0 if the observation is successfully updated, non-0 if there is an error
   integer(8), value :: obsKey   ! The observation's unique key
   integer, value :: xf_Obs   ! The predefined number specifying which field to update, see XF_OBS_? for field specification
   character, intent(in) :: strValue(512)   ! The new value of the specified field, expressed as a string
end function ObsSetField
!*******************************************************************************



! Returns observation in B3-card string
function ObsGetB3Card(obsKey, b3Card) bind(C, name = "ObsGetB3Card") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   integer(8), value :: obsKey   ! The observation's unique key
   character, intent(out) :: b3Card(512)   ! A string to hold the B3 observation format
end function ObsGetB3Card
!*******************************************************************************



! Returns observation in TTY-card string
function ObsGetTTYCard(obsKey, ttyCard1, ttyCard2) bind(C, name = "ObsGetTTYCard") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   integer(8), value :: obsKey   ! The observation's unique key
   character, intent(out) :: ttyCard1(512)   ! first line of a TTY card
   character, intent(out) :: ttyCard2(512)   ! second line of a TTY card (might be unavailable for certain obs type)
end function ObsGetTTYCard
!*******************************************************************************



! Returns observation in CSV-format string
function ObsGetCsv(obsKey, csvline) bind(C, name = "ObsGetCsv") result(errCode)
   integer :: errCode	! 0 if successful, non-0 on error
   integer(8), value :: obsKey   ! The observation's unique key
   character, intent(out) :: csvline(512)   ! A string to hold the CSV observation format
end function ObsGetCsv
!*******************************************************************************



! Constructs a B3-card string from the input observation data fields
subroutine ObsFieldsToB3Card(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, &
rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, b3Card) bind(C, name = "ObsFieldsToB3Card")
   character, value :: secClass   ! security classification
   integer, value :: satNum   ! satellite number
   integer, value :: senNum   ! sensor number
   real(8), value :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   integer, value :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, value :: astat   ! association status assigned by SPADOC
   integer, value :: siteTag   ! original satellite number
   integer, value :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   character, intent(out) :: b3Card(512)   ! A string to hold the B3 observation format
end subroutine ObsFieldsToB3Card
!*******************************************************************************



! Constructs a csv string from the input observation data fields
subroutine ObsFieldsToCsv(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, &
obsType, trackInd, astat, siteTag, spadocTag, pos, csvLine) bind(C, name = "ObsFieldsToCsv")
   character, value :: secClass   ! security classification
   integer, value :: satNum   ! satellite number
   integer, value :: senNum   ! sensor number
   real(8), value :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   integer, value :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, value :: astat   ! association status assigned by SPADOC
   integer, value :: siteTag   ! original satellite number
   integer, value :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   character, intent(out) :: csvLine(512)   ! A string to hold the csv observation format
end subroutine ObsFieldsToCsv
!*******************************************************************************



! Constructs a TTY-card string from the input observation data fields
subroutine ObsFieldsToTTYCard(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, &
rangeAccel, obsType, pos, ttyCard1, ttyCard2) bind(C, name = "ObsFieldsToTTYCard")
   character, value :: secClass   ! security classification
   integer, value :: satNum   ! satellite number
   integer, value :: senNum   ! sensor number
   real(8), value :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), value :: elOrDec   ! elevation or declination (deg)
   real(8), value :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), value :: range   ! range (km)
   real(8), value :: rangeRate   ! range rate (km/s), or equinox indicator (0-3) for obs type 5/9
   real(8), value :: elRate   ! elevation rate (deg/s)
   real(8), value :: azRate   ! azimuth rate (deg/s)
   real(8), value :: rangeAccel   ! range acceleration (km/s^2)
   character, value :: obsType   ! observation type
   real(8), intent(in) :: pos(3)   ! position XYZ (km) (ECI or EFG)
   character, intent(out) :: ttyCard1(512)   ! first line of a TTY card
   character, intent(out) :: ttyCard2(512)   ! second line of a TTY card (might be unavailable for certain obs type)
end subroutine ObsFieldsToTTYCard
!*******************************************************************************



! Computes an obsKey from individually provided fields
function ObsFieldsToObsKey(satNum, senNum, obsTimeDs50utc) bind(C, name = "ObsFieldsToObsKey") result(obsKey)
   integer(8) :: obsKey	! The newly created observation Key
   integer, value :: satNum   ! input satellite's number
   integer, value :: senNum   ! input sensor's number
   real(8), value :: obsTimeDs50utc   ! input observation time in days since 1950, UTC
end function ObsFieldsToObsKey
!*******************************************************************************



! Works like ObsFieldsToObsKey but designed for Matlab
subroutine ObsFieldsToObsKeyML(satNum, senNum, obsTimeDs50utc, obsKey) bind(C, name = "ObsFieldsToObsKeyML")
   integer, value :: satNum   ! input satellite's number
   integer, value :: senNum   ! input sensor's number
   real(8), value :: obsTimeDs50utc   ! input observation time in days since 1950, UTC
   integer(8), intent(out) :: obsKey   ! The newly created observation Key
end subroutine ObsFieldsToObsKeyML
!*******************************************************************************



! Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
function ObsB3Parse(b3ObsCard, secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, &
rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos) bind(C, name = "ObsB3Parse") result(errCode)
   integer :: errCode	! 0 if the data is successfully parsed, non-0 if there is an error
   character, intent(in) :: b3ObsCard(512)   ! input B3 observation string
   character, intent(out) :: secClass   ! security classification
   integer, intent(out) :: satNum   ! satellite number
   integer, intent(out) :: senNum   ! sensor number
   real(8), intent(out) :: obsTimeDs50utc   ! observation time in days since 1950 UTC
   real(8), intent(out) :: elOrDec   ! elevation or declination (deg)
   real(8), intent(out) :: azOrRA   ! azimuth or right-ascension (deg)
   real(8), intent(out) :: range   ! range (km)
   real(8), intent(out) :: rangeRate   ! range rate (km/s)
   real(8), intent(out) :: elRate   ! elevation rate (deg/s)
   real(8), intent(out) :: azRate   ! azimuth rate (deg/s)
   real(8), intent(out) :: rangeAccel   ! range acceleration (km/s^2)
   character, intent(out) :: obsType   ! observation type
   integer, intent(out) :: trackInd   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   integer, intent(out) :: astat   ! association status assigned by SPADOC
   integer, intent(out) :: siteTag   ! original satellite number
   integer, intent(out) :: spadocTag   ! SPADOC-asssigned tag number
   real(8), intent(out) :: pos(3)   ! position XYZ (km) (ECI or EFG)
end function ObsB3Parse
!*******************************************************************************



! Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
function ObsParse(line1, line2, xa_obs) bind(C, name = "ObsParse") result(errCode)
   integer :: errCode	! 0 if the data is successfully parsed, non-0 if there is an error
   character, intent(in) :: line1(512)   ! input observation string 1 (B3/B3E/line 1 TTY/CSV)
   character, intent(in) :: line2(512)   ! input observation string 2 (line 2 of two-line TTY)
   real(8), intent(out) :: xa_obs(64)   ! The array containing observation data, see XA_OBS_? for array arrangement
end function ObsParse
!*******************************************************************************



! Loads observation data from an input text file and group them together in the specified groupd id (gid).
! This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
function ObsLoadFileGID(obsFile, gid) bind(C, name = "ObsLoadFileGID") result(errCode)
   integer :: errCode	! 0 if the input file is read successfully, non-0 if there is an error
   character, intent(in) :: obsFile(512)   ! The name of the file containing obs-related data
   integer, value :: gid   ! user specified group id
end function ObsLoadFileGID
!*******************************************************************************



! Saves the currently loaded obs data belong to the specified group id (gid) to a file 
function ObsSaveFileGID(obsFile, gid, saveMode, obsForm) bind(C, name = "ObsSaveFileGID") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error
   character, intent(in) :: obsFile(512)   ! The name of the file in which to save the settings
   integer, value :: gid   ! Group ID number
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one (0 = create, 1= append)
   integer, value :: obsForm   ! Specifies the obs format in which to save the file (0 = B3 format, 1 = TTY, 2 = CSV)
end function ObsSaveFileGID
!*******************************************************************************



! Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
function ObsRemoveGID(gid) bind(C, name = "ObsRemoveGID") result(errCode)
   integer :: errCode	! 0 if the observations are successfully removed, non-0 if there is an error
   integer, value :: gid   ! Group ID number
end function ObsRemoveGID
!*******************************************************************************



! Returns the number of observations currently loaded that have the same gid
function ObsGetCountGID(gid) bind(C, name = "ObsGetCountGID") result(numObss)
   integer :: numObss	! The number of observations currently loaded that have the same group id
   integer, value :: gid   ! Group ID number
end function ObsGetCountGID
!*******************************************************************************



! Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
! Sort options (order):
! (+/-)1 = (descending/ascending) time, sensor, obsType, elev
! (+/-)2 = (descending/ascending) time, elevation
! (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
! (+/-)4 = (descending/ascending) sensor, satno, time, elev
! (+/-)5 = (descending/ascending) sensor, time, elevation
! (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
! (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
! (+/-)8 = (reversed/same)        order as obs were read
! 9 : as is in the tree
subroutine ObsGetLoadedGID(gid, order, obsKeys) bind(C, name = "ObsGetLoadedGID")
   integer, value :: gid   ! Group ID number
   integer, value :: order   ! Specifies the order in which the obsKeys should be returned
   integer(8), intent(out) :: obsKeys(*)   ! The array in which to store the obsKeys
end subroutine ObsGetLoadedGID
!*******************************************************************************



! Converts obs type from character to integer
function ObsTypeCToI(obsTypeChar) bind(C, name = "ObsTypeCToI") result(obsTypeInt)
   integer :: obsTypeInt	! The resulting obs type integer
   character, value :: obsTypeChar   ! The input obs type character
end function ObsTypeCToI
!*******************************************************************************



! Converts obs type from integer to character
function ObsTypeIToC(obsTypeInt) bind(C, name = "ObsTypeIToC") result(obsTypeChar)
   character :: obsTypeChar	! The resulting obs type character
   integer, value :: obsTypeInt   ! The input obs type integer
end function ObsTypeIToC
!*******************************************************************************



! Resets obs selection settings
subroutine ObsResetSelObs() bind(C, name = "ObsResetSelObs")
end subroutine ObsResetSelObs
!*******************************************************************************



! Computes other states of the input observation
! 
! The table below indicates which index values correspond to which fields in the xa_obState array.
! 
! table
! 
! Index
! Index Interpretation
! 
! 0Satellite number
! 1Sensor number
! 2Observation time in DS50UTC
! 10Position X/ECI (km)
! 11Position Y/ECI (km)
! 12Position Z/ECI (km)
! 13Velocity X/ECI (km/s)
! 14Velocity Y/ECI (km/s)
! 15Velocity Z/ECI (km/s)
! 16Geodetic latitude (deg)
! 17Geodetic longitude (deg)
! 18Geodetic height (km)
! 19Position X/EFG (km)
! 20Position Y/EFG (km)
! 21Position Z/EFG (km)
! 
function ObsGetStates(obsKey, range_km, xa_obState) bind(C, name = "ObsGetStates") result(errCode)
   integer :: errCode	! 0 if the observation states are successfully computed
   integer(8), value :: obsKey   ! The observation's unique key
   real(8), value :: range_km   ! Use this default range (km) for angle only obs
   real(8), intent(out) :: xa_obState(64)   ! Data derived from the obs data.  see XA_OBSTATE_?
end function ObsGetStates
!*******************************************************************************



! Computes observation states from the observation data
! See ObsGetStates for a list of the values for the xa_obState parameter.
function ObsDataToStates(xa_obs, xa_obState) bind(C, name = "ObsDataToStates") result(errCode)
   integer :: errCode	! 0 if the observation states are successfully computed
   real(8), intent(in) :: xa_obs(64)   ! Array containing observation data, see XA_OBS_? for array arrangement
   real(8), intent(out) :: xa_obState(64)   ! Data derived from the obs data.  see XA_OBSTATE_?
end function ObsDataToStates
!*******************************************************************************



! Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
function ObsArrToLines(xa_obs, obsForm, line1, line2) bind(C, name = "ObsArrToLines") result(errCode)
   integer :: errCode	! 0 if the data is successfully , non-0 if there is an error
   real(8), intent(in) :: xa_obs(64)   ! The array containing observation data, see XA_OBS_? for array arrangement
   integer, value :: obsForm   ! Desired obs string format (B3 = 0, TTY=1, CSV=2)
   character, intent(out) :: line1(512)   ! output observation string 1 (B3/B3E/line 1 TTY/CSV)
   character, intent(out) :: line2(512)   ! output observation string 2 (line 2 of two-line TTY if obsForm = 1)
end function ObsArrToLines
!*******************************************************************************



! Sets OBS key mode
! This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
! and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
function SetObsKeyMode(obs_keyMode) bind(C, name = "SetObsKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: obs_keyMode   ! Desired obs key mode (see OBS_KEYMODE_? for available modes)
end function SetObsKeyMode
!*******************************************************************************



! Gets current OBS key mode
function GetObsKeyMode() bind(C, name = "GetObsKeyMode") result(obs_keyMode)
   integer :: obs_keyMode	! Current obs key mode (see OBS_KEYMODE_? for available modes)
end function GetObsKeyMode
!*******************************************************************************



! Returs the satellite number associated with the input obsKey
function SatNumFrObsKey(obsKey) bind(C, name = "SatNumFrObsKey") result(satNum)
   integer :: satNum	! The satellite number associated with the input obsKey (satNum = -1 if obsKey doesn't exist)
   integer(8), value :: obsKey   ! The observation's unique key
end function SatNumFrObsKey
!*******************************************************************************



! Returs the sensor number associated with the input obsKey
function SenNumFrObsKey(obsKey) bind(C, name = "SenNumFrObsKey") result(senNum)
   integer :: senNum	! The satellite number associated with the input obsKey (senNum = -1 if obsKey doesn't exist)
   integer(8), value :: obsKey   ! The observation's unique key
end function SenNumFrObsKey
!*******************************************************************************



! Retrieves only obs that match the selection criteria
subroutine ObsGetSelected(xa_selob, order, numMatchedObss, obsKeys) bind(C, name = "ObsGetSelected")
   real(8), intent(in) :: xa_selob(128)   ! Obs secletion criteria, see XA_SELOB_? for array arrangement
   integer, value :: order   ! Specifies the order in which the obsKeys should be returned
   integer, intent(out) :: numMatchedObss   ! Number of obs that match the obs selection criteria
   integer(8), intent(out) :: obsKeys(*)   ! The array in which to store the matching obs' obsKey - make sure the array is big enough to store all the returning obsKeys (<= ObsGetCount())
end subroutine ObsGetSelected
!*******************************************************************************

end interface




   
   ! Equinox indicator
   integer, parameter :: &
      EQUINOX_OBSTIME = 0, &     ! time of observation
      EQUINOX_OBSYEAR = 1, &     ! time @ 0 Jan Year of Date
      EQUINOX_J2K     = 2, &     ! J2000
      EQUINOX_B1950   = 3;       ! B1950
      
   ! Indexes for sorting ob
   ! Sort options:
   ! (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
   ! (+/-) 2 = (descending/ascending) time, elevation
   ! (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
   ! (+/-) 4 = (descending/ascending) sensor, satno, time, elev
   ! (+/-) 5 = (descending/ascending) sensor, time, elevation
   ! (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
   ! (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
   ! (+/-)10 = (descending/ascending) satno, sensor, time     
      
   integer, parameter :: &
      SORT_TIMESENTYPEEL      =  1, & ! sort order is time, sensor, obsType, elev (negative value for reverse order)
      SORT_TIMEEL             =  2, & ! sort order is time, elevation (negative value for reverse order)
      SORT_TIMESENTYPEELSAT   =  3, & ! sort order is time, sensor, otype, el, satno (negative value for reverse order)
      SORT_SENSATTIMEEL       =  4, & ! sort order is sensor, satno, time, elev (negative value for reverse order)
      SORT_SENTIMEEL          =  5, & ! sort order is sensor, time, elevation (negative value for reverse order)
      SORT_SENSATTYPETIMEEL   =  6, & ! sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
      SORT_SATTIMESENTYPEEL   =  7, & ! sort order is satno, time, sensor, otype, el (negative value for reverse order)
      SORT_ORDERASREAD        =  8, & ! sort order is the order of obs when they were loaded 
      SORT_SATSENTIME         = 10;   ! sort order is satno, sensor, time (negative value for reverse order)    
      
      
   ! Indexes of different obs file format
   integer, parameter :: &
      OBSFORM_B3   = 0, & ! B3 obs format
      OBSFORM_TTY  = 1, & ! Transmission obs format
      OBSFORM_CSV  = 2, &  ! CSV obs format
      OBSFORM_RF   = 3;    ! Radio Frequency (TDOA/FDOA) observations
      
   integer, parameter :: BADOBSKEY = -1;   
   integer, parameter :: DUPOBSKEY = 0;
   
   
   ! Different key mode options for obsKey
   integer, parameter :: &
      OBS_KEYMODE_NODUP  = 0, &  ! Default - duplicate obs can not be loaded in binary tree                           
      OBS_KEYMODE_DMA    = 1;    ! Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)   
   
   ! CSV sigma type indicator
   integer, parameter :: CSVSIGMATYPE = 7;
   
   ! Indexes of Observation data fields
   integer, parameter :: &
      XF_OBS_SECCLASS     =  1, &   ! security classification
      XF_OBS_SATNUM       =  2, &   ! satellite number
      XF_OBS_SENNUM       =  3, &   ! sensor number
      XF_OBS_DS50UTC      =  4, &   ! observation time in days since 1950 UTC
      XF_OBS_ELEVATION    =  5, &   ! elevation (deg)
      XF_OBS_DECLINATION  =  6, &   ! declination (deg)
      XF_OBS_AZIMUTH      =  7, &   ! azimuth (deg)
      XF_OBS_RA           =  8, &   ! right-ascension (deg)
      XF_OBS_RANGE        =  9, &   ! range (km)
      XF_OBS_RANGERATE    = 10, &   ! range rate (km/s)
      XF_OBS_ELRATE       = 11, &   ! elevation rate (deg/s)
      XF_OBS_AZRATE       = 12, &   ! azimuth rate (deg/s)
      XF_OBS_RANGEACCEL   = 13, &   ! range acceleration (km/s^2)
      XF_OBS_OBSTYPE      = 14, &   ! observation type
      XF_OBS_TRACKIND     = 15, &   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
      XF_OBS_ASTAT        = 16, &   ! association status assigned by SPADOC
      XF_OBS_SITETAG      = 17, &   ! original satellite number
      XF_OBS_SPADOCTAG    = 18, &   ! SPADOC-asssigned tag number
      XF_OBS_POSE         = 19, &   ! position X/EFG (km)
      XF_OBS_POSF         = 20, &   ! position Y/EFG (km)
      XF_OBS_POSG         = 21, &   ! position Z/EFG (km)
      XF_OBS_POSX         = 22, &   ! position X/ECI (km)
      XF_OBS_POSY         = 23, &   ! position Y/ECI (km)
      XF_OBS_POSZ         = 24, &   ! position Z/ECI (km)
   
      XF_OBS_RCS_PP       = 25, &   ! Principal Polarization RCS
      XF_OBS_RCS_OP       = 26, &   ! Orthogonal Polarization RCS
      XF_OBS_RCS_PPS      = 27, &   ! Principal Polarization RCS sigma
      XF_OBS_RCS_OPS      = 28, &   ! Orthogonal Polarization RCS sigma
      XF_OBS_SNR          = 29, &   ! Radar Signal to Noise Ratio
      XF_OBS_BORE_AZ      = 30, &   ! Azimuth of Boresite
      XF_OBS_BORE_EL      = 31, &   ! Elevation of Boresite
      XF_OBS_VISMAG       = 32, &   ! Apparent Visual magnitude
      XF_OBS_VISMAG_NORM  = 33, &   ! GEO Normalized Visual magnitude
      XF_OBS_SOL_PHASE    = 34, &   ! Solar Phase Angle
      XF_OBS_FRAME        = 35, &   ! Frame Number
      XF_OBS_ABERRATION   = 36, &   ! Aberration correction indicator (0=YES, 1=NO)
      XF_OBS_ASTAT_METHOD = 37;     ! Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   
   ! Indexes of observation data in an array
   integer, parameter :: &
      XA_OBS_SECCLASS     =  0, &   ! security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
      XA_OBS_SATNUM       =  1, &   ! satellite number
      XA_OBS_SENNUM       =  2, &   ! sensor number
      XA_OBS_DS50UTC      =  3, &   ! observation time in days since 1950 UTC
      XA_OBS_OBSTYPE      = 11, &   ! observation type   
      
      
      XA_OBS_ELORDEC      =  4, &   ! elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
      XA_OBS_AZORRA       =  5, &   ! azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
      XA_OBS_RANGE        =  6, &   ! range (km)
      XA_OBS_RANGERATE    =  7, &   ! range rate (km/s) for non-optical obs type
      XA_OBS_ELRATE       =  8, &   ! elevation rate (deg/s)
      XA_OBS_AZRATE       =  9, &   ! azimuth rate (deg/s)
      XA_OBS_RANGEACCEL   = 10, &   ! range acceleration (km/s^2)
      XA_OBS_TRACKIND     = 12, &   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
      XA_OBS_ASTAT        = 13, &   ! association status assigned by SPADOC
      XA_OBS_SITETAG      = 14, &   ! original satellite number
      XA_OBS_SPADOCTAG    = 15, &   ! SPADOC-asssigned tag number
      XA_OBS_POSX         = 16, &   ! position X/ECI or X/EFG (km)
      XA_OBS_POSY         = 17, &   ! position Y/ECI or Y/EFG (km)
      XA_OBS_POSZ         = 18, &   ! position Z/ECI or Z/EFG (km)   
      XA_OBS_VELX         = 19, &   ! velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
      XA_OBS_VELY         = 20, &   ! velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
      XA_OBS_VELZ         = 21, &   ! velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
      XA_OBS_YROFEQNX     = 22, &   ! year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
      XA_OBS_ABERRATION   = 23, &   ! aberration indicator, 0-not corrected, 1-corrceted
   
      XA_OBS_AZORRABIAS   = 33, &   ! AZ/RA bias (deg)
      XA_OBS_ELORDECBIAS  = 34, &   ! EL/DEC bias (deg)
      XA_OBS_RGBIAS       = 35, &   ! Range bias (km)
      XA_OBS_RRBIAS       = 36, &   ! Range-rate bias (km/sec)
      XA_OBS_TIMEBIAS     = 37, &   ! Time bias (sec)
      XA_OBS_RAZORRABIAS  = 38, &   ! AZ/RA rate bias (deg/sec) 
      XA_OBS_RELORDECBIAS = 39, &   ! EL/DEC rate bias (deg/sec)
   
      XA_OBS_SIGMATYPE    = 40, &   ! individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
      XA_OBS_SIGMAEL1     = 41, &   ! sigma - covariance element 1 - 6 elemens - Az sigma
      XA_OBS_SIGMAEL2     = 42, &   ! sigma - covariance element 2 - 6 elemens - El sigma
      XA_OBS_SIGMAEL3     = 43, &   ! sigma - covariance element 3 - 6 elemens - Range sigma
      XA_OBS_SIGMAEL4     = 44, &   ! sigma - covariance element 4 - 6 elemens - Range rate sigma
      XA_OBS_SIGMAEL5     = 45, &   ! sigma - covariance element 5 - 6 elemens - Az rate sigma
      XA_OBS_SIGMAEL6     = 46, &   ! sigma - covariance element 6 - 6 elemens - El rate sigma
      XA_OBS_SIGMAEL7     = 47, &   ! sigma - covariance element 7 
      XA_OBS_SIGMAEL8     = 48, &   ! sigma - covariance element 8
      XA_OBS_SIGMAEL9     = 49, &   ! sigma - covariance element 9
      XA_OBS_SIGMAEL10    = 50, &   ! sigma - covariance element 10
      XA_OBS_SIGMAEL11    = 51, &   ! sigma - covariance element 11
      XA_OBS_SIGMAEL12    = 52, &   ! sigma - covariance element 12
      XA_OBS_SIGMAEL13    = 53, &   ! sigma - covariance element 13
      XA_OBS_SIGMAEL14    = 54, &   ! sigma - covariance element 14
      XA_OBS_SIGMAEL15    = 55, &   ! sigma - covariance element 15
      XA_OBS_SIGMAEL16    = 56, &   ! sigma - covariance element 16
      XA_OBS_SIGMAEL17    = 57, &   ! sigma - covariance element 17
      XA_OBS_SIGMAEL18    = 58, &   ! sigma - covariance element 18
      XA_OBS_SIGMAEL19    = 59, &   ! sigma - covariance element 19
      XA_OBS_SIGMAEL20    = 60, &   ! sigma - covariance element 20
      XA_OBS_SIGMAEL21    = 61, &   ! sigma - covariance element 21
   
      XA_OBS_SIZE         = 64;
      
   ! Indexes of observation data in an array (Obs Type CSV specific)
   integer, parameter :: &
      XA_OTCSV_SECCLASS     =  0, &   ! security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
      XA_OTCSV_SATNUM       =  1, &   ! satellite number
      XA_OTCSV_SENNUM       =  2, &   ! sensor number
      XA_OTCSV_DS50UTC      =  3, &   ! observation time in days since 1950 UTC
      XA_OTCSV_ELORDEC      =  4, &   ! elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
      XA_OTCSV_AZORRA       =  5, &   ! azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
      XA_OTCSV_RANGE        =  6, &   ! range (km)
      XA_OTCSV_RANGERATE    =  7, &   ! range rate (km/s) for non-optical obs type
      XA_OTCSV_ELRATE       =  8, &   ! elevation rate (deg/s)
      XA_OTCSV_AZRATE       =  9, &   ! azimuth rate (deg/s)
      XA_OTCSV_RANGEACCEL   = 10, &   ! range acceleration (km/s^2)
      XA_OTCSV_OBSTYPE      = 11, &   ! observation type   
      XA_OTCSV_TRACKIND     = 12, &   ! track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
      XA_OTCSV_ASTAT        = 13, &   ! association status assigned by SPADOC
      XA_OTCSV_SITETAG      = 14, &   ! original satellite number
      XA_OTCSV_SPADOCTAG    = 15, &   ! SPADOC-asssigned tag number
      XA_OTCSV_POSX         = 16, &   ! position X/ECI or X/EFG (km)
      XA_OTCSV_POSY         = 17, &   ! position Y/ECI or Y/EFG (km)
      XA_OTCSV_POSZ         = 18, &   ! position Z/ECI or Z/EFG (km)   
      XA_OTCSV_VELX         = 19, &   ! velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
      XA_OTCSV_VELY         = 20, &   ! velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
      XA_OTCSV_VELZ         = 21, &   ! velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
      XA_OTCSV_YROFEQNX     = 22, &   ! year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   
      XA_OTCSV_RCS_PP       = 23, &   ! Principal Polarization RCS
      XA_OTCSV_RCS_OP       = 24, &   ! Orthogonal Polarization RCS
      XA_OTCSV_RCS_PPS      = 25, &   ! Principal Polarization RCS sigma
      XA_OTCSV_RCS_OPS      = 26, &   ! Orthogonal Polarization RCS sigma
      XA_OTCSV_SNR          = 27, &   ! Radar Signal to Noise Ratio
      XA_OTCSV_BORE_AZ      = 28, &   ! Azimuth of Boresite
      XA_OTCSV_BORE_EL      = 29, &   ! Elevation of Boresite
      XA_OTCSV_VISMAG       = 30, &   ! Apparent Visual magnitude
      XA_OTCSV_VISMAG_NORM  = 31, &   ! GEO Normalized Visual magnitude
      XA_OTCSV_SOL_PHASE    = 32, &   ! Solar Phase Angle
      XA_OTCSV_FRAME        = 33, &   ! Frame Number
      XA_OTCSV_ABERRATION   = 34, &   ! Aberration correction indicator (0=YES, 1=NO)
      XA_OTCSV_ASTAT_METHOD = 35, &   ! 0 = ROTAS, 1 = TRACK
      
      XA_OTCSV_SIGMATYPE    = 40, &   ! must equal to 7 to signify this is CSV format
      XA_OTCSV_SIGMAEL1     = 41, &   ! sigma - covariance element 1 - Az sigma
      XA_OTCSV_SIGMAEL2     = 42, &   ! sigma - covariance element 2 - El sigma
      XA_OTCSV_SIGMAEL3     = 43, &   ! sigma - covariance element 3 - Range sigma
      XA_OTCSV_SIGMAEL4     = 44, &   ! sigma - covariance element 4 - Range rate sigma
      XA_OTCSV_SIGMAEL5     = 45, &   ! sigma - covariance element 5 - Az rate sigma
      XA_OTCSV_SIGMAEL6     = 46, &   ! sigma - covariance element 6 - El rate sigma
      XA_OTCSV_SIGMAEL7     = 47, &   ! sigma - covariance element 7 - Time sigma 
      XA_OTCSV_BIAS1        = 48, &   ! AZ/RA bias
      XA_OTCSV_BIAS2        = 49, &   ! EL/DEC bias
      XA_OTCSV_BIAS3        = 50, &   ! Range bias
      XA_OTCSV_BIAS4        = 51, &   ! Range-rate bias
      XA_OTCSV_BIAS5        = 52, &   ! Time bias
   
      
      XA_OTCSV_SIZE         = 64;   
      
   ! Indexes of observation data in an array
   integer, parameter :: &
      XA_OBSTATE_SATNUM       =  0, &   ! satellite number
      XA_OBSTATE_SENNUM       =  1, &   ! sensor number
      XA_OBSTATE_DS50UTC      =  2, &   ! observation time in days since 1950 UTC
      
      XA_OBSTATE_POSX         = 10, &   ! position X/ECI (km)
      XA_OBSTATE_POSY         = 11, &   ! position Y/ECI (km)
      XA_OBSTATE_POSZ         = 12, &   ! position Z/ECI (km)   
      XA_OBSTATE_VELX         = 13, &   ! velocity X/ECI (km/s)
      XA_OBSTATE_VELY         = 14, &   ! velocity Y/ECI (km/s)
      XA_OBSTATE_VELZ         = 15, &   ! velocity Z/ECI (km/s)   
      XA_OBSTATE_LAT          = 16, &   ! geodetic latitude (deg)
      XA_OBSTATE_LON          = 17, &   ! geodetic longitude (deg)
      XA_OBSTATE_HGHT         = 18, &   ! geodetic height (km)   
      XA_OBSTATE_POSE         = 19, &   ! position X/EFG (km)
      XA_OBSTATE_POSF         = 20, &   ! position Y/EFG (km)   
      XA_OBSTATE_POSG         = 21, &   ! position Z/EFG (km)
   
      
      XA_OBSTATE_SIZE         = 64;   
      
   ! Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   ! All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   integer, parameter :: &   
      XA_OT0_RANGERATE =  7, &   ! range rate (km/s)  
     
      XA_OT1_ELEVATION =  4, &   ! elevation (deg)
      XA_OT1_AZIMUTH   =  5, &   ! azimuth (deg)
   
      XA_OT2_ELEVATION =  4, &   ! elevation (deg)
      XA_OT2_AZIMUTH   =  5, &   ! azimuth (deg)
      XA_OT2_RANGE     =  6, &   ! range (km)
   
      XA_OT3_ELEVATION =  4, &   ! elevation (deg)
      XA_OT3_AZIMUTH   =  5, &   ! azimuth (deg)
      XA_OT3_RANGE     =  6, &   ! range (km)
      XA_OT3_RANGERATE =  7, &   ! range rate (km/s) 
   
      XA_OT4_ELEVATION =  4, &   ! elevation (deg)
      XA_OT4_AZIMUTH   =  5, &   ! azimuth (deg)
      XA_OT4_RANGE     =  6, &   ! range (km)
      XA_OT4_RANGERATE =  7, &   ! range rate (km/s) 
      XA_OT4_ELRATE    =  8, &   ! elevation rate (deg/s)
      XA_OT4_AZRATE    =  9, &   ! azimuth rate (deg/s)
      XA_OT4_RANGEACCEL= 10, &   ! range acceleration (km/s^2)
   
      XA_OT5_DECL      =  4, &   ! declination (deg)
      XA_OT5_RIGHTASC  =  5, &   ! right ascesion (deg)
      XA_OT5_YROFEQNX  = 22, &   ! year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
      XA_OT5_ABERRATION= 23, &   ! ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   
      XA_OT6_RANGE     =  6, &   ! range (km)
   
      XA_OT8_ELEVATION =  4, &   ! elevation (deg)
      XA_OT8_AZIMUTH   =  5, &   ! azimuth (deg)
      XA_OT8_RANGE     =  6, &   ! optional - range (km)
      XA_OT8_POSE      = 16, &   ! orbiting sensor position X/EFG (km)
      XA_OT8_POSF      = 17, &   ! orbiting sensor position Y/EFG (km)
      XA_OT8_POSG      = 18, &   ! orbiting sensor position Z/EFG (km)   
   
      XA_OT9_DECL      =  4, &   ! declination (deg)
      XA_OT9_RIGHTASC  =  5, &   ! right ascesion (deg)
      XA_OT9_RANGE     =  6, &   ! optional - range (km)
      XA_OT9_POSE      = 16, &   ! orbiting sensor position X/EFG (km)
      XA_OT9_POSF      = 17, &   ! orbiting sensor position Y/EFG (km)
      XA_OT9_POSG      = 18, &   ! orbiting sensor position Z/EFG (km)   
      XA_OT9_YROFEQNX  = 22, &   ! year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)  
      XA_OT9_ABERRATION= 23, &   ! ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   
      XA_OTP_POSX      = 16, &   ! position X/ECI or X/EFG (km)
      XA_OTP_POSY      = 17, &   ! position Y/ECI or Y/EFG (km)
      XA_OTP_POSZ      = 18, &   ! position Z/ECI or Z/EFG (km)   
      
      XA_OTV_POSX      = 16, &   ! position X/ECI or X/EFG (km)
      XA_OTV_POSY      = 17, &   ! position Y/ECI or Y/EFG (km)
      XA_OTV_POSZ      = 18, &   ! position Z/ECI or Z/EFG (km)   
      XA_OTV_VELX      = 19, &   ! velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
      XA_OTV_VELY      = 20, &   ! velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
      XA_OTV_VELZ      = 21, &   ! velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
      
      XA_OT_SIZE         = 64;   
   
   ! Obs selection criteria
   integer, parameter :: &
      XA_SELOB_MODE        =  0,    &   ! Seclection mode (unused for now)
         
      XA_SELOB_FRTIME      =  1,    &   ! From time
      XA_SELOB_TOTIME      =  2,    &   ! To time 
      
      XA_SELOB_FRIDX       =  3,    &   ! From time
      XA_SELOB_TOIDX       =  4,    &   ! To time 
         
      XA_SELOB_SAT1        = 11,    &   ! Select any obs that match this satellite number #1
      XA_SELOB_SAT2        = 12,    &   ! Select any obs that match this satellite number #2
      XA_SELOB_SAT3        = 13,    &   ! Select any obs that match this satellite number #3
      XA_SELOB_SAT4        = 14,    &   ! Select any obs that match this satellite number #4
      XA_SELOB_SAT5        = 15,    &   ! Select any obs that match this satellite number #5
      XA_SELOB_SAT6        = 16,    &   ! Select any obs that match this satellite number #6
      XA_SELOB_SAT7        = 17,    &   ! Select any obs that match this satellite number #7
      XA_SELOB_SAT8        = 18,    &   ! Select any obs that match this satellite number #8
      XA_SELOB_SAT9        = 19,    &   ! Select any obs that match this satellite number #9
      XA_SELOB_SAT10       = 20,    &   ! Select any obs that match this satellite number #10
         
      XA_SELOB_SEN1        = 21,    &   ! Select any obs that are obtained by this sensor site #1
      XA_SELOB_SEN2        = 22,    &   ! Select any obs that are obtained by this sensor site #2
      XA_SELOB_SEN3        = 23,    &   ! Select any obs that are obtained by this sensor site #3
      XA_SELOB_SEN4        = 24,    &   ! Select any obs that are obtained by this sensor site #4
      XA_SELOB_SEN5        = 25,    &   ! Select any obs that are obtained by this sensor site #5
      XA_SELOB_SEN6        = 26,    &   ! Select any obs that are obtained by this sensor site #6
      XA_SELOB_SEN7        = 27,    &   ! Select any obs that are obtained by this sensor site #7
      XA_SELOB_SEN8        = 28,    &   ! Select any obs that are obtained by this sensor site #8
      XA_SELOB_SEN9        = 29,    &   ! Select any obs that are obtained by this sensor site #9
      XA_SELOB_SEN10       = 30,    &   ! Select any obs that are obtained by this sensor site #10
         
      XA_SELOB_OT1         = 31,    &   ! Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
      XA_SELOB_OT2         = 32,    &   ! Select any obs that match this obs type #2
      XA_SELOB_OT3         = 33,    &   ! Select any obs that match this obs type #3
      XA_SELOB_OT4         = 34,    &   ! Select any obs that match this obs type #4
      XA_SELOB_OT5         = 35,    &   ! Select any obs that match this obs type #5
      XA_SELOB_OT6         = 36,    &   ! Select any obs that match this obs type #6
      XA_SELOB_OT7         = 37,    &   ! Select any obs that match this obs type #7
      XA_SELOB_OT8         = 38,    &   ! Select any obs that match this obs type #8
      XA_SELOB_OT9         = 39,    &   ! Select any obs that match this obs type #9
      XA_SELOB_OT10        = 40,    &   ! Select any obs that match this obs type #10
         
      XA_SELOB_FRAZ        = 41,    &   ! From azimuth
      XA_SELOB_TOAZ        = 42,    &   ! To azimuth
      XA_SELOB_FREL        = 43,    &   ! From elevation 
      XA_SELOB_TOEL        = 44,    &   ! To elevation
      XA_SELOB_FRRA        = 45,    &   ! From right ascension
      XA_SELOB_TORA        = 46,    &   ! To right ascension
      XA_SELOB_FRDEC       = 47,    &   ! From declincation
      XA_SELOB_TODEC       = 48,    &   ! To declination
      XA_SELOB_FRRNG       = 49,    &   ! From range
      XA_SELOB_TORNG       = 50,    &   ! To range
      XA_SELOB_FRRNGRT     = 51,    &   ! From range rate
      XA_SELOB_TORNGRT     = 52,    &   ! To range rate
      XA_SELOB_FRAZRT      = 53,    &   ! From azimuth rate
      XA_SELOB_TOAZRT      = 54,    &   ! To azimuth rate
      XA_SELOB_FRELRT      = 55,    &   ! From elevation rate
      XA_SELOB_TOELRT      = 56,    &   ! To elevation rate
      XA_SELOB_FRASTAT     = 57,    &   ! From ASTAT (0 to 4)
      XA_SELOB_TOASTAT     = 58,    &   ! To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   
      XA_SELOB_SIZE        = 128;
   
   
end module ObsDll
! ========================= End of auto generated code ==========================
