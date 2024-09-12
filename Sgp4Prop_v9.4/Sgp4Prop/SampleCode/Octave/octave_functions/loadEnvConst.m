% This wrapper file was generated automatically by the GenDllWrappers program.
function loadEnvConst(OctFilePath)   
   % Indexes of Earth Constant fields
   % Earth flattening (reciprocal; unitless)
   global  XF_GEOCON_FF;
   % J2 (unitless)
   global  XF_GEOCON_J2;
   % J3 (unitless)
   global  XF_GEOCON_J3;
   % J4 (unitless)
   global  XF_GEOCON_J4;
   % Ke (er**1.5/min)
   global  XF_GEOCON_KE;
   % Earth radius (km/er)
   global  XF_GEOCON_KMPER;
   % Earth rotation rate w.r.t. fixed equinox (rad/min)
   global  XF_GEOCON_RPTIM;
   
   % J2/2 (unitless)
   global  XF_GEOCON_CK2;
   % -3/8 J4 (unitless)
   global  XF_GEOCON_CK4;
   % Converts km/sec to er/kem
   global  XF_GEOCON_KS2EK;
   % Earth rotation rate w.r.t. fixed equinox (rad/kemin)
   global  XF_GEOCON_THDOT;
   % J5 (unitless)
   global  XF_GEOCON_J5;
   % Gravitational parameter km^3/(solar s)^2
   global  XF_GEOCON_MU;
   
   
   % Indexes of FK Constant fields
   % Earth rotation rate w.r.t. moving equinox (rad/day)
   global  XF_FKCON_C1;
   % Earth rotation acceleration(rad/day**2)
   global  XF_FKCON_C1DOT;
   % Greenwich angle (1970; rad)
   global  XF_FKCON_THGR70;
   
   % Indexes represent geopotential models GEO
   % Earth constants - JGM2
   global  XF_GEOMOD_JGM2;
   % Earth constants - GEM5
   global  XF_GEOMOD_GEM5;
   % Earth constants - EGM-08
   global  XF_GEOMOD_EGM08;
   % Earth constants - GEM9
   global  XF_GEOMOD_GEM9;
   % Earth constants - STEM68
   global  XF_GEOMOD_STEM68;
   % Earth constants - WGS-72
   global  XF_GEOMOD_WGS72;
   % Earth constants - WGS-84
   global  XF_GEOMOD_WGS84;
   % Earth constants - EGM-96
   global  XF_GEOMOD_EGM96;
   % Invalid earth model
   global  XF_GEOMOD_UNKNOWN;
   
   %*******************************************************************************
   
   % Indexes represent fundamental catalogue FK
   % Fundamental Catalog - FK5
   global  XF_FKMOD_4;
   % Fundamental Catalog - FK4
   global  XF_FKMOD_5;
   
   
   
   % Indexes of Earth Constant fields
   % Earth flattening (reciprocal; unitless)
   XF_GEOCON_FF    = 1;
   % J2 (unitless)
   XF_GEOCON_J2    = 2;
   % J3 (unitless)
   XF_GEOCON_J3    = 3;
   % J4 (unitless)
   XF_GEOCON_J4    = 4;
   % Ke (er**1.5/min)
   XF_GEOCON_KE    = 5;
   % Earth radius (km/er)
   XF_GEOCON_KMPER = 6;
   % Earth rotation rate w.r.t. fixed equinox (rad/min)
   XF_GEOCON_RPTIM = 7;
   
   % J2/2 (unitless)
   XF_GEOCON_CK2   = 8;
   % -3/8 J4 (unitless)
   XF_GEOCON_CK4   = 9;
   % Converts km/sec to er/kem
   XF_GEOCON_KS2EK = 10;
   % Earth rotation rate w.r.t. fixed equinox (rad/kemin)
   XF_GEOCON_THDOT = 11;
   % J5 (unitless)
   XF_GEOCON_J5    = 12;
   % Gravitational parameter km^3/(solar s)^2
   XF_GEOCON_MU    = 13;
   
   
   % Indexes of FK Constant fields
   % Earth rotation rate w.r.t. moving equinox (rad/day)
   XF_FKCON_C1     = 1;
   % Earth rotation acceleration(rad/day**2)
   XF_FKCON_C1DOT  = 2;
   % Greenwich angle (1970; rad)
   XF_FKCON_THGR70 = 3;
   
   % Indexes represent geopotential models GEO
   % Earth constants - JGM2
   XF_GEOMOD_JGM2   =    2;
   % Earth constants - GEM5
   XF_GEOMOD_GEM5   =    5;
   % Earth constants - EGM-08
   XF_GEOMOD_EGM08  =    8;
   % Earth constants - GEM9
   XF_GEOMOD_GEM9   =    9;
   % Earth constants - STEM68
   XF_GEOMOD_STEM68 =   68;
   % Earth constants - WGS-72
   XF_GEOMOD_WGS72  =   72;
   % Earth constants - WGS-84
   XF_GEOMOD_WGS84  =   84;
   % Earth constants - EGM-96
   XF_GEOMOD_EGM96  =   96;
   % Invalid earth model
   XF_GEOMOD_UNKNOWN=  100;
   
   %*******************************************************************************
   
   % Indexes represent fundamental catalogue FK
   % Fundamental Catalog - FK5
   XF_FKMOD_4 = 4;
   % Fundamental Catalog - FK4
   XF_FKMOD_5 = 5;
   
   
   autoload("LoadEnvConstDll",strcat(OctFilePath,"EnvConst.oct"));
   autoload("FreeEnvConstDll",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes the EnvInit DLL for use in the program.
   %  If this function returns an error, it is recommended that you stop the program immediately.
   %  
   %  An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
   %  
   %  When the function is called, the GEO model is set to WGS-72 and the FK model is set to FK5.  If the user plans to use the SGP4 propagator, do NOT change this default setting. Otherwise, SGP4 won't work
   autoload("EnvInit",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns information about the EnvConst DLL.
   %  The returned string provides information about the version number, build date, and the platform of the EnvConst DLL.
   autoload("EnvGetInfo",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Reads Earth constants (GEO) model and fundamental catalogue (FK) model settings from a file.
   %  The users can use NAME=VALUE pair to setup the GEO and FK models in the input file. 
   %  
   %  For GEO model, the valid names are GEOCONST, BCONST and the valid values are WGS-72, WGS72,  72, WGS-84, WGS84, 84, EGM-96, EGM96, 96, EGM-08, EGM08, 08, JGM-2, JGM2, 2, SEM68R, 68, GEM5, 5, GEM9, and 9.
   %  
   %  For FK model, the valid name is FKCONST and the valid values are: FK4, 4, FK5, 5.
   %  
   %  All the string literals are case-insensitive.	
   autoload("EnvLoadFile",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Saves the current Earth constants (GEO) model and fundamental catalogue (FK) model settings to a file.
   %  Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
   autoload("EnvSaveFile",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns the current fundamental catalogue (FK) setting. 
   %  The FK model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program. 
   autoload("EnvGetFkIdx",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Changes the fundamental catalogue (FK) setting to the specified value. 
   %  If the users enter an invalid value for the fkIdx, the program will continue to use the current setting. 
   %  
   %  The FK model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
   %  The FK model must be set to FK5 to use the SGP4 propagator.
   autoload("EnvSetFkIdx",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns the current Earth constants (GEO) setting. 
   %  <br>
   %  The GEO model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program.
   %  <br>
   %  The following table lists possible values of the return value GEO setting:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Value</b></td>
   %  <td><b>Value interpretation</b></td>
   %  </tr>
   %  <tr><td>84</td><td>WGS-84</td></tr>
   %  <tr><td>96</td><td>EGM-96</td></tr>
   %  <tr><td>08</td><td>EGM-08</td></tr>
   %  <tr><td>72</td><td>WGS-72 (default)</td></tr>
   %  <tr><td>2</td><td>JGM2</td></tr>
   %  <tr><td>68</td><td>STEM68R, SEM68R</td></tr>
   %  <tr><td>5</td><td>GEM5</td></tr>
   %  <tr><td>9</td><td>GEM9</td></tr>
   %  </table>
   autoload("EnvGetGeoIdx",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Changes the Earth constants (GEO) setting to the specified value.
   %  <br>
   %  If you specify an invalid value for xf_GeoMod, the program will continue to use the current setting. 
   %  <br>
   %  The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately
   %  <br>
   %  The following table lists possible values of the parameter value GEO setting:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Value</b></td>
   %  <td><b>Value interpretation</b></td>
   %  </tr>
   %  <tr><td>84</td><td>WGS-84</td></tr>
   %  <tr><td>96</td><td>EGM-96</td></tr>
   %  <tr><td>08</td><td>EGM-08</td></tr>
   %  <tr><td>72</td><td>WGS-72 (default)</td></tr>
   %  <tr><td>2</td><td>JGM2</td></tr>
   %  <tr><td>68</td><td>STEM68R, SEM68R</td></tr>
   %  <tr><td>5</td><td>GEM5</td></tr>
   %  <tr><td>9</td><td>GEM9</td></tr>
   %  </table>
   %  <br>
   %  The GEO model must be set to WGS-72 to use the SGP4 propagator.
   autoload("EnvSetGeoIdx",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns the name of the current Earth constants (GEO) model. 
   %  <br>
   %  The geoStr parameter may contain one of the following values:
   %  <table>
   %  <caption>table</caption>
   %  <tr><td>WGS-84</td></tr>
   %  <tr><td>EGM-96</td></tr>
   %  <tr><td>EGM-08</td></tr>
   %  <tr><td>WGS-72</td></tr>
   %  <tr><td>JGM2</td></tr>
   %  <tr><td>SEM68R</td></tr>
   %  <tr><td>GEM5</td></tr>
   %  <tr><td>GEM9</td></tr>
   %  </table>
   autoload("EnvGetGeoStr",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Changes the Earth constants (GEO) setting to the model specified by a string literal. 
   %  <br>
   %  If you specify an invalid value for geoStr, the program will continue to use the current setting.
   %  <br>
   %  The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
   %  <br>
   %  The following table lists possible values of the parameter value GEO setting:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>geoStr (any string in the row)</b></td>
   %  <td><b>Interpretation</b></td>
   %  </tr>
   %  <tr><td>'WGS-84', 'WGS84', '84'</td><td>WGS-84</td></tr>
   %  <tr><td>'EGM-96', 'EGM96', '96'</td><td>EGM-96</td></tr>
   %  <tr><td>'EGM-08', 'EGM08', '8'</td><td>EGM-08</td></tr>
   %  <tr><td>'WGS-72', 'WGS72', '72'</td><td>WGS-72 (default)</td></tr>
   %  <tr><td>'JGM-2, 'JGM2', '2'</td><td>JGM-2</td></tr>
   %  <tr><td>'SEM68R', '68'</td><td>STEM68R, SEM68R</td></tr>
   %  <tr><td>'GEM5', '5'</td><td>GEM5</td></tr>
   %  <tr><td>'GEM9', '9'</td><td>GEM9</td></tr>
   %  </table>   
   %  <br>
   %  The GEO model must be set to WGS-72 to use the SGP4 propagator.
   autoload("EnvSetGeoStr",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Retrieves the value of one of the constants from the current Earth constants (GEO) model. 
   autoload("EnvGetGeoConst",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Retrieves the value of one of the constants from the current fundamental catalogue (FK) model.
   autoload("EnvGetFkConst",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns a handle that can be used to access the fundamental catalogue (FK) data structure. 
   %  <br>
   %  This function is needed when calling the ThetaGrnwch function from TimeFunc.dll.
   %  <br>
   %  The handle returned by this function is sometimes called a pointer for historical reasons. The name EnvGetFkPtr comes from the fact that the handle used to be called a pointer.
   autoload("EnvGetFkPtr",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Specifies the shape of the earth that will be used by the Astro Standards software, either spherical earth or oblate earth
   autoload("EnvSetEarthShape",strcat(OctFilePath,"EnvConst.oct"));
   
   %  Returns the value representing the shape of the earth being used by the Astro Standards software, either spherical earth or oblate earth
   autoload("EnvGetEarthShape",strcat(OctFilePath,"EnvConst.oct"));
   LoadEnvConstDll;
endfunction
% ========================= End of auto generated code ==========================
