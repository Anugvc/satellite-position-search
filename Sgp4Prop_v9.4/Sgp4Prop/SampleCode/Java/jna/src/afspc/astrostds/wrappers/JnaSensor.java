// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Sensor */
public class JnaSensor
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "sensor";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Sensor DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. 
   * The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
   * in the DLL Prerequisite section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Sensor.dll is initialized successfully, non-0 if there is an error
   */
   public static native int SensorInit(long apAddr);


   /**
   * Returns information about the current version of Sensor DLL. 
   * The information is placed in the string parameter passed in.
   * The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
   * @param infoStr            A string to hold the information about Sensor.dll (out-Character[128])
   */
   public static native void SensorGetInfo(byte[] infoStr);


   /**
   * Loads sensor data, contained in a text file, into the set of loaded sensors
   * The users can use this function repeatedly to load sensor data from different input files. 
   * However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
   * 
   * Sensor data can be included directly in the main input file or they can be read from a separate file 
   * identified with "SENFIL=[pathname\filename]".
   * 
   * This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
   * It won't read anything else.
   * @param senFile            The name of the file containing sensor data (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SensorLoadFile(String senFile);


   /**
   * Loads a single sensor-typed card
   * @param card               Any single sensor-typed card (in-Character[512])
   * @return 0 if the input card is read successfully, non-0 if there is an error
   */
   public static native int SensorLoadCard(String card);


   /**
   * Saves the currently loaded sensor data to a file
   * If the users call this routine immediately after the SensorLoadFile(). 
   * The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
   * 
   * The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
   * @param sensorFile         The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int SensorSaveFile(String sensorFile, int saveMode, int saveForm);


   /**
   * Removes a sensor, represented by the senKey, from the set of currently loaded sensors
   * If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
   * @param senKey             The sensor's unique key (in-Long)
   * @return 0 if the sensor is successfully removed, non-0 if there is an error
   */
   public static native int SensorRemove(long senKey);


   /**
   * Removes all currently loaded sensors from memory
   * The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
   * @return 0 if all the loaded sensors are removed successfully, non-0 if there is an error
   */
   public static native int SensorRemoveAll();


   /**
   * Returns the number of sensors currently loaded
   * See SensorGetLoaded for example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
   * @return the number of sensors currently loaded
   */
   public static native int SensorGetCount();


   /**
   * Retrieves all of the currently loaded senKeys. 
   * These senKeys can be used to access the internal data for the sensors.
   * It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
   * The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
   * 
   * If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
   * @param order              Specifies the order in which the senKeys should be returned:0=Sort in ascending order, 1=Sort in descending order, 2=Sort in the order in which the senKeys were loaded in memory (in-Integer)
   * @param senKeys            The array in which to store the senKeys (out-Long[*])
   */
   public static native void SensorGetLoaded(int order, long[] senKeys);


   /**
   * Retrieves sensor location data for a sensor
   * @param senKey             The sensor's unique key (in-Long)
   * @param astroLat           Astronomical Latitude (deg): astroLat[-90, 90], (+ = North; - = South) (out-Double)
   * @param astroLon           Astronomical Longitude (deg): astroLon[-360, 360], (+ = West; - = East) (out-Double)
   * @param senPos             Sensor XYZ geocentric position (meters) (out-Double[3])
   * @param senDesc            Sensor location description (out-Character[24])
   * @param orbSatNum          For orbiting sensors, this is the associated satellite number. For ground sensors, orbSatNum = 0 (out-Integer)
   * @param secClass           Sensor classification: U = Unclassified, C = Confidential, S = Secret (out-Character)
   * @return 0 if all sensor location data fields are retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGetLocAll(long senKey, DoubleByReference astroLat, DoubleByReference astroLon, double[] senPos, byte[] senDesc, IntByReference orbSatNum, ByteByReference secClass);


   /**
   * Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
   * This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   * 
   * If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
   * 
   * If it is an orbiting sensor, the users need to provide the associated satellite number.
   * @param senKey             The sensor's unique key (in-Long)
   * @param astroLat           Astronomical Latitude (deg): astroLat[-90, 90], (+ = North; - = South) (in-Double)
   * @param astroLon           Astronomical Longitude (deg): astroLon[-360, 360], (+ = West; - = East) (in-Double)
   * @param senPos             Sensor XYZ geocentric position (meters) (in-Double[3])
   * @param senDesc            Sensor location description (in-Character[24])
   * @param orbSatNum          For orbiting sensors, this is the associated satellite number. For ground sensors, orbSatNum = 0 (in-Integer)
   * @param secClass           Sensor classification: U = Unclassified, C = Confidential, S = Secret (in-Character)
   * @return 0 if the sensor location data is added/updated successfully, non-0 if there is an error
   */
   public static native int SensorSetLocAll(long senKey, double astroLat, double astroLon, double[] senPos, String senDesc, int orbSatNum, char secClass);


   /**
   * Retrieves the value of an individual field of sensor location data
   * <br>
   * Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   * <br>
   * The table below shows the values for the xf_SenLoc parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>1</td><td>Sensor number</td></tr>
   * <tr><td>2</td><td>Sensor astronomical latitude (deg)</td></tr>
   * <tr><td>3</td><td>Sensor astronomical longitude (deg)</td></tr>
   * <tr><td>4</td><td>Sensor position X (km)</td></tr>
   * <tr><td>5</td><td>Sensor position Y (km)</td></tr>
   * <tr><td>6</td><td>Sensor position Z (km)</td></tr>
   * <tr><td>7</td><td>Sensor description</td></tr>
   * <tr><td>8</td><td>Orbiting sensor's number (satNum)   </td></tr>
   * <tr><td>9</td><td>Sensor classification </td></tr>   
   * </table>   
   * @param senKey             The sensor's unique key (in-Long)
   * @param xf_SenLoc          Predefined number specifying which field to retrieve (in-Integer)
   * @param strValue           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the sensor location data is successfully retrieved, non-0 if there is an error
   */
   public static native int SensorGetLocField(long senKey, int xf_SenLoc, byte[] strValue);


   /**
   * Updates the value of an individual field of sensor location data
   * See SensorGetLocField for a description of the xf_SenLoc values.
   * The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   * 
   * Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   * @param senKey             The sensor's unique key (in-Long)
   * @param xf_SenLoc          Predefined number specifying which field to retrieve (in-Integer)
   * @param strValue           The new value of the specified field, expressed as a string (in-Character[512])
   * @return 0 if the sensor location data is successfully updated, non-0 if there is an error
   */
   public static native int SensorSetLocField(long senKey, int xf_SenLoc, String strValue);


   /**
   * Retrieves sensor limits data
   * This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
   * @param senKey             The sensor's unique key (in-Long)
   * @param viewType           Sensor viewing type (out-Character)
   * @param obsType            Sensor observation type (out-Character)
   * @param rngUnits           Units of range and range rate: 0=km, km/sec, 1=nm, nm/sec (out-Integer)
   * @param maxRngLim          Maximum observable range limit (km) (out-Double)
   * @param boresight1         Orbiting sensor boresight1 vector (out-Character)
   * @param elLim1             Elevation limit #1 (low, deg) OR orbiting sensor off-boresight angle (out-Double)
   * @param elLim2             Elevation limit #2 (high, deg) OR orbiting sensor off-boresight angle (out-Double)
   * @param azLim1             Azimuth limit #1 (left, deg) OR orbiting sensor clock angle (out-Double)
   * @param azLim2             Azimuth limit #2 (right, deg) OR orbiting sensor clock angle (out-Double)
   * @param interval           ouput interval (min) (out-Double)
   * @param visFlg             Visual pass control flag (out-Integer)
   * @param rngLimFlg          Range limits control flag (out-Integer)
   * @param maxPPP             Max number of points per pass (0=unlimited) (out-Integer)
   * @param minRngLim          Minimum observable range limit (km) (out-Double)
   * @param plntryRes          Orbiting sensor planetary restrictions (out-Integer)
   * @param rrLim              Range rate/relative velocity limit (km/sec) (out-Double)
   * @return 0 if all sensor limits data fields are retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGet1L(long senKey, ByteByReference viewType, ByteByReference obsType, IntByReference rngUnits, DoubleByReference maxRngLim, ByteByReference boresight1, DoubleByReference elLim1, DoubleByReference elLim2, DoubleByReference azLim1, DoubleByReference azLim2, DoubleByReference interval, IntByReference visFlg, IntByReference rngLimFlg, IntByReference maxPPP, DoubleByReference minRngLim, IntByReference plntryRes, DoubleByReference rrLim);


   /**
   * Adds/updates sensor limits data (non DMA) via individually provided field values
   * This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   * 
   * If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
   * 
   * If it is an orbiting sensor, the users need to provide the associated satellite number.
   * @param senKey             The sensor's unique key (in-Long)
   * @param viewType           Sensor viewing type (in-Character)
   * @param obsType            Sensor observation type (in-Character)
   * @param rngUnits           Units of range and range rate: 0=km, km/sec, 1=nm, nm/sec (in-Integer)
   * @param maxRngLim          Maximum observable range limit (km) (in-Double)
   * @param boresight1         Orbiting sensor boresight1 vector (in-Character)
   * @param elLim1             Elevation limit #1 (low, deg) OR orbiting sensor off-boresight angle (in-Double)
   * @param elLim2             Elevation limit #2 (high, deg) OR orbiting sensor off-boresight angle (in-Double)
   * @param azLim1             Azimuth limit #1 (left, deg) OR orbiting sensor clock angle (in-Double)
   * @param azLim2             Azimuth limit #2 (right, deg) OR orbiting sensor clock angle (in-Double)
   * @param interval           ouput interval (min) (in-Double)
   * @param visFlg             Visual pass control flag (in-Integer)
   * @param rngLimFlg          Range limits control flag (in-Integer)
   * @param maxPPP             Max number of points per pass (0=unlimited) (in-Integer)
   * @param minRngLim          Minimum observable range limit (km) (in-Double)
   * @param plntryRes          Orbiting sensor planetary restrictions (in-Integer)
   * @param rrLim              Range rate/relative velocity limit (km/sec) (in-Double)
   * @return 0 if the sensor limits data is added/updated successfully, non-0 if there is an error
   */
   public static native int SensorSet1L(long senKey, char viewType, char obsType, int rngUnits, double maxRngLim, char boresight1, double elLim1, double elLim2, double azLim1, double azLim2, double interval, int visFlg, int rngLimFlg, int maxPPP, double minRngLim, int plntryRes, double rrLim);


   /**
   * Retrieves additional sensor limits data
   * This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
   * @param senKey             The sensor's unique key (in-Long)
   * @param boresight2         Orbiting sensor boresight2 vector (out-Character)
   * @param elLim3             Elevation limit #3 (low, deg) OR orbiting sensor off-boresight angle (out-Double)
   * @param elLim4             Elevation limit #4 (high, deg) OR orbiting sensor off-boresight angle (out-Double)
   * @param azLim3             Azimuth limit #3 (left, deg) OR orbiting sensor clock angle (out-Double)
   * @param azLim4             Azimuth limit #4 (right, deg) OR orbiting sensor clock angle (out-Double)
   * @param earthBckgrnd       Flag; if set, allow orb sensor to view satellite against earth background (out-Integer)
   * @param earthLimb          Orbiting sensor earth limb exclusion distance (km) (out-Double)
   * @param solarXAngle        Orbiting sensor solar exclusion angle (deg) (out-Double)
   * @param lunarXAngle        Orbiting sensor lunar exclusion angle (deg) (out-Double)
   * @param minIllum           Orbiting sensor minimum illumination angle (deg) (out-Double)
   * @param twilit             Ground site twilight offset angle (deg) (out-Double)
   * @return 0 if all optional/additional sensor limits data fields are retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGet2L(long senKey, ByteByReference boresight2, DoubleByReference elLim3, DoubleByReference elLim4, DoubleByReference azLim3, DoubleByReference azLim4, IntByReference earthBckgrnd, DoubleByReference earthLimb, DoubleByReference solarXAngle, DoubleByReference lunarXAngle, DoubleByReference minIllum, DoubleByReference twilit);


   /**
   * Adds/updates additional sensor limits data
   * This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   * 
   * If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
   * @param senKey             The sensor's unique key (in-Long)
   * @param boresight2         Orbiting sensor boresight2 vector (in-Character)
   * @param elLim3             Elevation limit #3 (low, deg) OR orbiting sensor off-boresight angle (in-Double)
   * @param elLim4             Elevation limit #4 (high, deg) OR orbiting sensor off-boresight angle (in-Double)
   * @param azLim3             Azimuth limit #3 (left, deg) OR orbiting sensor clock angle (in-Double)
   * @param azLim4             Azimuth limit #4 (right, deg) OR orbiting sensor clock angle (in-Double)
   * @param earthBckgrnd       Flag; if set, allow orb sensor to view satellite against earth background (in-Integer)
   * @param earthLimb          Orbiting sensor earth limb exclusion distance (km) (in-Double)
   * @param solarXAngle        Orbiting sensor solar exclusion angle (deg) (in-Double)
   * @param lunarXAngle        Orbiting sensor lunar exclusion angle (deg) (in-Double)
   * @param minIllum           Orbiting sensor minimum illumination angle (deg) (in-Double)
   * @param twilit             Ground site twilight offset angle (deg) (in-Double)
   * @return 0 if the optional/additional sensor limits data is added/updated successfully, non-0 if there is an error
   */
   public static native int SensorSet2L(long senKey, char boresight2, double elLim3, double elLim4, double azLim3, double azLim4, int earthBckgrnd, double earthLimb, double solarXAngle, double lunarXAngle, double minIllum, double twilit);


   /**
   * Retrieves an individual field of sensor limits data
   * <br>
   * Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   * <br>
   * The table below shows the values for the xf_SenLim parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td>11</td><td> Sensor view type</td></tr>
   * <tr><td>12</td><td> Sensor observation type</td></tr>
   * <tr><td>13</td><td> Unit on range/range rate</td></tr>
   * <tr><td>14</td><td> Max observable range (km)</td></tr>
   * <tr><td>15</td><td> Min observable range (km)</td></tr>
   * <tr><td>16</td><td> Output interval (min)</td></tr>
   * <tr><td>17</td><td> Visual pass control flag</td></tr>
   * <tr><td>18</td><td> Range limit control flag </td></tr>
   * <tr><td>19</td><td> Max number of points per pass</td></tr>
   * <tr><td>20</td><td> Range rate/relative velocity limit (km/sec)</td></tr>
   * <tr><td>31</td><td> Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)</td></tr>
   * <tr><td>32</td><td> </td></tr>
   * <tr><td>33</td><td> </td></tr>
   * <tr><td>34</td><td> </td></tr>
   * <tr><td>35</td><td> Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)</td></tr>
   * <tr><td>36</td><td> </td></tr>
   * <tr><td>37</td><td> </td></tr>
   * <tr><td>38</td><td> </td></tr>
   * <tr><td>52</td><td> Orbiting sensor planetary restriction</td></tr>
   * <tr><td>53</td><td> Orbiting sensor boresight vector 1</td></tr>
   * <tr><td>54</td><td> Orbiting sensor boresight vector 2</td></tr>
   * <tr><td>55</td><td> Allow orbiting sensor to view sat against earth background</td></tr>
   * <tr><td>56</td><td> Orbiting sensor earth limb exclusion distance (km)</td></tr>
   * <tr><td>57</td><td> Orbiting sensor solar exclusion angle (deg)   </td></tr>
   * <tr><td>58</td><td> Orbiting sensor lunar exclusion angle (deg)</td></tr>
   * <tr><td>59</td><td> Orbiting sensor min illumination angle (deg)</td></tr>
   * <tr><td>60</td><td> Ground site twilight offset angle (deg)</td></tr>    
   * </table>   
   * @param senKey             The sensor's unique key (in-Long)
   * @param xf_SenLim          Predefined number specifying which field to retrieve (in-Integer)
   * @param strValue           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the sensor limits data is retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGetLimField(long senKey, int xf_SenLim, byte[] strValue);


   /**
   * Updates an individual field of sensor limits data
   * See SensorGetLimField for a description of the xf_SenLim parameter.
   * The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   * 
   * Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   * @param senKey             The sensor's unique key (in-Long)
   * @param xf_SenLim          Predefined number specifying which field to retrieve (in-Integer)
   * @param strValue           The new value of the specified field, expressed as a string (in-Character[512])
   * @return Returns zero indicating the sensor limits data has been successfully updated. Other values indicate an error
   */
   public static native int SensorSetLimField(long senKey, int xf_SenLim, String strValue);


   /**
   * Retrieves sensor sigma/bias data
   * @param senKey             The sensor's unique key (in-Long)
   * @param xaf_senbs          sensor's sigma and biases, see XAF_SENBS_? for array arrangement (out-Double[16])
   * @return 0 if all sensor sigma/bias data fields are retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGetBS(long senKey, double[] xaf_senbs);


   /**
   * Adds/updates sensor sigma/bias data (non DMA)
   * @param senKey             The sensor's unique key (in-Long)
   * @param xaf_senbs          sensor's sigmas and biases, see XAF_SENBS_? for array arrangement (in-Double[16])
   * @return 0 if the sensor sigma/bias data is added/updated successfully, non-0 if there is an error
   */
   public static native int SensorSetBS(long senKey, double[] xaf_senbs);


   /**
   * Retrieves an individual field of sensor sigma/bias data
   * @param senKey             The sensor's unique key (in-Long)
   * @param xaf_senbs          Index number of the field the user wants to retrieve, see XAF_SENBS_? for field arrangement (in-Integer)
   * @param strValue           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the sensor sigma/bias data is retrieved successfully, non-0 if there is an error
   */
   public static native int SensorGetBSField(long senKey, int xaf_senbs, byte[] strValue);


   /**
   * Updates an individual field of sensor sigma/bias data
   * @param senKey             The sensor's unique key (in-Long)
   * @param xaf_senbs          Index number of the field the user wants to set, see XAF_SENBS_? for field arrangement (in-Integer)
   * @param strValue           The new value of the specified field, expressed as a string (in-Character[512])
   * @return Returns zero indicating the sensor sigma/bias data has been successfully updated. Other values indicate an error
   */
   public static native int SensorSetBSField(long senKey, int xaf_senbs, String strValue);


   /**
   * Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
   * @param senKey             The sensor's unique key (in-Long)
   * @param sCard              S-Card string of the sensor (out-Character[512])
   * @param l1Card             L1-Card string of the sensor (out-Character[512])
   * @param l2Card             L2-Card string of the sensor (out-Character[512])
   * @return 0 on success, non-0 if there is an error
   */
   public static native int SensorGetLines(long senKey, byte[] sCard, byte[] l1Card, byte[] l2Card);


   /**
   * Gets sensor's orbiting satellite's satKey
   * @param senKey             The sensor's unique key (in-Long)
   * @param orbSatKey          The orbiting satellite's unique key (out-Long)
   * @return 0 on success, non-0 if there is an error
   */
   public static native int SensorGetOrbSatKey(long senKey, LongByReference orbSatKey);


   /**
   * Sets sensor's orbiting satellite's satKey
   * @param senKey             The sensor's unique key (in-Long)
   * @param orbSatKey          The orbiting satellite's unique key (in-Long)
   * @return 0 on success, non-0 if there is an error
   */
   public static native int SensorSetOrbSatKey(long senKey, long orbSatKey);


   /**
   * Loads Space Fence's detailed azimuth-elevation definition table
   * @param senKey             The sensor's unique key (in-Long)
   * @param azElTableFile      The name of the file containing Space Fence's az/el definition table (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SensorLoadAzElTable(long senKey, String azElTableFile);


   /**
   * Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
   * @param senKey             The sensor's unique key (in-Long)
   * @param segType            Input segment type (bounded-cone = 1, dome = 2) (in-Integer)
   * @param xa_seg             sensor segment data.  see XA_SEG_DOME_? and see XA_SEG_BCONE_? (in-Double[16])
   * @return 0 if the new sensor segment is added successfully, non-0 if there is an error
   */
   public static native int SensorAddSegment(long senKey, int segType, double[] xa_seg);


   /**
   * Retrieves sensor segment data of the specified segment (segNum)
   * @param senKey             The sensor's unique key (in-Long)
   * @param segNum             The segment number of the sensor segment whose data is returned (in-Integer)
   * @param segType            The output segment type (bounded-cone = 1, dome = 2) (out-Integer)
   * @param xa_seg             The resulting sensor segment data.  see XA_SEG_DOME_? and see XA_SEG_BCONE_? (out-Double[16])
   * @return 0 if the sensor segment data is returned successfully, non-0 if there is an error
   */
   public static native int SensorGetSegment(long senKey, int segNum, IntByReference segType, double[] xa_seg);


   /**
   * Sets sensor key mode
   * This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
   * and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
   * @param sen_keyMode        Desired sen key mode (see SEN_KEYMODE_? for available modes) (in-Integer)
   * @return 0 if the set is successful, non-0 if there is an error.
   */
   public static native int SetSenKeyMode(int sen_keyMode);


   /**
   * Gets current sensor key mode
   * @return Current sen key mode (see SEN_KEYMODE_? for available modes)
   */
   public static native int GetSenKeyMode();


   /**
   * Returs the sensor number associated with the input senKey
   * @param senKey             The input senKey (in-Long)
   * @return The sensor number associated with the input senKey (senNum = -1 if senKey doesn't exist)
   */
   public static native int SenNumOf(long senKey);


   /**
   * Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
   * A negative value will be returned if there is an error.
   * @param senNum             Satellite number (in-Integer)
   * @return The senellite's unique key
   */
   public static native long SensorGetSenKey(int senNum);


   /**
   * This function is similar to SensorGetSenKey but designed to be used in Matlab. 
   * Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
   * A negative value will be returned in senKey if there is an error.
   * @param senNum             Senellite number (in-Integer)
   * @param senKey             The senKey of the sensor if a sensor with the requested number is found in the set of loaded sensor, a negative value if there is an error. (out-Long)
   */
   public static native void SensorGetSenKeyML(int senNum, LongByReference senKey);


   /**
   * Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
   * @param xa_sen             Array containing sensor's numerical fields, see XA_SEN_? for array arrangement (in-Double[128])
   * @param xs_sen             Input string that contains all sensor's text fields, see XS_SEN_? for column arrangement (in-Character[512])
   * @return The senKey of the newly added sensor on success, a negative value on error.
   */
   public static native long SensorAddFrArray(double[] xa_sen, String xs_sen);


   /**
   * Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
   * @param senKey             The sensor's unique key (in-Long)
   * @param xa_sen             Array containing sensor's numerical fields, see XA_SEN_? for array arrangement (out-Double[128])
   * @param xs_sen             Input string that contains all sensor's text fields, see XS_SEN_? for column arrangement (out-Character[512])
   * @return 0 if all values are retrieved successfully, non-0 if there is an error
   */
   public static native int SensorDataToArray(long senKey, double[] xa_sen, byte[] xs_sen);
   
   // Sensor segment types
   /** bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation */
   public static final int SEG_BCONE = 1;
   /** dome-typed limit: Min/Max Az/El/Range */
   public static final int SEG_DOME  = 2;
   
   
   
   // Indexes of dome segment parameters
   /** start azimuth (deg) */
   public static final int XA_SEG_DOME_AZFR   =  0;
   /** end azimuth (deg) */
   public static final int XA_SEG_DOME_AZTO   =  1;
   /** lower-bound elevation (deg) */
   public static final int XA_SEG_DOME_ELFR   =  2;
   /** higher-bound elevation (deg) */
   public static final int XA_SEG_DOME_ELTO   =  3;
   /** minimum range (km) */
   public static final int XA_SEG_DOME_MINRNG =  4;
   /** maximum range (km) */
   public static final int XA_SEG_DOME_MAXRNG =  5;
   
   public static final int XA_SEG_DOME_SIZE   = 16;
   
   
   // Indexes of bounded-cone segment parameters
   /** boresight azimuth (deg) */
   public static final int XA_SEG_BCONE_BSAZ   =  0;
   /** boresight elevation (deg) */
   public static final int XA_SEG_BCONE_BSEL   =  1;
   /** offboresight lower angle (deg) */
   public static final int XA_SEG_BCONE_ANGFR  =  2;
   /** offboresight higher angle (deg) */
   public static final int XA_SEG_BCONE_ANGTO  =  3;
   /** minimum range (km) */
   public static final int XA_SEG_BCONE_MINRNG =  4;
   /** maximum range (km) */
   public static final int XA_SEG_BCONE_MAXRNG =  5;
   /** minimum cut-off elevation (deg) */
   public static final int XA_SEG_BCONE_MINEL  =  6;
   
   public static final int XA_SEG_BCONE_SIZE   = 16;
   
   
   // Different key mode options for senKey
   /** Default - duplicate sensor can not be loaded in binary tree */
   public static final int SEN_KEYMODE_NODUP  = 0;
   /** Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree) */
   public static final int SEN_KEYMODE_DMA    = 1;
   
   // sensor key possible errors
   /** Bad sensor key */
   public static final int BADSENKEY = -1;
   /** Duplicate sensor key */
   public static final int DUPSENKEY =  0;
   
   // Different sensor types
   /** bounded-cone tracker */
   public static final int VT_BCT =   2;
   /** conventional tracker */
   public static final int VT_CON =   3;
   /** optical tracker */
   public static final int VT_OPT =   4;
   /** constant azimuth fan sweeping vertical plane */
   public static final int VT_FAN =   7;
   /** orbiting sensor (same as 'M' or 'O') */
   public static final int VT_ORB =   9;
   /** space fence's field of regard FOR ('R' = 86) */
   public static final int VT_FOR  = 82;
   /** space fence's surveillance fan FOV ('V' = 82) */
   public static final int VT_FOV  = 86;
   
   // Different sensor location types
   /** Sensor location is in ECR */
   public static final int SENLOC_TYPE_ECR =  1;
   /** Sensor location is in EFG */
   public static final int SENLOC_TYPE_EFG =  2;
   /** Sensor location is in LLH */
   public static final int SENLOC_TYPE_LLH =  3;
   
   
   // Sensor Data -
   //*******************************************************************************
   // generic data for all sensor types
   //*******************************************************************************
   /** sensor number */
   public static final int XA_SEN_GEN_SENNUM    =  0;
   /** sensor minimum range (km) (=0 no minimum range check) */
   public static final int XA_SEN_GEN_MINRNG    =  3;
   /** sensor maxinmum range (km) (=0 no maximum range check) */
   public static final int XA_SEN_GEN_MAXRNG    =  4;
   /** range rate/relative velocity limit (km/sec) (=0 no range rate check) */
   public static final int XA_SEN_GEN_RRLIM     =  5;
   /** min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range) */
   public static final int XA_SEN_GEN_RNGLIMFLG =  6;
   /** is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor) */
   public static final int XA_SEN_GEN_SMSEN     =  7;
   
   
   //*******************************************************************************
   
   // sensor location - for all ground-based sensor types (non-orbiting)
   /** location type (see SENLOC_TYPE_? for available types) */
   public static final int XA_SEN_GRN_LOCTYPE   = 10;
   /** sensor location ECR/EFG X component (km) or LLH/Lat (deg) */
   public static final int XA_SEN_GRN_POS1      = 11;
   /** sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) */
   public static final int XA_SEN_GRN_POS2      = 12;
   /** sensor location ECR/EFG Z component (km) or LLH/Height (km) */
   public static final int XA_SEN_GRN_POS3      = 13;
   /** astronomical latitude (deg) (+: North, -: South) */
   public static final int XA_SEN_GRN_ASTROLAT  = 14;
   /** astronomical longitude (deg) (+: West, -: East) */
   public static final int XA_SEN_GRN_ASTROLON  = 15;
   
   
   //*******************************************************************************
   // sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
   //*******************************************************************************
   // Bounded cone tracker (conical sensor) (VT_BCT)
   /** conical sensor boresight azimuth angle (deg) */
   public static final int XA_SEN_BCT_BRSGHTAZ  = 20;
   /** conical sensor boresight elevation angle (deg) */
   public static final int XA_SEN_BCT_BRSGHTEL  = 21;
   /** coninal sensor off-boresight angle/half cone angle (deg) */
   public static final int XA_SEN_BCT_HALFANG   = 22;
   /** conical sensor minimum elevation angle (deg) */
   public static final int XA_SEN_BCT_MINEL     = 23;
   
   //*******************************************************************************
   // Conventinoal tracker (VT_CON)
   /** low elevation limit #1 (deg) */
   public static final int XA_SEN_CON_ELFR1     = 20;
   /** hight elevation limit #1 (deg) */
   public static final int XA_SEN_CON_ELTO1     = 21;
   /** low azimuth limit #1 (deg) */
   public static final int XA_SEN_CON_AZFR1     = 22;
   /** hight azimuth limit #1 (deg) */
   public static final int XA_SEN_CON_AZTO1     = 23;
   /** low elevation limit #2 (deg) */
   public static final int XA_SEN_CON_ELFR2     = 24;
   /** hight elevation limit #2 (deg) */
   public static final int XA_SEN_CON_ELTO2     = 25;
   /** low azimuth limit #2 (deg) */
   public static final int XA_SEN_CON_AZFR2     = 26;
   /** hight azimuth limit #2 (deg) */
   public static final int XA_SEN_CON_AZTO2     = 27;
   
   //*******************************************************************************
   // Optical tracker (VT_OPT)
   /** low elevation limit #1 (deg) */
   public static final int XA_SEN_OPT_ELFR1     = 20;
   /** hight elevation limit #1 (deg) */
   public static final int XA_SEN_OPT_ELTO1     = 21;
   /** low azimuth limit #1 (deg) */
   public static final int XA_SEN_OPT_AZFR1     = 22;
   /** hight azimuth limit #1 (deg) */
   public static final int XA_SEN_OPT_AZTO1     = 23;
   /** low elevation limit #2 (deg) */
   public static final int XA_SEN_OPT_ELFR2     = 24;
   /** hight elevation limit #2 (deg) */
   public static final int XA_SEN_OPT_ELTO2     = 25;
   /** low azimuth limit #2 (deg) */
   public static final int XA_SEN_OPT_AZFR2     = 26;
   /** hight azimuth limit #2 (deg) */
   public static final int XA_SEN_OPT_AZTO2     = 27;
   
   /** optical sensor solar exclusion angle (to check for solar aspect angle limit) */
   public static final int XA_SEN_OPT_SEA       = 40;
   /** ground site twilight offset angle */
   public static final int XA_SEN_OPT_TWILGHT   = 41;
   /** visual pass check (sensor in dark, satellite illuminated) */
   public static final int XA_SEN_OPT_VISCHK    = 42;
   
   //*******************************************************************************
   // Constant azimuth fan (VT_FAN)
   /** fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180) */
   public static final int XA_SEN_FAN_AZ        = 20;
   /** fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90] */
   public static final int XA_SEN_FAN_TILTANGLE = 21;
   /** fan's off-boresight angle (deg) [0, 90] */
   public static final int XA_SEN_FAN_OBSANGLE  = 23;
   
   
   //*******************************************************************************
   // Orbiting sensor (VT_ORB)
   /** orbiting sensor's satellite number */
   public static final int XA_SEN_ORB_SATNUM    = 10;
   
   /** orbiting sensor's off-boresight angle - low elevation limit #1 (deg) */
   public static final int XA_SEN_ORB_ELMIN1    = 20;
   /** orbiting sensor's off-boresight angle - hight elevation limit #1 (deg) */
   public static final int XA_SEN_ORB_ELMAX1    = 21;
   /** orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg) */
   public static final int XA_SEN_ORB_AZMIN1    = 22;
   /** orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg) */
   public static final int XA_SEN_ORB_AZMAX1    = 23;
   /** orbiting sensor's off-boresight angle - low elevation limit #2 (deg) */
   public static final int XA_SEN_ORB_ELMIN2    = 24;
   /** orbiting sensor's off-boresight angle - hight elevation limit #2 (deg) */
   public static final int XA_SEN_ORB_ELMAX2    = 25;
   /** orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg) */
   public static final int XA_SEN_ORB_AZMIN2    = 26;
   /** orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg) */
   public static final int XA_SEN_ORB_AZMAX2    = 27;
   
   /** orbiting sensor earth limb exclusion distance (km) */
   public static final int XA_SEN_ORB_EARTHLIMB = 40;
   /** orbiting sensor solar exclusion angle (deg) */
   public static final int XA_SEN_ORB_SEA       = 41;
   /** orbiting sensor lunar exclusion angle (deg) */
   public static final int XA_SEN_ORB_LEA       = 42;
   /** orbiting sensor minimum illumination angle (deg) */
   public static final int XA_SEN_ORB_MINILLUM  = 43;
   /** orbiting sensor allow earth in the back ground */
   public static final int XA_SEN_ORB_EARTHBRND = 44;
   /** orbiting sensor planetary restriction */
   public static final int XA_SEN_ORB_PLNTRYRES = 45;
   
   //*******************************************************************************
   
   // Space fence Field Of Regard (VT_FOR)
   // Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)
   
   
   //*******************************************************************************
   
   // Space fence Field Of View (VT_FOV)
   /** north/south beam width (deg) */
   public static final int XA_SEN_FOV_BEAMWIDTH = 20;
   /** fence tilt angle (deg) */
   public static final int XA_SEN_FOV_TILTANGLE = 21;
   
   
   //*******************************************************************************
   
   // Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
   /** unit on range/range rate (0= km, km/sec; 1=nm, nm/sec) */
   public static final int XA_SEN_GEN_UNIT      = 90;
   /** output interval (min) */
   public static final int XA_SEN_GEN_INTERVAL  = 91;
   /** max number of points per pass */
   public static final int XA_SEN_GEN_PTSPERPAS = 92;
   
   
   // sensor sigmas/biases - ROTAS/BATCHDC
   /** azimuth sigma (deg) */
   public static final int XA_SEN_GEN_AZSIGMA =  110;
   /** elevation sigma (deg) */
   public static final int XA_SEN_GEN_ELSIGMA =  111;
   /** range sigma (km) */
   public static final int XA_SEN_GEN_RGSIGMA =  112;
   /** range-rate sigma (km/sec) */
   public static final int XA_SEN_GEN_RRSIGMA =  113;
   /** az rate sigma (deg/sec) */
   public static final int XA_SEN_GEN_ARSIGMA =  114;
   /** el rate sigma (deg/sec) */
   public static final int XA_SEN_GEN_ERSIGMA =  115;
   /** azimuth bias (deg) */
   public static final int XA_SEN_GEN_AZBIAS  =  116;
   /** elevation bias (deg) */
   public static final int XA_SEN_GEN_ELBIAS  =  117;
   /** range bias (km) */
   public static final int XA_SEN_GEN_RGBIAS  =  118;
   /** range-rate bias (km/sec) */
   public static final int XA_SEN_GEN_RRBIAS  =  119;
   /** time bias (sec) */
   public static final int XA_SEN_GEN_TIMEBIAS=  120;
   
   
   public static final int XA_SEN_SIZE          = 128;
   
   // Indexes of SENSOR text data in an array of chars
   // The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
   /** sensor security classification (1-character length) */
   public static final int XS_SEN_SECCLASS_0_1      =   0;
   /** sensor viewing type (1-character length) */
   public static final int XS_SEN_VIEWTYPE_1_1      =   1;
   /** sensor observation type (1-character length) */
   public static final int XS_SEN_OBSTYPE_2_1       =   2;
   /** sensor description/narrative/notes (24-character length) */
   public static final int XS_SEN_DSCRPTN_3_24      =   3;
   /** orbiting sensor's boresight vector #1 (1-character length) */
   public static final int XS_SEN_ORB_BSVEC1_27_1   =  27;
   /** orbiting sensor's boresight vector #2 (1-character length) */
   public static final int XS_SEN_ORB_BSVEC2_28_1   =  28;
   /** for VT_FOR only, az/el table file path (256-character length) */
   public static final int XS_SEN_FOR_AZFILE_255_256= 255;
   
   public static final int XS_SEN_LENGTH            = 512;
   
   // Indexes of Sensor data fields
   /** Sensor number */
   public static final int XF_SENLOC_NUM  = 1;
   /** Sensor location - astronomical longitude (deg) (+=West/-=East) */
   public static final int XF_SENLOC_LAT  = 2;
   /** Sensor location - astronomical latitude (deg)  (+=North/-=South) */
   public static final int XF_SENLOC_LON  = 3;
   /** Sensor ECR position X (km) */
   public static final int XF_SENLOC_POSX = 4;
   /** Sensor ECR position Y (km) */
   public static final int XF_SENLOC_POSY = 5;
   /** Sensor ECR position Z (km) */
   public static final int XF_SENLOC_POSZ = 6;
   /** Sensor description */
   public static final int XF_SENLOC_DESC = 7;
   /** Orbiting sensor's number (satNum) */
   public static final int XF_SENLOC_ORBSATNUM = 8;
   /** Sensor classification */
   public static final int XF_SENLOC_SECCLASS  = 9;
   
   /** Sensor view type */
   public static final int XF_SENLIM_VIEWTYPE  = 11;
   /** Sensor observation type */
   public static final int XF_SENLIM_OBSTYPE   = 12;
   /** Unit on range/range rate */
   public static final int XF_SENLIM_UNIT      = 13;
   /** Max observable range (km) */
   public static final int XF_SENLIM_MAXRNG    = 14;
   /** Min observable range (km) */
   public static final int XF_SENLIM_MINRNG    = 15;
   /** Output interval (min) */
   public static final int XF_SENLIM_INTERVAL  = 16;
   /** Visual pass control flag */
   public static final int XF_SENLIM_OPTVISFLG = 17;
   /** Range limit control flag */
   public static final int XF_SENLIM_RNGLIMFLG = 18;
   /** Max number of points per pass */
   public static final int XF_SENLIM_PTSPERPAS = 19;
   /** Range rate/relative velocity limit (km/sec) */
   public static final int XF_SENLIM_RRLIM     = 20;
   
   /** Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg) */
   public static final int XF_SENLIM_ELLIM1    = 31;
   /** Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg) */
   public static final int XF_SENLIM_ELLIM2    = 32;
   /** Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or */
   public static final int XF_SENLIM_ELLIM3    = 33;
   /** Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg) */
   public static final int XF_SENLIM_ELLIM4    = 34;
   /** Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg) */
   public static final int XF_SENLIM_AZLIM1    = 35;
   /** Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg) */
   public static final int XF_SENLIM_AZLIM2    = 36;
   /** Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg) */
   public static final int XF_SENLIM_AZLIM3    = 37;
   /** Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg) */
   public static final int XF_SENLIM_AZLIM4    = 38;
   
   
   /** Orbiting sensor planetary restriction */
   public static final int XF_SENLIM_PLNTRYRES = 52;
   /** Orbiting sensor boresight vector 1 */
   public static final int XF_SENLIM_BOREVEC1  = 53;
   /** Orbiting sensor boresight vector 2 */
   public static final int XF_SENLIM_BOREVEC2  = 54;
   /** Allow orbiting sensor to view sat against earth background */
   public static final int XF_SENLIM_KEARTH    = 55;
   /** Orbiting sensor earth limb exclusion distance (km) */
   public static final int XF_SENLIM_ELIMB     = 56;
   /** Orbiting sensor solar exclusion angle (deg) */
   public static final int XF_SENLIM_SOLEXCANG = 57;
   /** Orbiting sensor lunar exclusion angle (deg) */
   public static final int XF_SENLIM_LUNEXCANG = 58;
   
   
   /** Orbiting sensor min illumination angle (deg) */
   public static final int XF_SENLIM_MINIL     = 59;
   /** Ground site twilight offset angle (deg) */
   public static final int XF_SENLIM_TWILIT    = 60;
   /** Is special mobil sensor flag / column 9 in 1L card */
   public static final int XF_SENLIM_SMSEN     = 61;
   /** Number of additional segments added to sensor limits */
   public static final int XF_SENLIM_NUMSEGS   = 62;
   /** Space fence FOR's Az/El table file name */
   public static final int XF_SENLIM_FILE      = 63;
   /** Number of rows in space fence FOR's Az/El table */
   public static final int XF_SENLIM_AZELROWS  = 64;
   
   //*******************************************************************************
   
   // Indexes of sensor location data
   /** Sensor nubmer */
   public static final int XA_SENLOC_NUM     =  0;
   /** Sensor location - astronomical latitude (deg)  (+=North/-=South) */
   public static final int XA_SENLOC_LAT     =  1;
   /** Sensor location - astronomical longitude (deg) (+=West/-=East) */
   public static final int XA_SENLOC_LON     =  2;
   /** Sensor ECR position X (km) */
   public static final int XA_SENLOC_POSX    =  3;
   /** Sensor ECR position Y (km) */
   public static final int XA_SENLOC_POSY    =  4;
   /** Sensor ECR position Z (km) */
   public static final int XA_SENLOC_POSZ    =  5;
   
   public static final int XA_SENLOC_SIZE    = 16;
   
   //*******************************************************************************
   
   // Indexes of Sensor's sigmas & biases data fields
   /** azimuth sigma (deg) */
   public static final int XAF_SENBS_AZSIGMA =  0;
   /** elevation sigma (deg) */
   public static final int XAF_SENBS_ELSIGMA =  1;
   /** range sigma (km) */
   public static final int XAF_SENBS_RGSIGMA =  2;
   /** range-rate sigma (km/sec) */
   public static final int XAF_SENBS_RRSIGMA =  3;
   /** az rate sigma (deg/sec) */
   public static final int XAF_SENBS_ARSIGMA =  4;
   /** el rate sigma (deg/sec) */
   public static final int XAF_SENBS_ERSIGMA =  5;
   
   /** azimuth bias (deg) */
   public static final int XAF_SENBS_AZBIAS  =  8;
   /** elevation bias (deg) */
   public static final int XAF_SENBS_ELBIAS  =  9;
   /** range bias (km) */
   public static final int XAF_SENBS_RGBIAS  = 10;
   /** range-rate bias (km/sec) */
   public static final int XAF_SENBS_RRBIAS  = 11;
   /** time bias (sec) */
   public static final int XAF_SENBS_TIMEBIAS= 15;
   
   public static final int XAF_SENBS_SIZE    = 16;
   
   // Named constants for different obs types
   /** obs contains range rate only data */
   public static final int OT_RRATE          =  0;
   /** obs contains azimuth, elevation data */
   public static final int OT_AZEL           =  1;
   /** obs contains azimuth, elevation, and range data */
   public static final int OT_AZEL_RNG       =  2;
   /** obs contains azimuth, elevation, range, and range rate data */
   public static final int OT_AZEL_RNGRRATE  =  3;
   /** obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data */
   public static final int OT_AZEL_ALL       =  4;
   /** obs contains right ascention and declination data */
   public static final int OT_RADEC          =  5;
   /** obs contains range only data */
   public static final int OT_RNGONLY        =  6;
   /** obs contains azimuth, elevation, and sensor location data */
   public static final int OT_AZEL_SENPOS    =  8;
   /** obs contains right ascension, declination, and sensor location data */
   public static final int OT_RADEC_SENPOS   =  9;
   /** obs contains ECI position and velocity data */
   public static final int OT_VEL            = 10;
   /** obs contains ECI position data */
   public static final int OT_POS            = 11;
   /** obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data */
   public static final int OT_SLR            = 16;
   /** obs contains azimuth, elevation, sensor location, and range data */
   public static final int OT_M              = 18;
   /** obs contains right ascension, declination, sensor location, and range data */
   public static final int OT_O              = 19;
   /** obs contains TDOA/FDOA data */
   public static final int OT_RF             = 13;
   /** obs contains range rate only data - for use in obs selection criteria */
   public static final int OT_RRATE_SELOB    =999;
   
   
// ========================= End of auto generated code ==========================
}
