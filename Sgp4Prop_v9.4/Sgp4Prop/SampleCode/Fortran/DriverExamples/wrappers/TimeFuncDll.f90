! This wrapper file was generated automatically by the GenDllWrappers program.
module TimeFuncDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes the TimeFunc DLL for use in the program. 
! If this function returns an error, it is recommended that you stop the program immediately.
! 
! An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function TimeFuncInit(apAddr) bind(C, name = "TimeFuncInit") result(errCode)
   integer :: errCode	! Returns zero indicating the TimeFunc DLL has been initialized successfully. Other values indicate an error.
   integer(8), value :: apAddr   ! The pointer that was returned from DllMain.DllMainInit
end function TimeFuncInit
!*******************************************************************************



! Returns the information about the TimeFunc DLL.  The information is placed in the string parameter you pass in.
! The returned string provides information about the version number, build date, and the platform of the TimeFunc DLL.
subroutine TimeFuncGetInfo(infoStr) bind(C, name = "TimeFuncGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about TimeFunc.dll.
end subroutine TimeFuncGetInfo
!*******************************************************************************



! Loads timing constants data from an input file.
! Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
! 
! The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
! 
! The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
! See the "Time Constants Data Description" section in the accompanying TimeFunc documentation file for supported formats.
function TConLoadFile(tconFile) bind(C, name = "TConLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file has been loaded successfully, non-0 if error.
   character, intent(in) :: tconFile(512)   ! The name of the file from which to read timing constants data.
end function TConLoadFile
!*******************************************************************************



! Loads timing constants data and prediction control (6P-card) from an input file.
! Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
! 
! The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
! 
! The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
function TimeFuncLoadFile(tconFile) bind(C, name = "TimeFuncLoadFile") result(errCode)
   integer :: errCode	! 0 if the input file is loaded successfully, non-0 if there is an error.
   character, intent(in) :: tconFile(512)   ! The name of the file from which to read timing constants data and/or prediction control data.
end function TimeFuncLoadFile
!*******************************************************************************



! Checks to see if timing constants have been loaded into memory.
! The timing constants can be loaded from a timing constants file or from VCM(s).  See TConLoadFile, TConAddOne, and TConAddARec functions.
function IsTConFileLoaded() bind(C, name = "IsTConFileLoaded") result(isFileLoaded)
   integer :: isFileLoaded	! 1 if timing constants data have been loaded, 0 if not.
end function IsTConFileLoaded
!*******************************************************************************



! Saves currently loaded timing constants data to a file.
! The data will be saved in the format specified by the form parameter, regardless of the format or method originally used to load it.
function TConSaveFile(tconFile, saveMode, saveForm) bind(C, name = "TConSaveFile") result(errCode)
   integer :: errCode	! 0 if the data is successfully saved to the file, non-0 if there is an error.
   character, intent(in) :: tconFile(512)   ! The name of the file in which to save the timing constants data.
   integer, value :: saveMode   ! Specifies whether to create a new file or append to an existing one. (0 = Create new file, 1= Append to existing file)
   integer, value :: saveForm   ! Specifies the format in which to save the file. (0 = SPECTER Print Record format, 1 = XML format (future implementation))
end function TConSaveFile
!*******************************************************************************



! Adds a timing constant record to memory. Note that this function is solely for backward compatible with legacy software.
! Notes: only the latest timing record is stored in memory using this method. Input timing record will be skipped/ignored if it's earlier than the existing one
! The users should use TConLoadFile or TimeFuncLoadFile to load timing constants file instead.
function TConAddARec(refDs50UTC, leapDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY) &
bind(C, name = "TConAddARec") result(errCode)
   integer :: errCode	! 0 if the timing constants record is successfully added to memory, non-0 if there is an error.
   real(8), value :: refDs50UTC   ! Reference time (days since 1950, UTC)
   real(8), value :: leapDs50UTC   ! Leap Second time (days since 1950, UTC)
   real(8), value :: taiMinusUTC   ! TAI minus UTC offset at the reference time (seconds)
   real(8), value :: ut1MinusUTC   ! UT1 minus UTC offset at the reference time (seconds)
   real(8), value :: ut1Rate   ! UT1 rate of change versus UTC at the reference time (msec/day)
   real(8), value :: polarX   ! Polar wander (X direction) at the reference time (arc-seconds)
   real(8), value :: polarY   ! Polar wander (Y direction) at the reference time (arc-seconds)
end function TConAddARec
!*******************************************************************************



! Adds one timing constant record to memory. This API can be used to avoid TConLoadFile's file I/O
function TConAddOne(refDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY) bind(C, name = "TConAddOne") result(errCode)
   integer :: errCode	! 0 if the timing constants record is successfully added to memory, non-0 if there is an error.
   real(8), value :: refDs50UTC   ! Reference time (days since 1950, UTC)
   real(8), value :: taiMinusUTC   ! TAI minus UTC offset at the reference time (seconds)
   real(8), value :: ut1MinusUTC   ! UT1 minus UTC offset at the reference time (seconds)
   real(8), value :: ut1Rate   ! UT1 rate of change versus UTC at the reference time (msec/day)
   real(8), value :: polarX   ! Polar wander (X direction) at the reference time (arc-seconds)
   real(8), value :: polarY   ! Polar wander (Y direction) at the reference time (arc-seconds)
end function TConAddOne
!*******************************************************************************



! Retrieves the timing constants record, if exists, at the requested input time in ds50UTC.
! If the requested record is not found, 0's will be returned for all of the constants. You can use this fact to determine whether the record was found or not. Simply check the taiMinusUTC value after calling this function. Since that value can never be 0 for a valid record, if it is 0 the record was not found.
subroutine UTCToTConRec(ds50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY) bind(C, name = "UTCToTConRec")
   real(8), value :: ds50UTC   ! Input days since 1950, UTC
   real(8), intent(out) :: taiMinusUTC   ! Returned TAI minus UTC offset at requested time (seconds)
   real(8), intent(out) :: ut1MinusUTC   ! Returned UT1 minus UTC offset at requested time (seconds)
   real(8), intent(out) :: ut1Rate   ! Returned UT1 rate of change versus UTC at Reference time (msec/day)
   real(8), intent(out) :: polarX   ! Returned interpolated polar wander (X direction) at requested time (arc-seconds)
   real(8), intent(out) :: polarY   ! Returned interpolated polar wander (Y direction) at requested time (arc-seconds)
end subroutine UTCToTConRec
!*******************************************************************************



! Removes all the timing constants records in memory.
function TConRemoveAll() bind(C, name = "TConRemoveAll") result(errCode)
   integer :: errCode	! 0 if all timing constants records are successfully removed from memory, non-0 if there is an error.
end function TConRemoveAll
!*******************************************************************************



! Converts an internal time in ds50UTC to a string in DTG20 format. The resulting string takes the form "YYYY/DDD HHMM SS.SSS".
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001 0000 00.000".
subroutine UTCToDTG20(ds50UTC, dtg20) bind(C, name = "UTCToDTG20")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   character, intent(out) :: dtg20(20)   ! A string to hold the result of the conversion.
end subroutine UTCToDTG20
!*******************************************************************************



! Converts a time in ds50UTC to a time in DTG19 format. The resulting string takes the form "YYYYMonDDHHMMSS.SSS".
! See "UTCToDTG20" for an example.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956Jan01000000.000".
! Note, the return value is in the DTG19 format "YYYYMonDDHHMMSS.SSS", not the "YY DDD HH MM SS.SSS" format.
subroutine UTCToDTG19(ds50UTC, dtg19) bind(C, name = "UTCToDTG19")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   character, intent(out) :: dtg19(19)   ! A string to hold the result of the conversion.
end subroutine UTCToDTG19
!*******************************************************************************



! Converts a time in ds50UTC to a time in DTG17 format. The resulting string takes the form "YYYY/DDD.DDDDDDDD" format.
! See "UTCToDTG20" for an example.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001.00000000".
subroutine UTCToDTG17(ds50UTC, dtg17) bind(C, name = "UTCToDTG17")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   character, intent(out) :: dtg17(17)   ! A string to hold the result of the conversion.
end subroutine UTCToDTG17
!*******************************************************************************



! Converts a time in ds50UTC to a time in DTG15 format. The resulting string takes the form "YYDDDHHMMSS.SSS".
! See "UTCToDTG20" for an example.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "56001000000.000".
subroutine UTCToDTG15(ds50UTC, dtg15) bind(C, name = "UTCToDTG15")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   character, intent(out) :: dtg15(15)   ! A string to hold the result of the conversion.
end subroutine UTCToDTG15
!*******************************************************************************



! Converts a time in one of the DTG formats to a time in ds50UTC. DTG15, DTG17, DTG19, and DTG20 formats are accepted.
! See "UTCToDTG20" for an example.
! During the conversion, this function processes only numbers and the '.' character. This means that you can format dtgStr in a format that makes sense. You can use spaces and the '/' character for example if you wish.
! 
! The function can process dates from 1950 to 2049. Any input outside this range will yield "0.0".
! This function supports DTG19 inputs in both "YY DDD HH MM SS.SSS" and "YYYYMonDDHHMMSS.SSS" formats.
function DTGToUTC(dtg) bind(C, name = "DTGToUTC") result(ds50UTC)
   real(8) :: ds50UTC	! The number of days since 1950, UTC. Partial days may be returned.
   character, intent(in) :: dtg(20)   ! The string to convert. Can be any of the DTG formats previously documented.
end function DTGToUTC
!*******************************************************************************



! Converts a time in ds50UTC to a time in ds50TAI using timing constants records in memory. 
! If no timing constants records were loaded, ds50UTC and ds50TAI are the same.
! Partial days may be returned.
function UTCToTAI(ds50UTC) bind(C, name = "UTCToTAI") result(ds50TAI)
   real(8) :: ds50TAI	! The number of days since 1950, TAI. Partial days may be returned.
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
end function UTCToTAI
!*******************************************************************************



! Converts a time in ds50UTC to a time in ds50UT1 using timing constants records in memory. 
! If no timing constants records were loaded, ds50UTC and ds50UT1 are the same. 
! Partial days may be returned.
function UTCToUT1(ds50UTC) bind(C, name = "UTCToUT1") result(ds50UT1)
   real(8) :: ds50UT1	! The number of days since 1950, UT1. Partial days may be returned.
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
end function UTCToUT1
!*******************************************************************************



! Converts a time in ds50UTC to a time in ds50ET (Ephemeris Time/Terrestrial Time) using timing constants records in memory. 
function UTCToET(ds50UTC) bind(C, name = "UTCToET") result(ds50ET)
   real(8) :: ds50ET	! The number of days since 1950, ET (Ephemeris Time/Terrestrial Time). Partial days may be returned.
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
end function UTCToET
!*******************************************************************************



! Converts a time in ds50TAI to a time in ds50UTC using timing constants records in memory. 
! If no timing constants records were loaded, ds50TAI and ds50UTC are the same. 
! Partial days may be returned.
function TAIToUTC(ds50TAI) bind(C, name = "TAIToUTC") result(ds50UTC)
   real(8) :: ds50UTC	! The number of Days since 1950, UTC. Partial days may be returned.
   real(8), value :: ds50TAI   ! Days since 1950, TAI to be converted.
end function TAIToUTC
!*******************************************************************************



! Converts a time in ds50TAI to a time in ds50UT1 using timing constants records in memory. 
! If no timing constants records were loaded, ds50TAI and ds50UT1 are the same. 
! Partial days may be returned.
function TAIToUT1(ds50TAI) bind(C, name = "TAIToUT1") result(ds50UT1)
   real(8) :: ds50UT1	! The number of days since 1950, UT1. Partial days may be returned.
   real(8), value :: ds50TAI   ! Days since 1950, TAI to be converted.
end function TAIToUT1
!*******************************************************************************



! Converts a year and a number of days to a time in ds50UTC. 
! Partial days may be returned.
function YrDaysToUTC(year, dayOfYear) bind(C, name = "YrDaysToUTC") result(ds50UTC)
   real(8) :: ds50UTC	! The number of days since 1950, UTC. Partial days may be returned.
   integer, value :: year   ! Two or four digit years are accepted.
   real(8), value :: dayOfYear   ! The day of year. Partial days can be specified.
end function YrDaysToUTC
!*******************************************************************************



! Converts a time in ds50UTC to a year and day of year.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield Year=1956, Day=1.0.
subroutine UTCToYrDays(ds50UTC, year, dayOfYear) bind(C, name = "UTCToYrDays")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   integer, intent(out) :: year   ! A reference to a variable in which to place the 4-digit year.
   real(8), intent(out) :: dayOfYear   ! A reference to a variable in which to place the day of year. Partial days may be expressed in this variable.
end subroutine UTCToYrDays
!*******************************************************************************



! Converts a set of time components (year, day of year, hour, minute, second) to a time in ds50UTC. 
! Partial days may be returned.
! See "TimeComps2ToUTC" for a function which takes a month and day instead of a day of year value.
function TimeComps1ToUTC(year, dayOfYear, hh, mm, sss) bind(C, name = "TimeComps1ToUTC") result(ds50UTC)
   real(8) :: ds50UTC	! The number of Days since 1950, UTC. Partial days may be returned.
   integer, value :: year   ! Two or four digit years are accepted.
   integer, value :: dayOfYear   ! The day of year, expressed as a whole number.
   integer, value :: hh   ! The hour.
   integer, value :: mm   ! The minute.
   real(8), value :: sss   ! The second, including partial seconds if desired.
end function TimeComps1ToUTC
!*******************************************************************************



! Converts a time in ds50UTC to its individual components (year, day of year, hour, minute, second).
! See "TimeComps1ToUTC" for an example.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
subroutine UTCToTimeComps1(ds50UTC, year, dayOfYear, hh, mm, sss) bind(C, name = "UTCToTimeComps1")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   integer, intent(out) :: year   ! A reference to a variable in which to store the 4-digit year.
   integer, intent(out) :: dayOfYear   ! A reference to a variable in which to store the day of year.
   integer, intent(out) :: hh   ! A reference to a variable in which to store the hour.
   integer, intent(out) :: mm   ! A reference to a variable in which to store the minute.
   real(8), intent(out) :: sss   ! A reference to a variable in which to store the second. Partial seconds may be expressed if necessary.
end subroutine UTCToTimeComps1
!*******************************************************************************



! Converts a set of time components (year, month, day of month, hour, minute, second) to a time in ds50UTC. 
! Partial days may be returned.
! See "TimeComps1ToUTC" for a function which takes a day of year value instead of a month and day.
function TimeComps2ToUTC(year, mon, dayOfMonth, hh, mm, sss) bind(C, name = "TimeComps2ToUTC") result(ds50UTC)
   real(8) :: ds50UTC	! The number of Days since 1950, UTC. Partial days may be returned.
   integer, value :: year   ! Two or four digit years are accepted.
   integer, value :: mon   ! The month.
   integer, value :: dayOfMonth   ! The day of the month.
   integer, value :: hh   ! The hour.
   integer, value :: mm   ! The minute.
   real(8), value :: sss   ! The second.
end function TimeComps2ToUTC
!*******************************************************************************



! Converts a time in ds50UTC to its individual components (year, month, day of month, hour, minute, second).
! See "TimeComps1ToUTC" for an example.
! The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
subroutine UTCToTimeComps2(ds50UTC, year, month, dayOfMonth, hh, mm, sss) bind(C, name = "UTCToTimeComps2")
   real(8), value :: ds50UTC   ! Days since 1950, UTC to be converted.
   integer, intent(out) :: year   ! A reference to a variable in which to store the 4-digit year.
   integer, intent(out) :: month   ! A reference to a variable in which to store the month.
   integer, intent(out) :: dayOfMonth   ! A reference to a variable in which to store the day of the month.
   integer, intent(out) :: hh   ! A reference to a variable in which to store the hour.
   integer, intent(out) :: mm   ! A reference to a variable in which to store the minute.
   real(8), intent(out) :: sss   ! A reference to a variable in which to store the second. Partial seconds may be expressed if necessary.
end subroutine UTCToTimeComps2
!*******************************************************************************



! Computes right ascension of Greenwich at the specified time in ds50UT1. 
! The Fk constants as you currently have them set up in EnvConst.dll are used.
! EnvConst.dll is not marked as a direct dependency of TimeFunc.dll. However, it obviously must be loaded in order to be able to use this function since you must first obtain a handle via the EnvGetFkPtr() function.
function ThetaGrnwch(ds50UT1, lenvFk) bind(C, name = "ThetaGrnwch") result(thetaG)
   real(8) :: thetaG	! Right ascension of Greenwich in radians at the specified time.
   real(8), value :: ds50UT1   ! Input days since 1950, UT1.
   integer(8), value :: lenvFk   ! A handle to the FK data. Use the value returned from EnvGetFkPtr(), located in EnvConst.dll.
end function ThetaGrnwch
!*******************************************************************************



! Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fourth Fundamental Catalogue (FK4).
! There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
function ThetaGrnwchFK4(ds50UT1) bind(C, name = "ThetaGrnwchFK4") result(thetaG)
   real(8) :: thetaG	! Right ascension of Greenwich in radians at the specified time using FK4.
   real(8), value :: ds50UT1   ! Days since 1950, UT1.
end function ThetaGrnwchFK4
!*******************************************************************************



! Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fifth Fundamental Catalogue (FK5).
! There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
function ThetaGrnwchFK5(ds50UT1) bind(C, name = "ThetaGrnwchFK5") result(thetaG)
   real(8) :: thetaG	! Right ascension of Greenwich in radians at the specified time using FK5.
   real(8), value :: ds50UT1   ! Input days since 1950, UT1.
end function ThetaGrnwchFK5
!*******************************************************************************



! This function is intended for future use.  No information is currently available.
! This function is intended for future use.  No information is currently available.
subroutine TimeConvFrTo(funcIdx, frArr, toArr) bind(C, name = "TimeConvFrTo")
   integer, value :: funcIdx   ! Input function index
   real(8), intent(in) :: frArr(*)   ! Input
   real(8), intent(out) :: toArr(*)   ! Output
end subroutine TimeConvFrTo
!*******************************************************************************



! Returns prediction control parameters. The parameters are placed in the reference variables passed to this function.
subroutine Get6P(startFrEpoch, stopFrEpoch, startTime, stopTime, interval) bind(C, name = "Get6P")
   integer, intent(out) :: startFrEpoch   ! Indicates whether startTime is expressed in minutes since epoch. (startFrEpoch = 1: startTime is in minutes since epoch, startFrEpoch = 0: startTime is in days since 1950, UTC)
   integer, intent(out) :: stopFrEpoch   ! Indicates whether stopTime is expressed in minutes since epoch. (stopFrEpoch = 1: stopTime is in minutes since epoch, stopFrEpoch = 0: stopTime is in days since 1950, UTC)
   real(8), intent(out) :: startTime   ! The start time. Depending on the value of startFrEpoch, start time can be expressed in minutes since epoch or days since 1950, UTC.
   real(8), intent(out) :: stopTime   ! The stop time. Depending on the value of stopFrEpoch, stop time can be expressed in minutes since epoch or days since 1950, UTC.
   real(8), intent(out) :: interval   ! The Step size (min).
end subroutine Get6P
!*******************************************************************************



! Sets prediction control parameters.
subroutine Set6P(startFrEpoch, stopFrEpoch, startTime, stopTime, interval) bind(C, name = "Set6P")
   integer, value :: startFrEpoch   ! Indicates whether startTime is expressed in minutes since epoch. (startFrEpoch = 1: Value of startTime is in minutes since epoch, startFrEpoch = 0: Value of startTime is in days since 1950, UTC)
   integer, value :: stopFrEpoch   ! Indicates whether stopTime is expressed in minutes since epoch. (stopFrEpoch = 1: Value of stopTime is in minutes since epoch, stopFrEpoch = 0: Value of stopTime is in days since 1950, UTC)
   real(8), value :: startTime   ! Start time.
   real(8), value :: stopTime   ! Stop time.
   real(8), value :: interval   ! Step size (min).
end subroutine Set6P
!*******************************************************************************



! Returns current prediction control parameters in form of a 6P-Card string.
subroutine Get6PCardLine(card6PLine) bind(C, name = "Get6PCardLine")
   character, intent(out) :: card6PLine(512)   ! The resulting 6P-Card string.
end subroutine Get6PCardLine
!*******************************************************************************



! Returns the time span of the loaded timing constants - the earliest and latest of loaded timing constant records
subroutine TConTimeSpan(numOfRecs, frTimeDs50UTC, toTimeDs50UTC) bind(C, name = "TConTimeSpan")
   integer, intent(out) :: numOfRecs   ! Number of timing constants records loaded in memory (zero if timing constants aren't loaded)
   real(8), intent(out) :: frTimeDs50UTC   ! The time, in days since 1950 UTC,  of the earliest timing constant record loaded in memory (zero if timing constants aren't loaded)
   real(8), intent(out) :: toTimeDs50UTC   ! The time, in days since 1950 UTC,  of the latest timing constant record loaded in memory (zero if timing constants aren't loaded)
end subroutine TConTimeSpan
!*******************************************************************************

end interface




end module TimeFuncDll
! ========================= End of auto generated code ==========================
