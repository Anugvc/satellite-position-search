// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Tle */
public class JnaTle
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "tle";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0.    
   * Initializes Tle DLL for use in the program.
   * If this function returns an error, it is recommended that you stop the program immediately.
   * 
   * An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit. See the documentation for DllMain.dll for details. (in-Long)
   * @return 0 if Tle.dll is initialized successfully, non-0 if there is an error.
   */
   public static native int TleInit(long apAddr);


   /**
   * Returns the information about the Tle DLL.
   * The returned string provides information about the version number, build date, and the platform of the Tle DLL. 
   * @param infoStr            A string to hold the information about the Tle DLL. (out-Character[128])
   */
   public static native void TleGetInfo(byte[] infoStr);


   /**
   * Loads TLEs (satellites) contained in a text file into the TLE DLL's binary tree.
   * You may use this function repeatedly to load TLEs from different input files. However, only unique satKeys are loaded. Duplicated TLEs won't be stored. 
   * 
   * TLEs can be included directly in the specified file, or they can be read from a separate file identified with "ELTFIL=[path\filename]" or "VECFIL=[path\filename]".
   * 
   * The input file is read in two passes. The function first looks for "ELTFIL=" and "VECFIL=" lines, then it looks for TLEs which were included directly. The result of this is that data entered using both methods will be processed, but the "ELTFIL=" and "VECFIL=" data will be processed first.
   * @param tleFile            The name of the file containing two line element sets to be loaded. (in-Character[512])
   * @return 0 if the two line element sets in the file are successfully loaded, non-0 if there is an error.
   */
   public static native int TleLoadFile(String tleFile);


   /**
   * Saves currently loaded TLEs to a file. 
   * In append mode, if the specified file does not exist it will be created.
   * If you call this routine immediately after TleLoadFile(), the TLE contents in the two files should be the same (minus duplicated TLE's or bad TLE's).
   * 
   * The purpose of this function is to save the current state of the loaded TLE's, usually used in GUI applications, for future use.
   * @param tleFile            The name of the file in which to save the TLE's. (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing file. (0 = create new file, 1= append to existing file) (in-Integer)
   * @param xf_tleForm         Specifies the format in which to save the file. (0 = two-line element set format, 1 =  CSV, others = future implementation) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error.
   */
   public static native int TleSaveFile(String tleFile, int saveMode, int xf_tleForm);


   /**
   * Removes a TLE represented by the satKey from memory. 
   * If the users enter an invalid satKey (a non-existing satKey), the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed. (in-Long)
   * @return 0 if the TLE is removed successfully, non-0 if there is an error.
   */
   public static native int TleRemoveSat(long satKey);


   /**
   * Removes all the TLEs from memory.
   * @return 0 if all TLE's are removed successfully from memory, non-0 if there is an error.
   */
   public static native int TleRemoveAllSats();


   /**
   * Returns the number of TLEs currently loaded. 
   * See TleGetLoaded for an example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function TleGetLoaded().
   * @return The number of TLEs currently loaded.
   */
   public static native int TleGetCount();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the TLE's.
   * It is recommended that TleGetCount() be  used to determine how many satellites are currently loaded. This value can then be used to dynamically allocate an array to hold the satKeys.
   * 
   * If you are going to pass a statically allocated array to this function, ensure it is large enough to hold all of the returned satKeys.
   * @param order              Specifies the order in which the satKeys should be returned. 0 = sort in ascending order of satKeys, 1 = sort in descending order of satKeys, 2 = sort in the order in which the satKeys were loaded in memory, 9 = Quickest: sort in the order in which the satKeys were stored in the tree (in-Integer)
   * @param satKeys            The array in which to store the satKeys. (out-Long[*])
   */
   public static native void TleGetLoaded(int order, long[] satKeys);


   /**
   * Adds a TLE (satellite), using its directly specified first and second lines. 
   * The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   * 
   * This function can be called repeatedly to add many TLEs, one at a time.
   * @param line1              The first line of a two line element set (or CSV Tle). (in-Character[512])
   * @param line2              The second line of a two line element set (in-Character[512])
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrLines(String line1, String line2);


   /**
   * This function is similar to TleAddSatFrLines but designed to be used in Matlab.
   * Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrLines. This method is an alternative way to return the satKey output.
   * @param line1              The first line of a two line element set (or CSV Tle). (in-Character[512])
   * @param line2              The second line of a two line element set (in-Character[512])
   * @param satKey             The satKey of the newly added TLE on success, a negative value on error. (out-Long)
   */
   public static native void TleAddSatFrLinesML(String line1, String line2, LongByReference satKey);


   /**
   * Adds a TLE (satellite), using its CSV string format. 
   * @param csvLine            Input CSV TLE string (in-Character[512])
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrCsv(String csvLine);


   /**
   * This function is similar to TleAddSatFrCsv but designed to be used in Matlab.
   * @param csvLine            Input CSV TLE string (in-Character[512])
   * @param satKey             The satKey of the newly added TLE on success, a negative value on error. (out-Long)
   */
   public static native void TleAddSatFrCsvML(String csvLine, LongByReference satKey);


   /**
   * Adds a GP TLE using its individually provided field values. 
   * The function will indicate an error if the specified two line element set corresponds to a satellite that is already in memory.
   * 
   * This function can be called repeatedly to add many satellites (one satellite at a time).
   * 
   * SGP satellites (ephType = 0) use Kozai mean motion. SGP4 satellites (ephType = 2) use Brouwer mean motion.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4) (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrFieldsGP(int satNum, char secClass, String satName, int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);


   /**
   * This function is similar to TleAddSatFrFieldsGP but includes nDotO2 and n2DotO6. 
   * nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4) (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param nDotO2             Mean motion derivative (rev/day /2) (in-Double)
   * @param n2DotO6            Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (in-Double)
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrFieldsGP2(int satNum, char secClass, String satName, int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6);


   /**
   * This function is similar to TleAddSatFrFieldsGP2 but designed to be used in Matlab. 
   * Matlab doesn't seem to correctly return the 19-digit satellite key using TleAddSatFrFieldsGP2. This method is an alternative way to return the satKey output.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4) (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param nDotO2             Mean motion derivative (rev/day /2) (in-Double)
   * @param n2DotO6            Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (in-Double)
   * @param satKey             The satKey of the newly added TLE on success, a negative value on error. (out-Long)
   */
   public static native void TleAddSatFrFieldsGP2ML(int satNum, char secClass, String satName, int epochYr, double epochDays, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6, LongByReference satKey);


   /**
   * Updates a GP satellite's data in memory by providing its individual field values. Note: satNum, year, day, and ephtype can't be updated.
   * The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded satellite, the function will indicate an error.
   * 
   * Remember to use the correct mean motion depending on the satellite's ephType.
   * @param satKey             The satellite's unique key (in-Long)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion  (rev/day) (ephType = 0: Kozai mean motion, ephType = 2: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @return 0 if the TLE is successfully updated, non-0 if there is an error.
   */
   public static native int TleUpdateSatFrFieldsGP(long satKey, char secClass, String satName, double bstar, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);


   /**
   * This function is similar to TleUpdateSatFrFieldsGP but includes nDotO2 and n2DotO6. Note: satNum, year, day, and ephtype can't be updated.
   * nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   * @param satKey             The satellite's unique key (in-Long)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion  (rev/day) (ephType = 0: Kozai mean motion, ephType = 2: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param nDotO2             Mean motion derivative (rev/day /2) (in-Double)
   * @param n2DotO6            Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (in-Double)
   * @return 0 if the TLE is successfully updated, non-0 if there is an error.
   */
   public static native int TleUpdateSatFrFieldsGP2(long satKey, char secClass, String satName, double bstar, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, double nDotO2, double n2DotO6);


   /**
   * Adds an SP satellite using the individually provided field values.
   * Only applies to SP propagator.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bTerm              Ballistic coefficient (m^2/kg) (in-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (in-Double)
   * @param agom               agom (m^2/kg) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrFieldsSP(int satNum, char secClass, String satName, int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);


   /**
   * This function is similar to TleAddSatFrFieldsSP but designed to be used in Matlab.
   * Only applies to SP propagator.
   * Matlab doesn't correctly return the 19-digit satellite key using TleAddSatFrFieldsSP. This method is an alternative way to return the satKey output.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bTerm              Ballistic coefficient (m^2/kg) (in-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (in-Double)
   * @param agom               agom (m^2/kg) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param satKey             The satKey of the newly added TLE on success, a negative value on error. (out-Long)
   */
   public static native void TleAddSatFrFieldsSPML(int satNum, char secClass, String satName, int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, LongByReference satKey);


   /**
   * Updates an SP satellite's data in memory using its individually provided field values. Note: satNum, year, day, and ephtype can't be updated.
   * Only applies to SP propagator.
   * The satellite's unique key will not be changed by this function. If you specify a satKey that does not correspond to a currently loaded TLE, the function will indicate an error. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param bterm              Ballistic coefficient (m^2/kg) (in-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (in-Double)
   * @param agom               agom (m^2/kg) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @return 0 if the TLE is successfully updated, non-0 if there is an error.
   */
   public static native int TleUpdateSatFrFieldsSP(long satKey, char secClass, String satName, double bterm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum);


   /**
   * Updates the value of a field of a TLE. This function can be used for both GP and SP satellites.
   * <br>
   * The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   * satNum (1), Epoch (4), and Ephemeris Type (5) cannot be altered.
   * <table>
   * <caption>table</caption>
   * <tr>
   * 	<td>index</td>
   * 	<td>index Interpretation</td>
   * </tr>
   * <tr><td>1</td><td>Satellite number</td></tr>
   * <tr><td>2</td><td>Security classification</td></tr>
   * <tr><td>3</td><td>Satellite international designator</td></tr>
   * <tr><td>4</td><td>Epoch</td></tr>
   * <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   * coefficient agom (m2/kg)</td></tr>
   * <tr><td>6</td><td>Ephemeris type</td></tr>
   * <tr><td>7</td><td>Element set number</td></tr>
   * <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   * <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   * <tr><td>10</td><td>Eccentricity</td></tr>
   * <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   * <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   * <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   * <tr><td>14</td><td>Revolution number at epoch</td></tr>
   * <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   * ballistic coefficient (m2/kg)</td></tr>
   * <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   * SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   * </table>
   * @param satKey             The satellite's unique key. (in-Long)
   * @param xf_Tle             Predefined number specifying which field to set. See remarks. (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string. (in-Character[512])
   * @return 0 if the TLE is successfully updated, non-0 if there is an error
   */
   public static native int TleSetField(long satKey, int xf_Tle, String valueStr);


   /**
   * Retrieves the value of a specific field of a TLE. 
   * <br>
   * The table below indicates which index values correspond to which fields. Make sure to use the appropriate field index for GP TLEs and SP TLEs.  For indexes 5, 15 and 16, the interpretation depends on the ephemeris type of the TLE.
   * <table>
   * <caption>table</caption>
   * <tr>
   * 	<td>index</td>
   * 	<td>index Interpretation</td>
   * </tr>
   * <tr><td>1</td><td>Satellite number</td></tr>
   * <tr><td>2</td><td>Security classification</td></tr>
   * <tr><td>3</td><td>Satellite international designator</td></tr>
   * <tr><td>4</td><td>Epoch</td></tr>
   * <tr><td>5</td><td>Ephemeris type = 0,2: B* drag term (1/er) <br>Ephemeris type = 6   : SP radiation pressure
   * coefficient agom (m2/kg)</td></tr>
   * <tr><td>6</td><td>Ephemeris type</td></tr>
   * <tr><td>7</td><td>Element set number</td></tr>
   * <tr><td>8</td><td>Orbit inclination (degrees)</td></tr>
   * <tr><td>9</td><td>Right ascension of ascending node (degrees)</td></tr>
   * <tr><td>10</td><td>Eccentricity</td></tr>
   * <tr><td>11</td><td>Argument of perigee (degrees)</td></tr>
   * <tr><td>12</td><td>Mean anomaly (degrees)</td></tr>
   * <tr><td>13</td><td>Mean motion (rev/day)</td></tr>
   * <tr><td>14</td><td>Revolution number at epoch</td></tr>
   * <tr><td>15</td><td>Ephemeris type = 0: SGP mean motion derivative (rev/day /2) or <br>Ephemeris type = 6: SP
   * ballistic coefficient (m2/kg)</td></tr>
   * <tr><td>16</td><td>Ephemeris type = 0: SGP mean motion second derivative (rev/day**2 /6) or <br>Ephemeris type = 6:
   * SP Outgassing parameter/Thrust Acceleration (km/s2)</td></tr>
   * </table>
   * @param satKey             The satellite's unique key. (in-Long)
   * @param xf_Tle             Predefined number specifying which field to retrieve. See remarks. (in-Integer)
   * @param valueStr           A string to contain the value of the requested field. (out-Character[512])
   * @return 0 if the TLE data is successfully retrieved, non-0 if there is an error.
   */
   public static native int TleGetField(long satKey, int xf_Tle, byte[] valueStr);


   /**
   * Retrieves all of the data for a GP satellite in a single function call. 
   * This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param secClass           Security classification (out-Character)
   * @param satName            Satellite international designator (out-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (out-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (out-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (out-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP) (out-Integer)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Orbit inclination (degrees) (out-Double)
   * @param node               Right ascension of ascending node (degrees) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (degrees) (out-Double)
   * @param mnAnomaly          Mean anomaly (deg) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (out-Double)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @return 0 if all values are retrieved successfully, non-0 if there is an error.
   */
   public static native int TleGetAllFieldsGP(long satKey, IntByReference satNum, ByteByReference secClass, byte[] satName, IntByReference epochYr, DoubleByReference epochDays, DoubleByReference bstar, IntByReference ephType, IntByReference elsetNum, DoubleByReference incli, DoubleByReference node, DoubleByReference eccen, DoubleByReference omega, DoubleByReference mnAnomaly, DoubleByReference mnMotion, IntByReference revNum);


   /**
   * Retrieves all of the data (including nDotO2 and n2DotO6) for a GP satellite in a single function call. 
   * This function is similar to TleGetAllFieldsGP but also includes nDotO2 and n2DotO6. 
   * This function only works for GP satellites. The field values are placed in the corresponding parameters of the function. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param secClass           Security classification (out-Character)
   * @param satName            Satellite international designator (out-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (out-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (out-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (out-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP) (out-Integer)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Orbit inclination (degrees) (out-Double)
   * @param node               Right ascension of ascending node (degrees) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (degrees) (out-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (out-Double)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @param nDotO2             Mean motion derivative (rev/day /2) (out-Double)
   * @param n2DotO6            Mean motion second derivative (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (out-Double)
   * @return 0 if all values are retrieved successfully, non-0 if there is an error.
   */
   public static native int TleGetAllFieldsGP2(long satKey, IntByReference satNum, ByteByReference secClass, byte[] satName, IntByReference epochYr, DoubleByReference epochDays, DoubleByReference bstar, IntByReference ephType, IntByReference elsetNum, DoubleByReference incli, DoubleByReference node, DoubleByReference eccen, DoubleByReference omega, DoubleByReference mnAnomaly, DoubleByReference mnMotion, IntByReference revNum, DoubleByReference nDotO2, DoubleByReference n2DotO6);


   /**
   * Retrieves all of the data for an SP satellite in a single function call.
   * Only applies to SP propagator.
   * This function only works for SP satellites. The field values are placed in the corresponding parameters of the function. 
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param secClass           Security classification (out-Character)
   * @param satName            Satellite international designator (out-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (out-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (out-Double)
   * @param bTerm              Ballistic coefficient (m^2/kg) (out-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (out-Double)
   * @param agom               Agom (m^2/kg) (out-Double)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Orbit inclination (degrees) (out-Double)
   * @param node               Right ascension of ascending node (degrees) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (degrees) (out-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (out-Double)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @return 0 if all values are retrieved successfully, non-0 if there is an error.
   */
   public static native int TleGetAllFieldsSP(long satKey, IntByReference satNum, ByteByReference secClass, byte[] satName, IntByReference epochYr, DoubleByReference epochDays, DoubleByReference bTerm, DoubleByReference ogParm, DoubleByReference agom, IntByReference elsetNum, DoubleByReference incli, DoubleByReference node, DoubleByReference eccen, DoubleByReference omega, DoubleByReference mnAnomaly, DoubleByReference mnMotion, IntByReference revNum);


   /**
   * Parses GP data from the input first and second lines of a two line element set or a CSV Tle.
   * This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   * @param line1              The first line of the two line element set or a CSV tle (in-Character[512])
   * @param line2              The second line of the two line element set or an empty string for a CVS tle (in-Character[512])
   * @param satNum             Satellite number (out-Integer)
   * @param secClass           Security classification (out-Character)
   * @param satName            Satellite international designator (out-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (out-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (out-Double)
   * @param nDotO2             n-dot/2 (for SGP, ephType = 0) (out-Double)
   * @param n2DotO6            n-double-dot/6 (for SGP, ephType = 0) or agom (ephType = 4, XP) (m2/kg) (out-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (out-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4, 6: SP) (out-Integer)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Orbit inclination (degrees) (out-Double)
   * @param node               Right ascension of ascending node (degrees) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (degrees) (out-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (out-Double)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @return 0 if the TLE is parsed successfully, non-0 if there is an error.
   */
   public static native int TleParseGP(String line1, String line2, IntByReference satNum, ByteByReference secClass, byte[] satName, IntByReference epochYr, DoubleByReference epochDays, DoubleByReference nDotO2, DoubleByReference n2DotO6, DoubleByReference bstar, IntByReference ephType, IntByReference elsetNum, DoubleByReference incli, DoubleByReference node, DoubleByReference eccen, DoubleByReference omega, DoubleByReference mnAnomaly, DoubleByReference mnMotion, IntByReference revNum);


   /**
   * Parses GP data from the input first and second lines of a two line element set or a CSV tle and store that data back into the output parameters.
   * This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   * @param line1              The first line of the two line element set or a CSV tle (in-Character[512])
   * @param line2              The second line of the two line element set or an empty string for a CVS tle (in-Character[512])
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (out-Double[64])
   * @param xs_tle             Output string that contains all TLE's text fields, see XS_TLE_? for column arrangement (out-Character[512])
   * @return 0 if the TLE is parsed successfully, non-0 if there is an error.
   */
   public static native int TleLinesToArray(String line1, String line2, double[] xa_tle, byte[] xs_tle);


   /**
   * Parses SP data from the input first and second lines of a two line element set.
   * Only applies to SP propagator.
   * This function only parses data from the input TLE but DOES NOT load/add the input TLE to memory.
   * @param line1              The first line of the two line element set (in-Character[512])
   * @param line2              The second line of the two line element set (in-Character[512])
   * @param satNum             Satellite number (out-Integer)
   * @param secClass           Security classification (out-Character)
   * @param satName            Satellite international designator (out-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (out-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (out-Double)
   * @param bTerm              Ballistic coefficient (m^2/kg) (out-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (out-Double)
   * @param agom               Agom (m^2/kg) (out-Double)
   * @param elsetNum           Element set number (out-Integer)
   * @param incli              Orbit inclination (degrees) (out-Double)
   * @param node               Right ascension of ascending node (degrees) (out-Double)
   * @param eccen              Eccentricity (out-Double)
   * @param omega              Argument of perigee (degrees) (out-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (out-Double)
   * @param mnMotion           Mean motion (rev/day) (out-Double)
   * @param revNum             Revolution number at epoch (out-Integer)
   * @return 0 if the TLE is parsed successfully, non-0 if there is an error.
   */
   public static native int TleParseSP(String line1, String line2, IntByReference satNum, ByteByReference secClass, byte[] satName, IntByReference epochYr, DoubleByReference epochDays, DoubleByReference bTerm, DoubleByReference ogParm, DoubleByReference agom, IntByReference elsetNum, DoubleByReference incli, DoubleByReference node, DoubleByReference eccen, DoubleByReference omega, DoubleByReference mnAnomaly, DoubleByReference mnMotion, IntByReference revNum);


   /**
   * Returns the first and second lines representation of a TLE of a satellite. 
   * @param satKey             The satellite's unique key. (in-Long)
   * @param line1              A string to hold the first line of the TLE (out-Character[512])
   * @param line2              A string to hold the second line of the TLE (out-Character[512])
   * @return 0 if successful, non-0 on error.
   */
   public static native int TleGetLines(long satKey, byte[] line1, byte[] line2);


   /**
   * Returns the CSV string representation of a TLE of a satellite. 
   * @param satKey             The satellite's unique key. (in-Long)
   * @param csvLine            A string to hold the TLE in csv format. (out-Character[512])
   * @return 0 if successful, non-0 on error.
   */
   public static native int TleGetCsv(long satKey, byte[] csvLine);


   /**
   * Constructs a TLE from individually provided GP data fields.
   * This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param nDotO2             N Dot/2 (rev/day /2) (in-Double)
   * @param n2DotO6            N Double Dot/6 (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (in-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4) (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param line1              Returned first line of a TLE. (out-Character[512])
   * @param line2              Returned second line of a TLE. (out-Character[512])
   */
   public static native void TleGPFieldsToLines(int satNum, char secClass, String satName, int epochYr, double epochDays, double nDotO2, double n2DotO6, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, byte[] line1, byte[] line2);


   /**
   * Constructs a TLE from individually provided GP data fields.
   * This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param nDotO2             N Dot/2 (rev/day /2) (in-Double)
   * @param n2DotO6            N Double Dot/6 (rev/day**2 /6) or agom (ephType = 4, XP) (m2/kg) (in-Double)
   * @param bstar              B* drag term (1/er) (ephType = 0, 2) or BTerm - ballistic coefficient (m2/kg) (ephType = 4, XP) (in-Double)
   * @param ephType            Satellite ephemeris type (0: SGP, 2: SGP4) (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (ephType = 0: Kozai mean motion, ephType = 2 or 4: Brouwer mean motion) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param csvLine            A string to hold the TLE in csv format. (out-Character[512])
   */
   public static native void TleGPFieldsToCsv(int satNum, char secClass, String satName, int epochYr, double epochDays, double nDotO2, double n2DotO6, double bstar, int ephType, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, byte[] csvLine);


   /**
   * Constructs a TLE from GP data stored in the input parameters.
   * This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   * <br>
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param xs_tle             Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement (in-Character[512])
   * @param line1              Returned first line of a TLE (out-Character[512])
   * @param line2              Returned second line of a TLE (out-Character[512])
   */
   public static native void TleGPArrayToLines(double[] xa_tle, String xs_tle, byte[] line1, byte[] line2);


   /**
   * Constructs a TLE from GP data stored in the input parameters.
   * This function only parses data from the input data but DOES NOT load/add the TLE to memory.
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param xs_tle             Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement (in-Character[512])
   * @param csvline            Returned csv format elements. (out-Character[512])
   */
   public static native void TleGPArrayToCsv(double[] xa_tle, String xs_tle, byte[] csvline);


   /**
   * Constructs a TLE from individually provided SP data fields.
   * Only applies to SP propagator.
   * This function only parses data from the input fields but DOES NOT load/add the TLE to memory.
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param satNum             Satellite number (in-Integer)
   * @param secClass           Security classification (in-Character)
   * @param satName            Satellite international designator (in-Character[8])
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param bTerm              Ballistic coefficient (m^2/kg) (in-Double)
   * @param ogParm             Outgassing parameter/Thrust Acceleration (km/s^2) (in-Double)
   * @param agom               Agom (m^2/kg) (in-Double)
   * @param elsetNum           Element set number (in-Integer)
   * @param incli              Orbit inclination (degrees) (in-Double)
   * @param node               Right ascension of ascending node (degrees) (in-Double)
   * @param eccen              Eccentricity (in-Double)
   * @param omega              Argument of perigee (degrees) (in-Double)
   * @param mnAnomaly          Mean anomaly (degrees) (in-Double)
   * @param mnMotion           Mean motion (rev/day) (in-Double)
   * @param revNum             Revolution number at epoch (in-Integer)
   * @param line1              Returned first line of a TLE. (out-Character[512])
   * @param line2              Returned second line of a TLE. (out-Character[512])
   */
   public static native void TleSPFieldsToLines(int satNum, char secClass, String satName, int epochYr, double epochDays, double bTerm, double ogParm, double agom, int elsetNum, double incli, double node, double eccen, double omega, double mnAnomaly, double mnMotion, int revNum, byte[] line1, byte[] line2);


   /**
   * Returns the first satKey from the currently loaded set of TLEs that contains the specified satellite number.
   * This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   * A negative value will be returned if there is an error.
   * @param satNum             Satellite number (in-Integer)
   * @return The satellite's unique key
   */
   public static native long TleGetSatKey(int satNum);


   /**
   * This function is similar to TleGetSatKey but designed to be used in Matlab. 
   * Matlab doesn't correctly return the 19-digit satellite key using TleGetSatKey. This method is an alternative way to return the satKey output.
   * This function is useful when Tle.dll is used in applications that require only one record (one TLE entry) for one satellite, and which refer to that TLE by its satellite number. This function can be used to retrieve a satKey in that situation, which is useful since the Standardized Astrodynamic Algorithms library works only with satKeys.
   * A negative value will be returned in satKey if there is an error.
   * @param satNum             Satellite number (in-Integer)
   * @param satKey             The satKey of the satellite if a satellite with the requested number is found in the set of loaded satellites, a negative value if there is an error. (out-Long)
   */
   public static native void TleGetSatKeyML(int satNum, LongByReference satKey);


   /**
   * Computes a satKey from the input data.
   * There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   * 
   * This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different. 
   * A negative value will be returned if there is an error.
   * @param satNum             Satellite number (in-Integer)
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param ephType            Ephemeris type (in-Integer)
   * @return The resulting satellite key if the computation is successful; a negative value if there is an error.
   */
   public static native long TleFieldsToSatKey(int satNum, int epochYr, double epochDays, int ephType);


   /**
   * This function is similar to TleFieldsToSatKey but designed to be used in Matlab. 
   * Matlab doesn't correctly return the 19-digit satellite key using TleFieldsToSatKey. This method is an alternative way to return the satKey output.
   * There is no need for a matching satellite to be loaded prior to using this function. The function simply computes the satKey from the provided fields.
   * 
   * This is the proper way to reconstruct a satKey from its fields. If you use your own routine to do this, the computed satKey might be different.
   * A negative value will be returned in satKey if there is an error.
   * @param satNum             Satellite number (in-Integer)
   * @param epochYr            Element epoch time - year, [YY]YY (in-Integer)
   * @param epochDays          Element epoch time - day of year, DDD.DDDDDDDD (in-Double)
   * @param ephType            Ephemeris type (in-Integer)
   * @param satKey             The satKey if the computation is successful, a negative value if there is an error. (out-Long)
   */
   public static native void TleFieldsToSatKeyML(int satNum, int epochYr, double epochDays, int ephType, LongByReference satKey);


   /**
   * Adds a TLE (satellite), using its data stored in the input parameters.
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param xs_tle             Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement (in-Character[512])
   * @return The satKey of the newly added TLE on success, a negative value on error.
   */
   public static native long TleAddSatFrArray(double[] xa_tle, String xs_tle);


   /**
   * This function is similar to TleAddSatFrArray but designed to be used in Matlab. 
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param xs_tle             Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement (in-Character[512])
   * @param satKey             The satKey of the newly added TLE on success, a negative value on error. (out-Long)
   */
   public static native void TleAddSatFrArrayML(double[] xa_tle, String xs_tle, LongByReference satKey);


   /**
   * Updates existing TLE data with the provided new data stored in the input parameters. Note: satNum, year, day, and ephtype can't be updated.
   * nDotO2 and n2DotO6 values are not used in the SGP4 propagator. However, some users still want to preserve the integrity of all input data.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (in-Double[64])
   * @param xs_tle             Input string that contains all TLE's text fields, see XS_TLE_? for column arrangement (in-Character[512])
   * @return 0 if the TLE is successfully updated, non-0 if there is an error.
   */
   public static native int TleUpdateSatFrArray(long satKey, double[] xa_tle, String xs_tle);


   /**
   * Retrieves TLE data and stored it in the passing parameters
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_tle             Array containing TLE's numerical fields, see XA_TLE_? for array arrangement (out-Double[64])
   * @param xs_tle             Output string that contains all TLE's text fields, see XS_TLE_? for column arrangement (out-Character[512])
   * @return 0 if all values are retrieved successfully, non-0 if there is an error
   */
   public static native int TleDataToArray(long satKey, double[] xa_tle, byte[] xs_tle);


   /**
   * Converts TLE two line format to CSV format
   * @param line1              The first line of a two line element set (in-Character[512])
   * @param line2              The second line of a two line element set (in-Character[512])
   * @param csvline            A string to hold the TLE in csv format. (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error.
   */
   public static native int TleLinesToCsv(String line1, String line2, byte[] csvline);


   /**
   * Converts TLE CSV format to two line format
   * @param csvLine            The input TLE in CSV format (in-Character[512])
   * @param newSatno           New satellite number to replace what's in CSV obs if desired (won't use/renumber if it's zero) (in-Integer)
   * @param line1              The output first line of the two line element set (out-Character[512])
   * @param line2              The output second line of the two line element set (out-Character[512])
   * @return 0 if the conversion is successful, non-0 if there is an error.
   */
   public static native int TleCsvToLines(String csvLine, int newSatno, byte[] line1, byte[] line2);


   /**
   * Sets TLE key mode - This function was deprecated, please use DllMain/SetElsetKeyMode() instead
   * @param tle_keyMode        Desired Tle key mode (in-Integer)
   * @return 0 if the set is successful, non-0 if there is an error.
   */
   public static native int SetTleKeyMode(int tle_keyMode);


   /**
   * Gets current TLE key mode - This function was deprecated, please use DllMain/GetElsetKeyMode() instead
   * @return Current Tle key mode
   */
   public static native int GetTleKeyMode();


   /**
   * Finds the check sums of TLE lines
   * @param line1              The input TLE line 1 in TLE format (in-Character[512])
   * @param line2              The input TLE line 2 in TLE format (in-Character[512])
   * @param chkSum1            Check Sum of Line 1 (out-Integer)
   * @param chkSum2            Check Sum of Line 2 (out-Integer)
   * @param errCode            Error code - 0 if successful, non-0 if there is an error (out-Integer)
   */
   public static native void GetCheckSums(String line1, String line2, IntByReference chkSum1, IntByReference chkSum2, IntByReference errCode);
   
   // TLE types (TLE ephemeris types) - They are different than ELTTYPE
   /** TLE SGP elset (Kozai mean motion) */
   public static final int TLETYPE_SGP  = 0;
   /** TLE SGP4 elset (Brouwer mean motion) */
   public static final int TLETYPE_SGP4 = 2;
   /** TLE SGP4-XP elset (Brouwer mean motion) */
   public static final int TLETYPE_XP   = 4;
   /** TLE SP elset (osculating elements) */
   public static final int TLETYPE_SP   = 6;
   
   // Indexes of TLE data fields
   /** Satellite number */
   public static final int XF_TLE_SATNUM     =  1;
   /** Security classification U: unclass, C: confidential, S: Secret */
   public static final int XF_TLE_CLASS      =  2;
   /** Satellite name A8 */
   public static final int XF_TLE_SATNAME    =  3;
   /** Satellite's epoch time "YYYYJJJ.jjjjjjjj" */
   public static final int XF_TLE_EPOCH      =  4;
   /** GP B* drag term (1/er)  (not the same as XF_TLE_BTERM) */
   public static final int XF_TLE_BSTAR      =  5;
   /** Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP */
   public static final int XF_TLE_EPHTYPE    =  6;
   /** Element set number */
   public static final int XF_TLE_ELSETNUM   =  7;
   /** Orbit inclination (deg) */
   public static final int XF_TLE_INCLI      =  8;
   /** Right ascension of asending node (deg) */
   public static final int XF_TLE_NODE       =  9;
   /** Eccentricity */
   public static final int XF_TLE_ECCEN      = 10;
   /** Argument of perigee (deg) */
   public static final int XF_TLE_OMEGA      = 11;
   /** Mean anomaly (deg) */
   public static final int XF_TLE_MNANOM     = 12;
   /** Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer) */
   public static final int XF_TLE_MNMOTN     = 13;
   /** Revolution number at epoch */
   public static final int XF_TLE_REVNUM     = 14;
   
   /** GP Mean motion derivative (rev/day /2) */
   public static final int XF_TLE_NDOT       = 15;
   /** GP Mean motion second derivative (rev/day**2 /6) */
   public static final int XF_TLE_NDOTDOT    = 16;
   /** Solar radiation pressure GP (m2/kg) */
   public static final int XF_TLE_AGOMGP     = 16;
   
   /** SP Radiation Pressure Coefficient */
   public static final int XF_TLE_SP_AGOM    =  5;
   /** SP ballistic coefficient (m2/kg) */
   public static final int XF_TLE_SP_BTERM   = 15;
   /** SP outgassing parameter (km/s2) */
   public static final int XF_TLE_SP_OGPARM  = 16;
   
   /** Original satellite number */
   public static final int XF_TLE_ORGSATNUM  = 17;
   /** GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR) */
   public static final int XF_TLE_BTERM      = 18;
   /** Time of last observation relative to epoch +/- fractional days */
   public static final int XF_TLE_OBSTIME    = 19;
   /** Last calculated error growth rate (km/day) */
   public static final int XF_TLE_EGR        = 20;
   /** Last calculated energy dissipation rate (w/kg) */
   public static final int XF_TLE_EDR        = 21;
   /** Median Vismag */
   public static final int XF_TLE_VISMAG     = 22;
   /** Median RCS - diameter in centimeters (cm) */
   public static final int XF_TLE_RCS        = 23;
   /** Object Type (Payload, Rocket Body, Platform, Debris, Unknown) */
   public static final int XF_TLE_OBJTYPE    = 24;
   /** Satellite name A12 (upto 12 character long) */
   public static final int XF_TLE_SATNAME_12 = 25;
   
   
   // Indexes of TLE numerical data in an array
   // Line 1
   /** Satellite number */
   public static final int XA_TLE_SATNUM        =  0;
   /** Satellite's epoch time in DS50UTC */
   public static final int XA_TLE_EPOCH         =  1;
   /** GP Mean motion derivative (rev/day /2) */
   public static final int XA_TLE_NDOT          =  2;
   /** GP Mean motion second derivative (rev/day**2 /6) */
   public static final int XA_TLE_NDOTDOT       =  3;
   /** GP B* drag term (1/er) */
   public static final int XA_TLE_BSTAR         =  4;
   /** Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP */
   public static final int XA_TLE_EPHTYPE       =  5;
   
   // Line 2
   /** Orbit inclination (deg) */
   public static final int XA_TLE_INCLI         = 20;
   /** Right ascension of asending node (deg) */
   public static final int XA_TLE_NODE          = 21;
   /** Eccentricity */
   public static final int XA_TLE_ECCEN         = 22;
   /** Argument of perigee (deg) */
   public static final int XA_TLE_OMEGA         = 23;
   /** Mean anomaly (deg) */
   public static final int XA_TLE_MNANOM        = 24;
   /** Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer) */
   public static final int XA_TLE_MNMOTN        = 25;
   /** Revolution number at epoch */
   public static final int XA_TLE_REVNUM        = 26;
   /** Element set number */
   public static final int XA_TLE_ELSETNUM      = 30;
   
   // CSV (or TLE-XP, ephemType=4) specific fields
   /** Original satellite number */
   public static final int XA_TLE_ORGSATNUM     = 31;
   /** SP/SGP4-XP ballistic coefficient (m2/kg) */
   public static final int XA_TLE_BTERM         = 32;
   /** Time of last observation relative to epoch +/- fractional days */
   public static final int XA_TLE_OBSTIME       = 33;
   /** Last calculated error growth rate (km/day) */
   public static final int XA_TLE_EGR           = 34;
   /** Last calculated energy dissipation rate (w/kg) */
   public static final int XA_TLE_EDR           = 35;
   /** Median Vismag */
   public static final int XA_TLE_VISMAG        = 36;
   /** Median RCS - diameter in centimeters (cm) */
   public static final int XA_TLE_RCS           = 37;
   
   // CSV (or TLE-XP, ephemType=4)
   /** Solar Radiation Pressure Coefficient GP (m2/kg) */
   public static final int XA_TLE_AGOMGP        = 38;
   
   
   // SP specific fields
   /** SP ballistic coefficient (m2/kg) */
   public static final int XA_TLE_SP_BTERM      =  2;
   /** SP outgassing parameter (km/s2) */
   public static final int XA_TLE_SP_OGPARM     =  3;
   /** SP Radiation Pressure Coefficient */
   public static final int XA_TLE_SP_AGOM       =  4;
   
   public static final int XA_TLE_SIZE          = 64;
   
   // Indexes of TLE text data in an array of chars
   /** Security classification of line 1 and line 2 */
   public static final int XS_TLE_SECCLASS_1   =  0;
   /** Satellite name */
   public static final int XS_TLE_SATNAME_12   =  1;
   /** Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only */
   public static final int XS_TLE_OBJTYPE_11   = 13;
   
   public static final int XS_TLE_SIZE         = 512;
   
   // TLE's text data fields - new convention (start index, string length)
   /** Security classification of line 1 and line 2 */
   public static final int XS_TLE_SECCLASS_0_1  =  0;
   /** Satellite name */
   public static final int XS_TLE_SATNAME_1_12  =  1;
   /** Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only */
   public static final int XS_TLE_OBJTYPE_13_1  = 13;
   
   public static final int XS_TLE_LENGTH        = 512;
   
   // Indexes of different TLE file's formats
   /** Original TLE format */
   public static final int XF_TLEFORM_ORG    =  0;
   /** CSV format */
   public static final int XF_TLEFORM_CSV    =  1;
   
   
// ========================= End of auto generated code ==========================
}
