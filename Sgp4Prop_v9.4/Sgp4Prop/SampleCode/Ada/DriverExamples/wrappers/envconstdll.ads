-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package EnvConstDll is
    
    -- Indexes of Earth Constant fields
    -- Earth flattening (reciprocal; unitless)
    XF_GEOCON_FF : constant := 1;
    -- J2 (unitless)
    XF_GEOCON_J2 : constant := 2;
    -- J3 (unitless)
    XF_GEOCON_J3 : constant := 3;
    -- J4 (unitless)
    XF_GEOCON_J4 : constant := 4;
    -- Ke (er**1.5/min)
    XF_GEOCON_KE : constant := 5;
    -- Earth radius (km/er)
    XF_GEOCON_KMPER : constant := 6;
    -- Earth rotation rate w.r.t. fixed equinox (rad/min)
    XF_GEOCON_RPTIM : constant := 7;
    
    -- J2/2 (unitless)
    XF_GEOCON_CK2 : constant := 8;
    -- -3/8 J4 (unitless)
    XF_GEOCON_CK4 : constant := 9;
    -- Converts km/sec to er/kem
    XF_GEOCON_KS2EK : constant := 10;
    -- Earth rotation rate w.r.t. fixed equinox (rad/kemin)
    XF_GEOCON_THDOT : constant := 11;
    -- J5 (unitless)
    XF_GEOCON_J5 : constant := 12;
    -- Gravitational parameter km^3/(solar s)^2
    XF_GEOCON_MU : constant := 13;
    
    
    -- Indexes of FK Constant fields
    -- Earth rotation rate w.r.t. moving equinox (rad/day)
    XF_FKCON_C1 : constant := 1;
    -- Earth rotation acceleration(rad/day**2)
    XF_FKCON_C1DOT : constant := 2;
    -- Greenwich angle (1970; rad)
    XF_FKCON_THGR70 : constant := 3;
    
    -- Indexes represent geopotential models GEO
    -- Earth constants - JGM2
    XF_GEOMOD_JGM2 : constant := 2;
    -- Earth constants - GEM5
    XF_GEOMOD_GEM5 : constant := 5;
    -- Earth constants - EGM-08
    XF_GEOMOD_EGM08 : constant := 8;
    -- Earth constants - GEM9
    XF_GEOMOD_GEM9 : constant := 9;
    -- Earth constants - STEM68
    XF_GEOMOD_STEM68 : constant := 68;
    -- Earth constants - WGS-72
    XF_GEOMOD_WGS72 : constant := 72;
    -- Earth constants - WGS-84
    XF_GEOMOD_WGS84 : constant := 84;
    -- Earth constants - EGM-96
    XF_GEOMOD_EGM96 : constant := 96;
    -- Invalid earth model
    XF_GEOMOD_UNKNOWN : constant := 100;
    
    --*******************************************************************************
    
    -- Indexes represent fundamental catalogue FK
    -- Fundamental Catalog - FK5
    XF_FKMOD_4 : constant := 4;
    -- Fundamental Catalog - FK4
    XF_FKMOD_5 : constant := 5;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes the EnvInit DLL for use in the program.
    -- If this function returns an error, it is recommended that you stop the program immediately.
    -- 
    -- An error will occur if you forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section of the accompanying documentation, before using this DLL.
    -- 
    -- When the function is called, the GEO model is set to WGS-72 and the FK model is set to FK5.  If the user plans to use the SGP4 propagator, do NOT change this default setting. Otherwise, SGP4 won't work
    function EnvInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvInit";

    -- Returns information about the EnvConst DLL.
    -- The returned string provides information about the version number, build date, and the platform of the EnvConst DLL.
    procedure EnvGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "EnvGetInfo";
        --infoStr            : String    (1..128);

    -- Reads Earth constants (GEO) model and fundamental catalogue (FK) model settings from a file.
    -- The users can use NAME=VALUE pair to setup the GEO and FK models in the input file. 
    -- 
    -- For GEO model, the valid names are GEOCONST, BCONST and the valid values are WGS-72, WGS72,  72, WGS-84, WGS84, 84, EGM-96, EGM96, 96, EGM-08, EGM08, 08, JGM-2, JGM2, 2, SEM68R, 68, GEM5, 5, GEM9, and 9.
    -- 
    -- For FK model, the valid name is FKCONST and the valid values are: FK4, 4, FK5, 5.
    -- 
    -- All the string literals are case-insensitive.	
    function EnvLoadFile
        (envFile           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvLoadFile";
        --envFile            : String    (1..512);

    -- Saves the current Earth constants (GEO) model and fundamental catalogue (FK) model settings to a file.
    -- Returns zero indicating the GEO and FK settings have been successfully saved to the file. Other values indicate an error.
    function EnvSaveFile
        (envConstFile      : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvSaveFile";
        --envConstFile       : String    (1..512);

    -- Returns the current fundamental catalogue (FK) setting. 
    -- The FK model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program. 
    function EnvGetFkIdx return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvGetFkIdx";

    -- Changes the fundamental catalogue (FK) setting to the specified value. 
    -- If the users enter an invalid value for the fkIdx, the program will continue to use the current setting. 
    -- 
    -- The FK model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
    -- The FK model must be set to FK5 to use the SGP4 propagator.
    procedure EnvSetFkIdx
        (xf_FkMod          :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "EnvSetFkIdx";

    -- Returns the current Earth constants (GEO) setting. 
    -- 
    -- The GEO model is shared among all the Standardized Astrodynamic Algorithms DLLs in the program.
    -- 
    -- The following table lists possible values of the return value GEO setting:
    -- 
    -- table
    -- 
    -- Value
    -- Value interpretation
    -- 
    -- 84WGS-84
    -- 96EGM-96
    -- 08EGM-08
    -- 72WGS-72 (default)
    -- 2JGM2
    -- 68STEM68R, SEM68R
    -- 5GEM5
    -- 9GEM9
    -- 
    function EnvGetGeoIdx return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvGetGeoIdx";

    -- Changes the Earth constants (GEO) setting to the specified value.
    -- 
    -- If you specify an invalid value for xf_GeoMod, the program will continue to use the current setting. 
    -- 
    -- The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately
    -- 
    -- The following table lists possible values of the parameter value GEO setting:
    -- 
    -- table
    -- 
    -- Value
    -- Value interpretation
    -- 
    -- 84WGS-84
    -- 96EGM-96
    -- 08EGM-08
    -- 72WGS-72 (default)
    -- 2JGM2
    -- 68STEM68R, SEM68R
    -- 5GEM5
    -- 9GEM9
    -- 
    -- 
    -- The GEO model must be set to WGS-72 to use the SGP4 propagator.
    procedure EnvSetGeoIdx
        (xf_GeoMod         :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "EnvSetGeoIdx";

    -- Returns the name of the current Earth constants (GEO) model. 
    -- 
    -- The geoStr parameter may contain one of the following values:
    -- 
    -- table
    -- WGS-84
    -- EGM-96
    -- EGM-08
    -- WGS-72
    -- JGM2
    -- SEM68R
    -- GEM5
    -- GEM9
    -- 
    procedure EnvGetGeoStr
        (geoStr            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "EnvGetGeoStr";
        --geoStr             : String    (1..6);

    -- Changes the Earth constants (GEO) setting to the model specified by a string literal. 
    -- 
    -- If you specify an invalid value for geoStr, the program will continue to use the current setting.
    -- 
    -- The GEO model is globally shared among the Standardized Astrodynamic Algorithms DLLs. If its setting is changed, the new setting takes effect immediately.
    -- 
    -- The following table lists possible values of the parameter value GEO setting:
    -- 
    -- table
    -- 
    -- geoStr (any string in the row)
    -- Interpretation
    -- 
    -- 'WGS-84', 'WGS84', '84'WGS-84
    -- 'EGM-96', 'EGM96', '96'EGM-96
    -- 'EGM-08', 'EGM08', '8'EGM-08
    -- 'WGS-72', 'WGS72', '72'WGS-72 (default)
    -- 'JGM-2, 'JGM2', '2'JGM-2
    -- 'SEM68R', '68'STEM68R, SEM68R
    -- 'GEM5', '5'GEM5
    -- 'GEM9', '9'GEM9
    --    
    -- 
    -- The GEO model must be set to WGS-72 to use the SGP4 propagator.
    procedure EnvSetGeoStr
        (geoStr            : in      String)
    with Import => True,
        Convention => C,
        External_Name => "EnvSetGeoStr";
        --geoStr             : String    (1..6);

    -- Retrieves the value of one of the constants from the current Earth constants (GEO) model. 
    function EnvGetGeoConst
        (xf_GeoCon         :         Integer) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "EnvGetGeoConst";

    -- Retrieves the value of one of the constants from the current fundamental catalogue (FK) model.
    function EnvGetFkConst
        (xf_FkCon          :         Integer) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "EnvGetFkConst";

    -- Returns a handle that can be used to access the fundamental catalogue (FK) data structure. 
    -- 
    -- This function is needed when calling the ThetaGrnwch function from TimeFunc.dll.
    -- 
    -- The handle returned by this function is sometimes called a pointer for historical reasons. The name EnvGetFkPtr comes from the fact that the handle used to be called a pointer.
    function EnvGetFkPtr return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvGetFkPtr";

    -- Specifies the shape of the earth that will be used by the Astro Standards software, either spherical earth or oblate earth
    procedure EnvSetEarthShape
        (earthShape        :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "EnvSetEarthShape";

    -- Returns the value representing the shape of the earth being used by the Astro Standards software, either spherical earth or oblate earth
    function EnvGetEarthShape return Integer
    with Import => True,
        Convention => C,
        External_Name => "EnvGetEarthShape";


end EnvConstDll;

-- ========================= End of auto generated code ==========================
