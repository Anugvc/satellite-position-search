# This wrapper file was generated automatically by the GenDllWrappers program.
module TimeFuncDll

if Sys.iswindows()
  libname="TimeFunc"
else
  libname="libtimefunc"
end

# Export Constant Variables

# Export Functions
export TimeFuncInit
export TimeFuncGetInfo
export TConLoadFile
export TimeFuncLoadFile
export IsTConFileLoaded
export TConSaveFile
export TConAddARec
export TConAddOne
export UTCToTConRec
export TConRemoveAll
export UTCToDTG20
export UTCToDTG19
export UTCToDTG17
export UTCToDTG15
export DTGToUTC
export UTCToTAI
export UTCToUT1
export UTCToET
export TAIToUTC
export TAIToUT1
export YrDaysToUTC
export UTCToYrDays
export TimeComps1ToUTC
export UTCToTimeComps1
export TimeComps2ToUTC
export UTCToTimeComps2
export ThetaGrnwch
export ThetaGrnwchFK4
export ThetaGrnwchFK5
export TimeConvFrTo
export Get6P
export Set6P
export Get6PCardLine
export TConTimeSpan

#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes the TimeFunc DLL for use in the program. 
# If this function returns an error, it is recommended that you stop the program immediately.
# 
# An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
function TimeFuncInit(apAddr)
   errCode = ccall( (:TimeFuncInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns the information about the TimeFunc DLL.  The information is placed in the string parameter you pass in.
# The returned string provides information about the version number, build date, and the platform of the TimeFunc DLL.
function TimeFuncGetInfo()
   infoStr = " "^128
   ccall( (:TimeFuncGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads timing constants data from an input file.
# Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
# 
# The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
# 
# The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
# See the "Time Constants Data Description" section in the accompanying TimeFunc documentation file for supported formats.
function TConLoadFile(tconFile)
   errCode = ccall( (:TConLoadFile,libname) 
     , Int32
     , (Cstring,)
     , tconFile)
   return errCode
end

#############################################################################
# Loads timing constants data and prediction control (6P-card) from an input file.
# Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
# 
# The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
# 
# The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
function TimeFuncLoadFile(tconFile)
   errCode = ccall( (:TimeFuncLoadFile,libname) 
     , Int32
     , (Cstring,)
     , tconFile)
   return errCode
end

#############################################################################
# Checks to see if timing constants have been loaded into memory.
# The timing constants can be loaded from a timing constants file or from VCM(s).  See TConLoadFile, TConAddOne, and TConAddARec functions.
function IsTConFileLoaded()
   isFileLoaded = ccall( (:IsTConFileLoaded,libname) 
     , Int32
     , ())
   return isFileLoaded
end

#############################################################################
# Saves currently loaded timing constants data to a file.
# The data will be saved in the format specified by the form parameter, regardless of the format or method originally used to load it.
function TConSaveFile(tconFile, saveMode, saveForm)
   errCode = ccall( (:TConSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , tconFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Adds a timing constant record to memory. Note that this function is solely for backward compatible with legacy software.
# Notes: only the latest timing record is stored in memory using this method. Input timing record will be skipped/ignored if it's earlier than the existing one
# The users should use TConLoadFile or TimeFuncLoadFile to load timing constants file instead.
function TConAddARec(refDs50UTC, leapDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY)
   errCode = ccall( (:TConAddARec,libname) 
     , Int32
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64)
     , refDs50UTC,leapDs50UTC,taiMinusUTC,ut1MinusUTC,ut1Rate,polarX,polarY)
   return errCode
end

#############################################################################
# Adds one timing constant record to memory. This API can be used to avoid TConLoadFile's file I/O
function TConAddOne(refDs50UTC, taiMinusUTC, ut1MinusUTC, ut1Rate, polarX, polarY)
   errCode = ccall( (:TConAddOne,libname) 
     , Int32
     , (Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64)
     , refDs50UTC,taiMinusUTC,ut1MinusUTC,ut1Rate,polarX,polarY)
   return errCode
end

#############################################################################
# Retrieves the timing constants record, if exists, at the requested input time in ds50UTC.
# If the requested record is not found, 0's will be returned for all of the constants. You can use this fact to determine whether the record was found or not. Simply check the taiMinusUTC value after calling this function. Since that value can never be 0 for a valid record, if it is 0 the record was not found.
function UTCToTConRec(ds50UTC)
   taiMinusUTC = zeros(Float64, 1)
   ut1MinusUTC = zeros(Float64, 1)
   ut1Rate = zeros(Float64, 1)
   polarX = zeros(Float64, 1)
   polarY = zeros(Float64, 1)
   ccall( (:UTCToTConRec,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50UTC,taiMinusUTC,ut1MinusUTC,ut1Rate,polarX,polarY)
   return taiMinusUTC[1], ut1MinusUTC[1], ut1Rate[1], polarX[1], polarY[1]
end

#############################################################################
# Removes all the timing constants records in memory.
function TConRemoveAll()
   errCode = ccall( (:TConRemoveAll,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Converts an internal time in ds50UTC to a string in DTG20 format. The resulting string takes the form "YYYY/DDD HHMM SS.SSS".
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001 0000 00.000".
function UTCToDTG20(ds50UTC)
   dtg20 = " "^20
   ccall( (:UTCToDTG20,libname) 
     , Nothing
     , (Float64
     , Cstring)
     , ds50UTC,dtg20)
   return dtg20
end

#############################################################################
# Converts a time in ds50UTC to a time in DTG19 format. The resulting string takes the form "YYYYMonDDHHMMSS.SSS".
# See "UTCToDTG20" for an example.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956Jan01000000.000".
# Note, the return value is in the DTG19 format "YYYYMonDDHHMMSS.SSS", not the "YY DDD HH MM SS.SSS" format.
function UTCToDTG19(ds50UTC)
   dtg19 = " "^19
   ccall( (:UTCToDTG19,libname) 
     , Nothing
     , (Float64
     , Cstring)
     , ds50UTC,dtg19)
   return dtg19
end

#############################################################################
# Converts a time in ds50UTC to a time in DTG17 format. The resulting string takes the form "YYYY/DDD.DDDDDDDD" format.
# See "UTCToDTG20" for an example.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001.00000000".
function UTCToDTG17(ds50UTC)
   dtg17 = " "^17
   ccall( (:UTCToDTG17,libname) 
     , Nothing
     , (Float64
     , Cstring)
     , ds50UTC,dtg17)
   return dtg17
end

#############################################################################
# Converts a time in ds50UTC to a time in DTG15 format. The resulting string takes the form "YYDDDHHMMSS.SSS".
# See "UTCToDTG20" for an example.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "56001000000.000".
function UTCToDTG15(ds50UTC)
   dtg15 = " "^15
   ccall( (:UTCToDTG15,libname) 
     , Nothing
     , (Float64
     , Cstring)
     , ds50UTC,dtg15)
   return dtg15
end

#############################################################################
# Converts a time in one of the DTG formats to a time in ds50UTC. DTG15, DTG17, DTG19, and DTG20 formats are accepted.
# See "UTCToDTG20" for an example.
# During the conversion, this function processes only numbers and the '.' character. This means that you can format dtgStr in a format that makes sense. You can use spaces and the '/' character for example if you wish.
# 
# The function can process dates from 1950 to 2049. Any input outside this range will yield "0.0".
# This function supports DTG19 inputs in both "YY DDD HH MM SS.SSS" and "YYYYMonDDHHMMSS.SSS" formats.
function DTGToUTC(dtg)
   ds50UTC = ccall( (:DTGToUTC,libname) 
     , Float64
     , (Cstring,)
     , dtg)
   return ds50UTC
end

#############################################################################
# Converts a time in ds50UTC to a time in ds50TAI using timing constants records in memory. 
# If no timing constants records were loaded, ds50UTC and ds50TAI are the same.
# Partial days may be returned.
function UTCToTAI(ds50UTC)
   ds50TAI = ccall( (:UTCToTAI,libname) 
     , Float64
     , (Float64,)
     , ds50UTC)
   return ds50TAI
end

#############################################################################
# Converts a time in ds50UTC to a time in ds50UT1 using timing constants records in memory. 
# If no timing constants records were loaded, ds50UTC and ds50UT1 are the same. 
# Partial days may be returned.
function UTCToUT1(ds50UTC)
   ds50UT1 = ccall( (:UTCToUT1,libname) 
     , Float64
     , (Float64,)
     , ds50UTC)
   return ds50UT1
end

#############################################################################
# Converts a time in ds50UTC to a time in ds50ET (Ephemeris Time/Terrestrial Time) using timing constants records in memory. 
function UTCToET(ds50UTC)
   ds50ET = ccall( (:UTCToET,libname) 
     , Float64
     , (Float64,)
     , ds50UTC)
   return ds50ET
end

#############################################################################
# Converts a time in ds50TAI to a time in ds50UTC using timing constants records in memory. 
# If no timing constants records were loaded, ds50TAI and ds50UTC are the same. 
# Partial days may be returned.
function TAIToUTC(ds50TAI)
   ds50UTC = ccall( (:TAIToUTC,libname) 
     , Float64
     , (Float64,)
     , ds50TAI)
   return ds50UTC
end

#############################################################################
# Converts a time in ds50TAI to a time in ds50UT1 using timing constants records in memory. 
# If no timing constants records were loaded, ds50TAI and ds50UT1 are the same. 
# Partial days may be returned.
function TAIToUT1(ds50TAI)
   ds50UT1 = ccall( (:TAIToUT1,libname) 
     , Float64
     , (Float64,)
     , ds50TAI)
   return ds50UT1
end

#############################################################################
# Converts a year and a number of days to a time in ds50UTC. 
# Partial days may be returned.
function YrDaysToUTC(year, dayOfYear)
   ds50UTC = ccall( (:YrDaysToUTC,libname) 
     , Float64
     , (Int32
     , Float64)
     , year,dayOfYear)
   return ds50UTC
end

#############################################################################
# Converts a time in ds50UTC to a year and day of year.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield Year=1956, Day=1.0.
function UTCToYrDays(ds50UTC)
   year = zeros(Int32, 1)
   dayOfYear = zeros(Float64, 1)
   ccall( (:UTCToYrDays,libname) 
     , Nothing
     , (Float64
     , Ref{Int32}
     , Ref{Float64})
     , ds50UTC,year,dayOfYear)
   return Int64(year[1]), dayOfYear[1]
end

#############################################################################
# Converts a set of time components (year, day of year, hour, minute, second) to a time in ds50UTC. 
# Partial days may be returned.
# See "TimeComps2ToUTC" for a function which takes a month and day instead of a day of year value.
function TimeComps1ToUTC(year, dayOfYear, hh, mm, sss)
   ds50UTC = ccall( (:TimeComps1ToUTC,libname) 
     , Float64
     , (Int32
     , Int32
     , Int32
     , Int32
     , Float64)
     , year,dayOfYear,hh,mm,sss)
   return ds50UTC
end

#############################################################################
# Converts a time in ds50UTC to its individual components (year, day of year, hour, minute, second).
# See "TimeComps1ToUTC" for an example.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
function UTCToTimeComps1(ds50UTC)
   year = zeros(Int32, 1)
   dayOfYear = zeros(Int32, 1)
   hh = zeros(Int32, 1)
   mm = zeros(Int32, 1)
   sss = zeros(Float64, 1)
   ccall( (:UTCToTimeComps1,libname) 
     , Nothing
     , (Float64
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , ds50UTC,year,dayOfYear,hh,mm,sss)
   return Int64(year[1]), Int64(dayOfYear[1]), Int64(hh[1]), Int64(mm[1]), sss[1]
end

#############################################################################
# Converts a set of time components (year, month, day of month, hour, minute, second) to a time in ds50UTC. 
# Partial days may be returned.
# See "TimeComps1ToUTC" for a function which takes a day of year value instead of a month and day.
function TimeComps2ToUTC(year, mon, dayOfMonth, hh, mm, sss)
   ds50UTC = ccall( (:TimeComps2ToUTC,libname) 
     , Float64
     , (Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Float64)
     , year,mon,dayOfMonth,hh,mm,sss)
   return ds50UTC
end

#############################################################################
# Converts a time in ds50UTC to its individual components (year, month, day of month, hour, minute, second).
# See "TimeComps1ToUTC" for an example.
# The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
function UTCToTimeComps2(ds50UTC)
   year = zeros(Int32, 1)
   month = zeros(Int32, 1)
   dayOfMonth = zeros(Int32, 1)
   hh = zeros(Int32, 1)
   mm = zeros(Int32, 1)
   sss = zeros(Float64, 1)
   ccall( (:UTCToTimeComps2,libname) 
     , Nothing
     , (Float64
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , ds50UTC,year,month,dayOfMonth,hh,mm,sss)
   return Int64(year[1]), Int64(month[1]), Int64(dayOfMonth[1]), Int64(hh[1]), Int64(mm[1]), sss[1]
end

#############################################################################
# Computes right ascension of Greenwich at the specified time in ds50UT1. 
# The Fk constants as you currently have them set up in EnvConst.dll are used.
# EnvConst.dll is not marked as a direct dependency of TimeFunc.dll. However, it obviously must be loaded in order to be able to use this function since you must first obtain a handle via the EnvGetFkPtr() function.
function ThetaGrnwch(ds50UT1, lenvFk)
   thetaG = ccall( (:ThetaGrnwch,libname) 
     , Float64
     , (Float64
     , Int64)
     , ds50UT1,lenvFk)
   return thetaG
end

#############################################################################
# Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fourth Fundamental Catalogue (FK4).
# There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
function ThetaGrnwchFK4(ds50UT1)
   thetaG = ccall( (:ThetaGrnwchFK4,libname) 
     , Float64
     , (Float64,)
     , ds50UT1)
   return thetaG
end

#############################################################################
# Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fifth Fundamental Catalogue (FK5).
# There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
function ThetaGrnwchFK5(ds50UT1)
   thetaG = ccall( (:ThetaGrnwchFK5,libname) 
     , Float64
     , (Float64,)
     , ds50UT1)
   return thetaG
end

#############################################################################
# This function is intended for future use.  No information is currently available.
# This function is intended for future use.  No information is currently available.
function TimeConvFrTo(funcIdx, frArr, size_toArr)
   toArr = zeros(Float64, size_toArr)
   ccall( (:TimeConvFrTo,libname) 
     , Nothing
     , (Int32
     , Ref{Float64}
     , Ref{Float64})
     , funcIdx,frArr,toArr)
   return toArr
end

#############################################################################
# Returns prediction control parameters. The parameters are placed in the reference variables passed to this function.
function Get6P()
   startFrEpoch = zeros(Int32, 1)
   stopFrEpoch = zeros(Int32, 1)
   startTime = zeros(Float64, 1)
   stopTime = zeros(Float64, 1)
   interval = zeros(Float64, 1)
   ccall( (:Get6P,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , startFrEpoch,stopFrEpoch,startTime,stopTime,interval)
   return Int64(startFrEpoch[1]), Int64(stopFrEpoch[1]), startTime[1], stopTime[1], interval[1]
end

#############################################################################
# Sets prediction control parameters.
function Set6P(startFrEpoch, stopFrEpoch, startTime, stopTime, interval)
   ccall( (:Set6P,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Float64
     , Float64)
     , startFrEpoch,stopFrEpoch,startTime,stopTime,interval)
end

#############################################################################
# Returns current prediction control parameters in form of a 6P-Card string.
function Get6PCardLine()
   card6PLine = " "^512
   ccall( (:Get6PCardLine,libname) 
     , Nothing
     , (Cstring,)
     , card6PLine)
   return card6PLine
end

#############################################################################
# Returns the time span of the loaded timing constants - the earliest and latest of loaded timing constant records
function TConTimeSpan()
   numOfRecs = zeros(Int32, 1)
   frTimeDs50UTC = zeros(Float64, 1)
   toTimeDs50UTC = zeros(Float64, 1)
   ccall( (:TConTimeSpan,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Float64}
     , Ref{Float64})
     , numOfRecs,frTimeDs50UTC,toTimeDs50UTC)
   return Int64(numOfRecs[1]), frTimeDs50UTC[1], toTimeDs50UTC[1]
end

#############################################################################

end #of module TimeFuncDll
# ========================= End of auto generated code ==========================
