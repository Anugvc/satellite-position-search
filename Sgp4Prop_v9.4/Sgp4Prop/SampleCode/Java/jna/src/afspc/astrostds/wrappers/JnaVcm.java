// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import com.sun.jna.*;
import com.sun.jna.ptr.*;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNA component of the wrapper for: Vcm */
public class JnaVcm
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNA class wraps. */
   public static final String DLL_NAME = "vcm";

   static
   {
      Native.register(DLL_NAME);
   }


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes Vcm DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if Vcm.dll is initialized successfully, non-0 if there is an error
   */
   public static native int VcmInit(long apAddr);


   /**
   * Returns information about the current version of Vcm DLL. The information is placed in the string parameter you pass in
   * The returned string provides information about the version number, build date, and the platform of the Vcm DLL. 
   * @param infoStr            A string to hold the information about Vcm.dll (out-Character[128])
   */
   public static native void VcmGetInfo(byte[] infoStr);


   /**
   * Loads a text file containing Vcm's
   * The users can use this function repeatedly to load Vcm records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   * 
   * State vectors can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]" or "SPVMSG=[path/filename]".
   * 
   * This function only reads Vcm records from the main input file or Vcm records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   * @param vcmFile            The name of the file containing VCMs to be loaded (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int VcmLoadFile(String vcmFile);


   /**
   * Saves the currently loaded VCM's to a file
   * If the users call this routine immediately after VcmLoadFile. The VCMs contents in the two file should be the same (minus duplicated VCMs or bad VCMs).
   * 
   * The purpose of this function is to save the current state of the loaded VCMs, usually used in GUI applications, for future use.
   * @param vcmFile            The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int VcmSaveFile(String vcmFile, int saveMode, int saveForm);


   /**
   * Removes a VCM represented by the satKey from memory
   * If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the VCM is removed successfully, non-0 if there is an error
   */
   public static native int VcmRemoveSat(long satKey);


   /**
   * Removes all VCM's from memory
   * The function returns zero if all the satellites are removed successfully from the Vcm DLL's binary tree.
   * @return 0 if all VCM's are removed successfully from memory, non-0 if there is an error
   */
   public static native int VcmRemoveAllSats();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   * See VcmGetLoaded for an example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function VcmGetLoaded().
   * @return The number of VCM's currently loaded
   */
   public static native int VcmGetCount();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the VCM's
   * It is recommended that VcmGetCount() is used to count how many satellites are currently loaded in the Vcm DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   * 
   * If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   * @param order              Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded (in-Integer)
   * @param satKeys            The array in which to store the satKeys (out-Long[*])
   */
   public static native void VcmGetLoaded(int order, long[] satKeys);


   /**
   * Adds a VCM using its 1-line or concatenated string formats
   * If the satellite was previously added to the Vcm DLL's binary tree, the function also returns a negative value indicating an error. 
   * 
   * The users can use this function repeatedly to add many satellites (one satellite at a time) to the Vcm DLL's binary tree. 
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[4000])
   * @return The satKey of the newly added VCM on success, a negative value on error
   */
   public static native long VcmAddSatFrLines(String vcmString);


   /**
   * Works like VcmAddSatFrLines but designed for Matlab
   * @param vcmString          1-line or concatenated string representation of the VCM (in-Character[4000])
   * @param satKey             The satKey of the newly added VCM on success, a negative value on error (out-Long)
   */
   public static native void VcmAddSatFrLinesML(String vcmString, LongByReference satKey);


   /**
   * Adds a VCM using its individually provided field values
   * <br>
   * The table below indicates starting character position for each field in the xs_vcm parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td>Starting Character Position</td>
   * <td>Input Description</td>
   * </tr>
   * <tr><td> 0</td><td>satellite name, A8</td></tr>
   * <tr><td> 8</td><td>common satellite name, A25</td></tr>
   * <tr><td>33</td><td>geopotential name, A6 (WGS-72, WGS-84, EGM-96, ...)</td></tr>
   * <tr><td>39</td><td>drag model, A12</td></tr>
   * <tr><td>51</td><td>lunar solar pertubations, A3 (ON, OFF)</td></tr>
   * <tr><td>54</td><td>radiation pressure pertubations, A3 (ON, OFF)</td></tr>
   * <tr><td>57</td><td>Earth + ocean tides pertubation, A3 (ON, OFF)</td></tr>
   * <tr><td>60</td><td>intrack thrust, A3 (ON, OFF)</td></tr>
   * <tr><td>63</td><td>integration mode, A6 (ASW, OSW, SPADOC, ...)</td></tr>
   * <tr><td>69</td><td>coordinate system, A5</td></tr>
   * <tr><td>74</td><td>type of partial derivatives, A8</td></tr>
   * <tr><td>82</td><td>step mode, A4 (AUTO, TIME, S)</td></tr>
   * <tr><td>86</td><td>fixed step size indicator, A3 (ON, OFF)</td></tr>
   * <tr><td>89</td><td>initial step size selection, A6 (AUTO, MANUAL)</td></tr>
   * </table>
   * <br> 
   * The table below indicates the index for each field in the xa_vcm array:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td>Index (xa_vcm)</td>
   * <td>index Interpretation</td>
   * </tr>
   * <tr><td>  0</td><td>satellite number</td></tr>
   * <tr><td>  1</td><td>satellite's epoch time</td></tr>
   * <tr><td>  2</td><td>epoch revolution number</td></tr>
   * <tr><td>  3</td><td>J2K position X (km)</td></tr>
   * <tr><td>  4</td><td>J2K position Y (km)</td></tr>
   * <tr><td>  5</td><td>J2K position Z (km)</td></tr>
   * <tr><td>  6</td><td>J2K velocity X (km/s)</td></tr>
   * <tr><td>  7</td><td>J2K velocity Y (km/s)</td></tr>
   * <tr><td>  8</td><td>J2K velocity Z (km/s)</td></tr>
   * <tr><td>  9</td><td>ECI position X (km)</td></tr>
   * <tr><td> 10</td><td>ECI position Y (km)</td></tr>
   * <tr><td> 11</td><td>ECI position Z (km)</td></tr>
   * <tr><td> 12</td><td>ECI velocity X (km/s)</td></tr>
   * <tr><td> 13</td><td>ECI velocity Y (km/s)</td></tr>
   * <tr><td> 14</td><td>ECI velocity Z (km/s)</td></tr>
   * <tr><td> 15</td><td>EFG position X (km)</td></tr>
   * <tr><td> 16</td><td>EFG position Y (km)</td></tr>
   * <tr><td> 17</td><td>EFG position Z (km)</td></tr>
   * <tr><td> 18</td><td>EFG velocity X (km/s)</td></tr>
   * <tr><td> 19</td><td>EFG velocity Y (km/s)</td></tr>
   * <tr><td> 20</td><td>EFG velocity Z (km/s)</td></tr>
   * <tr><td> 21</td><td>geopotential zonals</td></tr>
   * <tr><td> 22</td><td>geopotential tesserals</td></tr>
   * <tr><td> 23</td><td>ballistic coefficient (m^2/kg)</td></tr>
   * <tr><td> 24</td><td>BDOT (m^2/kg-s)</td></tr>
   * <tr><td> 25</td><td>solar radiation pressure coefficient (m^2/kg)</td></tr>
   * <tr><td> 26</td><td>energy dissipation rate (w/kg)</td></tr>
   * <tr><td> 27</td><td>outgassing parameter/thrust acceleration (km/s^2)</td></tr>
   * <tr><td> 28</td><td>center of mass offset (m)</td></tr>
   * <tr><td> 29</td><td>solar flux F10</td></tr>
   * <tr><td> 30</td><td>average F10</td></tr>
   * <tr><td> 31</td><td>average Ap</td></tr>
   * <tr><td> 32</td><td>TAI - UTC (s)</td></tr>
   * <tr><td> 33</td><td>UT1 - UTC (s)</td></tr>
   * <tr><td> 34</td><td>UT1 rate (ms/day)</td></tr>
   * <tr><td> 35</td><td>polar motion X (arcsec)</td></tr>
   * <tr><td> 36</td><td>polar motion Y (arcsec)</td></tr>
   * <tr><td> 37</td><td>nutation terms</td></tr>
   * <tr><td> 38</td><td>leap second time in days since 1950 UTC</td></tr>
   * <tr><td> 39</td><td>initial step size</td></tr>
   * <tr><td> 40</td><td>integrator control error</td></tr>
   * <tr><td> 41</td><td>position u sigma (km)</td></tr>
   * <tr><td> 42</td><td>position v sigma (km)</td></tr>
   * <tr><td> 43</td><td>position w sigma (km)</td></tr>
   * <tr><td> 44</td><td>velocity u sigma (km/s)</td></tr>
   * <tr><td> 45</td><td>velocity v sigma (km/s)</td></tr>
   * <tr><td> 46</td><td>velocity w sigma (km/s)</td></tr>
   * <tr><td> 47</td><td>covariance matrix size</td></tr>
   * <tr><td> 48</td><td>weighted RM of last DC on the satellite</td></tr>
   * <tr><td>100</td><td>the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9
   * covmtx)</td></tr>
   * </table>
   * <br>
   * The order of the values in the lower half of the covariance matrix is described in the VCM Data Description section.  
   * <br>
   * For a 6x6 covariance matrix, the 21 values should be entered in the xa_vcm array using index values 100-120.  
   * <br>
   * For a 9x9 covariance matrix, the 45 values should be entered using the index values 100-144.
   * @param xs_vcm             The input string that contains all VCM's text fields (in-Character[512])
   * @param xa_vcm             The input array that contains all VCM's numerical fields. see XA_VCM_? (in-Double[512])
   * @return The satKey of the newly added VCM on success, a negative value on error
   */
   public static native long VcmAddSatFrFields(String xs_vcm, double[] xa_vcm);


   /**
   * Works like VcmAddSatFrFields but designed for Matlab
   * <br>
   * See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   * @param xs_vcm             The input string that contains all VCM's text fields (in-Character[512])
   * @param xa_vcm             The input array that contains all VCM's numerical fields.  see XA_VCM_? (in-Double[512])
   * @param satKey             The satKey of the newly added VCM on success, a negative value on error (out-Long)
   */
   public static native void VcmAddSatFrFieldsML(String xs_vcm, double[] xa_vcm, LongByReference satKey);


   /**
   * Retrieves VCM data associated with the input satKey
   * @param satKey             The satKey of the loaded VCM (in-Long)
   * @param xs_vcm             The output string that contains all VCM's text fields (out-Character[512])
   * @param xa_vcm             The output array that contains all VCM's numerical fields.  see XA_VCM_? (out-Double[512])
   * @return 0 if the VCM data is successfully retrieved, non-0 if there is an error
   */
   public static native int VcmRetrieveAllData(long satKey, byte[] xs_vcm, double[] xa_vcm);


   /**
   * Updates a VCM using its individual field values. Note: satellite's number and epoch won't be updated
   * <br>
   * See VcmAddSatFrFields for definitions of the xs_vcm and xa_vcm parameters.
   * @param satKey             The unique key of the satellite to update (in-Long)
   * @param xs_vcm             The input string that contains all VCM's text fields (in-Character[512])
   * @param xa_vcm             The input array that contains all VCM's numerical fields.  see XA_VCM_? (in-Double[512])
   * @return 0 if the Vcm data is successfully updated, non-0 if there is an error
   */
   public static native int VcmUpdateSatFrFields(long satKey, String xs_vcm, double[] xa_vcm);


   /**
   * Retrieves the value of a specific field of a VCM
   * <br>
   * The table below shows the values for the xf_Vcm parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td>index</td>
   * <td>index Interpretation</td>
   * </tr>
   * <tr><td> 1 </td><td> Satellite number I5</td></tr>
   * <tr><td> 2 </td><td> Satellite international designator A8</td></tr>
   * <tr><td> 3 </td><td> Epoch YYYYDDDHHMMSS.SSS A17</td></tr>
   * <tr><td> 4 </td><td> Revolution number I5</td></tr>
   * <tr><td> 5 </td><td> position X (km) F16.8 </td></tr>
   * <tr><td> 6 </td><td> position Y (km) F16.8 </td></tr>
   * <tr><td> 7 </td><td> position Z (km) F16.8   </td></tr>
   * <tr><td> 8 </td><td> velocity X (km/s) F16.12</td></tr>
   * <tr><td> 9 </td><td> velocity Y (km/s) F16.12</td></tr>
   * <tr><td>10 </td><td> velocity Z (km/s) F16.12</td></tr>
   * <tr><td>11 </td><td> Geo Name A6</td></tr>
   * <tr><td>12 </td><td> Geo zonals I2</td></tr>
   * <tr><td>13 </td><td> Geo tesserals I2</td></tr>
   * <tr><td>14 </td><td> Drag modelel A12 (NONE, JAC70/MSIS90) </td></tr>
   * <tr><td>15 </td><td> Lunar solar A3 (ON/OFF)</td></tr>
   * <tr><td>16 </td><td> Radiation pressure pertubations A3 (ON/OFF)</td></tr>
   * <tr><td>17 </td><td> Earth + ocean tides pertubations A3 (ON/OFF)</td></tr>
   * <tr><td>18 </td><td> Intrack thrust A3 (ON/OFF)</td></tr>
   * <tr><td>19 </td><td> Ballistic coefficient (m^2/kg)</td></tr>
   * <tr><td>20 </td><td> Radiation pressure coefficient  (m^2/kg)</td></tr>
   * <tr><td>21 </td><td> Outgassing parameter (km/s^2)</td></tr>
   * <tr><td>22 </td><td> Center of mass offset (m)</td></tr>
   * <tr><td>23 </td><td> Solar flux F10 I3</td></tr>
   * <tr><td>24 </td><td> Solar flux F10 average I3</td></tr>
   * <tr><td>25 </td><td> Ap average F5.1</td></tr>
   * <tr><td>26 </td><td> TAI minus UTC (s)I2</td></tr>
   * <tr><td>27 </td><td> UT1 minus UTC (s) F7.5</td></tr>
   * <tr><td>28 </td><td> UT1 rate (ms/day)  F5.3</td></tr>
   * <tr><td>29 </td><td> Polar motion X (arcsec) F6.4</td></tr>
   * <tr><td>30 </td><td> Polar motion Y (arcsec) F6.4</td></tr>
   * <tr><td>31 </td><td> Nutation terms I3</td></tr>
   * <tr><td>32 </td><td> Leap second time YYYYDDDHHMMSS.SSS A17</td></tr>
   * <tr><td>33 </td><td> Integration mode A6 (ASW, OSW, SPADOC)</td></tr>
   * <tr><td>34 </td><td> Type of partial derivatives A8 (ANALYTIC, FULL NUM, FAST NUM)</td></tr>
   * <tr><td>35 </td><td> Integration step mode A4 (AUTO/TIME, S)</td></tr>
   * <tr><td>36 </td><td> Fixed step size indicator A3 (ON/OFF)</td></tr>
   * <tr><td>37 </td><td> Initial step size selection A6 (AUTO/MANUAL)</td></tr>
   * <tr><td>38 </td><td> Initial integration step size F8.3</td></tr>
   * <tr><td>39 </td><td> Integrator error control E9.3</td></tr>
   * <tr><td>40 </td><td> Weighted RMS of last DC E10.5</td></tr>
   * <tr><td>41 </td><td> BDOT (M2/KG-S)</td></tr>
   * <tr><td>42 </td><td> EDR (W/KG)</td></tr>
   * </table>
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_Vcm             Predefined number specifying which field to set (in-Integer)
   * @param valueStr           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the VCM is successfully retrieved, non-0 if there is an error
   */
   public static native int VcmGetField(long satKey, int xf_Vcm, byte[] valueStr);


   /**
   * Updates the value of a specific field of a VCM
   * See VcmGetField for a description of the xf_Vcm parameter.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_Vcm             Predefined number specifying which field to set (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string (in-Character[512])
   * @return 0 if the VCM is successfully updated, non-0 if there is an error
   */
   public static native int VcmSetField(long satKey, int xf_Vcm, String valueStr);


   /**
   * Retrieves all of the data for a VCM in a single function call
   * @param satKey             The satellite's unique key (in-Long)
   * @param satNum             Satellite number (out-Integer)
   * @param satName            Satellite name A8 (out-Character[8])
   * @param epochDtg           Satellite epoch time A17 YYYYDDDHHMMSS.SSS (out-Character[17])
   * @param revNum             Revolution number (out-Integer)
   * @param posECI             ECI position (out-Double[3])
   * @param velECI             ECI velocity (out-Double[3])
   * @param geoName            Geopotential name A6 (WGS-72, WGS-84, EGM-96...) (out-Character[6])
   * @param geoZonals          Geopotential zonals (out-Integer)
   * @param geoTesserals       Geopotential tesserals (out-Integer)
   * @param dragModel          Drag model A12 (NONE, JAC70/MSIS90...) (out-Character[12])
   * @param lunarSolar         Lunar solar pertubations A3: ON, OFF (out-Character[3])
   * @param radPress           Radiation pressure pertubations A3: ON, OFF (out-Character[3])
   * @param earthTides         Earth + ocean tides pertubations A3: ON, OFF (out-Character[3])
   * @param intrackThrust      Intrack thrust A3: ON, OFF (out-Character[3])
   * @param bTerm              Ballistic coefficient (m2/kg) E13.10 (out-Double)
   * @param agom               Solar radiation pressure coefficient (m2/kg) E13.10 (out-Double)
   * @param ogParm             Outgassing parameter/Thrust acceleration (m/s2) E13.10 (out-Double)
   * @param cmOffset           Center of mass offset (m) (out-Double)
   * @param f10                Solar flux F10 I3 (out-Integer)
   * @param f10Avg             Soluar flux F10 average I3 (out-Integer)
   * @param apAvg              Ap average F5.1 (out-Double)
   * @param tconRec            1: TaiMinusUTC, 2: UT1MinusUTC, 3: UT1Rate, 4: PolarX, 5: PolarY (out-Double[5])
   * @param nTerms             Number of nutation terms I3 (out-Integer)
   * @param leapYrDtg          Leap second time (out-Character[17])
   * @param integMode          Integration mode A6: ASW, OSW, SPADOC (SPECTR=1 if ASW, OSW) (out-Character[6])
   * @param partials           Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM) (out-Character[8])
   * @param stepMode           Integrator step mode A4: AUTO, TIME, S (out-Character[4])
   * @param fixStep            Fixed step size indicator A3: ON, OFF (out-Character[3])
   * @param stepSelection      Initial step size selection A6: AUTO, MANUAL (out-Character[6])
   * @param initStepSize       Initial integration step size  F8.3 (out-Double)
   * @param errCtrl            Integrator error control  E9.3 (out-Double)
   * @param rms                Weighted RMS of last DC on the satellite E10.5 (out-Double)
   * @return ! 0 if the VCM is successfully retrieved, non-0 if there is an error
   */
   public static native int VcmGetAllFields(long satKey, IntByReference satNum, byte[] satName, byte[] epochDtg, IntByReference revNum, double[] posECI, double[] velECI, byte[] geoName, IntByReference geoZonals, IntByReference geoTesserals, byte[] dragModel, byte[] lunarSolar, byte[] radPress, byte[] earthTides, byte[] intrackThrust, DoubleByReference bTerm, DoubleByReference agom, DoubleByReference ogParm, DoubleByReference cmOffset, IntByReference f10, IntByReference f10Avg, DoubleByReference apAvg, double[] tconRec, IntByReference nTerms, byte[] leapYrDtg, byte[] integMode, byte[] partials, byte[] stepMode, byte[] fixStep, byte[] stepSelection, DoubleByReference initStepSize, DoubleByReference errCtrl, DoubleByReference rms);


   /**
   * Returns the concatenated string representation of a VCM by the satellite's satKey
   * @param satKey             The satellite's unique key (in-Long)
   * @param vcmLines           The resulting concatenated string representation of the VCM (out-Character[4000])
   * @return 0 if successful, non-0 on error
   */
   public static native int VcmGetLines(long satKey, byte[] vcmLines);


   /**
   * Converts VCM 1-line format to multi-line format (as a concatenated string)
   * @param vcm1Line           The input VCM 1-line format (in-Character[1500])
   * @param vcmLines           The resulting concatenated string (out-Character[4000])
   * @return 0 if successful, non-0 on error
   */
   public static native int Vcm1LineToMultiLine(String vcm1Line, byte[] vcmLines);


   /**
   * Converts VCM multi-line format (as a concatenated string) to 1-line format 
   * @param vcmLines           The input concatenated string (in-Character[4000])
   * @param vcm1Line           The resulting VCM 1-line format (out-Character[1500])
   * @return 0 if successful, non-0 on error
   */
   public static native int VcmMultiLineTo1Line(String vcmLines, byte[] vcm1Line);


   /**
   * Returns the first satKey from the currently loaded set of VCM's that contains the specified satellite number
   * This function is useful when Vcm dll is used in applications that requires only one record (one Vcm entry) for one satellite and the applications refer to that Vcm by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   * @param satNum             The input satellite number (in-Integer)
   * @return The satellite's unique key
   */
   public static native long VcmGetSatKey(int satNum);


   /**
   * Works like VcmGetSatKey but designed for Matlab
   * @param satNum             The input satellite number (in-Integer)
   * @param satKey             The satellite's unique key (out-Long)
   */
   public static native void VcmGetSatKeyML(int satNum, LongByReference satKey);


   /**
   * Computes a satKey from the input data
   * This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different. 
   * @param satNum             The input satellite number (in-Integer)
   * @param epochDtg           [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20 (in-Character[20])
   * @return The satellite's unique key
   */
   public static native long VcmFieldsToSatKey(int satNum, String epochDtg);


   /**
   * Works like VcmFieldsToSatKey but designed for Matlab
   * @param satNum             The input satellite number (in-Integer)
   * @param epochDtg           [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20 (in-Character[20])
   * @param satKey             The satellite's unique key (out-Long)
   */
   public static native void VcmFieldsToSatKeyML(int satNum, String epochDtg, LongByReference satKey);


   /**
   * Constructs a multi-line VCM (as a concatenated string) from the VCM data stored in the input arrays.
   * @param xa_vcm             Array containing VCM's numerical fields, see XA_VCM_? for array arrangement (in-Double[512])
   * @param xs_vcm             Input string that contains all VCM's text fields, see XS_VCM_? for column arrangement (in-Character[512])
   * @param vcmLines           The resulting concatenated string representation of a VCM (out-Character[4000])
   */
   public static native void VcmArrayToVcmLines(double[] xa_vcm, String xs_vcm, byte[] vcmLines);


   /**
   * Constructs a 1-line VCM from the VCM data stored in the input arrays.
   * @param xa_vcm             Array containing VCM's numerical fields, see XA_VCM_? for array arrangement (in-Double[512])
   * @param xs_vcm             Input string that contains all VCM's text fields, see XS_VCM_? for column arrangement (in-Character[512])
   * @param vcm1Line           The resulting 1-line VCM (out-Character[1500])
   */
   public static native void VcmArrayToVcm1Line(double[] xa_vcm, String xs_vcm, byte[] vcm1Line);


   /**
   * Parses data either in 1-line or multi-line (as a concatenated string) VCM and stores that data into the output arrays
   * This function only parses data from the input VCM but DOES NOT load/add the input VCM to memory.
   * @param vcmString          An input 1-line or concatenated string representation of the VCM (in-Character[4000])
   * @param xa_vcm             Array containing VCM's numerical fields, see XA_VCM_? for array arrangement (out-Double[512])
   * @param xs_vcm             Output string that contains all VCM's text fields, see XS_VCM_? for column arrangement (out-Character[512])
   * @return 0 if the VCM is parsed successfully, non-0 if there is an error.
   */
   public static native int VcmStringToArray(String vcmString, double[] xa_vcm, byte[] xs_vcm);
   
   // Maximum string length of a multi-line VCM concatenated into one big string
   public static final int VCMSTRLEN = 4000;
   
   
   // Maximum string length of a 1-line VCM string
   public static final int VCM1LINELEN = 1500;
   
   
   // Starting location of the VCM's text data fields
   /** satellite name A8 */
   public static final int XS_VCM_SATNAME       =   0;
   /** common satellite name A25 */
   public static final int XS_VCM_COMMNAME      =   8;
   /** geopotential name A6 (WGS-72, WGS-84, EGM-96, ...) */
   public static final int XS_VCM_GEONAME       =  33;
   /** drag model A12 */
   public static final int XS_VCM_DRAGMOD       =  39;
   /** lunar solar pertubations A3 (ON, OFF) */
   public static final int XS_VCM_LUNAR         =  51;
   /** radiation pressure pertubations A3 (ON, OFF) */
   public static final int XS_VCM_RADPRESS      =  54;
   /** Earth + ocean tides pertubation A3 (ON, OFF) */
   public static final int XS_VCM_EARTHTIDES    =  57;
   /** intrack thrust A3 (ON, OFF) */
   public static final int XS_VCM_INTRACK       =  60;
   /** integration mode A6 (ASW, OSW, SPADOC, ...) */
   public static final int XS_VCM_INTEGMODE     =  63;
   /** coordinate system A5 */
   public static final int XS_VCM_COORDSYS      =  69;
   /** type of partial derivatives A8 */
   public static final int XS_VCM_PARTIALS      =  74;
   /** step mode A4 (AUTO, TIME, S) */
   public static final int XS_VCM_STEPMODE      =  82;
   /** fixed step size indicator A3 (ON, OFF) */
   public static final int XS_VCM_FIXEDSTEP     =  86;
   /** initial step size selection A6 (AUTO, MANUAL) */
   public static final int XS_VCM_STEPSEL       =  89;
   
   public static final int XS_VCM_SIZE          = 512;
   
   // VCM's text data fields - new convention (start index, string length)
   /** satellite name A8 */
   public static final int XS_VCM_SATNAME_0_8      =   0;
   /** common satellite name A25 */
   public static final int XS_VCM_COMMNAME_8_25    =   8;
   /** geopotential name A6 (WGS-72, WGS-84, EGM-96, ...) */
   public static final int XS_VCM_GEONAME_33_6     =  33;
   /** drag model A12 */
   public static final int XS_VCM_DRAGMOD_39_12    =  39;
   /** lunar solar pertubations A3 (ON, OFF) */
   public static final int XS_VCM_LUNAR_51_3       =  51;
   /** radiation pressure pertubations A3 (ON, OFF) */
   public static final int XS_VCM_RADPRESS_54_3    =  54;
   /** Earth + ocean tides pertubation A3 (ON, OFF) */
   public static final int XS_VCM_EARTHTIDES_57_3  =  57;
   /** intrack thrust A3 (ON, OFF) */
   public static final int XS_VCM_INTRACK_60_3     =  60;
   /** integration mode A6 (ASW, OSW, SPADOC, ...) */
   public static final int XS_VCM_INTEGMODE_63_6   =  63;
   /** coordinate system A5 */
   public static final int XS_VCM_COORDSYS_69_5    =  69;
   /** type of partial derivatives A8 */
   public static final int XS_VCM_PARTIALS_74_8    =  74;
   /** step mode A4 (AUTO, TIME, S) */
   public static final int XS_VCM_STEPMODE_82_4    =  82;
   /** fixed step size indicator A3 (ON, OFF) */
   public static final int XS_VCM_FIXEDSTEP_86_3   =  86;
   /** initial step size selection A6 (AUTO, MANUAL) */
   public static final int XS_VCM_STEPSEL_89_6     =  89;
   
   public static final int XS_VCM_LENGTH           = 512;
   
   // Indexes to access data from an array containing VCM numerical data fields
   /** satellite number */
   public static final int XA_VCM_SATNUM        =   0;
   /** satellite's epoch time */
   public static final int XA_VCM_EPOCHDS50UTC  =   1;
   /** epoch revolution number */
   public static final int XA_VCM_REVNUM        =   2;
   /** J2K position X (km) */
   public static final int XA_VCM_J2KPOSX       =   3;
   /** J2K position Y (km) */
   public static final int XA_VCM_J2KPOSY       =   4;
   /** J2K position Z (km) */
   public static final int XA_VCM_J2KPOSZ       =   5;
   /** J2K velocity X (km/s) */
   public static final int XA_VCM_J2KVELX       =   6;
   /** J2K velocity Y (km/s) */
   public static final int XA_VCM_J2KVELY       =   7;
   /** J2K velocity Z (km/s) */
   public static final int XA_VCM_J2KVELZ       =   8;
   /** ECI position X (km) */
   public static final int XA_VCM_ECIPOSX       =   9;
   /** ECI position Y (km) */
   public static final int XA_VCM_ECIPOSY       =  10;
   /** ECI position Z (km) */
   public static final int XA_VCM_ECIPOSZ       =  11;
   /** ECI velocity X (km/s) */
   public static final int XA_VCM_ECIVELX       =  12;
   /** ECI velocity Y (km/s) */
   public static final int XA_VCM_ECIVELY       =  13;
   /** ECI velocity Z (km/s) */
   public static final int XA_VCM_ECIVELZ       =  14;
   /** EFG position X (km) */
   public static final int XA_VCM_EFGPOSX       =  15;
   /** EFG position Y (km) */
   public static final int XA_VCM_EFGPOSY       =  16;
   /** EFG position Z (km) */
   public static final int XA_VCM_EFGPOSZ       =  17;
   /** EFG velocity X (km/s) */
   public static final int XA_VCM_EFGVELX       =  18;
   /** EFG velocity Y (km/s) */
   public static final int XA_VCM_EFGVELY       =  19;
   /** EFG velocity Z (km/s) */
   public static final int XA_VCM_EFGVELZ       =  20;
   /** geopotential zonals */
   public static final int XA_VCM_GEOZON        =  21;
   /** geopotential tesserals */
   public static final int XA_VCM_GEOTES        =  22;
   /** ballistic coefficient (m^2/kg) */
   public static final int XA_VCM_BTERM         =  23;
   /** BDOT (m^2/kg-s) */
   public static final int XA_VCM_BDOT          =  24;
   /** solar radiation pressure coefficient (m^2/kg) */
   public static final int XA_VCM_AGOM          =  25;
   /** energy dissipation rate (w/kg) */
   public static final int XA_VCM_EDR           =  26;
   /** outgassing parameter/thrust acceleration (m/s^2) */
   public static final int XA_VCM_OGPARM        =  27;
   /** center of mass offset (m) */
   public static final int XA_VCM_CMOFFSET      =  28;
   /** solar flux F10 */
   public static final int XA_VCM_F10           =  29;
   /** average F10 */
   public static final int XA_VCM_F10AVG        =  30;
   /** average Ap */
   public static final int XA_VCM_APAVG         =  31;
   /** TAI - UTC (s) */
   public static final int XA_VCM_TAIMUTC       =  32;
   /** UT1 - UTC (s) */
   public static final int XA_VCM_UT1MUTC       =  33;
   /** UT1 rate (ms/day) */
   public static final int XA_VCM_UT1RATE       =  34;
   /** polar motion X (arcsec) */
   public static final int XA_VCM_POLMOTX       =  35;
   /** polar motion Y (arcsec) */
   public static final int XA_VCM_POLMOTY       =  36;
   /** nutation terms */
   public static final int XA_VCM_NUTTERMS      =  37;
   /** leap second time in days since 1950 UTC */
   public static final int XA_VCM_LEAPDS50UTC   =  38;
   /** initial step size */
   public static final int XA_VCM_INITSTEP      =  39;
   /** integrator control error */
   public static final int XA_VCM_ERRCTRL       =  40;
   /** position u sigma (km) */
   public static final int XA_VCM_POSUSIG       =  41;
   /** position v sigma (km) */
   public static final int XA_VCM_POSVSIG       =  42;
   /** position w sigma (km) */
   public static final int XA_VCM_POSWSIG       =  43;
   /** velocity u sigma (km/s) */
   public static final int XA_VCM_VELUSIG       =  44;
   /** velocity v sigma (km/s) */
   public static final int XA_VCM_VELVSIG       =  45;
   /** velocity w sigma (km/s) */
   public static final int XA_VCM_VELWSIG       =  46;
   /** covariance matrix size */
   public static final int XA_VCM_COVMTXSIZE    =  47;
   /** weighted RM of last DC on the satellite */
   public static final int XA_VCM_RMS           =  48;
   /** the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx) */
   public static final int XA_VCM_COVELEMS      = 100;
   
   public static final int XA_VCM_SIZE          = 512;
   
   // Indexes of VCM data fields
   /** Satellite number I5 */
   public static final int XF_VCM_SATNUM    =  1;
   /** Satellite international designator A8 */
   public static final int XF_VCM_SATNAME   =  2;
   /** Epoch YYYYDDDHHMMSS.SSS A17 */
   public static final int XF_VCM_EPOCH     =  3;
   /** Revolution number I5 */
   public static final int XF_VCM_REVNUM    =  4;
   /** position X (km) F16.8 */
   public static final int XF_VCM_POSX      =  5;
   /** position Y (km) F16.8 */
   public static final int XF_VCM_POSY      =  6;
   /** position Z (km) F16.8 */
   public static final int XF_VCM_POSZ      =  7;
   /** velocity X (km/s) F16.12 */
   public static final int XF_VCM_VELX      =  8;
   /** velocity Y (km/s) F16.12 */
   public static final int XF_VCM_VELY      =  9;
   /** velocity Z (km/s) F16.12 */
   public static final int XF_VCM_VELZ      = 10;
   /** Geo Name A6 */
   public static final int XF_VCM_GEONAME   = 11;
   /** Geo zonals I2 */
   public static final int XF_VCM_GEOZONALS = 12;
   /** Geo tesserals I2 */
   public static final int XF_VCM_GEOTESSER = 13;
   /** Drag modelel A12 (NONE, JAC70/MSIS90) */
   public static final int XF_VCM_DRAGMODE  = 14;
   /** Lunar solar A3 (ON/OFF) */
   public static final int XF_VCM_LUNSOL    = 15;
   /** Radiation pressure pertubations A3 (ON/OFF) */
   public static final int XF_VCM_RADPRESS  = 16;
   /** Earth + ocean tides pertubations A3 (ON/OFF) */
   public static final int XF_VCM_ERTHTIDES = 17;
   /** Intrack thrust A3 (ON/OFF) */
   public static final int XF_VCM_INTRACK   = 18;
   /** Ballistic coefficient (m^2/kg) */
   public static final int XF_VCM_BTERM     = 19;
   /** Radiation pressure coefficient  (m^2/kg) */
   public static final int XF_VCM_AGOM      = 20;
   /** Outgassing parameter (m/s^2) */
   public static final int XF_VCM_OGPARM    = 21;
   /** Center of mass offset (m) */
   public static final int XF_VCM_CMOFFSET  = 22;
   /** Solar flux F10 I3 */
   public static final int XF_VCM_F10       = 23;
   /** Solar flux F10 average I3 */
   public static final int XF_VCM_F10AVG    = 24;
   /** Ap average F5.1 */
   public static final int XF_VCM_APAVG     = 25;
   /** TAI minus UTC (s)I2 */
   public static final int XF_VCM_TAIMUTC   = 26;
   /** UT1 minus UTC (s) F7.5 */
   public static final int XF_VCM_UT1MUTC   = 27;
   /** UT1 rate (ms/day)  F5.3 */
   public static final int XF_VCM_UT1RATE   = 28;
   /** Polar motion X (arcsec) F6.4 */
   public static final int XF_VCM_POLARX    = 29;
   /** Polar motion Y (arcsec) F6.4 */
   public static final int XF_VCM_POLARY    = 30;
   /** Nutation terms I3 */
   public static final int XF_VCM_NTERMS    = 31;
   /** Leap second time YYYYDDDHHMMSS.SSS A17 */
   public static final int XF_VCM_LEAPYR    = 32;
   /** Integration mode A6 (ASW, OSW, SPADOC) */
   public static final int XF_VCM_INTEGMODE = 33;
   /** Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM) */
   public static final int XF_VCM_PARTIALS  = 34;
   /** Integration step mode A4 (AUTO/TIME, S) */
   public static final int XF_VCM_STEPMODE  = 35;
   /** Fixed step size indicator A3 (ON/OFF) */
   public static final int XF_VCM_FIXEDSTEP = 36;
   /** Initial step size selection A6 (AUTO/MANUAL) */
   public static final int XF_VCM_STEPSLCTN = 37;
   /** Initial integration step size F8.3 */
   public static final int XF_VCM_STEPSIZE  = 38;
   /** Integrator error control E9.3 */
   public static final int XF_VCM_ERRCTRL   = 39;
   /** Weighted rms of last DC E10.5 */
   public static final int XF_VCM_RMS       = 40;
   /** BDOT (M2/KG-S) */
   public static final int XF_VCM_BDOT      = 41;
   /** EDR (W/KG) */
   public static final int XF_VCM_EDR       = 42;
   
   
   //*******************************************************************************
   // Different ingetration control/step mode
   public static final int STEPMODE_AUTO = 0;
   public static final int STEPMODE_TIME = 1;
   public static final int STEPMODE_S    = 2;
   
   
// ========================= End of auto generated code ==========================
}
