! This wrapper file was generated automatically by the GenDllWrappers program.
module DllMainDll
implicit none

interface


! Notes: This function has been deprecated since v9.0. 
! Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
function DllMainInit() bind(C, name = "DllMainInit") result(apAddr)
   integer(8) :: apAddr	! A handle to the global data set. You will pass this handle to other initialization functions within other DLLs in the API.
end function DllMainInit
!*******************************************************************************



! Returns information about the DllMain DLL. 
! The returned string provides information about the version number, build date, and the platform. 
subroutine DllMainGetInfo(infoStr) bind(C, name = "DllMainGetInfo")
   character, intent(out) :: infoStr(128)   ! A string to hold the information about DllMain.dll.
end subroutine DllMainGetInfo
!*******************************************************************************



! Loads DllMain-related parameters (AS_MOIC) from a text file
function DllMainLoadFile(dllMainFile) bind(C, name = "DllMainLoadFile") result(errCode)
   integer :: errCode	! Returns zero indicating the input file has been loaded successfully. Other values indicate an error.
   character, intent(in) :: dllMainFile(512)   ! The name of the input file.
end function DllMainLoadFile
!*******************************************************************************



! Opens a log file and enables the writing of diagnostic information into it. 
! All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
! If the file specified by logFileName already exists, its contents are erased.
! 
! Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
function OpenLogFile(fileName) bind(C, name = "OpenLogFile") result(errCode)
   integer :: errCode	! 0 if the file was opened successfully. Other values indicate an error.
   character, intent(in) :: fileName(512)   ! The name of the log file to use.
end function OpenLogFile
!*******************************************************************************



! Closes the currently open log file and reset the last logged error message to null. 
! Remember to close the log file before exiting the program.
subroutine CloseLogFile() bind(C, name = "CloseLogFile")
end subroutine CloseLogFile
!*******************************************************************************



! Writes a message into the log file.
! Make sure the log file is open by calling OpenLogFile before using this function.
! 
! The message is limited to 128 characters. If the message is longer than this, it will be truncated.
subroutine LogMessage(msgStr) bind(C, name = "LogMessage")
   character, intent(in) :: msgStr(128)   ! A message to be written into the log file.
end subroutine LogMessage
!*******************************************************************************



! Returns a character string describing the last error that occurred. 
! As a common practice, this function is called to retrieve the error message when an error occurs.
! 
! This function works with or without an opened log file.
! 
! If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
subroutine GetLastErrMsg(lastErrMsg) bind(C, name = "GetLastErrMsg")
   character, intent(out) :: lastErrMsg(128)   ! A string that stores the last logged error message. The message will be placed in the string you pass to this function.
end subroutine GetLastErrMsg
!*******************************************************************************



! Returns a character string describing the last informational message that was recorded. 
! This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
! 
! This function works with or without an opened log file.
! 
! If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
! This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
subroutine GetLastInfoMsg(lastInfoMsg) bind(C, name = "GetLastInfoMsg")
   character, intent(out) :: lastInfoMsg(128)   ! A string that stores the last logged informational message. The message will be placed in the string you pass to this function.
end subroutine GetLastInfoMsg
!*******************************************************************************



! Notes: This function has been deprecated since v9.0. 
! Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
subroutine GetInitDllNames(initDllNames) bind(C, name = "GetInitDllNames")
   character, intent(out) :: initDllNames(512)   ! A string that stores names of the DLLs that were initialized successfully.
end subroutine GetInitDllNames
!*******************************************************************************



! Tests different input/output data types that are supported by the Astrodynamic Standards library.
subroutine TestInterface(cIn, cOut, intIn, intOut, longIn, longOut, realIn, realOut, strIn, strOut, int1DIn, int1DOut, long1DIn, &
long1DOut, real1DIn, real1DOut, int2DIn, int2DOut, long2DIn, long2DOut, real2DIn, real2DOut) bind(C, name = "TestInterface")
   character, value :: cIn   ! an input character
   character, intent(out) :: cOut   ! an output character - should return the same value as the input cIn
   integer, value :: intIn   ! an input 32-bit integer
   integer, intent(out) :: intOut   ! an output 32-bit integer - should return the same value as the input intIn
   integer(8), value :: longIn   ! an input 64-bit integer
   integer(8), intent(out) :: longOut   ! an output 64-bit integer - should return the same value as the input longIn
   real(8), value :: realIn   ! an input 64-bit real
   real(8), intent(out) :: realOut   ! an output 64-bit real - should return the same value as the input realIn
   character, intent(in) :: strIn(512)   ! input string
   character, intent(out) :: strOut(512)   ! output string - should return the same value as the input strIn
   integer, intent(in) :: int1DIn(3)   ! an input array of 32-bit integers
   integer, intent(out) :: int1DOut(3)   ! an output array of 32-bit integers - should return the same values as the input int1DIn
   integer(8), intent(in) :: long1DIn(3)   ! an input array of 64-bit integers
   integer(8), intent(out) :: long1DOut(3)   ! an output array of 64-bit integers - should return the same values as the input long1DIn
   real(8), intent(in) :: real1DIn(3)   ! an input array of 64-bit reals
   real(8), intent(out) :: real1DOut(3)   ! an output array of 64-bit reals - should return the same values as the input real1DIn
   integer, intent(in) :: int2DIn(3, 2)   ! an input 2D-array of 32-bit integers (2 rows, 3 columns) - for column-major order language, reverse the order
   integer, intent(out) :: int2DOut(3, 2)   ! an output 2D-array of 32-bit integers - should return the same values as the input int2DIn
   integer(8), intent(in) :: long2DIn(3, 2)   ! an input 2D-array of 64-bit integers (2 rows, 3 columns) - for column-major order language, reverse the order
   integer(8), intent(out) :: long2DOut(3, 2)   ! an output 2D-array of 64-bit integers - should return the same values as the input long2DIn
   real(8), intent(in) :: real2DIn(3, 2)   ! an input 2D-array of 64-bit reals (2 rows, 3 columns) - for column-major order language, reverse the order
   real(8), intent(out) :: real2DOut(3, 2)   ! an output 2D-array of 64-bit reals - should return the same values as the input real2DIn
end subroutine TestInterface
!*******************************************************************************



! Tests different input/output data types that are supported by the Astrodynamic Standards library.
subroutine TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, &
long2DInOut, real2DInOut) bind(C, name = "TestInterface2")
   character, intent(inout) :: cInOut   ! Output should return 'Z'
   integer, intent(inout) :: intInOut   ! Output should return Input + 1
   integer(8), intent(inout) :: longInOut   ! Output should return Input + 2
   real(8), intent(inout) :: realInOut   ! Output should return Input + 42.123456
   character, intent(inout) :: strInOut(512)   ! Output should return "It doesn't matter what your string was."
   integer, intent(inout) :: int1DInOut(3)   ! Output should return Input + 1
   integer(8), intent(inout) :: long1DInOut(3)   ! Output should return Input + 1234567890123456789
   real(8), intent(inout) :: real1DInOut(3)   ! Output should return Input + 42.0
   integer, intent(inout) :: int2DInOut(3, 2)   ! Output should return Input + 1
   integer(8), intent(inout) :: long2DInOut(3, 2)   ! Output should return Input + 6
   real(8), intent(inout) :: real2DInOut(3, 2)   ! Output should return Input + 7.6
end subroutine TestInterface2
!*******************************************************************************



! Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
subroutine TestInterface3(unk1DIn, unk1DOut, unk2DIn, unk2DOut) bind(C, name = "TestInterface3")
   integer, intent(in) :: unk1DIn(*)   ! Unknown dimension should be length (3)
   integer, intent(out) :: unk1DOut(*)   ! Unknown dimension should be length (3), unk1DOut should return same as unk1DIn * 4
   integer, intent(in) :: unk2DIn(3, *)   ! Unknown dimension should be length (2)
   integer, intent(out) :: unk2DOut(3, *)   ! Unknown dimension should be length (2), unk2DOut should return same as unk2DIn * 5
end subroutine TestInterface3
!*******************************************************************************



! Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
subroutine GetMOICData(arrSize, xa_moic) bind(C, name = "GetMOICData")
   integer, value :: arrSize   ! size of the xa_moc array - actual number of fields the user enters in an "AS_MOIC" input card
   real(8), intent(out) :: xa_moic(*)   ! The returning xa_moc array
end subroutine GetMOICData
!*******************************************************************************



! Sets ELSET key mode
! This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
! and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
function SetElsetKeyMode(elset_keyMode) bind(C, name = "SetElsetKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: elset_keyMode   ! Desired elset key mode (see ELSET_KEYMODE_? for available modes)
end function SetElsetKeyMode
!*******************************************************************************



! Gets current ELSET key mode
function GetElsetKeyMode() bind(C, name = "GetElsetKeyMode") result(elset_keyMode)
   integer :: elset_keyMode	! Current elset key mode (see ELSET_KEYMODE_? for available modes)
end function GetElsetKeyMode
!*******************************************************************************



! Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
! This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
function SetAllKeyMode(all_keyMode) bind(C, name = "SetAllKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: all_keyMode   ! Desired elset key mode (see ALL_KEYMODE_? for available modes)
end function SetAllKeyMode
!*******************************************************************************



! Gets current ALL (elsets/obs/sensors) key mode
function GetAllKeyMode() bind(C, name = "GetAllKeyMode") result(all_keyMode)
   integer :: all_keyMode	! Current elset key mode (see ALL_KEYMODE_? for available modes)
end function GetAllKeyMode
!*******************************************************************************



! Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
! Also reset DUPLICATION key mode to its default value.
subroutine ResetAllKeyMode() bind(C, name = "ResetAllKeyMode")
end subroutine ResetAllKeyMode
!*******************************************************************************



! Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
function SetDupKeyMode(dupKeyMode) bind(C, name = "SetDupKeyMode") result(errCode)
   integer :: errCode	! 0 if the set is successful, non-0 if there is an error.
   integer, value :: dupKeyMode   ! Desired duplication key mode (see DUPKEY_? for available modes)
end function SetDupKeyMode
!*******************************************************************************



! Gets current DUPLICATION key mode
function GetDupKeyMode() bind(C, name = "GetDupKeyMode") result(dupKeyMode)
   integer :: dupKeyMode	! Current duplication key mode (see DUPKEY_? for available modes)
end function GetDupKeyMode
!*******************************************************************************

end interface




   
   ! log message string length
   integer, parameter :: LOGMSGLEN = 128;   
   
   ! DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
   integer, parameter :: FILEPATHLEN = 512;
   
   ! DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
   integer, parameter :: GETSETSTRLEN = 512;
   
   integer, parameter :: INFOSTRLEN = 128;
   
   ! DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
   integer, parameter :: INPUTCARDLEN = 512;
   
   ! Different orbital element types 
   integer, parameter :: &
      ELTTYPE_TLE_SGP   = 1, &  ! Element type - SGP Tle type 0
      ELTTYPE_TLE_SGP4  = 2, &  ! Element type - SGP4 Tle type 2
      ELTTYPE_TLE_SP    = 3, &  ! Element type - SP Tle type 6
      ELTTYPE_SPVEC_B1P = 4, &  ! Element type - SP Vector
      ELTTYPE_VCM       = 5, &  ! Element type - VCM
      ELTTYPE_EXTEPH    = 6, &  ! Element type - External ephemeris
      ELTTYPE_TLE_XP    = 7;    ! Element type - SGP Tle type 4 - XP
   
   !*******************************************************************************
   
   ! Propagation types
   integer, parameter :: &
      PROPTYPE_GP  = 1, &     ! GP/SGP4/SGP4-XP propagator
      PROPTYPE_SP  = 2, &     ! SP propagator
      PROPTYPE_X   = 3, &     ! External ephemeris
      PROPTYPE_UK  = 4;       ! Unknown
   !*******************************************************************************
   
   ! Add sat error 
   integer, parameter :: &
      BADSATKEY = -1, &    ! Bad satellite key
      DUPSATKEY =  0;      ! Duplicate satellite key
   
   !*******************************************************************************
   
   ! satellite/observation/sensor key possible errors
   integer, parameter :: &
      BADKEY = -1, &    ! Bad (satellite/observation/sensor) key
      DUPKEY =  0;      ! Duplicate (satellite/observation/sensor) key
   
   !*******************************************************************************
   
   ! Options used in GetLoaded()   
   integer, parameter :: &
      IDX_ORDER_ASC   = 0, &  ! ascending order
      IDX_ORDER_DES   = 1, &  ! descending order
      IDX_ORDER_READ  = 2, &  ! order as read
      IDX_ORDER_QUICK = 9;    ! tree traversal order
   
   !*******************************************************************************
   
   ! Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
   integer, parameter :: &
      ALL_KEYMODE_NODUP  = 0, &  ! Default - duplicate elsets/observations/sensors can not be loaded in their binary trees                           
      ALL_KEYMODE_DMA    = 1;    ! Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
      
   !*******************************************************************************
   
      
   ! Different key mode options for elset satKey
   integer, parameter :: &
      ELSET_KEYMODE_NODUP  = 0, &  ! Default - duplicate elsets can not be loaded in binary tree                           
      ELSET_KEYMODE_DMA    = 1;    ! Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
      
   !*******************************************************************************
      
   ! Different duplication key mode options (apply to non DMA mode only)
   integer, parameter :: &
      DUPKEY_ZERO   = 0, &  ! Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
      DUPKEY_ACTUAL = 1;    ! Return actual (satellite/sensor/obs) key regardless of the key/data duplication
      
   !*******************************************************************************
   
      
   integer, parameter :: &
      TIME_IS_MSE = 1, &   ! Input time is in minutes since epoch 
      TIME_IS_TAI = 2, &   ! Input time is in days since 1950 TAI
      TIME_IS_UTC = 3;     ! Input time is in days since 1950 UTC
      
   !*******************************************************************************   
      
end module DllMainDll
! ========================= End of auto generated code ==========================
