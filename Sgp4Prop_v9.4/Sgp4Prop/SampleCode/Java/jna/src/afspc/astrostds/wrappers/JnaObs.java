// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Obs */
public class JnaObs
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "obs";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Obs DLL for use in the program
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Obs.dll is initialized successfully, non-0 if there is an error
   */
   public static native int ObsInit(long apAddr);


   /**
   * Returns information about the current version of Obs DLL. 
   * The information is placed in the string parameter passed in.
   * @param infoStr            A string to hold the information about Obs.dll (out-Character[128])
   */
   public static native void ObsGetInfo(byte[] infoStr);


   /**
   * Sets the year for transmission observation format (TTY) input files
   * @param ttyYear            2 or 4 digits year (in-Integer)
   */
   public static native void ObsSetTTYYear(int ttyYear);


   /**
   * Loads observation data from an input text file
   * @param obsFile            The name of the file containing obs-related data (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int ObsLoadFile(String obsFile);


   /**
   * Saves the currently loaded obs data to a file
   * @param obsFile            The name of the file in which to save the loaded obs (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param obsForm            Specifies the mode in which to save the file (0 = B3 format, 1 = TTY, 2 = CSV) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int ObsSaveFile(String obsFile, int saveMode, int obsForm);


   /**
   * Removes an obs, represented by the obsKey, from the set of currently loaded observations
   * @param obsKey             The observation's unique key (in-Long)
   * @return 0 if the observation is successfully removed, non-0 if there is an error
   */
   public static native int ObsRemove(long obsKey);


   /**
   * Removes all currently loaded observations from memory
   * @return 0 if all the loaded observations are removed successfully, non-0 if there is an error
   */
   public static native int ObsRemoveAll();


   /**
   * Returns the number of observations currently loaded
   * @return the number of observations currently loaded
   */
   public static native int ObsGetCount();


   /**
   * Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
   * Sort options (order):
   * (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   * (+/-)2 = (descending/ascending) time, elevation
   * (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   * (+/-)4 = (descending/ascending) sensor, satno, time, elev
   * (+/-)5 = (descending/ascending) sensor, time, elevation
   * (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   * (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   * (+/-)8 = (reversed/same)        order as obs were read
   * 9 : as is in the tree
   * @param order              Specifies the order in which the obsKeys should be returned (in-Integer)
   * @param obsKeys            The array in which to store the obsKeys (out-Long[*])
   */
   public static native void ObsGetLoaded(int order, long[] obsKeys);


   /**
   * Loads a single observation-typed card
   * @param card               Any single observation-typed card (B3, B3E, TTY, ...) but not OBSFIL= (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int ObsLoadCard(String card);


   /**
   * Loads a one-line or two-line observation 
   * @param card1              Any single observation-typed card (B3, B3E, TTY, ...) or Card #1 of TTY obs type 4, 7, 8, 9 (in-Character[512])
   * @param card2              Card #2 of TTY obs type 4, 7, 8, 9 (in-Character[512])
   * @return 0 if the input card1/card2 are read successfully, non-0 if there is an error
   */
   public static native int ObsLoadTwoCards(String card1, String card2);


   /**
   * Adds an observation from a string in B3 observation format
   * @param card               The input string in B3 observation format (in-Character[512])
   * @return The obsKey of the newly added observation on success, a negative value on error
   */
   public static native long ObsAddFrB3Card(String card);


   /**
   * Works like ObsAddFrB3Card but designed for Matlab
   * @param card               The input string in B3 observation format (in-Character[512])
   * @param obsKey             The obsKey of the newly added observation on success, a negative value on error (out-Long)
   */
   public static native void ObsAddFrB3CardML(String card, LongByReference obsKey);


   /**
   * Converts B3 format to csv format without loading B3 obs into memory
   * @param card               The input string in B3 observation format (in-Character[512])
   * @param csvLine            The output string in csv observation format (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int ObsB3ToCsv(String card, byte[] csvLine);


   /**
   * Converts CSV format to B3 format without loading CSV obs into memory
   * @param csvLine            The input string in csv observation format (in-Character[512])
   * @param newSatno           New satellite number to replace what's in CSV obs if desired (value of zero does not renumber) (in-Integer)
   * @param card               The output string in B3 observation format (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int ObsCsvToB3(String csvLine, int newSatno, byte[] card);


   /**
   * Adds an observation from a TTY (1 line or 2 lines) observation format
   * @param card1              Card #1 of a TTY obs (in-Character[512])
   * @param card2              Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types (in-Character[512])
   * @return The obsKey of the newly added observation on success, a negative value on error
   */
   public static native long ObsAddFrTTYCards(String card1, String card2);


   /**
   * Works like ObsAddFrTTYCards but designed for Matlab
   * @param card1              Card #1 of a TTY obs (in-Character[512])
   * @param card2              Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types (in-Character[512])
   * @param obsKey             The obsKey of the newly added observation on success, a negative value on error (out-Long)
   */
   public static native void ObsAddFrTTYCardsML(String card1, String card2, LongByReference obsKey);


   /**
   * Converts TTY format to CSV format without loading TTY obs into memory
   * @param card1              Card #1 of a TTY obs (in-Character[512])
   * @param card2              Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types (in-Character[512])
   * @param csvLine            The obs in csv format (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int ObsTTYToCsv(String card1, String card2, byte[] csvLine);


   /**
   * Converts CSV format to TTY format without loading CSV obs into memory
   * @param csvLine            The obs in csv format (in-Character[512])
   * @param newSatno           New satellite number to replace what's in CSV obs if desired (value of zero does not renumber) (in-Integer)
   * @param card1              Card #1 of a TTY obs (out-Character[512])
   * @param card2              Card #2 of TTY obs type 4, 7, 8, 9 or an empty string for other TTY obs types (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error
   */
   public static native int ObsCsvToTTY(String csvLine, int newSatno, byte[] card1, byte[] card2);


   /**
   * Adds one observation using csv obs string 
   * @param csvLine            Input csv obs string (in-Character[512])
   * @return The obsKey of the newly added observation on success, a negative value on error
   */
   public static native long ObsAddFrCsv(String csvLine);


   /**
   * Adds one observation using csv obs string - for MatLab
   * @param csvLine            Input csv obs string (in-Character[512])
   * @param obsKey             The obsKey of the newly added observation on success, a negative value on error (out-Long)
   */
   public static native void ObsAddFrCsvML(String csvLine, LongByReference obsKey);


   /**
   * Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
   * @param secClass           security classification (in-Character)
   * @param satNum             satellite number (in-Integer)
   * @param senNum             sensor number (in-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (in-Double)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (in-Integer)
   * @param astat              association status assigned by SPADOC (in-Integer)
   * @param siteTag            original satellite number (in-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (in-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param vel                velocity XYZ (km/s) (ECI or EFG) (in-Double[3])
   * @param extArr             extra array - future use (in-Double[128])
   * @return The obsKey of the newly added observation on success, a negative value on error
   */
   public static native long ObsAddFrFields(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double[] pos, double[] vel, double[] extArr);


   /**
   * Works like ObsAddFrFields but designed for Matlab
   * @param secClass           security classification (in-Character)
   * @param satNum             satellite number (in-Integer)
   * @param senNum             sensor number (in-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (in-Double)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (in-Integer)
   * @param astat              association status assigned by SPADOC (in-Integer)
   * @param siteTag            original satellite number (in-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (in-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param vel                velocity XYZ (km/s) (ECI or EFG) (in-Double[3])
   * @param extArr             extra array - future use (in-Double[128])
   * @param obsKey             The obsKey of the newly added observation on success, a negative value on error (out-Long)
   */
   public static native void ObsAddFrFieldsML(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double[] pos, double[] vel, double[] extArr, LongByReference obsKey);


   /**
   * Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
   * @param xa_obs             Array containing observation data, see XA_OBS_? for array arrangement (in-Double[64])
   * @return The obsKey of the newly added observation on success, a negative value on error
   */
   public static native long ObsAddFrArray(double[] xa_obs);


   /**
   * Works like ObsAddFrArray but designed for Matlab
   * @param xa_obs             Array containing observation data, see XA_OBS_? for array arrangement (in-Double[64])
   * @param obsKey             The obsKey of the newly added observation on success, a negative value on error (out-Long)
   */
   public static native void ObsAddFrArrayML(double[] xa_obs, LongByReference obsKey);


   /**
   * Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
   * @param obsKey             The unique key of the requested observation (in-Long)
   * @param secClass           security classification (out-Character)
   * @param satNum             satellite number (out-Integer)
   * @param senNum             sensor number (out-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (out-Double)
   * @param elOrDec            elevation or declination (deg) (out-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (out-Double)
   * @param range              range (km) (out-Double)
   * @param rangeRate          range rate (km/s) (out-Double)
   * @param elRate             elevation rate (deg/s) (out-Double)
   * @param azRate             azimuth rate (deg/s) (out-Double)
   * @param rangeAccel         range acceleration (km/s^2) (out-Double)
   * @param obsType            observation type (out-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (out-Integer)
   * @param astat              association status assigned by SPADOC (out-Integer)
   * @param siteTag            original satellite number (out-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (out-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (out-Double[3])
   * @param vel                velocity XYZ (km/s) (ECI or EFG) (out-Double[3])
   * @param extArr             extra array - future use (out-Double[128])
   * @return 0 if all values are retrieved successfully, non-0 if there is an error
   */
   public static native int ObsGetAllFields(long obsKey, ByteByReference secClass, IntByReference satNum, IntByReference senNum, DoubleByReference obsTimeDs50utc, DoubleByReference elOrDec, DoubleByReference azOrRA, DoubleByReference range, DoubleByReference rangeRate, DoubleByReference elRate, DoubleByReference azRate, DoubleByReference rangeAccel, ByteByReference obsType, IntByReference trackInd, IntByReference astat, IntByReference siteTag, IntByReference spadocTag, double[] pos, double[] vel, double[] extArr);


   /**
   * Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
   * See ObsGetField for description of xa_obs elements
   * @param obsKey             The unique key of the requested observation (in-Long)
   * @param xa_obs             The array containing observation data, see XA_OBS_? for array arrangement (out-Double[64])
   * @return 0 if all values are retrieved successfully, non-0 if there is an error
   */
   public static native int ObsDataToArray(long obsKey, double[] xa_obs);


   /**
   * Updates existing observation data with the provided new data
   * @param obsKey             The unique key of the requested observation (in-Long)
   * @param secClass           security classification (in-Character)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track obs) (in-Integer)
   * @param astat              association status assigned by SPADOC (in-Integer)
   * @param siteTag            original satellite number (in-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (in-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param vel                velocity XYZ (km/s) (ECI or EFG) (in-Double[3])
   * @param extArr             extra array - future use (in-Double[128])
   * @return 0 if the requested observation is successfully updated, non-0 if there is an error
   */
   public static native int ObsUpdateFrFields(long obsKey, char secClass, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double[] pos, double[] vel, double[] extArr);


   /**
   * Retrieves the value of a specific field of an observation
   * @param obsKey             The observation's unique key (in-Long)
   * @param xf_Obs             The predefined number specifying which field to retrieve, see XF_OBS_? for field specification (in-Integer)
   * @param strValue           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the observation data is successfully retrieved, non-0 if there is an error
   */
   public static native int ObsGetField(long obsKey, int xf_Obs, byte[] strValue);


   /**
   * Updates the value of a field of an observation
   * See ObsGetField for a description of the xf_Obs parameter.
   * Satellite number, sensor number, and observation time are not allowed to be updated.
   * @param obsKey             The observation's unique key (in-Long)
   * @param xf_Obs             The predefined number specifying which field to update, see XF_OBS_? for field specification (in-Integer)
   * @param strValue           The new value of the specified field, expressed as a string (in-Character[512])
   * @return 0 if the observation is successfully updated, non-0 if there is an error
   */
   public static native int ObsSetField(long obsKey, int xf_Obs, String strValue);


   /**
   * Returns observation in B3-card string
   * @param obsKey             The observation's unique key (in-Long)
   * @param b3Card             A string to hold the B3 observation format (out-Character[512])
   * @return 0 if successful, non-0 on error
   */
   public static native int ObsGetB3Card(long obsKey, byte[] b3Card);


   /**
   * Returns observation in TTY-card string
   * @param obsKey             The observation's unique key (in-Long)
   * @param ttyCard1           first line of a TTY card (out-Character[512])
   * @param ttyCard2           second line of a TTY card (might be unavailable for certain obs type) (out-Character[512])
   * @return 0 if successful, non-0 on error
   */
   public static native int ObsGetTTYCard(long obsKey, byte[] ttyCard1, byte[] ttyCard2);


   /**
   * Returns observation in CSV-format string
   * @param obsKey             The observation's unique key (in-Long)
   * @param csvline            A string to hold the CSV observation format (out-Character[512])
   * @return 0 if successful, non-0 on error
   */
   public static native int ObsGetCsv(long obsKey, byte[] csvline);


   /**
   * Constructs a B3-card string from the input observation data fields
   * @param secClass           security classification (in-Character)
   * @param satNum             satellite number (in-Integer)
   * @param senNum             sensor number (in-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (in-Double)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (in-Integer)
   * @param astat              association status assigned by SPADOC (in-Integer)
   * @param siteTag            original satellite number (in-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (in-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param b3Card             A string to hold the B3 observation format (out-Character[512])
   */
   public static native void ObsFieldsToB3Card(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double[] pos, byte[] b3Card);


   /**
   * Constructs a csv string from the input observation data fields
   * @param secClass           security classification (in-Character)
   * @param satNum             satellite number (in-Integer)
   * @param senNum             sensor number (in-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (in-Double)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (in-Integer)
   * @param astat              association status assigned by SPADOC (in-Integer)
   * @param siteTag            original satellite number (in-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (in-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param csvLine            A string to hold the csv observation format (out-Character[512])
   */
   public static native void ObsFieldsToCsv(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, int trackInd, int astat, int siteTag, int spadocTag, double[] pos, byte[] csvLine);


   /**
   * Constructs a TTY-card string from the input observation data fields
   * @param secClass           security classification (in-Character)
   * @param satNum             satellite number (in-Integer)
   * @param senNum             sensor number (in-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (in-Double)
   * @param elOrDec            elevation or declination (deg) (in-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (in-Double)
   * @param range              range (km) (in-Double)
   * @param rangeRate          range rate (km/s), or equinox indicator (0-3) for obs type 5/9 (in-Double)
   * @param elRate             elevation rate (deg/s) (in-Double)
   * @param azRate             azimuth rate (deg/s) (in-Double)
   * @param rangeAccel         range acceleration (km/s^2) (in-Double)
   * @param obsType            observation type (in-Character)
   * @param pos                position XYZ (km) (ECI or EFG) (in-Double[3])
   * @param ttyCard1           first line of a TTY card (out-Character[512])
   * @param ttyCard2           second line of a TTY card (might be unavailable for certain obs type) (out-Character[512])
   */
   public static native void ObsFieldsToTTYCard(char secClass, int satNum, int senNum, double obsTimeDs50utc, double elOrDec, double azOrRA, double range, double rangeRate, double elRate, double azRate, double rangeAccel, char obsType, double[] pos, byte[] ttyCard1, byte[] ttyCard2);


   /**
   * Computes an obsKey from individually provided fields
   * @param satNum             input satellite's number (in-Integer)
   * @param senNum             input sensor's number (in-Integer)
   * @param obsTimeDs50utc     input observation time in days since 1950, UTC (in-Double)
   * @return The newly created observation Key
   */
   public static native long ObsFieldsToObsKey(int satNum, int senNum, double obsTimeDs50utc);


   /**
   * Works like ObsFieldsToObsKey but designed for Matlab
   * @param satNum             input satellite's number (in-Integer)
   * @param senNum             input sensor's number (in-Integer)
   * @param obsTimeDs50utc     input observation time in days since 1950, UTC (in-Double)
   * @param obsKey             The newly created observation Key (out-Long)
   */
   public static native void ObsFieldsToObsKeyML(int satNum, int senNum, double obsTimeDs50utc, LongByReference obsKey);


   /**
   * Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
   * @param b3ObsCard          input B3 observation string (in-Character[512])
   * @param secClass           security classification (out-Character)
   * @param satNum             satellite number (out-Integer)
   * @param senNum             sensor number (out-Integer)
   * @param obsTimeDs50utc     observation time in days since 1950 UTC (out-Double)
   * @param elOrDec            elevation or declination (deg) (out-Double)
   * @param azOrRA             azimuth or right-ascension (deg) (out-Double)
   * @param range              range (km) (out-Double)
   * @param rangeRate          range rate (km/s) (out-Double)
   * @param elRate             elevation rate (deg/s) (out-Double)
   * @param azRate             azimuth rate (deg/s) (out-Double)
   * @param rangeAccel         range acceleration (km/s^2) (out-Double)
   * @param obsType            observation type (out-Character)
   * @param trackInd           track position indicator (3=start track ob, 4=in track ob, 5=end track ob) (out-Integer)
   * @param astat              association status assigned by SPADOC (out-Integer)
   * @param siteTag            original satellite number (out-Integer)
   * @param spadocTag          SPADOC-asssigned tag number (out-Integer)
   * @param pos                position XYZ (km) (ECI or EFG) (out-Double[3])
   * @return 0 if the data is successfully parsed, non-0 if there is an error
   */
   public static native int ObsB3Parse(String b3ObsCard, ByteByReference secClass, IntByReference satNum, IntByReference senNum, DoubleByReference obsTimeDs50utc, DoubleByReference elOrDec, DoubleByReference azOrRA, DoubleByReference range, DoubleByReference rangeRate, DoubleByReference elRate, DoubleByReference azRate, DoubleByReference rangeAccel, ByteByReference obsType, IntByReference trackInd, IntByReference astat, IntByReference siteTag, IntByReference spadocTag, double[] pos);


   /**
   * Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
   * @param line1              input observation string 1 (B3/B3E/line 1 TTY/CSV) (in-Character[512])
   * @param line2              input observation string 2 (line 2 of two-line TTY) (in-Character[512])
   * @param xa_obs             The array containing observation data, see XA_OBS_? for array arrangement (out-Double[64])
   * @return 0 if the data is successfully parsed, non-0 if there is an error
   */
   public static native int ObsParse(String line1, String line2, double[] xa_obs);


   /**
   * Loads observation data from an input text file and group them together in the specified groupd id (gid).
   * This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
   * @param obsFile            The name of the file containing obs-related data (in-Character[512])
   * @param gid                user specified group id (in-Integer)
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int ObsLoadFileGID(String obsFile, int gid);


   /**
   * Saves the currently loaded obs data belong to the specified group id (gid) to a file 
   * @param obsFile            The name of the file in which to save the settings (in-Character[512])
   * @param gid                Group ID number (in-Integer)
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param obsForm            Specifies the obs format in which to save the file (0 = B3 format, 1 = TTY, 2 = CSV) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int ObsSaveFileGID(String obsFile, int gid, int saveMode, int obsForm);


   /**
   * Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
   * @param gid                Group ID number (in-Integer)
   * @return 0 if the observations are successfully removed, non-0 if there is an error
   */
   public static native int ObsRemoveGID(int gid);


   /**
   * Returns the number of observations currently loaded that have the same gid
   * @param gid                Group ID number (in-Integer)
   * @return The number of observations currently loaded that have the same group id
   */
   public static native int ObsGetCountGID(int gid);


   /**
   * Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
   * Sort options (order):
   * (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   * (+/-)2 = (descending/ascending) time, elevation
   * (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   * (+/-)4 = (descending/ascending) sensor, satno, time, elev
   * (+/-)5 = (descending/ascending) sensor, time, elevation
   * (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   * (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   * (+/-)8 = (reversed/same)        order as obs were read
   * 9 : as is in the tree
   * @param gid                Group ID number (in-Integer)
   * @param order              Specifies the order in which the obsKeys should be returned (in-Integer)
   * @param obsKeys            The array in which to store the obsKeys (out-Long[*])
   */
   public static native void ObsGetLoadedGID(int gid, int order, long[] obsKeys);


   /**
   * Converts obs type from character to integer
   * @param obsTypeChar        The input obs type character (in-Character)
   * @return The resulting obs type integer
   */
   public static native int ObsTypeCToI(char obsTypeChar);


   /**
   * Converts obs type from integer to character
   * @param obsTypeInt         The input obs type integer (in-Integer)
   * @return The resulting obs type character
   */
   public static native char ObsTypeIToC(int obsTypeInt);


   /**
   * Resets obs selection settings
   */
   public static native void ObsResetSelObs();


   /**
   * Computes other states of the input observation
   * <br>
   * The table below indicates which index values correspond to which fields in the xa_obState array.
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>0</td><td>Satellite number</td></tr>
   * <tr><td>1</td><td>Sensor number</td></tr>
   * <tr><td>2</td><td>Observation time in DS50UTC</td></tr>
   * <tr><td>10</td><td>Position X/ECI (km)</td></tr>
   * <tr><td>11</td><td>Position Y/ECI (km)</td></tr>
   * <tr><td>12</td><td>Position Z/ECI (km)</td></tr>
   * <tr><td>13</td><td>Velocity X/ECI (km/s)</td></tr>
   * <tr><td>14</td><td>Velocity Y/ECI (km/s)</td></tr>
   * <tr><td>15</td><td>Velocity Z/ECI (km/s)</td></tr>
   * <tr><td>16</td><td>Geodetic latitude (deg)</td></tr>
   * <tr><td>17</td><td>Geodetic longitude (deg)</td></tr>
   * <tr><td>18</td><td>Geodetic height (km)</td></tr>
   * <tr><td>19</td><td>Position X/EFG (km)</td></tr>
   * <tr><td>20</td><td>Position Y/EFG (km)</td></tr>
   * <tr><td>21</td><td>Position Z/EFG (km)</td></tr>
   * </table>
   * @param obsKey             The observation's unique key (in-Long)
   * @param range_km           Use this default range (km) for angle only obs (in-Double)
   * @param xa_obState         Data derived from the obs data.  see XA_OBSTATE_? (out-Double[64])
   * @return 0 if the observation states are successfully computed
   */
   public static native int ObsGetStates(long obsKey, double range_km, double[] xa_obState);


   /**
   * Computes observation states from the observation data
   * See ObsGetStates for a list of the values for the xa_obState parameter.
   * @param xa_obs             Array containing observation data, see XA_OBS_? for array arrangement (in-Double[64])
   * @param xa_obState         Data derived from the obs data.  see XA_OBSTATE_? (out-Double[64])
   * @return 0 if the observation states are successfully computed
   */
   public static native int ObsDataToStates(double[] xa_obs, double[] xa_obState);


   /**
   * Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
   * @param xa_obs             The array containing observation data, see XA_OBS_? for array arrangement (in-Double[64])
   * @param obsForm            Desired obs string format (B3 = 0, TTY=1, CSV=2) (in-Integer)
   * @param line1              output observation string 1 (B3/B3E/line 1 TTY/CSV) (out-Character[512])
   * @param line2              output observation string 2 (line 2 of two-line TTY if obsForm = 1) (out-Character[512])
   * @return 0 if the data is successfully , non-0 if there is an error
   */
   public static native int ObsArrToLines(double[] xa_obs, int obsForm, byte[] line1, byte[] line2);


   /**
   * Sets OBS key mode
   * This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
   * and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
   * @param obs_keyMode        Desired obs key mode (see OBS_KEYMODE_? for available modes) (in-Integer)
   * @return 0 if the set is successful, non-0 if there is an error.
   */
   public static native int SetObsKeyMode(int obs_keyMode);


   /**
   * Gets current OBS key mode
   * @return Current obs key mode (see OBS_KEYMODE_? for available modes)
   */
   public static native int GetObsKeyMode();


   /**
   * Returs the satellite number associated with the input obsKey
   * @param obsKey             The observation's unique key (in-Long)
   * @return The satellite number associated with the input obsKey (satNum = -1 if obsKey doesn't exist)
   */
   public static native int SatNumFrObsKey(long obsKey);


   /**
   * Returs the sensor number associated with the input obsKey
   * @param obsKey             The observation's unique key (in-Long)
   * @return The satellite number associated with the input obsKey (senNum = -1 if obsKey doesn't exist)
   */
   public static native int SenNumFrObsKey(long obsKey);


   /**
   * Retrieves only obs that match the selection criteria
   * @param xa_selob           Obs secletion criteria, see XA_SELOB_? for array arrangement (in-Double[128])
   * @param order              Specifies the order in which the obsKeys should be returned (in-Integer)
   * @param numMatchedObss     Number of obs that match the obs selection criteria (out-Integer)
   * @param obsKeys            The array in which to store the matching obs' obsKey - make sure the array is big enough to store all the returning obsKeys (<= ObsGetCount()) (out-Long[*])
   */
   public static native void ObsGetSelected(double[] xa_selob, int order, IntByReference numMatchedObss, long[] obsKeys);
   
   // Equinox indicator
   /** time of observation */
   public static final int EQUINOX_OBSTIME = 0;
   /** time @ 0 Jan Year of Date */
   public static final int EQUINOX_OBSYEAR = 1;
   /** J2000 */
   public static final int EQUINOX_J2K     = 2;
   /** B1950 */
   public static final int EQUINOX_B1950   = 3;
   
   // Indexes for sorting ob
   // Sort options:
   // (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
   // (+/-) 2 = (descending/ascending) time, elevation
   // (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
   // (+/-) 4 = (descending/ascending) sensor, satno, time, elev
   // (+/-) 5 = (descending/ascending) sensor, time, elevation
   // (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
   // (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
   // (+/-)10 = (descending/ascending) satno, sensor, time
   
   /** sort order is time, sensor, obsType, elev (negative value for reverse order) */
   public static final int SORT_TIMESENTYPEEL      =  1;
   /** sort order is time, elevation (negative value for reverse order) */
   public static final int SORT_TIMEEL             =  2;
   /** sort order is time, sensor, otype, el, satno (negative value for reverse order) */
   public static final int SORT_TIMESENTYPEELSAT   =  3;
   /** sort order is sensor, satno, time, elev (negative value for reverse order) */
   public static final int SORT_SENSATTIMEEL       =  4;
   /** sort order is sensor, time, elevation (negative value for reverse order) */
   public static final int SORT_SENTIMEEL          =  5;
   /** sort order is sensor, satno, obsType, time, elev (negative value for reverse order) */
   public static final int SORT_SENSATTYPETIMEEL   =  6;
   /** sort order is satno, time, sensor, otype, el (negative value for reverse order) */
   public static final int SORT_SATTIMESENTYPEEL   =  7;
   /** sort order is the order of obs when they were loaded */
   public static final int SORT_ORDERASREAD        =  8;
   /** sort order is satno, sensor, time (negative value for reverse order) */
   public static final int SORT_SATSENTIME         = 10;
   
   
   // Indexes of different obs file format
   /** B3 obs format */
   public static final int OBSFORM_B3   = 0;
   /** Transmission obs format */
   public static final int OBSFORM_TTY  = 1;
   /** CSV obs format */
   public static final int OBSFORM_CSV  = 2;
   /** Radio Frequency (TDOA/FDOA) observations */
   public static final int OBSFORM_RF   = 3;
   
   public static final int BADOBSKEY = -1;
   public static final int DUPOBSKEY = 0;
   
   
   // Different key mode options for obsKey
   /** Default - duplicate obs can not be loaded in binary tree */
   public static final int OBS_KEYMODE_NODUP  = 0;
   /** Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree) */
   public static final int OBS_KEYMODE_DMA    = 1;
   
   // CSV sigma type indicator
   public static final int CSVSIGMATYPE = 7;
   
   // Indexes of Observation data fields
   /** security classification */
   public static final int XF_OBS_SECCLASS     =  1;
   /** satellite number */
   public static final int XF_OBS_SATNUM       =  2;
   /** sensor number */
   public static final int XF_OBS_SENNUM       =  3;
   /** observation time in days since 1950 UTC */
   public static final int XF_OBS_DS50UTC      =  4;
   /** elevation (deg) */
   public static final int XF_OBS_ELEVATION    =  5;
   /** declination (deg) */
   public static final int XF_OBS_DECLINATION  =  6;
   /** azimuth (deg) */
   public static final int XF_OBS_AZIMUTH      =  7;
   /** right-ascension (deg) */
   public static final int XF_OBS_RA           =  8;
   /** range (km) */
   public static final int XF_OBS_RANGE        =  9;
   /** range rate (km/s) */
   public static final int XF_OBS_RANGERATE    = 10;
   /** elevation rate (deg/s) */
   public static final int XF_OBS_ELRATE       = 11;
   /** azimuth rate (deg/s) */
   public static final int XF_OBS_AZRATE       = 12;
   /** range acceleration (km/s^2) */
   public static final int XF_OBS_RANGEACCEL   = 13;
   /** observation type */
   public static final int XF_OBS_OBSTYPE      = 14;
   /** track position indicator (3=start track ob, 4=in track ob, 5=end track ob) */
   public static final int XF_OBS_TRACKIND     = 15;
   /** association status assigned by SPADOC */
   public static final int XF_OBS_ASTAT        = 16;
   /** original satellite number */
   public static final int XF_OBS_SITETAG      = 17;
   /** SPADOC-asssigned tag number */
   public static final int XF_OBS_SPADOCTAG    = 18;
   /** position X/EFG (km) */
   public static final int XF_OBS_POSE         = 19;
   /** position Y/EFG (km) */
   public static final int XF_OBS_POSF         = 20;
   /** position Z/EFG (km) */
   public static final int XF_OBS_POSG         = 21;
   /** position X/ECI (km) */
   public static final int XF_OBS_POSX         = 22;
   /** position Y/ECI (km) */
   public static final int XF_OBS_POSY         = 23;
   /** position Z/ECI (km) */
   public static final int XF_OBS_POSZ         = 24;
   
   /** Principal Polarization RCS */
   public static final int XF_OBS_RCS_PP       = 25;
   /** Orthogonal Polarization RCS */
   public static final int XF_OBS_RCS_OP       = 26;
   /** Principal Polarization RCS sigma */
   public static final int XF_OBS_RCS_PPS      = 27;
   /** Orthogonal Polarization RCS sigma */
   public static final int XF_OBS_RCS_OPS      = 28;
   /** Radar Signal to Noise Ratio */
   public static final int XF_OBS_SNR          = 29;
   /** Azimuth of Boresite */
   public static final int XF_OBS_BORE_AZ      = 30;
   /** Elevation of Boresite */
   public static final int XF_OBS_BORE_EL      = 31;
   /** Apparent Visual magnitude */
   public static final int XF_OBS_VISMAG       = 32;
   /** GEO Normalized Visual magnitude */
   public static final int XF_OBS_VISMAG_NORM  = 33;
   /** Solar Phase Angle */
   public static final int XF_OBS_SOL_PHASE    = 34;
   /** Frame Number */
   public static final int XF_OBS_FRAME        = 35;
   /** Aberration correction indicator (0=YES, 1=NO) */
   public static final int XF_OBS_ABERRATION   = 36;
   /** Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations */
   public static final int XF_OBS_ASTAT_METHOD = 37;
   
   // Indexes of observation data in an array
   /** security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret */
   public static final int XA_OBS_SECCLASS     =  0;
   /** satellite number */
   public static final int XA_OBS_SATNUM       =  1;
   /** sensor number */
   public static final int XA_OBS_SENNUM       =  2;
   /** observation time in days since 1950 UTC */
   public static final int XA_OBS_DS50UTC      =  3;
   /** observation type */
   public static final int XA_OBS_OBSTYPE      = 11;
   
   
   /** elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg) */
   public static final int XA_OBS_ELORDEC      =  4;
   /** azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg) */
   public static final int XA_OBS_AZORRA       =  5;
   /** range (km) */
   public static final int XA_OBS_RANGE        =  6;
   /** range rate (km/s) for non-optical obs type */
   public static final int XA_OBS_RANGERATE    =  7;
   /** elevation rate (deg/s) */
   public static final int XA_OBS_ELRATE       =  8;
   /** azimuth rate (deg/s) */
   public static final int XA_OBS_AZRATE       =  9;
   /** range acceleration (km/s^2) */
   public static final int XA_OBS_RANGEACCEL   = 10;
   /** track position indicator (3=start track ob, 4=in track ob, 5=end track ob) */
   public static final int XA_OBS_TRACKIND     = 12;
   /** association status assigned by SPADOC */
   public static final int XA_OBS_ASTAT        = 13;
   /** original satellite number */
   public static final int XA_OBS_SITETAG      = 14;
   /** SPADOC-asssigned tag number */
   public static final int XA_OBS_SPADOCTAG    = 15;
   /** position X/ECI or X/EFG (km) */
   public static final int XA_OBS_POSX         = 16;
   /** position Y/ECI or Y/EFG (km) */
   public static final int XA_OBS_POSY         = 17;
   /** position Z/ECI or Z/EFG (km) */
   public static final int XA_OBS_POSZ         = 18;
   /** velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OBS_VELX         = 19;
   /** velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OBS_VELY         = 20;
   /** velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OBS_VELZ         = 21;
   /** year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950) */
   public static final int XA_OBS_YROFEQNX     = 22;
   /** aberration indicator, 0-not corrected, 1-corrceted */
   public static final int XA_OBS_ABERRATION   = 23;
   
   /** AZ/RA bias (deg) */
   public static final int XA_OBS_AZORRABIAS   = 33;
   /** EL/DEC bias (deg) */
   public static final int XA_OBS_ELORDECBIAS  = 34;
   /** Range bias (km) */
   public static final int XA_OBS_RGBIAS       = 35;
   /** Range-rate bias (km/sec) */
   public static final int XA_OBS_RRBIAS       = 36;
   /** Time bias (sec) */
   public static final int XA_OBS_TIMEBIAS     = 37;
   /** AZ/RA rate bias (deg/sec) */
   public static final int XA_OBS_RAZORRABIAS  = 38;
   /** EL/DEC rate bias (deg/sec) */
   public static final int XA_OBS_RELORDECBIAS = 39;
   
   /** individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs) */
   public static final int XA_OBS_SIGMATYPE    = 40;
   /** sigma - covariance element 1 - 6 elemens - Az sigma */
   public static final int XA_OBS_SIGMAEL1     = 41;
   /** sigma - covariance element 2 - 6 elemens - El sigma */
   public static final int XA_OBS_SIGMAEL2     = 42;
   /** sigma - covariance element 3 - 6 elemens - Range sigma */
   public static final int XA_OBS_SIGMAEL3     = 43;
   /** sigma - covariance element 4 - 6 elemens - Range rate sigma */
   public static final int XA_OBS_SIGMAEL4     = 44;
   /** sigma - covariance element 5 - 6 elemens - Az rate sigma */
   public static final int XA_OBS_SIGMAEL5     = 45;
   /** sigma - covariance element 6 - 6 elemens - El rate sigma */
   public static final int XA_OBS_SIGMAEL6     = 46;
   /** sigma - covariance element 7 */
   public static final int XA_OBS_SIGMAEL7     = 47;
   /** sigma - covariance element 8 */
   public static final int XA_OBS_SIGMAEL8     = 48;
   /** sigma - covariance element 9 */
   public static final int XA_OBS_SIGMAEL9     = 49;
   /** sigma - covariance element 10 */
   public static final int XA_OBS_SIGMAEL10    = 50;
   /** sigma - covariance element 11 */
   public static final int XA_OBS_SIGMAEL11    = 51;
   /** sigma - covariance element 12 */
   public static final int XA_OBS_SIGMAEL12    = 52;
   /** sigma - covariance element 13 */
   public static final int XA_OBS_SIGMAEL13    = 53;
   /** sigma - covariance element 14 */
   public static final int XA_OBS_SIGMAEL14    = 54;
   /** sigma - covariance element 15 */
   public static final int XA_OBS_SIGMAEL15    = 55;
   /** sigma - covariance element 16 */
   public static final int XA_OBS_SIGMAEL16    = 56;
   /** sigma - covariance element 17 */
   public static final int XA_OBS_SIGMAEL17    = 57;
   /** sigma - covariance element 18 */
   public static final int XA_OBS_SIGMAEL18    = 58;
   /** sigma - covariance element 19 */
   public static final int XA_OBS_SIGMAEL19    = 59;
   /** sigma - covariance element 20 */
   public static final int XA_OBS_SIGMAEL20    = 60;
   /** sigma - covariance element 21 */
   public static final int XA_OBS_SIGMAEL21    = 61;
   
   public static final int XA_OBS_SIZE         = 64;
   
   // Indexes of observation data in an array (Obs Type CSV specific)
   /** security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret */
   public static final int XA_OTCSV_SECCLASS     =  0;
   /** satellite number */
   public static final int XA_OTCSV_SATNUM       =  1;
   /** sensor number */
   public static final int XA_OTCSV_SENNUM       =  2;
   /** observation time in days since 1950 UTC */
   public static final int XA_OTCSV_DS50UTC      =  3;
   /** elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg) */
   public static final int XA_OTCSV_ELORDEC      =  4;
   /** azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg) */
   public static final int XA_OTCSV_AZORRA       =  5;
   /** range (km) */
   public static final int XA_OTCSV_RANGE        =  6;
   /** range rate (km/s) for non-optical obs type */
   public static final int XA_OTCSV_RANGERATE    =  7;
   /** elevation rate (deg/s) */
   public static final int XA_OTCSV_ELRATE       =  8;
   /** azimuth rate (deg/s) */
   public static final int XA_OTCSV_AZRATE       =  9;
   /** range acceleration (km/s^2) */
   public static final int XA_OTCSV_RANGEACCEL   = 10;
   /** observation type */
   public static final int XA_OTCSV_OBSTYPE      = 11;
   /** track position indicator (3=start track ob, 4=in track ob, 5=end track ob) */
   public static final int XA_OTCSV_TRACKIND     = 12;
   /** association status assigned by SPADOC */
   public static final int XA_OTCSV_ASTAT        = 13;
   /** original satellite number */
   public static final int XA_OTCSV_SITETAG      = 14;
   /** SPADOC-asssigned tag number */
   public static final int XA_OTCSV_SPADOCTAG    = 15;
   /** position X/ECI or X/EFG (km) */
   public static final int XA_OTCSV_POSX         = 16;
   /** position Y/ECI or Y/EFG (km) */
   public static final int XA_OTCSV_POSY         = 17;
   /** position Z/ECI or Z/EFG (km) */
   public static final int XA_OTCSV_POSZ         = 18;
   /** velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTCSV_VELX         = 19;
   /** velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTCSV_VELY         = 20;
   /** velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTCSV_VELZ         = 21;
   /** year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950) */
   public static final int XA_OTCSV_YROFEQNX     = 22;
   
   /** Principal Polarization RCS */
   public static final int XA_OTCSV_RCS_PP       = 23;
   /** Orthogonal Polarization RCS */
   public static final int XA_OTCSV_RCS_OP       = 24;
   /** Principal Polarization RCS sigma */
   public static final int XA_OTCSV_RCS_PPS      = 25;
   /** Orthogonal Polarization RCS sigma */
   public static final int XA_OTCSV_RCS_OPS      = 26;
   /** Radar Signal to Noise Ratio */
   public static final int XA_OTCSV_SNR          = 27;
   /** Azimuth of Boresite */
   public static final int XA_OTCSV_BORE_AZ      = 28;
   /** Elevation of Boresite */
   public static final int XA_OTCSV_BORE_EL      = 29;
   /** Apparent Visual magnitude */
   public static final int XA_OTCSV_VISMAG       = 30;
   /** GEO Normalized Visual magnitude */
   public static final int XA_OTCSV_VISMAG_NORM  = 31;
   /** Solar Phase Angle */
   public static final int XA_OTCSV_SOL_PHASE    = 32;
   /** Frame Number */
   public static final int XA_OTCSV_FRAME        = 33;
   /** Aberration correction indicator (0=YES, 1=NO) */
   public static final int XA_OTCSV_ABERRATION   = 34;
   /** 0 = ROTAS, 1 = TRACK */
   public static final int XA_OTCSV_ASTAT_METHOD = 35;
   
   /** must equal to 7 to signify this is CSV format */
   public static final int XA_OTCSV_SIGMATYPE    = 40;
   /** sigma - covariance element 1 - Az sigma */
   public static final int XA_OTCSV_SIGMAEL1     = 41;
   /** sigma - covariance element 2 - El sigma */
   public static final int XA_OTCSV_SIGMAEL2     = 42;
   /** sigma - covariance element 3 - Range sigma */
   public static final int XA_OTCSV_SIGMAEL3     = 43;
   /** sigma - covariance element 4 - Range rate sigma */
   public static final int XA_OTCSV_SIGMAEL4     = 44;
   /** sigma - covariance element 5 - Az rate sigma */
   public static final int XA_OTCSV_SIGMAEL5     = 45;
   /** sigma - covariance element 6 - El rate sigma */
   public static final int XA_OTCSV_SIGMAEL6     = 46;
   /** sigma - covariance element 7 - Time sigma */
   public static final int XA_OTCSV_SIGMAEL7     = 47;
   /** AZ/RA bias */
   public static final int XA_OTCSV_BIAS1        = 48;
   /** EL/DEC bias */
   public static final int XA_OTCSV_BIAS2        = 49;
   /** Range bias */
   public static final int XA_OTCSV_BIAS3        = 50;
   /** Range-rate bias */
   public static final int XA_OTCSV_BIAS4        = 51;
   /** Time bias */
   public static final int XA_OTCSV_BIAS5        = 52;
   
   
   public static final int XA_OTCSV_SIZE         = 64;
   
   // Indexes of observation data in an array
   /** satellite number */
   public static final int XA_OBSTATE_SATNUM       =  0;
   /** sensor number */
   public static final int XA_OBSTATE_SENNUM       =  1;
   /** observation time in days since 1950 UTC */
   public static final int XA_OBSTATE_DS50UTC      =  2;
   
   /** position X/ECI (km) */
   public static final int XA_OBSTATE_POSX         = 10;
   /** position Y/ECI (km) */
   public static final int XA_OBSTATE_POSY         = 11;
   /** position Z/ECI (km) */
   public static final int XA_OBSTATE_POSZ         = 12;
   /** velocity X/ECI (km/s) */
   public static final int XA_OBSTATE_VELX         = 13;
   /** velocity Y/ECI (km/s) */
   public static final int XA_OBSTATE_VELY         = 14;
   /** velocity Z/ECI (km/s) */
   public static final int XA_OBSTATE_VELZ         = 15;
   /** geodetic latitude (deg) */
   public static final int XA_OBSTATE_LAT          = 16;
   /** geodetic longitude (deg) */
   public static final int XA_OBSTATE_LON          = 17;
   /** geodetic height (km) */
   public static final int XA_OBSTATE_HGHT         = 18;
   /** position X/EFG (km) */
   public static final int XA_OBSTATE_POSE         = 19;
   /** position Y/EFG (km) */
   public static final int XA_OBSTATE_POSF         = 20;
   /** position Z/EFG (km) */
   public static final int XA_OBSTATE_POSG         = 21;
   
   
   public static final int XA_OBSTATE_SIZE         = 64;
   
   // Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   // All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   /** range rate (km/s) */
   public static final int XA_OT0_RANGERATE =  7;
   
   /** elevation (deg) */
   public static final int XA_OT1_ELEVATION =  4;
   /** azimuth (deg) */
   public static final int XA_OT1_AZIMUTH   =  5;
   
   /** elevation (deg) */
   public static final int XA_OT2_ELEVATION =  4;
   /** azimuth (deg) */
   public static final int XA_OT2_AZIMUTH   =  5;
   /** range (km) */
   public static final int XA_OT2_RANGE     =  6;
   
   /** elevation (deg) */
   public static final int XA_OT3_ELEVATION =  4;
   /** azimuth (deg) */
   public static final int XA_OT3_AZIMUTH   =  5;
   /** range (km) */
   public static final int XA_OT3_RANGE     =  6;
   /** range rate (km/s) */
   public static final int XA_OT3_RANGERATE =  7;
   
   /** elevation (deg) */
   public static final int XA_OT4_ELEVATION =  4;
   /** azimuth (deg) */
   public static final int XA_OT4_AZIMUTH   =  5;
   /** range (km) */
   public static final int XA_OT4_RANGE     =  6;
   /** range rate (km/s) */
   public static final int XA_OT4_RANGERATE =  7;
   /** elevation rate (deg/s) */
   public static final int XA_OT4_ELRATE    =  8;
   /** azimuth rate (deg/s) */
   public static final int XA_OT4_AZRATE    =  9;
   /** range acceleration (km/s^2) */
   public static final int XA_OT4_RANGEACCEL= 10;
   
   /** declination (deg) */
   public static final int XA_OT5_DECL      =  4;
   /** right ascesion (deg) */
   public static final int XA_OT5_RIGHTASC  =  5;
   /** year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950) */
   public static final int XA_OT5_YROFEQNX  = 22;
   /** ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED */
   public static final int XA_OT5_ABERRATION= 23;
   
   /** range (km) */
   public static final int XA_OT6_RANGE     =  6;
   
   /** elevation (deg) */
   public static final int XA_OT8_ELEVATION =  4;
   /** azimuth (deg) */
   public static final int XA_OT8_AZIMUTH   =  5;
   /** optional - range (km) */
   public static final int XA_OT8_RANGE     =  6;
   /** orbiting sensor position X/EFG (km) */
   public static final int XA_OT8_POSE      = 16;
   /** orbiting sensor position Y/EFG (km) */
   public static final int XA_OT8_POSF      = 17;
   /** orbiting sensor position Z/EFG (km) */
   public static final int XA_OT8_POSG      = 18;
   
   /** declination (deg) */
   public static final int XA_OT9_DECL      =  4;
   /** right ascesion (deg) */
   public static final int XA_OT9_RIGHTASC  =  5;
   /** optional - range (km) */
   public static final int XA_OT9_RANGE     =  6;
   /** orbiting sensor position X/EFG (km) */
   public static final int XA_OT9_POSE      = 16;
   /** orbiting sensor position Y/EFG (km) */
   public static final int XA_OT9_POSF      = 17;
   /** orbiting sensor position Z/EFG (km) */
   public static final int XA_OT9_POSG      = 18;
   /** year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950) */
   public static final int XA_OT9_YROFEQNX  = 22;
   /** ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED */
   public static final int XA_OT9_ABERRATION= 23;
   
   /** position X/ECI or X/EFG (km) */
   public static final int XA_OTP_POSX      = 16;
   /** position Y/ECI or Y/EFG (km) */
   public static final int XA_OTP_POSY      = 17;
   /** position Z/ECI or Z/EFG (km) */
   public static final int XA_OTP_POSZ      = 18;
   
   /** position X/ECI or X/EFG (km) */
   public static final int XA_OTV_POSX      = 16;
   /** position Y/ECI or Y/EFG (km) */
   public static final int XA_OTV_POSY      = 17;
   /** position Z/ECI or Z/EFG (km) */
   public static final int XA_OTV_POSZ      = 18;
   /** velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTV_VELX      = 19;
   /** velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTV_VELY      = 20;
   /** velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY) */
   public static final int XA_OTV_VELZ      = 21;
   
   public static final int XA_OT_SIZE         = 64;
   
   // Obs selection criteria
   /** Seclection mode (unused for now) */
   public static final int XA_SELOB_MODE        =  0;
   
   /** From time */
   public static final int XA_SELOB_FRTIME      =  1;
   /** To time */
   public static final int XA_SELOB_TOTIME      =  2;
   
   /** From time */
   public static final int XA_SELOB_FRIDX       =  3;
   /** To time */
   public static final int XA_SELOB_TOIDX       =  4;
   
   /** Select any obs that match this satellite number #1 */
   public static final int XA_SELOB_SAT1        = 11;
   /** Select any obs that match this satellite number #2 */
   public static final int XA_SELOB_SAT2        = 12;
   /** Select any obs that match this satellite number #3 */
   public static final int XA_SELOB_SAT3        = 13;
   /** Select any obs that match this satellite number #4 */
   public static final int XA_SELOB_SAT4        = 14;
   /** Select any obs that match this satellite number #5 */
   public static final int XA_SELOB_SAT5        = 15;
   /** Select any obs that match this satellite number #6 */
   public static final int XA_SELOB_SAT6        = 16;
   /** Select any obs that match this satellite number #7 */
   public static final int XA_SELOB_SAT7        = 17;
   /** Select any obs that match this satellite number #8 */
   public static final int XA_SELOB_SAT8        = 18;
   /** Select any obs that match this satellite number #9 */
   public static final int XA_SELOB_SAT9        = 19;
   /** Select any obs that match this satellite number #10 */
   public static final int XA_SELOB_SAT10       = 20;
   
   /** Select any obs that are obtained by this sensor site #1 */
   public static final int XA_SELOB_SEN1        = 21;
   /** Select any obs that are obtained by this sensor site #2 */
   public static final int XA_SELOB_SEN2        = 22;
   /** Select any obs that are obtained by this sensor site #3 */
   public static final int XA_SELOB_SEN3        = 23;
   /** Select any obs that are obtained by this sensor site #4 */
   public static final int XA_SELOB_SEN4        = 24;
   /** Select any obs that are obtained by this sensor site #5 */
   public static final int XA_SELOB_SEN5        = 25;
   /** Select any obs that are obtained by this sensor site #6 */
   public static final int XA_SELOB_SEN6        = 26;
   /** Select any obs that are obtained by this sensor site #7 */
   public static final int XA_SELOB_SEN7        = 27;
   /** Select any obs that are obtained by this sensor site #8 */
   public static final int XA_SELOB_SEN8        = 28;
   /** Select any obs that are obtained by this sensor site #9 */
   public static final int XA_SELOB_SEN9        = 29;
   /** Select any obs that are obtained by this sensor site #10 */
   public static final int XA_SELOB_SEN10       = 30;
   
   /** Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only */
   public static final int XA_SELOB_OT1         = 31;
   /** Select any obs that match this obs type #2 */
   public static final int XA_SELOB_OT2         = 32;
   /** Select any obs that match this obs type #3 */
   public static final int XA_SELOB_OT3         = 33;
   /** Select any obs that match this obs type #4 */
   public static final int XA_SELOB_OT4         = 34;
   /** Select any obs that match this obs type #5 */
   public static final int XA_SELOB_OT5         = 35;
   /** Select any obs that match this obs type #6 */
   public static final int XA_SELOB_OT6         = 36;
   /** Select any obs that match this obs type #7 */
   public static final int XA_SELOB_OT7         = 37;
   /** Select any obs that match this obs type #8 */
   public static final int XA_SELOB_OT8         = 38;
   /** Select any obs that match this obs type #9 */
   public static final int XA_SELOB_OT9         = 39;
   /** Select any obs that match this obs type #10 */
   public static final int XA_SELOB_OT10        = 40;
   
   /** From azimuth */
   public static final int XA_SELOB_FRAZ        = 41;
   /** To azimuth */
   public static final int XA_SELOB_TOAZ        = 42;
   /** From elevation */
   public static final int XA_SELOB_FREL        = 43;
   /** To elevation */
   public static final int XA_SELOB_TOEL        = 44;
   /** From right ascension */
   public static final int XA_SELOB_FRRA        = 45;
   /** To right ascension */
   public static final int XA_SELOB_TORA        = 46;
   /** From declincation */
   public static final int XA_SELOB_FRDEC       = 47;
   /** To declination */
   public static final int XA_SELOB_TODEC       = 48;
   /** From range */
   public static final int XA_SELOB_FRRNG       = 49;
   /** To range */
   public static final int XA_SELOB_TORNG       = 50;
   /** From range rate */
   public static final int XA_SELOB_FRRNGRT     = 51;
   /** To range rate */
   public static final int XA_SELOB_TORNGRT     = 52;
   /** From azimuth rate */
   public static final int XA_SELOB_FRAZRT      = 53;
   /** To azimuth rate */
   public static final int XA_SELOB_TOAZRT      = 54;
   /** From elevation rate */
   public static final int XA_SELOB_FRELRT      = 55;
   /** To elevation rate */
   public static final int XA_SELOB_TOELRT      = 56;
   /** From ASTAT (0 to 4) */
   public static final int XA_SELOB_FRASTAT     = 57;
   /** To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0) */
   public static final int XA_SELOB_TOASTAT     = 58;
   
   public static final int XA_SELOB_SIZE        = 128;
   
   
// ========================= End of auto generated code ==========================
}
