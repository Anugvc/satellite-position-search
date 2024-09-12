// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: TimeFunc */
public class JnaTimeFunc
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "timefunc";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes the TimeFunc DLL for use in the program. 
   * If this function returns an error, it is recommended that you stop the program immediately.
   * 
   * An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   * @param apAddr             The pointer that was returned from DllMain.DllMainInit (in-Long)
   * @return Returns zero indicating the TimeFunc DLL has been initialized successfully. Other values indicate an error.
   */
   public static native int TimeFuncInit(long apAddr);


   /**
   * Returns the information about the TimeFunc DLL.  The information is placed in the string parameter you pass in.
   * The returned string provides information about the version number, build date, and the platform of the TimeFunc DLL.
   * @param infoStr            A string to hold the information about TimeFunc.dll. (out-Character[128])
   */
   public static native void TimeFuncGetInfo(byte[] infoStr);


   /**
   * Loads timing constants data from an input file.
   * Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   * 
   * The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   * 
   * The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   * See the "Time Constants Data Description" section in the accompanying TimeFunc documentation file for supported formats.
   * @param tconFile           The name of the file from which to read timing constants data. (in-Character[512])
   * @return 0 if the input file has been loaded successfully, non-0 if error.
   */
   public static native int TConLoadFile(String tconFile);


   /**
   * Loads timing constants data and prediction control (6P-card) from an input file.
   * Time constants can be included directly in the main input file or they can be read from a separate file identified with "TIMFIL=[pathname\filename]".
   * 
   * The input file is read in two passes. The function first looks for "TIMFIL=" lines, then it looks for timing constant data which was included directly. The result of this is that data entered using both methods will be processed, but the "TIMFIL=" data will be processed first.
   * 
   * The time constants are also read in from each VCM. However, only the most recent time constants among VCMs are stored in the memory, see VCM.dll documentation.
   * @param tconFile           The name of the file from which to read timing constants data and/or prediction control data. (in-Character[512])
   * @return 0 if the input file is loaded successfully, non-0 if there is an error.
   */
   public static native int TimeFuncLoadFile(String tconFile);


   /**
   * Checks to see if timing constants have been loaded into memory.
   * The timing constants can be loaded from a timing constants file or from VCM(s).  See TConLoadFile, TConAddOne, and TConAddARec functions.
   * @return 1 if timing constants data have been loaded, 0 if not.
   */
   public static native int IsTConFileLoaded();


   /**
   * Saves currently loaded timing constants data to a file.
   * The data will be saved in the format specified by the form parameter, regardless of the format or method originally used to load it.
   * @param tconFile           The name of the file in which to save the timing constants data. (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one. (0 = Create new file, 1= Append to existing file) (in-Integer)
   * @param saveForm           Specifies the format in which to save the file. (0 = SPECTER Print Record format, 1 = XML format (future implementation)) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error.
   */
   public static native int TConSaveFile(String tconFile, int saveMode, int saveForm);


   /**
   * Adds a timing constant record to memory. Note that this function is solely for backward compatible with legacy software.
   * Notes: only the latest timing record is stored in memory using this method. Input timing record will be skipped/ignored if it's earlier than the existing one
   * The users should use TConLoadFile or TimeFuncLoadFile to load timing constants file instead.
   * @param refDs50UTC         Reference time (days since 1950, UTC) (in-Double)
   * @param leapDs50UTC        Leap Second time (days since 1950, UTC) (in-Double)
   * @param taiMinusUTC        TAI minus UTC offset at the reference time (seconds) (in-Double)
   * @param ut1MinusUTC        UT1 minus UTC offset at the reference time (seconds) (in-Double)
   * @param ut1Rate            UT1 rate of change versus UTC at the reference time (msec/day) (in-Double)
   * @param polarX             Polar wander (X direction) at the reference time (arc-seconds) (in-Double)
   * @param polarY             Polar wander (Y direction) at the reference time (arc-seconds) (in-Double)
   * @return 0 if the timing constants record is successfully added to memory, non-0 if there is an error.
   */
   public static native int TConAddARec(double refDs50UTC, double leapDs50UTC, double taiMinusUTC, double ut1MinusUTC, double ut1Rate, double polarX, double polarY);


   /**
   * Adds one timing constant record to memory. This API can be used to avoid TConLoadFile's file I/O
   * @param refDs50UTC         Reference time (days since 1950, UTC) (in-Double)
   * @param taiMinusUTC        TAI minus UTC offset at the reference time (seconds) (in-Double)
   * @param ut1MinusUTC        UT1 minus UTC offset at the reference time (seconds) (in-Double)
   * @param ut1Rate            UT1 rate of change versus UTC at the reference time (msec/day) (in-Double)
   * @param polarX             Polar wander (X direction) at the reference time (arc-seconds) (in-Double)
   * @param polarY             Polar wander (Y direction) at the reference time (arc-seconds) (in-Double)
   * @return 0 if the timing constants record is successfully added to memory, non-0 if there is an error.
   */
   public static native int TConAddOne(double refDs50UTC, double taiMinusUTC, double ut1MinusUTC, double ut1Rate, double polarX, double polarY);


   /**
   * Retrieves the timing constants record, if exists, at the requested input time in ds50UTC.
   * If the requested record is not found, 0's will be returned for all of the constants. You can use this fact to determine whether the record was found or not. Simply check the taiMinusUTC value after calling this function. Since that value can never be 0 for a valid record, if it is 0 the record was not found.
   * @param ds50UTC            Input days since 1950, UTC (in-Double)
   * @param taiMinusUTC        Returned TAI minus UTC offset at requested time (seconds) (out-Double)
   * @param ut1MinusUTC        Returned UT1 minus UTC offset at requested time (seconds) (out-Double)
   * @param ut1Rate            Returned UT1 rate of change versus UTC at Reference time (msec/day) (out-Double)
   * @param polarX             Returned interpolated polar wander (X direction) at requested time (arc-seconds) (out-Double)
   * @param polarY             Returned interpolated polar wander (Y direction) at requested time (arc-seconds) (out-Double)
   */
   public static native void UTCToTConRec(double ds50UTC, DoubleByReference taiMinusUTC, DoubleByReference ut1MinusUTC, DoubleByReference ut1Rate, DoubleByReference polarX, DoubleByReference polarY);


   /**
   * Removes all the timing constants records in memory.
   * @return 0 if all timing constants records are successfully removed from memory, non-0 if there is an error.
   */
   public static native int TConRemoveAll();


   /**
   * Converts an internal time in ds50UTC to a string in DTG20 format. The resulting string takes the form "YYYY/DDD HHMM SS.SSS".
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001 0000 00.000".
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param dtg20              A string to hold the result of the conversion. (out-Character[20])
   */
   public static native void UTCToDTG20(double ds50UTC, byte[] dtg20);


   /**
   * Converts a time in ds50UTC to a time in DTG19 format. The resulting string takes the form "YYYYMonDDHHMMSS.SSS".
   * See "UTCToDTG20" for an example.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956Jan01000000.000".
   * Note, the return value is in the DTG19 format "YYYYMonDDHHMMSS.SSS", not the "YY DDD HH MM SS.SSS" format.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param dtg19              A string to hold the result of the conversion. (out-Character[19])
   */
   public static native void UTCToDTG19(double ds50UTC, byte[] dtg19);


   /**
   * Converts a time in ds50UTC to a time in DTG17 format. The resulting string takes the form "YYYY/DDD.DDDDDDDD" format.
   * See "UTCToDTG20" for an example.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "1956/001.00000000".
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param dtg17              A string to hold the result of the conversion. (out-Character[17])
   */
   public static native void UTCToDTG17(double ds50UTC, byte[] dtg17);


   /**
   * Converts a time in ds50UTC to a time in DTG15 format. The resulting string takes the form "YYDDDHHMMSS.SSS".
   * See "UTCToDTG20" for an example.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield "56001000000.000".
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param dtg15              A string to hold the result of the conversion. (out-Character[15])
   */
   public static native void UTCToDTG15(double ds50UTC, byte[] dtg15);


   /**
   * Converts a time in one of the DTG formats to a time in ds50UTC. DTG15, DTG17, DTG19, and DTG20 formats are accepted.
   * See "UTCToDTG20" for an example.
   * During the conversion, this function processes only numbers and the '.' character. This means that you can format dtgStr in a format that makes sense. You can use spaces and the '/' character for example if you wish.
   * 
   * The function can process dates from 1950 to 2049. Any input outside this range will yield "0.0".
   * This function supports DTG19 inputs in both "YY DDD HH MM SS.SSS" and "YYYYMonDDHHMMSS.SSS" formats.
   * @param dtg                The string to convert. Can be any of the DTG formats previously documented. (in-Character[20])
   * @return The number of days since 1950, UTC. Partial days may be returned.
   */
   public static native double DTGToUTC(String dtg);


   /**
   * Converts a time in ds50UTC to a time in ds50TAI using timing constants records in memory. 
   * If no timing constants records were loaded, ds50UTC and ds50TAI are the same.
   * Partial days may be returned.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @return The number of days since 1950, TAI. Partial days may be returned.
   */
   public static native double UTCToTAI(double ds50UTC);


   /**
   * Converts a time in ds50UTC to a time in ds50UT1 using timing constants records in memory. 
   * If no timing constants records were loaded, ds50UTC and ds50UT1 are the same. 
   * Partial days may be returned.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @return The number of days since 1950, UT1. Partial days may be returned.
   */
   public static native double UTCToUT1(double ds50UTC);


   /**
   * Converts a time in ds50UTC to a time in ds50ET (Ephemeris Time/Terrestrial Time) using timing constants records in memory. 
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @return The number of days since 1950, ET (Ephemeris Time/Terrestrial Time). Partial days may be returned.
   */
   public static native double UTCToET(double ds50UTC);


   /**
   * Converts a time in ds50TAI to a time in ds50UTC using timing constants records in memory. 
   * If no timing constants records were loaded, ds50TAI and ds50UTC are the same. 
   * Partial days may be returned.
   * @param ds50TAI            Days since 1950, TAI to be converted. (in-Double)
   * @return The number of Days since 1950, UTC. Partial days may be returned.
   */
   public static native double TAIToUTC(double ds50TAI);


   /**
   * Converts a time in ds50TAI to a time in ds50UT1 using timing constants records in memory. 
   * If no timing constants records were loaded, ds50TAI and ds50UT1 are the same. 
   * Partial days may be returned.
   * @param ds50TAI            Days since 1950, TAI to be converted. (in-Double)
   * @return The number of days since 1950, UT1. Partial days may be returned.
   */
   public static native double TAIToUT1(double ds50TAI);


   /**
   * Converts a year and a number of days to a time in ds50UTC. 
   * Partial days may be returned.
   * @param year               Two or four digit years are accepted. (in-Integer)
   * @param dayOfYear          The day of year. Partial days can be specified. (in-Double)
   * @return The number of days since 1950, UTC. Partial days may be returned.
   */
   public static native double YrDaysToUTC(int year, double dayOfYear);


   /**
   * Converts a time in ds50UTC to a year and day of year.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will yield Year=1956, Day=1.0.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param year               A reference to a variable in which to place the 4-digit year. (out-Integer)
   * @param dayOfYear          A reference to a variable in which to place the day of year. Partial days may be expressed in this variable. (out-Double)
   */
   public static native void UTCToYrDays(double ds50UTC, IntByReference year, DoubleByReference dayOfYear);


   /**
   * Converts a set of time components (year, day of year, hour, minute, second) to a time in ds50UTC. 
   * Partial days may be returned.
   * See "TimeComps2ToUTC" for a function which takes a month and day instead of a day of year value.
   * @param year               Two or four digit years are accepted. (in-Integer)
   * @param dayOfYear          The day of year, expressed as a whole number. (in-Integer)
   * @param hh                 The hour. (in-Integer)
   * @param mm                 The minute. (in-Integer)
   * @param sss                The second, including partial seconds if desired. (in-Double)
   * @return The number of Days since 1950, UTC. Partial days may be returned.
   */
   public static native double TimeComps1ToUTC(int year, int dayOfYear, int hh, int mm, double sss);


   /**
   * Converts a time in ds50UTC to its individual components (year, day of year, hour, minute, second).
   * See "TimeComps1ToUTC" for an example.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param year               A reference to a variable in which to store the 4-digit year. (out-Integer)
   * @param dayOfYear          A reference to a variable in which to store the day of year. (out-Integer)
   * @param hh                 A reference to a variable in which to store the hour. (out-Integer)
   * @param mm                 A reference to a variable in which to store the minute. (out-Integer)
   * @param sss                A reference to a variable in which to store the second. Partial seconds may be expressed if necessary. (out-Double)
   */
   public static native void UTCToTimeComps1(double ds50UTC, IntByReference year, IntByReference dayOfYear, IntByReference hh, IntByReference mm, DoubleByReference sss);


   /**
   * Converts a set of time components (year, month, day of month, hour, minute, second) to a time in ds50UTC. 
   * Partial days may be returned.
   * See "TimeComps1ToUTC" for a function which takes a day of year value instead of a month and day.
   * @param year               Two or four digit years are accepted. (in-Integer)
   * @param mon                The month. (in-Integer)
   * @param dayOfMonth         The day of the month. (in-Integer)
   * @param hh                 The hour. (in-Integer)
   * @param mm                 The minute. (in-Integer)
   * @param sss                The second. (in-Double)
   * @return The number of Days since 1950, UTC. Partial days may be returned.
   */
   public static native double TimeComps2ToUTC(int year, int mon, int dayOfMonth, int hh, int mm, double sss);


   /**
   * Converts a time in ds50UTC to its individual components (year, month, day of month, hour, minute, second).
   * See "TimeComps1ToUTC" for an example.
   * The input ds50UTC must be greater than 2192.0, which corresponds to a time later than 1st Jan 1956. Any input value less than or equal to 2192.0 will be reset to that value.
   * @param ds50UTC            Days since 1950, UTC to be converted. (in-Double)
   * @param year               A reference to a variable in which to store the 4-digit year. (out-Integer)
   * @param month              A reference to a variable in which to store the month. (out-Integer)
   * @param dayOfMonth         A reference to a variable in which to store the day of the month. (out-Integer)
   * @param hh                 A reference to a variable in which to store the hour. (out-Integer)
   * @param mm                 A reference to a variable in which to store the minute. (out-Integer)
   * @param sss                A reference to a variable in which to store the second. Partial seconds may be expressed if necessary. (out-Double)
   */
   public static native void UTCToTimeComps2(double ds50UTC, IntByReference year, IntByReference month, IntByReference dayOfMonth, IntByReference hh, IntByReference mm, DoubleByReference sss);


   /**
   * Computes right ascension of Greenwich at the specified time in ds50UT1. 
   * The Fk constants as you currently have them set up in EnvConst.dll are used.
   * EnvConst.dll is not marked as a direct dependency of TimeFunc.dll. However, it obviously must be loaded in order to be able to use this function since you must first obtain a handle via the EnvGetFkPtr() function.
   * @param ds50UT1            Input days since 1950, UT1. (in-Double)
   * @param lenvFk             A handle to the FK data. Use the value returned from EnvGetFkPtr(), located in EnvConst.dll. (in-Long)
   * @return Right ascension of Greenwich in radians at the specified time.
   */
   public static native double ThetaGrnwch(double ds50UT1, long lenvFk);


   /**
   * Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fourth Fundamental Catalogue (FK4).
   * There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   * @param ds50UT1            Days since 1950, UT1. (in-Double)
   * @return Right ascension of Greenwich in radians at the specified time using FK4.
   */
   public static native double ThetaGrnwchFK4(double ds50UT1);


   /**
   * Computes right ascension of Greenwich at the specified time in ds50UT1 using the Fifth Fundamental Catalogue (FK5).
   * There is no need to load or initialize EnvConst.dll when computing right ascension using this function.
   * @param ds50UT1            Input days since 1950, UT1. (in-Double)
   * @return Right ascension of Greenwich in radians at the specified time using FK5.
   */
   public static native double ThetaGrnwchFK5(double ds50UT1);


   /**
   * This function is intended for future use.  No information is currently available.
   * This function is intended for future use.  No information is currently available.
   * @param funcIdx            Input function index (in-Integer)
   * @param frArr              Input (in-Double[*])
   * @param toArr              Output (out-Double[*])
   */
   public static native void TimeConvFrTo(int funcIdx, double[] frArr, double[] toArr);


   /**
   * Returns prediction control parameters. The parameters are placed in the reference variables passed to this function.
   * @param startFrEpoch       Indicates whether startTime is expressed in minutes since epoch. (startFrEpoch = 1: startTime is in minutes since epoch, startFrEpoch = 0: startTime is in days since 1950, UTC) (out-Integer)
   * @param stopFrEpoch        Indicates whether stopTime is expressed in minutes since epoch. (stopFrEpoch = 1: stopTime is in minutes since epoch, stopFrEpoch = 0: stopTime is in days since 1950, UTC) (out-Integer)
   * @param startTime          The start time. Depending on the value of startFrEpoch, start time can be expressed in minutes since epoch or days since 1950, UTC. (out-Double)
   * @param stopTime           The stop time. Depending on the value of stopFrEpoch, stop time can be expressed in minutes since epoch or days since 1950, UTC. (out-Double)
   * @param interval           The Step size (min). (out-Double)
   */
   public static native void Get6P(IntByReference startFrEpoch, IntByReference stopFrEpoch, DoubleByReference startTime, DoubleByReference stopTime, DoubleByReference interval);


   /**
   * Sets prediction control parameters.
   * @param startFrEpoch       Indicates whether startTime is expressed in minutes since epoch. (startFrEpoch = 1: Value of startTime is in minutes since epoch, startFrEpoch = 0: Value of startTime is in days since 1950, UTC) (in-Integer)
   * @param stopFrEpoch        Indicates whether stopTime is expressed in minutes since epoch. (stopFrEpoch = 1: Value of stopTime is in minutes since epoch, stopFrEpoch = 0: Value of stopTime is in days since 1950, UTC) (in-Integer)
   * @param startTime          Start time. (in-Double)
   * @param stopTime           Stop time. (in-Double)
   * @param interval           Step size (min). (in-Double)
   */
   public static native void Set6P(int startFrEpoch, int stopFrEpoch, double startTime, double stopTime, double interval);


   /**
   * Returns current prediction control parameters in form of a 6P-Card string.
   * @param card6PLine         The resulting 6P-Card string. (out-Character[512])
   */
   public static native void Get6PCardLine(byte[] card6PLine);


   /**
   * Returns the time span of the loaded timing constants - the earliest and latest of loaded timing constant records
   * @param numOfRecs          Number of timing constants records loaded in memory (zero if timing constants aren't loaded) (out-Integer)
   * @param frTimeDs50UTC      The time, in days since 1950 UTC,  of the earliest timing constant record loaded in memory (zero if timing constants aren't loaded) (out-Double)
   * @param toTimeDs50UTC      The time, in days since 1950 UTC,  of the latest timing constant record loaded in memory (zero if timing constants aren't loaded) (out-Double)
   */
   public static native void TConTimeSpan(IntByReference numOfRecs, DoubleByReference frTimeDs50UTC, DoubleByReference toTimeDs50UTC);
// ========================= End of auto generated code ==========================
}
