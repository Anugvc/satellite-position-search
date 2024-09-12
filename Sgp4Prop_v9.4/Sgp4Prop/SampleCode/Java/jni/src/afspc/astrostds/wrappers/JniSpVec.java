// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: SpVec */
public class JniSpVec
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "spvec";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadSpVecDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadSpVecDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes SpVec DLL for use in the program
   * If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL.
   * @param apAddr             The handle that was returned from DllMainInit() (in-Long)
   * @return 0 if SpVec.dll is initialized successfully, non-0 if there is an error
   */
   public static native int SpVecInit(long apAddr);


   /**
   * Returns information about the current version of SpVec DLL. The information is placed in the string parameter you pass in
   * The returned string provides information about the version number, build date, and the platform of the SpVec DLL. 
   * @param infoStr            A string to hold the information about SpVec.dll (out-Character[128])
   */
   public static native void SpVecGetInfo(byte[] infoStr);


   /**
   * Loads a text file containing SpVec's
   * The users can use this function repeatedly to load B1P records from different input files. However, only unique satKeys are stored in the binary tree. Duplicated satKeys won't be stored. 
   * 
   * B1P records can be included directly in the main input file or they can be read from a separate file identified with "ELTFIL=[pathname\filename]" or "VECFIL=[path/filename]".
   * 
   * This function only reads B1P records from the main input file or B1P records from the file identified with ELTFIL or VECFIL in the input file. It won't read anything else.
   * @param spVecFile          The name of the file containing osculating vectors (SpVecs) to be loaded (in-Character[512])
   * @return 0 if the input file is read successfully, non-0 if there is an error
   */
   public static native int SpVecLoadFile(String spVecFile);


   /**
   * Saves the currently loaded SpVecs's to a file
   * If the users call this routine immediately after SpVecLoadFile. The SPVECs contents in the two file should be the same (minus duplicated SPVECs or bad SPVECs).
   * 
   * The purpose of this function is to save the current state of the loaded SPVECs, usually used in GUI applications, for future use.
   * @param spVecFile          The name of the file in which to save the settings (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file (0 = text format, 1 = not yet implemented, reserved for future) (in-Integer)
   * @return 0 if the data is successfully saved to the file, non-0 if there is an error
   */
   public static native int SpVecSaveFile(String spVecFile, int saveMode, int saveForm);


   /**
   * Removes an SpVec represented by the satKey from memory
   * If the users enter an invalid satKey, a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   * @param satKey             The unique key of the satellite to be removed (in-Long)
   * @return 0 if the SpVec is removed successfully, non-0 if there is an error
   */
   public static native int SpVecRemoveSat(long satKey);


   /**
   * Removes all SpVec's from memory
   * @return 0 if all SpVec's are removed successfully from memory, non-0 if there is an error
   */
   public static native int SpVecRemoveAllSats();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   * See SpVecGetLoaded for example.
   * This function is useful for dynamically allocating memory for the array that is passed to the function SpVecGetLoaded().
   * @return The number of SpVec's currently loaded
   */
   public static native int SpVecGetCount();


   /**
   * Retrieves all of the currently loaded satKeys. These satKeys can be used to access the internal data for the SpVec's
   * It is recommended that SpVecGetCount() is used to count how many satellites are currently loaded in the SpVec DLL's binary tree. The users then use this number to dynamically allocate the satKeys array and pass it to this function. 
   * 
   * If the users prefer to pass a static array to the function, make sure it is big enough to store all the satKeys in memory.
   * @param order              Specifies the order in which the satKeys should be returned: 0=ascending, 1=descending, 2=order as loaded (in-Integer)
   * @param satKeys            The array in which to store the satKeys (out-Long[*])
   */
   public static native void SpVecGetLoaded(int order, long[] satKeys);


   /**
   * Adds an SpVec using its directly specified first and second lines
   * If the satellite was previously added to the SpVec DLL's binary tree, the function also returns a negative value indicating an error. 
   * 
   * The users can use this function repeatedly to add many satellites (one satellite at a time) to the SpVec DLL's binary tree. 
   * @param line1              The first input line of the two line element set (in-Character[512])
   * @param line2              The second input line of the two line element set (in-Character[512])
   * @return The satKey of the newly added SpVec on success, a negative value on error
   */
   public static native long SpVecAddSatFrLines(String line1, String line2);


   /**
   * Works like SpVecAddSatFrLines but designed for Matlab
   * @param line1              The first input line of the two line element set (in-Character[512])
   * @param line2              The second input line of the two line element set (in-Character[512])
   * @param satKey             The satKey of the newly added SpVec on success, a negative value on error (out-Long)
   */
   public static native void SpVecAddSatFrLinesML(String line1, String line2, long[] satKey);


   /**
   * Adds an SpVec using its individually provided field values
   * @param pos                position vector (km) (in-Double[3])
   * @param vel                velocity vector (m/s) (in-Double[3])
   * @param secClass           Security classification: U=Unclass, C=Confidential, S=Secret (in-Character)
   * @param satNum             Satellite number (in-Integer)
   * @param satName            Satellite name A8 (in-Character[8])
   * @param epochDtg           Satellite's epoch A17 (YYYYDDDHHMMSS.SSS) (in-Character[17])
   * @param revNum             Revolution number (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param bterm              Bterm m^2/kg (in-Double)
   * @param agom               Agom  m^2/kg (in-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (in-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (in-Character[5])
   * @return The satKey of the newly added SpVec on success, a negative value on error
   */
   public static native long SpVecAddSatFrFields(double[] pos, double[] vel, char secClass, int satNum, String satName, String epochDtg, int revNum, int elsetNum, double bterm, double agom, double ogParm, String coordSys);


   /**
   * Works like SpVecAddSatFrFields but designed for Matlab 
   * @param pos                position vector (km) (in-Double[3])
   * @param vel                velocity vector (m/s) (in-Double[3])
   * @param secClass           Security classification: U=Unclass, C=Confidential, S=Secret (in-Character)
   * @param satNum             Satellite number (in-Integer)
   * @param satName            Satellite name A8 (in-Character[8])
   * @param epochDtg           Satellite's epoch A17 (YYYYDDDHHMMSS.SSS) (in-Character[17])
   * @param revNum             Revolution number (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param bterm              Bterm m^2/kg (in-Double)
   * @param agom               Agom  m^2/kg (in-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (in-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (in-Character[5])
   * @param satKey             The satKey of the newly added SpVec on success, a negative value on error (out-Long)
   */
   public static native void SpVecAddSatFrFieldsML(double[] pos, double[] vel, char secClass, int satNum, String satName, String epochDtg, int revNum, int elsetNum, double bterm, double agom, double ogParm, String coordSys, long[] satKey);


   /**
   * Updates an SpVec satellite's data in memory using individually provided field values. Note: satNum, epoch string can't be updated.
   * The satellite's unique key will not be changed in this function call. 
   * @param satKey             The sattelite's unique key (in-Long)
   * @param pos                position vector (km) (in-Double[3])
   * @param vel                velocity vector (m/s) (in-Double[3])
   * @param secClass           Security classification: U=Unclass, C=Confidential, S=Secret (in-Character)
   * @param satName            Satellite name A8 (in-Character[8])
   * @param revNum             Revolution number (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param bterm              Bterm m^2/kg (in-Double)
   * @param agom               Agom  m^2/kg (in-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (in-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (in-Character[5])
   * @return 0 if the SpVec is successfully updated, non-0 if there is an error
   */
   public static native int SpVecUpdateSatFrFields(long satKey, double[] pos, double[] vel, char secClass, String satName, int revNum, int elsetNum, double bterm, double agom, double ogParm, String coordSys);


   /**
   * Retrieves the value of a specific field of an SpVec
   * <br>
   * The table below shows the values for the xf_SpVec parameter:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Index</b></td>
   * <td><b>Index Interpretation</b></td>
   * </tr>
   * <tr><td> 1-3</td><td>First 3 elements of 1P</td></tr>
   * <tr><td> 4-6</td><td>Second 3 elements of 1P</td></tr>
   * <tr><td> 7</td><td>Security classification</td></tr>
   * <tr><td> 9</td><td>Satellite number</td></tr>
   * <tr><td>10</td><td>Satellite common name</td></tr>
   * <tr><td>11</td><td>Epoch date</td></tr>
   * <tr><td>12</td><td>Epoch revolution number</td></tr>
   * <tr><td>13</td><td>Elset number</td></tr>
   * <tr><td>14</td><td>Ballistic coefficient</td></tr>
   * <tr><td>15</td><td>Radiation pressure coefficient</td></tr>
   * <tr><td>16</td><td>Outgassing parameter</td></tr>
   * <tr><td>17</td><td>Input coordinate system</td></tr>
   * </table>
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_SpVec           Predefined number specifying which field to set (in-Integer)
   * @param valueStr           A string to contain the value of the requested field (out-Character[512])
   * @return 0 if the SpVec is successfully retrieved, non-0 if there is an error
   */
   public static native int SpVecGetField(long satKey, int xf_SpVec, byte[] valueStr);


   /**
   * Updates the value of a field of an SpVec
   * See SpVecGetField for a description of the xf_SpVec parameter.  satNum (9) and epoch date (11) cannot be altered.
   * The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xf_SpVec           Predefined number specifying which field to set (in-Integer)
   * @param valueStr           The new value of the specified field, expressed as a string (in-Character[512])
   * @return 0 if the SpVec is successfully updated, non-0 if there is an error
   */
   public static native int SpVecSetField(long satKey, int xf_SpVec, String valueStr);


   /**
   * Retrieves all of the data for an SpVec satellite in a single function call
   * @param satKey             The satellite's unique key (in-Long)
   * @param pos                position vector (km) (out-Double[3])
   * @param vel                velocity vector (m/s) (out-Double[3])
   * @param secClass           Security classification U: unclass, C: confidential, S: Secret (out-Character)
   * @param satNum             Satellite number (out-Integer)
   * @param satName            Satellite name A8 (out-Character[8])
   * @param epochDtg           Satellite's epoch A17 (YYYYDDDHHMMSS.SSS) (out-Character[17])
   * @param revNum             Revolution number (out-Integer)
   * @param elsetNum           Element set number (out-Integer)
   * @param bterm              Bterm m^2/kg (out-Double)
   * @param agom               Agom  m^2/kg (out-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (out-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (out-Character[5])
   * @return 0 if the SpVec is successfully retrieved, non-0 if there is an error
   */
   public static native int SpVecGetAllFields(long satKey, double[] pos, double[] vel, byte[] secClass, int[] satNum, byte[] satName, byte[] epochDtg, int[] revNum, int[] elsetNum, double[] bterm, double[] agom, double[] ogParm, byte[] coordSys);


   /**
   * Retrieves all of the data for an SpVec satellite in a single function call
   * @param line1              the first input line of a 1P/2P card (in-Character[512])
   * @param line2              the second input line of a 1P/2P card (in-Character[512])
   * @param pos                position vector (km) (out-Double[3])
   * @param vel                velocity vector (m/s) (out-Double[3])
   * @param secClass           Security classification U: unclass, C: confidential, S: Secret (out-Character)
   * @param satNum             Satellite number (out-Integer)
   * @param satName            Satellite name A8 (out-Character[8])
   * @param epochDtg           Satellite's epoch A17 (YYYYDDDHHMMSS.SSS) (out-Character[17])
   * @param revNum             Revolution number (out-Integer)
   * @param elsetNum           Element set number (out-Integer)
   * @param bterm              Bterm m^2/kg (out-Double)
   * @param agom               Agom  m^2/kg (out-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (out-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (out-Character[5])
   * @return 0 if the SpVec data is successfully parsed, non-0 if there is an error
   */
   public static native int SpVecParse(String line1, String line2, double[] pos, double[] vel, byte[] secClass, int[] satNum, byte[] satName, byte[] epochDtg, int[] revNum, int[] elsetNum, double[] bterm, double[] agom, double[] ogParm, byte[] coordSys);


   /**
   * Parses SPVEC data from the input first and second lines of an 1P/2P state vector and store that data back into the output parameters.
   * This function only parses data from the input SPVEC but DOES NOT load/add the input SPVEC to memory.
   * @param line1              The first line of the two line element set. (in-Character[512])
   * @param line2              The second line of the two line element set (in-Character[512])
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (out-Double[512])
   * @param xs_spVec           Output string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (out-Character[512])
   * @return 0 if the SPVEC is parsed successfully, non-0 if there is an error.
   */
   public static native int SpVecLinesToArray(String line1, String line2, double[] xa_spVec, byte[] xs_spVec);


   /**
   * Returns the first and second lines of the 1P/2P representation of an SpVec
   * @param satKey             The satellite's unique key (in-Long)
   * @param line1              The resulting first line of a 1P/2P card (out-Character[512])
   * @param line2              The resulting second line of a 1P/2P card (out-Character[512])
   * @return 0 if successful, non-0 on error
   */
   public static native int SpVecGetLines(long satKey, byte[] line1, byte[] line2);


   /**
   * Constructs 1P/2P cards from individually provided SpVec data fields
   * Returned line1 and line2 are empty if the function fails to construct the lines as requested.
   * @param pos                position vector (km) (in-Double[3])
   * @param vel                velocity vector (m/s) (in-Double[3])
   * @param secClass           Security classification U: unclass, C: confidential, S: Secret (in-Character)
   * @param satNum             Satellite number (in-Integer)
   * @param satName            Satellite name A8 (in-Character[8])
   * @param epochDtg           Satellite's epoch A17 (YYYYDDDHHMMSS.SSS) (in-Character[17])
   * @param revNum             Revolution number (in-Integer)
   * @param elsetNum           Element set number (in-Integer)
   * @param bterm              Bterm m^2/kg (in-Double)
   * @param agom               Agom  m^2/kg (in-Double)
   * @param ogParm             Outgassing parameter (km/s^2) (in-Double)
   * @param coordSys           Input coordinate system A5 - TMDAT/TMEPO: Epoch, MMB50/MMJ2K: J2000 (in-Character[5])
   * @param line1              The resulting first line of a 1P/2P card (out-Character[512])
   * @param line2              The resulting second line of a 1P/2P card (out-Character[512])
   */
   public static native void SpVecFieldsToLines(double[] pos, double[] vel, char secClass, int satNum, String satName, String epochDtg, int revNum, int elsetNum, double bterm, double agom, double ogParm, String coordSys, byte[] line1, byte[] line2);


   /**
   * Constructs 1P/2P cards from SPVEC data stored in the input arrays.
   * This function only parses data from the input data but DOES NOT load/add the SPVEC to memory.
   * Returned line1 and line2 will be empty if the function fails to construct the lines as requested.
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (in-Double[512])
   * @param xs_spVec           Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (in-Character[512])
   * @param line1              Returned first line of an SPVEC. (out-Character[512])
   * @param line2              Returned second line of an SPVEC (out-Character[512])
   */
   public static native void SpVecArrayToLines(double[] xa_spVec, String xs_spVec, byte[] line1, byte[] line2);


   /**
   * Returns the first satKey from the currently loaded set of SpVec's that contains the specified satellite number
   * This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   * @param satNum             The input satellite number (in-Integer)
   * @return The satellite's unique key
   */
   public static native long SpVecGetSatKey(int satNum);


   /**
   * This function is similar to SpVecGetSatKey but designed to be used in Matlab. 
   * This function is useful when SpVec DLL is used in applications that requires only one record (one SpVec entry) for one satellite and the applications refer to that SpVec by its satellite number. However, the Standardized Astrodynamic Algorithms library is only working with satKeys, this function helps to return the associated satKey of that satellite.
   * @param satNum             The input satellite number (in-Integer)
   * @param satKey             The satellite's unique key (out-Long)
   */
   public static native void SpVecGetSatKeyML(int satNum, long[] satKey);


   /**
   * Computes a satKey from the input data
   * This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   * @param satNum             The input satellite number (in-Integer)
   * @param epochDtg           [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20 (in-Character[20])
   * @return The resulting satellite key
   */
   public static native long SpVecFieldsToSatKey(int satNum, String epochDtg);


   /**
   * This function is similar to SpVecFieldsToSatKey but designed to be used in Matlab. 
   * This is the proper way to reconstruct a satKey from its fields. If the users use their own routine to do this, the computed satKey might be different.
   * @param satNum             The input satellite number (in-Integer)
   * @param epochDtg           [yy]yydddhhmmss.sss or [yy]yyddd.ddddddd or DTG15, DTG17, DTG20 (in-Character[20])
   * @param satKey             The resulting satellite key (out-Long)
   */
   public static native void SpVecFieldsToSatKeyML(int satNum, String epochDtg, long[] satKey);


   /**
   * Adds an SpVec using its individually provided field values
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (in-Double[512])
   * @param xs_spVec           Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (in-Character[512])
   * @return The satKey of the newly added SPVEC on success, a negative value on error.
   */
   public static native long SpVecAddSatFrArray(double[] xa_spVec, String xs_spVec);


   /**
   * Adds an SpVec using its individually provided field values
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (in-Double[512])
   * @param xs_spVec           Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (in-Character[512])
   * @param satKey             The satKey of the newly added SPVEC on success, a negative value on error. (out-Long)
   */
   public static native void SpVecAddSatFrArrayML(double[] xa_spVec, String xs_spVec, long[] satKey);


   /**
   * Updates existing SPVEC data with the provided new data stored in the input parameters. Note: satNum, epoch string can't be updated.
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (in-Double[512])
   * @param xs_spVec           Input string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (in-Character[512])
   * @return 0 if the SPVEC is successfully updated, non-0 if there is an error.
   */
   public static native int SpVecUpdateSatFrArray(long satKey, double[] xa_spVec, String xs_spVec);


   /**
   * Retrieves SPVEC data and stored it in the passing parameters
   * @param satKey             The satellite's unique key (in-Long)
   * @param xa_spVec           Array containing SPVEC's numerical fields, see XA_SPVEC_? for array arrangement (out-Double[512])
   * @param xs_spVec           Output string that contains all SPVEC's text fields, see XS_SPVEC_? for column arrangement (out-Character[512])
   * @return 0 if all values are retrieved successfully, non-0 if there is an error
   */
   public static native int SpVecDataToArray(long satKey, double[] xa_spVec, byte[] xs_spVec);
   
   // Indexes of SPVEC data fields
   /** X component of satellite's position (km) */
   public static final int XF_SPVEC_POS1     =  1;
   /** Y component of satellite's position (km) */
   public static final int XF_SPVEC_POS2     =  2;
   /** Z component of satellite's position (km) */
   public static final int XF_SPVEC_POS3     =  3;
   /** X component of satellite's velocity (m/s) */
   public static final int XF_SPVEC_VEL1     =  4;
   /** Y component of satellite's velocity (m/s) */
   public static final int XF_SPVEC_VEL2     =  5;
   /** Z component of satellite's velocity (m/s) */
   public static final int XF_SPVEC_VEL3     =  6;
   /** Security classification */
   public static final int XF_SPVEC_SECCLASS =  7;
   /** Satellite number */
   public static final int XF_SPVEC_SATNUM   =  9;
   /** Satellite common name */
   public static final int XF_SPVEC_SATNAME  = 10;
   /** Epoch date */
   public static final int XF_SPVEC_EPOCH    = 11;
   /** Epoch revolution number */
   public static final int XF_SPVEC_REVNUM   = 12;
   /** Elset number */
   public static final int XF_SPVEC_ELSETNUM = 13;
   /** Ballistic coefficient (m^2/kg) */
   public static final int XF_SPVEC_BTERM    = 14;
   /** Radiation pressure coefficient (m^2/kg) */
   public static final int XF_SPVEC_AGOM     = 15;
   /** Outgassing parameter (km/s^2) */
   public static final int XF_SPVEC_OGPARM   = 16;
   /** Inpute coordinate system */
   public static final int XF_SPVEC_INPCOORD = 17;
   
   
   // Indexes of SPVEC numerical data in an array
   /** Satellite number */
   public static final int XA_SPVEC_SATNUM   =   0;
   /** Epoch date in days since 1950 UTC */
   public static final int XA_SPVEC_EPOCH    =   1;
   /** Epoch revolution number */
   public static final int XA_SPVEC_REVNUM   =   2;
   /** Elset number */
   public static final int XA_SPVEC_ELSETNUM =   3;
   /** Ballistic coefficient (m^2/kg) */
   public static final int XA_SPVEC_BTERM    =   4;
   /** Radiation pressure coefficient (m^2/kg) */
   public static final int XA_SPVEC_AGOM     =   5;
   /** Outgassing parameter (km/s^2) */
   public static final int XA_SPVEC_OGPARM   =   6;
   /** Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options */
   public static final int XA_SPVEC_INPCOORD =   7;
   
   /** X component of satellite's position (km) */
   public static final int XA_SPVEC_POS1     =  20;
   /** Y component of satellite's position (km) */
   public static final int XA_SPVEC_POS2     =  21;
   /** Z component of satellite's position (km) */
   public static final int XA_SPVEC_POS3     =  22;
   /** X component of satellite's velocity (m/s) */
   public static final int XA_SPVEC_VEL1     =  23;
   /** Y component of satellite's velocity (m/s) */
   public static final int XA_SPVEC_VEL2     =  24;
   /** Z component of satellite's velocity (m/s) */
   public static final int XA_SPVEC_VEL3     =  25;
   
   /** Flag to indicate SP vec has its own numerical integration control (vs global 4P settings) */
   public static final int XA_SPVEC_HASOWNCRL=  70;
   /** Geopotential model to use */
   public static final int XA_SPVEC_GEOIDX   =  71;
   /** Earth gravity pertubations flag */
   public static final int XA_SPVEC_BULGEFLG =  72;
   /** Drag pertubations flag */
   public static final int XA_SPVEC_DRAGFLG  =  73;
   /** Radiation pressure pertubations flag */
   public static final int XA_SPVEC_RADFLG   =  74;
   /** Lunar/Solar pertubations flag */
   public static final int XA_SPVEC_LUNSOLFLG=  75;
   /** F10 value */
   public static final int XA_SPVEC_F10      =  76;
   /** F10 average value */
   public static final int XA_SPVEC_F10AVG   =  77;
   /** Ap value */
   public static final int XA_SPVEC_AP       =  78;
   /** Geopotential truncation order/degree/zonals */
   public static final int XA_SPVEC_TRUNC    =  79;
   /** Corrector step convergence criterion; exponent of 1/10; default = 10 */
   public static final int XA_SPVEC_CONVERG  =  80;
   /** Outgassing pertubations flag */
   public static final int XA_SPVEC_OGFLG    =  81;
   /** Solid earth and ocean tide pertubations flag */
   public static final int XA_SPVEC_TIDESFLG =  82;
   /** Nutation terms */
   public static final int XA_SPVEC_NTERMS   =  84;
   /** Recompute pertubations at each corrector step */
   public static final int XA_SPVEC_REEVAL   =  85;
   /** Variable of intergration control */
   public static final int XA_SPVEC_INTEGCTRL=  86;
   /** Variable step size control */
   public static final int XA_SPVEC_VARSTEP  =  87;
   /** Initial step size */
   public static final int XA_SPVEC_INITSTEP =  88;
   
   /** weighted RM of last DC on the satellite */
   public static final int XA_SPVEC_RMS      =  99;
   /** the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx) */
   public static final int XA_SPVEC_COVELEMS = 100;
   
   public static final int XA_SPVEC_SIZE     = 512;
   
   
   // Indexes of SPVEC text data in an array of chars
   /** Security classification */
   public static final int XS_SPVEC_SECCLASS_1 =  0;
   /** Satellite common name */
   public static final int XS_SPVEC_SATNAME_8  =  1;
   
   public static final int XS_SPVEC_SIZE       = 512;
   
   // SPVEC's text data fields - new convention (start index, string length)
   /** Security classification */
   public static final int XS_SPVEC_SECCLASS_0_1 =  0;
   /** Satellite common name */
   public static final int XS_SPVEC_SATNAME_1_8  =  1;
   
   public static final int XS_SPVEC_LENGTH     = 512;
   
   
   // Different input coordinate for SpVec
   /** Use input coordinate specified in 4P-card */
   public static final int SPVEC_INPCOORD_4P    =  0;
   /** Input coordinate systems is coordinates of epoch */
   public static final int SPVEC_INPCOORD_TMDAT =  1;
   /** Input coordinate systems is coordinates of J2000 */
   public static final int SPVEC_INPCOORD_MMJ2K =  2;
   
// ========================= End of auto generated code ==========================
}
