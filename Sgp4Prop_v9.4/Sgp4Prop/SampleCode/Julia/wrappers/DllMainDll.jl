# This wrapper file was generated automatically by the GenDllWrappers program.
module DllMainDll

if Sys.iswindows()
  libname="DllMain"
else
  libname="libdllmain"
end

# Export Constant Variables
export LOGMSGLEN
export FILEPATHLEN
export GETSETSTRLEN
export INFOSTRLEN
export INPUTCARDLEN
export ELTTYPE_TLE_SGP
export ELTTYPE_TLE_SGP4
export ELTTYPE_TLE_SP
export ELTTYPE_SPVEC_B1P
export ELTTYPE_VCM
export ELTTYPE_EXTEPH
export ELTTYPE_TLE_XP
export PROPTYPE_GP
export PROPTYPE_SP
export PROPTYPE_X
export PROPTYPE_UK
export BADSATKEY
export DUPSATKEY
export BADKEY
export DUPKEY
export IDX_ORDER_ASC
export IDX_ORDER_DES
export IDX_ORDER_READ
export IDX_ORDER_QUICK
export ALL_KEYMODE_NODUP
export ALL_KEYMODE_DMA
export ELSET_KEYMODE_NODUP
export ELSET_KEYMODE_DMA
export DUPKEY_ZERO
export DUPKEY_ACTUAL
export TIME_IS_MSE
export TIME_IS_TAI
export TIME_IS_UTC

# Export Functions
export DllMainInit
export DllMainGetInfo
export DllMainLoadFile
export OpenLogFile
export CloseLogFile
export LogMessage
export GetLastErrMsg
export GetLastInfoMsg
export GetInitDllNames
export TestInterface
export TestInterface2
export TestInterface3
export GetMOICData
export SetElsetKeyMode
export GetElsetKeyMode
export SetAllKeyMode
export GetAllKeyMode
export ResetAllKeyMode
export SetDupKeyMode
export GetDupKeyMode

# log message string length
const  LOGMSGLEN = 128;

# DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
const  FILEPATHLEN = 512;

# DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
const  GETSETSTRLEN = 512;

const  INFOSTRLEN = 128;

# DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
const  INPUTCARDLEN = 512;

# Different orbital element types
# Element type - SGP Tle type 0
const ELTTYPE_TLE_SGP   = 1;

# Element type - SGP4 Tle type 2
const ELTTYPE_TLE_SGP4  = 2;

# Element type - SP Tle type 6
const ELTTYPE_TLE_SP    = 3;

# Element type - SP Vector
const ELTTYPE_SPVEC_B1P = 4;

# Element type - VCM
const ELTTYPE_VCM       = 5;

# Element type - External ephemeris
const ELTTYPE_EXTEPH    = 6;

# Element type - SGP Tle type 4 - XP
const ELTTYPE_TLE_XP    = 7;


#*******************************************************************************

# Propagation types
# GP/SGP4/SGP4-XP propagator
const PROPTYPE_GP  = 1;

# SP propagator
const PROPTYPE_SP  = 2;

# External ephemeris
const PROPTYPE_X   = 3;

# Unknown
const PROPTYPE_UK  = 4;

#*******************************************************************************

# Add sat error
# Bad satellite key
const BADSATKEY = -1;

# Duplicate satellite key
const DUPSATKEY =  0;


#*******************************************************************************

# satellite/observation/sensor key possible errors
# Bad (satellite/observation/sensor) key
const BADKEY = -1;

# Duplicate (satellite/observation/sensor) key
const DUPKEY =  0;


#*******************************************************************************

# Options used in GetLoaded()
# ascending order
const IDX_ORDER_ASC   = 0;

# descending order
const IDX_ORDER_DES   = 1;

# order as read
const IDX_ORDER_READ  = 2;

# tree traversal order
const IDX_ORDER_QUICK = 9;


#*******************************************************************************

# Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
# Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
const ALL_KEYMODE_NODUP  = 0;

# Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
const ALL_KEYMODE_DMA    = 1;


#*******************************************************************************


# Different key mode options for elset satKey
# Default - duplicate elsets can not be loaded in binary tree
const ELSET_KEYMODE_NODUP  = 0;

# Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
const ELSET_KEYMODE_DMA    = 1;


#*******************************************************************************

# Different duplication key mode options (apply to non DMA mode only)
# Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
const DUPKEY_ZERO   = 0;

# Return actual (satellite/sensor/obs) key regardless of the key/data duplication
const DUPKEY_ACTUAL = 1;


#*******************************************************************************


# Input time is in minutes since epoch
const TIME_IS_MSE = 1;

# Input time is in days since 1950 TAI
const TIME_IS_TAI = 2;

# Input time is in days since 1950 UTC
const TIME_IS_UTC = 3;


#*******************************************************************************


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes DllMain program (host of Astro Standards libraries) for use in any Astro Standards applications
function DllMainInit()
   apAddr = ccall( (:DllMainInit,libname) 
     , Int64
     , ())
   return apAddr
end

#############################################################################
# Returns information about the DllMain DLL. 
# The returned string provides information about the version number, build date, and the platform. 
function DllMainGetInfo()
   infoStr = " "^128
   ccall( (:DllMainGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads DllMain-related parameters (AS_MOIC) from a text file
function DllMainLoadFile(dllMainFile)
   errCode = ccall( (:DllMainLoadFile,libname) 
     , Int32
     , (Cstring,)
     , dllMainFile)
   return errCode
end

#############################################################################
# Opens a log file and enables the writing of diagnostic information into it. 
# All of the DLLs in the library will write diagnostic information into the log file once this function has been called.
# If the file specified by logFileName already exists, its contents are erased.
# 
# Enabling logging can potentially result in large amounts of diagnostic information being generated, which can lead to large amounts of storage being consumed as well as performance decreases. For this reason, it is recommended that this function only be used for debugging purposes.
function OpenLogFile(fileName)
   errCode = ccall( (:OpenLogFile,libname) 
     , Int32
     , (Cstring,)
     , fileName)
   return errCode
end

#############################################################################
# Closes the currently open log file and reset the last logged error message to null. 
# Remember to close the log file before exiting the program.
function CloseLogFile()
   ccall( (:CloseLogFile,libname) 
     , Nothing
     , ())
end

#############################################################################
# Writes a message into the log file.
# Make sure the log file is open by calling OpenLogFile before using this function.
# 
# The message is limited to 128 characters. If the message is longer than this, it will be truncated.
function LogMessage(msgStr)
   ccall( (:LogMessage,libname) 
     , Nothing
     , (Cstring,)
     , msgStr)
end

#############################################################################
# Returns a character string describing the last error that occurred. 
# As a common practice, this function is called to retrieve the error message when an error occurs.
# 
# This function works with or without an opened log file.
# 
# If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
function GetLastErrMsg()
   lastErrMsg = " "^128
   ccall( (:GetLastErrMsg,libname) 
     , Nothing
     , (Cstring,)
     , lastErrMsg)
   return lastErrMsg
end

#############################################################################
# Returns a character string describing the last informational message that was recorded. 
# This function is usually called right after space objects (TLEs, VCMs, sensors, observations, etc.) in an input text file were loaded. It gives information about how many records were successfully loaded, how many were bad, and how many were duplicated.
# 
# This function works with or without an opened log file.
# 
# If you call this function before you have called DllMainInit(), the function will return an invalid string. This could result in undefined behavior.
# This function provides a quick way to check whether all of the prerequisite DLLs have been loaded and initialized correctly. Improper initialization of the Standardized Astrodynamic Algorithms DLLs is one of the most common causes of program crashes.
function GetLastInfoMsg()
   lastInfoMsg = " "^128
   ccall( (:GetLastInfoMsg,libname) 
     , Nothing
     , (Cstring,)
     , lastInfoMsg)
   return lastInfoMsg
end

#############################################################################
# Notes: This function has been deprecated since v9.0. 
# Returns a list of names of the Standardized Astrodynamic Algorithms DLLs that were initialized successfully.
function GetInitDllNames()
   initDllNames = " "^512
   ccall( (:GetInitDllNames,libname) 
     , Nothing
     , (Cstring,)
     , initDllNames)
   return initDllNames
end

#############################################################################
# Tests different input/output data types that are supported by the Astrodynamic Standards library.
function TestInterface(cIn, intIn, longIn, realIn, strIn, int1DIn, long1DIn, real1DIn, int2DIn, long2DIn, real2DIn)
   if typeof(int1DIn) == Array{Int64,1}; int1DIn=convert(Array{Int32,1},int1DIn); end
   if typeof(int2DIn) == Array{Int64,2}; int2DIn=convert(Array{Int32,2},int2DIn); end
   cOut = " "
   intOut = zeros(Int32, 1)
   longOut = zeros(Int64, 1)
   realOut = zeros(Float64, 1)
   strOut = " "^512
   int1DOut = zeros(Int32, 3)
   long1DOut = zeros(Int64, 3)
   real1DOut = zeros(Float64, 3)
   int2DOut = zeros(Int32, 3, 2)
   long2DOut = zeros(Int64, 3, 2)
   real2DOut = zeros(Float64, 3, 2)
   ccall( (:TestInterface,libname) 
     , Nothing
     , (Cchar
     , Cstring
     , Int32
     , Ref{Int32}
     , Int64
     , Ref{Int64}
     , Float64
     , Ref{Float64}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Int64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Int64}
     , Ref{Float64}
     , Ref{Float64})
     , cIn[1],cOut,intIn,intOut,longIn,longOut,realIn,realOut,strIn,
         strOut,int1DIn,int1DOut,long1DIn,long1DOut,real1DIn,real1DOut,int2DIn,int2DOut,long2DIn,
         long2DOut,real2DIn,real2DOut)
   return cOut, Int64(intOut[1]), longOut[1], realOut[1], strOut, convert(Array{Int64,1}, int1DOut), long1DOut, real1DOut, convert(Array{Int64,2}, int2DOut), 
         long2DOut, real2DOut
end

#############################################################################
# Tests different input/output data types that are supported by the Astrodynamic Standards library.
function TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut)
   strInOut = string(strInOut," "^(512-length(strInOut)))
   if typeof(int1DInOut) == Array{Int64,1}; int1DInOut=convert(Array{Int32,1},int1DInOut); end
   if typeof(int2DInOut) == Array{Int64,2}; int2DInOut=convert(Array{Int32,2},int2DInOut); end
   ccall( (:TestInterface2,libname) 
     , Nothing
     , (Cstring
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Float64})
     , cInOut,intInOut,longInOut,realInOut,strInOut,int1DInOut,long1DInOut,real1DInOut,int2DInOut,
         long2DInOut,real2DInOut)
   return cInOut, Int64(intInOut[1]), longInOut[1], realInOut[1], strInOut, convert(Array{Int64,1}, int1DInOut), long1DInOut, real1DInOut, convert(Array{Int64,2}, int2DInOut), 
         long2DInOut, real2DInOut
end

#############################################################################
# Tests input and output arrays with unknown length that are supported by the Astrodynamic Standards library.
function TestInterface3(unk1DIn, size_unk1DOut, unk2DIn, size_unk2DOut)
   if typeof(unk1DIn) == Array{Int64,1}; unk1DIn=convert(Array{Int32,1},unk1DIn); end
   if typeof(unk2DIn) == Array{Int64,2}; unk2DIn=convert(Array{Int32,2},unk2DIn); end
   unk1DOut = zeros(Int32, size_unk1DOut)
   unk2DOut = zeros(Int32, 3, size_unk2DOut)
   ccall( (:TestInterface3,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32})
     , unk1DIn,unk1DOut,unk2DIn,unk2DOut)
   return convert(Array{Int64,1}, unk1DOut), convert(Array{Int64,2}, unk2DOut)
end

#############################################################################
# Returns data parsed from user's AS_MOIC-typed input card - up to 128 fields are allowed.
function GetMOICData(arrSize, size_xa_moic)
   xa_moic = zeros(Float64, size_xa_moic)
   ccall( (:GetMOICData,libname) 
     , Nothing
     , (Int32
     , Ref{Float64})
     , arrSize,xa_moic)
   return xa_moic
end

#############################################################################
# Sets ELSET key mode
# This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ON" -
# and is currently calling any of these methods: DllMainLoadFile(), TleLoadFile(), SpVecLoadFile(), or VcmLoadFile()
function SetElsetKeyMode(elset_keyMode)
   errCode = ccall( (:SetElsetKeyMode,libname) 
     , Int32
     , (Int32,)
     , elset_keyMode)
   return errCode
end

#############################################################################
# Gets current ELSET key mode
function GetElsetKeyMode()
   elset_keyMode = ccall( (:GetElsetKeyMode,libname) 
     , Int32
     , ())
   return elset_keyMode
end

#############################################################################
# Sets key mode for ALL (elsets/obs/sensors). This takes precedence over individual elset/obs/sensor key mode
# This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_ALL_ON"
function SetAllKeyMode(all_keyMode)
   errCode = ccall( (:SetAllKeyMode,libname) 
     , Int32
     , (Int32,)
     , all_keyMode)
   return errCode
end

#############################################################################
# Gets current ALL (elsets/obs/sensors) key mode
function GetAllKeyMode()
   all_keyMode = ccall( (:GetAllKeyMode,libname) 
     , Int32
     , ())
   return all_keyMode
end

#############################################################################
# Resets ALL (elsets/obs/sensors) key mode to its default value which then allows individual elsets/obs/sensors to use their own key mode settings.
# Also reset DUPLICATION key mode to its default value.
function ResetAllKeyMode()
   ccall( (:ResetAllKeyMode,libname) 
     , Nothing
     , ())
end

#############################################################################
# Sets DUPLICATION key mode - change the default behavior of returning a key which already exists in memory: zero versus actual value
function SetDupKeyMode(dupKeyMode)
   errCode = ccall( (:SetDupKeyMode,libname) 
     , Int32
     , (Int32,)
     , dupKeyMode)
   return errCode
end

#############################################################################
# Gets current DUPLICATION key mode
function GetDupKeyMode()
   dupKeyMode = ccall( (:GetDupKeyMode,libname) 
     , Int32
     , ())
   return dupKeyMode
end

#############################################################################

end #of module DllMainDll
# ========================= End of auto generated code ==========================
