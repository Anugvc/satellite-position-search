% This wrapper file was generated automatically by the GenDllWrappers program.
function loadTimeFunc(OctFilePath)   autoload("LoadTimeFuncDll",strcat(OctFilePath,"TimeFunc.oct"));
   autoload("FreeTimeFuncDll",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes the TimeFunc DLL for use in the program. 
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   autoload("TimeFuncInit",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Returns the information about the TimeFunc DLL.  The information is placed in the string parameter you pass in.
   %  The returned string provides information about the version number, build date, and the platform of the TimeFunc DLL.
   autoload("TimeFuncGetInfo",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Loads timing constants data from an input file.
   %  Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   %  
   %  The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   %  See the "Time Constants Data Description" section in the accompanying TimeFunc documentation file for supported formats.
   autoload("TConLoadFile",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Loads timing constants data and prediction control (6P-card) from an input file.
   %  Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   %  
   %  The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   %  
   %  The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   autoload("TimeFuncLoadFile",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Checks to see if timing constants have been loaded into memory.
   %  The timing constants can be loaded from a timing constants file or from VCM(s).  See TConLoadFile, TConAddOne, and TConAddARec functions.
   autoload("IsTConFileLoaded",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Saves currently loaded timing constants data to a file.
   %  The data will be saved in the format specified by the form parameter, regardless of the format or method originally used to load it.
   autoload("TConSaveFile",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Adds a timing constant record to memory. Note that this function is solely for backward compatible with legacy software.
   %  Notes: only the latest timing record is stored in memory using this method. Input timing record will be skipped/ignored if it's earlier than the existing one
   %  The users should use TConLoadFile or TimeFuncLoadFile to load timing constants file instead.
   autoload("TConAddARec",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Adds one timing constant record to memory. This API can be used to avoid TConLoadFile's file I/O
   autoload("TConAddOne",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Retrieves the timing constants record, if exists, at the requested input time in ds50UTC.
   %  If the requested record is not found, 0's will be returned for all of the constants. You can use this fact to determine whether the record was found or not. Simply check the taiMinusUTC value after calling this function. Since that value can never be 0 for a valid record, if it is 0 the record was not found.
   autoload("UTCToTConRec",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Removes all the timing constants records in memory.
   autoload("TConRemoveAll",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts an internal time in ds50UTC to a string in DTG20 format. The resulting string takes the form "YYYY/DDD HHMM SS.SSS".
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001 0000 00.000".
   autoload("UTCToDTG20",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in DTG19 format. The resulting string takes the form "YYYYMonDDHHMMSS.SSS".
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956Jan01000000.000".
   %  Note, the return value is in the DTG19 format "YYYYMonDDHHMMSS.SSS", not the "YY DDD HH MM SS.SSS" format.
   autoload("UTCToDTG19",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in DTG17 format. The resulting string takes the form "YYYY/DDD.DDDDDDDD" format.
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001.00000000".
   autoload("UTCToDTG17",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in DTG15 format. The resulting string takes the form "YYDDDHHMMSS.SSS".
   %  See "UTCToDTG20" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "56001000000.000".
   autoload("UTCToDTG15",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in one of the DTG formats to a time in ds50UTC. DTG15, DTG17, DTG19, and DTG20 formats are accepted.
   %  See "UTCToDTG20" for an example.
   %  During the conversion, this function processes only numbers and the '.' character. This means that you can format dtgStr in a format that makes sense. You can use spaces and the '/' character for example if you wish.
   %  
   %  The function can process dates from 1950 to 2049. Any input outside this range will yield "0.0".
   %  This function supports DTG19 inputs in both "YY DDD HH MM SS.SSS" and "YYYYMonDDHHMMSS.SSS" formats.
   autoload("DTGToUTC",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in ds50TAI using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50UTC and ds50TAI are the same.
   %  Partial days may be returned.
   autoload("UTCToTAI",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in ds50UT1 using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50UTC and ds50UT1 are the same. 
   %  Partial days may be returned.
   autoload("UTCToUT1",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a time in ds50ET (Ephemeris Time/Terrestrial Time) using timing constants records in memory. 
   autoload("UTCToET",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50TAI to a time in ds50UTC using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50TAI and ds50UTC are the same. 
   %  Partial days may be returned.
   autoload("TAIToUTC",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50TAI to a time in ds50UT1 using timing constants records in memory. 
   %  If no timing constants records were loaded, ds50TAI and ds50UT1 are the same. 
   %  Partial days may be returned.
   autoload("TAIToUT1",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a year and a number of days to a time in ds50UTC. 
   %  Partial days may be returned.
   autoload("YrDaysToUTC",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to a year and day of year.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield Year=1956, Day=1.0.
   autoload("UTCToYrDays",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a set of time components (year, day of year, hour, minute, second) to a time in ds50UTC. 
   %  Partial days may be returned.
   %  See "TimeComps2ToUTC" for a function which takes a month and day instead of a day of year value.
   autoload("TimeComps1ToUTC",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to its individual components (year, day of year, hour, minute, second).
   %  See "TimeComps1ToUTC" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   autoload("UTCToTimeComps1",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a set of time components (year, month, day of month, hour, minute, second) to a time in ds50UTC. 
   %  Partial days may be returned.
   %  See "TimeComps1ToUTC" for a function which takes a day of year value instead of a month and day.
   autoload("TimeComps2ToUTC",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Converts a time in ds50UTC to its individual components (year, month, day of month, hour, minute, second).
   %  See "TimeComps1ToUTC" for an example.
   %  The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   autoload("UTCToTimeComps2",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1. 
   %  The Fk constants as you currently have them set up in EnvConst.dll are used.
   %  EnvConst.dll is not marked as a direct dependency of TimeFunc.dll. However, it obviously must be loaded in order to be able to use this function since you must first obtain a handle via the EnvGetFkPtr() function.
   autoload("ThetaGrnwch",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fourth Fundamental Catalogue (FK4).
   %  There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   autoload("ThetaGrnwchFK4",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fifth Fundamental Catalogue (FK5).
   %  There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   autoload("ThetaGrnwchFK5",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  This function is intended for future use.  No information is currently available.
   %  This function is intended for future use.  No information is currently available.
   autoload("TimeConvFrTo",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Returns prediction control parameters. The parameters are placed in the reference variables passed to this function.
   autoload("Get6P",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Sets prediction control parameters.
   autoload("Set6P",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Returns current prediction control parameters in form of a 6P-Card string.
   autoload("Get6PCardLine",strcat(OctFilePath,"TimeFunc.oct"));
   
   %  Returns the time span of the loaded timing constants - the earliest and latest of loaded timing constant records
   autoload("TConTimeSpan",strcat(OctFilePath,"TimeFunc.oct"));
   LoadTimeFuncDll;
endfunction
% ========================= End of auto generated code ==========================
