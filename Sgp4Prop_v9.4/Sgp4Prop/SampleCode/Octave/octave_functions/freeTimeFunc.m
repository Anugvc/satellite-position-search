% This wrapper file was generated automatically by the GenDllWrappers program.
function freeTimeFunc()   FreeTimeFuncDll;
   clear LoadTimeFuncDll;
   clear FreeTimeFuncDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes the TimeFunc DLL for use in the program. 
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   clear TimeFuncInit
   
   %  Returns the information about the TimeFunc DLL.  The information is placed in the string parameter you pass in.
   %  The returned string provides information about the version number, build date, and the platform of the TimeFunc DLL.
   clear TimeFuncGetInfo
   
   %  Loads timing constants data from an input file.
   %  Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   %  
   %  The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   %  See the "Time Constants Data Description" section in the accompanying TimeFunc documentation file for supported formats.
   clear TConLoadFile
   
   %  Loads timing constants data and prediction control (6P-card) from an input file.
   %  Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   %  
   %  The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   clear TimeFuncLoadFile
   
   %  Checks to see if timing constants have been loaded into memory.
   %  The timing constants can be loaded from a timing constants file or from VCM(s).  See TConLoadFile, TConAddOne, and TConAddARec functions.
   clear IsTConFileLoaded
   
   %  Saves currently loaded timing constants data to a file.
   %  The data will be saved in the format specified by the form parameter, regardless of the format or method originally used to load it.
   clear TConSaveFile
   
   %  Adds a timing constant record to memory. Note that this function is solely for backward compatible with legacy software.
   %  Notes: only the latest timing record is stored in memory using this method. Input timing record will be skipped/ignored if it's earlier than the existing one
   %  The users should use TConLoadFile or TimeFuncLoadFile to load timing constants file instead.
   clear TConAddARec
   
   %  Adds one timing constant record to memory. This API can be used to avoid TConLoadFile's file I/O
   clear TConAddOne
   
   %  Retrieves the timing constants record, if exists, at the requested input time in ds50UTC.
   %  If the requested record is not found, 0's will be returned for all of the constants. You can use this fact to determine whether the record was found or not. Simply check the taiMinusUTC value after calling this function. Since that value can never be 0 for a valid record, if it is 0 the record was not found.
   clear UTCToTConRec
   
   %  Removes all the timing constants records in memory.
   clear TConRemoveAll
   
   %  Converts an internal time in ds50UTC to a string in DTG20 format. The resulting string takes the form "YYYY/DDD HHMM SS.SSS".
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001 0000 00.000".
   clear UTCToDTG20
   
   %  Converts a time in ds50UTC to a time in DTG19 format. The resulting string takes the form "YYYYMonDDHHMMSS.SSS".
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956Jan01000000.000".
   %  Note, the return value is in the DTG19 format "YYYYMonDDHHMMSS.SSS", not the "YY DDD HH MM SS.SSS" format.
   clear UTCToDTG19
   
   %  Converts a time in ds50UTC to a time in DTG17 format. The resulting string takes the form "YYYY/DDD.DDDDDDDD" format.
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001.00000000".
   clear UTCToDTG17
   
   %  Converts a time in ds50UTC to a time in DTG15 format. The resulting string takes the form "YYDDDHHMMSS.SSS".
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "56001000000.000".
   clear UTCToDTG15
   
   %  Converts a time in one of the DTG formats to a time in ds50UTC. DTG15, DTG17, DTG19, and DTG20 formats are accepted.
   %  See "UTCToDTG20" for an example.
   %  During the conversion, this function processes only numbers and the '.' character. This means that you can format dtgStr in a format that makes sense. You can use spaces and the '/' character for example if you wish.
   %  
   %  The function can process dates from 1950 to 2049. Any input outside this range will yield "0.0".
   %  This function supports DTG19 inputs in both "YY DDD HH MM SS.SSS" and "YYYYMonDDHHMMSS.SSS" formats.
   clear DTGToUTC
   
   %  Converts a time in ds50UTC to a time in ds50TAI using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50UTC and ds50TAI are the same.
   %  Partial days may be returned.
   clear UTCToTAI
   
   %  Converts a time in ds50UTC to a time in ds50UT1 using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50UTC and ds50UT1 are the same. 
   %  Partial days may be returned.
   clear UTCToUT1
   
   %  Converts a time in ds50UTC to a time in ds50ET (Ephemeris Time/Terrestrial Time) using timing constants records in memory. 
   clear UTCToET
   
   %  Converts a time in ds50TAI to a time in ds50UTC using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50TAI and ds50UTC are the same. 
   %  Partial days may be returned.
   clear TAIToUTC
   
   %  Converts a time in ds50TAI to a time in ds50UT1 using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50TAI and ds50UT1 are the same. 
   %  Partial days may be returned.
   clear TAIToUT1
   
   %  Converts a year and a number of days to a time in ds50UTC. 
   %  Partial days may be returned.
   clear YrDaysToUTC
   
   %  Converts a time in ds50UTC to a year and day of year.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield Year=1956, Day=1.0.
   clear UTCToYrDays
   
   %  Converts a set of time components (year, day of year, hour, minute, second) to a time in ds50UTC. 
   %  Partial days may be returned.
   %  See "TimeComps2ToUTC" for a function which takes a month and day instead of a day of year value.
   clear TimeComps1ToUTC
   
   %  Converts a time in ds50UTC to its individual components (year, day of year, hour, minute, second).
   %  See "TimeComps1ToUTC" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   clear UTCToTimeComps1
   
   %  Converts a set of time components (year, month, day of month, hour, minute, second) to a time in ds50UTC. 
   %  Partial days may be returned.
   %  See "TimeComps1ToUTC" for a function which takes a day of year value instead of a month and day.
   clear TimeComps2ToUTC
   
   %  Converts a time in ds50UTC to its individual components (year, month, day of month, hour, minute, second).
   %  See "TimeComps1ToUTC" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   clear UTCToTimeComps2
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1. 
   %  The Fk constants as you currently have them set up in EnvConst.dll are used.
   %  EnvConst.dll is not marked as a direct dependency of TimeFunc.dll. However, it obviously must be loaded in order to be able to use this function since you must first obtain a handle via the EnvGetFkPtr() function.
   clear ThetaGrnwch
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fourth Fundamental Catalogue (FK4).
   %  There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   clear ThetaGrnwchFK4
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fifth Fundamental Catalogue (FK5).
   %  There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   clear ThetaGrnwchFK5
   
   %  This function is intended for future use.  No information is currently available.
   %  This function is intended for future use.  No information is currently available.
   clear TimeConvFrTo
   
   %  Returns prediction control parameters. The parameters are placed in the reference variables passed to this function.
   clear Get6P
   
   %  Sets prediction control parameters.
   clear Set6P
   
   %  Returns current prediction control parameters in form of a 6P-Card string.
   clear Get6PCardLine
   
   %  Returns the time span of the loaded timing constants - the earliest and latest of loaded timing constant records
   clear TConTimeSpan
endfunction
% ========================= End of auto generated code ==========================
