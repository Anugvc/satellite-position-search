// This wrapper file was generated automatically by the GenDllWrappers program.
package afspc.astrostds.wrappers;
import java.io.*;
import java.io.Reader;
import java.util.Date;
import afspc.astrostds.utilities.Utility;



/** This class defines the JNI component of the wrapper for: EnvConst */
public class JniEnvConst
{
   // Provide the path to the dll/so
   // **************************************************************************
   /** The name of the DLL/SO that this JNI class wraps. */
   public static final String DLL_NAME = "envconst";

   static
   {
      System.loadLibrary("jni" + DLL_NAME);
      LoadEnvConstDll();
   }

   /**
   * This function only exists in JNI C code, not Fortran and its used to
   * load and initialize the library for JNI.
   */
   public static native void LoadEnvConstDll();


   /**
   * Notes: This function has been deprecated since v9.0. 
   * Initializes the EnvInit DLL for use in the program.
   * If this function returns an error, it is recommended that you stop the program immediately.
   * 
   * An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   * 
   * When the function is called, the GEO model is set to WGS-72 and the FK model is set to FK5.  If the user plans to use the SGP4 propagator, do NOT change this default setting. Otherwise, SGP4 won't work
   * @param apAddr             The handle that was returned from DllMainInit, see the documentation for DllMain.dll for details. (in-Long)
   * @return Returns zero indicating the EnvConst DLL has been initialized successfully. Other values indicate an error.
   */
   public static native int EnvInit(long apAddr);


   /**
   * Returns information about the EnvConst DLL.
   * The returned string provides information about the version number, build date, and the platform of the EnvConst DLL.
   * @param infoStr            A string to hold the information about EnvConst.dll. (out-Character[128])
   */
   public static native void EnvGetInfo(byte[] infoStr);


   /**
   * Reads Earth constants (GEO) model and fundamental catalogue (FK) model settings from a file.
   * The users can use NAME=VALUE pair to setup the GEO and FK models in the input file. 
   * 
   * For GEO model, the valid names are GEOCONST, BCONST and the valid values are WGS-72, WGS72,  72, WGS-84, WGS84, 84, EGM-96, EGM96, 96, EGM-08, EGM08, 08, JGM-2, JGM2, 2, SEM68R, 68, GEM5, 5, GEM9, and 9.
   * 
   * For FK model, the valid name is FKCONST and the valid values are: FK4, 4, FK5, 5.
   * 
   * All the string literals are case-insensitive.	
   * @param envFile            The name of the input file. (in-Character[512])
   * @return Returns zero indicating the input file has been loaded successfully. Other values indicate an error.
   */
   public static native int EnvLoadFile(String envFile);


   /**
   * Saves the current Earth constants (GEO) model and fundamental catalogue (FK) model settings to a file.
   * Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
   * @param envConstFile       The name of the file in which to save the settings. (in-Character[512])
   * @param saveMode           Specifies whether to create a new file or append to an existing one. (0 = create, 1= append) (in-Integer)
   * @param saveForm           Specifies the mode in which to save the file. (0 = text format, 1 = xml (not yet implemented, reserved for future)) (in-Integer)
   * @return Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
   */
   public static native int EnvSaveFile(String envConstFile, int saveMode, int saveForm);


   /**
   * Returns the current fundamental catalogue (FK) setting. 
   * The FK model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program. 
   * @return Return the current FK setting as an integer. Valid values are: (4 = FK4, 5 = FK5)
   */
   public static native int EnvGetFkIdx();


   /**
   * Changes the fundamental catalogue (FK) setting to the specified value. 
   * If the users enter an invalid value for the fkIdx, the program will continue to use the current setting. 
   * 
   * The FK model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
   * The FK model must be set to FK5 to use the SGP4 propagator.
   * @param xf_FkMod           Specifies the FK model to use. The following values are accepted: xf_FkMod= 4: FK4, xf_FkMod= 5: FK5 (in-Integer)
   */
   public static native void EnvSetFkIdx(int xf_FkMod);


   /**
   * Returns the current Earth constants (GEO) setting. 
   * <br>
   * The GEO model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program.
   * <br>
   * The following table lists possible values of the return value GEO setting:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Value</b></td>
   * <td><b>Value interpretation</b></td>
   * </tr>
   * <tr><td>84</td><td>WGS-84</td></tr>
   * <tr><td>96</td><td>EGM-96</td></tr>
   * <tr><td>08</td><td>EGM-08</td></tr>
   * <tr><td>72</td><td>WGS-72 (default)</td></tr>
   * <tr><td>2</td><td>JGM2</td></tr>
   * <tr><td>68</td><td>STEM68R, SEM68R</td></tr>
   * <tr><td>5</td><td>GEM5</td></tr>
   * <tr><td>9</td><td>GEM9</td></tr>
   * </table>
   * @return The current GEO setting, expressed as an integer.
   */
   public static native int EnvGetGeoIdx();


   /**
   * Changes the Earth constants (GEO) setting to the specified value.
   * <br>
   * If you specify an invalid value for xf_GeoMod, the program will continue to use the current setting. 
   * <br>
   * The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately
   * <br>
   * The following table lists possible values of the parameter value GEO setting:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>Value</b></td>
   * <td><b>Value interpretation</b></td>
   * </tr>
   * <tr><td>84</td><td>WGS-84</td></tr>
   * <tr><td>96</td><td>EGM-96</td></tr>
   * <tr><td>08</td><td>EGM-08</td></tr>
   * <tr><td>72</td><td>WGS-72 (default)</td></tr>
   * <tr><td>2</td><td>JGM2</td></tr>
   * <tr><td>68</td><td>STEM68R, SEM68R</td></tr>
   * <tr><td>5</td><td>GEM5</td></tr>
   * <tr><td>9</td><td>GEM9</td></tr>
   * </table>
   * <br>
   * The GEO model must be set to WGS-72 to use the SGP4 propagator.
   * @param xf_GeoMod          Specifies the GEO model to use. (in-Integer)
   */
   public static native void EnvSetGeoIdx(int xf_GeoMod);


   /**
   * Returns the name of the current Earth constants (GEO) model. 
   * <br>
   * The geoStr parameter may contain one of the following values:
   * <table>
   * <caption>table</caption>
   * <tr><td>WGS-84</td></tr>
   * <tr><td>EGM-96</td></tr>
   * <tr><td>EGM-08</td></tr>
   * <tr><td>WGS-72</td></tr>
   * <tr><td>JGM2</td></tr>
   * <tr><td>SEM68R</td></tr>
   * <tr><td>GEM5</td></tr>
   * <tr><td>GEM9</td></tr>
   * </table>
   * @param geoStr             A string to store the name of the current GEO model. (out-Character[6])
   */
   public static native void EnvGetGeoStr(byte[] geoStr);


   /**
   * Changes the Earth constants (GEO) setting to the model specified by a string literal. 
   * <br>
   * If you specify an invalid value for geoStr, the program will continue to use the current setting.
   * <br>
   * The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
   * <br>
   * The following table lists possible values of the parameter value GEO setting:
   * <table>
   * <caption>table</caption>
   * <tr>
   * <td><b>geoStr (any string in the row)</b></td>
   * <td><b>Interpretation</b></td>
   * </tr>
   * <tr><td>'WGS-84', 'WGS84', '84'</td><td>WGS-84</td></tr>
   * <tr><td>'EGM-96', 'EGM96', '96'</td><td>EGM-96</td></tr>
   * <tr><td>'EGM-08', 'EGM08', '8'</td><td>EGM-08</td></tr>
   * <tr><td>'WGS-72', 'WGS72', '72'</td><td>WGS-72 (default)</td></tr>
   * <tr><td>'JGM-2, 'JGM2', '2'</td><td>JGM-2</td></tr>
   * <tr><td>'SEM68R', '68'</td><td>STEM68R, SEM68R</td></tr>
   * <tr><td>'GEM5', '5'</td><td>GEM5</td></tr>
   * <tr><td>'GEM9', '9'</td><td>GEM9</td></tr>
   * </table>   
   * <br>
   * The GEO model must be set to WGS-72 to use the SGP4 propagator.
   * @param geoStr             The GEO model to use, expressed as a string. (in-Character[6])
   */
   public static native void EnvSetGeoStr(String geoStr);


   /**
   * Retrieves the value of one of the constants from the current Earth constants (GEO) model. 
   * @param xf_GeoCon          An index specifying the constant you wish to retrieve, see XF_GEOCON_? for field specification (in-Integer)
   * @return Value of the requested GEO constant
   */
   public static native double EnvGetGeoConst(int xf_GeoCon);


   /**
   * Retrieves the value of one of the constants from the current fundamental catalogue (FK) model.
   * @param xf_FkCon           An index specifying the constant you wish to retrieve, , see XF_FKCON_? for field specification (in-Integer)
   * @return Value of the requested FK constant
   */
   public static native double EnvGetFkConst(int xf_FkCon);


   /**
   * Returns a handle that can be used to access the fundamental catalogue (FK) data structure. 
   * <br>
   * This function is needed when calling the ThetaGrnwch function from TimeFunc.dll.
   * <br>
   * The handle returned by this function is sometimes called a pointer for historical reasons. The name EnvGetFkPtr comes from the fact that the handle used to be called a pointer.
   * @return A handle which can be used to access the FK data structure.
   */
   public static native long EnvGetFkPtr();


   /**
   * Specifies the shape of the earth that will be used by the Astro Standards software, either spherical earth or oblate earth
   * @param earthShape         The value indicates the shape of the earth: 0=spherical earth, 1= oblate earth (default) (in-Integer)
   */
   public static native void EnvSetEarthShape(int earthShape);


   /**
   * Returns the value representing the shape of the earth being used by the Astro Standards software, either spherical earth or oblate earth
   * @return The value indicates the shape of the earth that is being used in the Astro Standards software: 0=spherical earth, 1= oblate earth
   */
   public static native int EnvGetEarthShape();
   
   // Indexes of Earth Constant fields
   /** Earth flattening (reciprocal; unitless) */
   public static final int XF_GEOCON_FF    = 1;
   /** J2 (unitless) */
   public static final int XF_GEOCON_J2    = 2;
   /** J3 (unitless) */
   public static final int XF_GEOCON_J3    = 3;
   /** J4 (unitless) */
   public static final int XF_GEOCON_J4    = 4;
   /** Ke (er**1.5/min) */
   public static final int XF_GEOCON_KE    = 5;
   /** Earth radius (km/er) */
   public static final int XF_GEOCON_KMPER = 6;
   /** Earth rotation rate w.r.t. fixed equinox (rad/min) */
   public static final int XF_GEOCON_RPTIM = 7;
   
   /** J2/2 (unitless) */
   public static final int XF_GEOCON_CK2   = 8;
   /** -3/8 J4 (unitless) */
   public static final int XF_GEOCON_CK4   = 9;
   /** Converts km/sec to er/kem */
   public static final int XF_GEOCON_KS2EK = 10;
   /** Earth rotation rate w.r.t. fixed equinox (rad/kemin) */
   public static final int XF_GEOCON_THDOT = 11;
   /** J5 (unitless) */
   public static final int XF_GEOCON_J5    = 12;
   /** Gravitational parameter km^3/(solar s)^2 */
   public static final int XF_GEOCON_MU    = 13;
   
   
   // Indexes of FK Constant fields
   /** Earth rotation rate w.r.t. moving equinox (rad/day) */
   public static final int XF_FKCON_C1     = 1;
   /** Earth rotation acceleration(rad/day**2) */
   public static final int XF_FKCON_C1DOT  = 2;
   /** Greenwich angle (1970; rad) */
   public static final int XF_FKCON_THGR70 = 3;
   
   // Indexes represent geopotential models GEO
   /** Earth constants - JGM2 */
   public static final int XF_GEOMOD_JGM2   =    2;
   /** Earth constants - GEM5 */
   public static final int XF_GEOMOD_GEM5   =    5;
   /** Earth constants - EGM-08 */
   public static final int XF_GEOMOD_EGM08  =    8;
   /** Earth constants - GEM9 */
   public static final int XF_GEOMOD_GEM9   =    9;
   /** Earth constants - STEM68 */
   public static final int XF_GEOMOD_STEM68 =   68;
   /** Earth constants - WGS-72 */
   public static final int XF_GEOMOD_WGS72  =   72;
   /** Earth constants - WGS-84 */
   public static final int XF_GEOMOD_WGS84  =   84;
   /** Earth constants - EGM-96 */
   public static final int XF_GEOMOD_EGM96  =   96;
   /** Invalid earth model */
   public static final int XF_GEOMOD_UNKNOWN=  100;
   
   //*******************************************************************************
   
   // Indexes represent fundamental catalogue FK
   /** Fundamental Catalog - FK5 */
   public static final int XF_FKMOD_4 = 4;
   /** Fundamental Catalog - FK4 */
   public static final int XF_FKMOD_5 = 5;
   
   
// ========================= End of auto generated code ==========================
}
