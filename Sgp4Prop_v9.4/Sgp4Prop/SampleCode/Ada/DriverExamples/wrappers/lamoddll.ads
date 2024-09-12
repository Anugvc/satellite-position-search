-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package LamodDll is
    
    -- Indexes of SenSatData fields
    -- Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
    XF_SENSAT_STEPMODE : constant := 1;
    -- Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
    XF_SENSAT_OPTVISFLAG : constant := 2;
    -- Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
    XF_SENSAT_VISPASSONLY : constant := 2;
    -- Begin time in ds50TAI
    XF_SENSAT_BEGDS50TAI : constant := 3;
    -- End time in ds50TAI
    XF_SENSAT_ENDDS50TAI : constant := 4;
    -- Print interval
    XF_SENSAT_INTERVAL : constant := 5;
    -- Satellite's period
    XF_SENSAT_PERIOD : constant := 6;
    
    
    --*******************************************************************************
    -- Indexes of lookCode
    -- Valid look
    LOOK_VALID : constant := 0;
    -- Failed horizon break test
    LOOK_HTEST : constant := 1;
    -- Failed limit tests
    LOOK_SENLIMS : constant := 2;
    
    --*******************************************************************************
    
    -- Indexes of look angle data output
    -- Look time in ds50UTC
    XA_LOOK_DS50UTC : constant := 0;
    -- Look time in minutes since epoch
    XA_LOOK_MSE : constant := 1;
    -- Elevation (deg)
    XA_LOOK_ELEV : constant := 2;
    -- Azimuth (deg)
    XA_LOOK_AZIM : constant := 3;
    -- Range (km) or ? for optical sensor
    XA_LOOK_RNG : constant := 4;
    -- Range rate (km/sec) or ? for optical sensor
    XA_LOOK_RNGRT : constant := 5;
    XA_LOOK_SIZE : constant := 6;
    
    --*******************************************************************************
    
    -- Indexes of viewing data output
    -- computed U-vector to object
    XF_VIEW_UVEC : constant := 1;
    -- range unit vector
    XF_VIEW_RUVEC : constant := 2;
    -- topocentric L unit vector
    XF_VIEW_LVEC : constant := 3;
    -- station zenith vector
    XF_VIEW_ZVEC : constant := 4;
    -- computed range vector (km)
    XF_VIEW_RNGVEC : constant := 5;
    -- computed range-rate vector/relative velocity vector (km/sec)
    XF_VIEW_RRTVEC : constant := 6;
    -- unit vector of sun
    XF_VIEW_SUNVEC : constant := 7;
    -- unit vector of moon
    XF_VIEW_MOONVEC : constant := 8;
    -- angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
    XF_VIEW_ANGARR : constant := 9;
    -- illumination result
    XF_VIEW_CVIS : constant := 10;
    -- Relative velocity (km/sec)
    XF_VIEW_RELVEL : constant := 11;
    -- sensor position EFG
    XF_VIEW_SENEFG : constant := 12;
    -- limit check flags
    XF_VIEW_LIMFLGS : constant := 13;
    -- azimuth and elevation rates (deg/sec)
    XF_VIEW_AZELRATES : constant := 14;
    -- moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
    XF_VIEW_MOONANGLES : constant := 15;
    
    
    --*******************************************************************************
    
    -- Indexes of angle array
    -- moon/sen/sat angle (deg)
    XA_ANGLE_MOONSENSAT : constant := 0;
    -- sun/earth/sat angle (deg)
    XA_ANGLE_SUNEARTHSAT : constant := 1;
    -- sun/earth/sen angle (deg)
    XA_ANGLE_SUNEARTHSEN : constant := 2;
    -- sun/sen/sat angle (deg) - solar exclusion angle
    XA_ANGLE_SUNSENSAT : constant := 3;
    -- earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
    XA_ANGLE_SOLARASPECT : constant := 4;
    XA_ANGLE_SIZE : constant := 5;
    
    -- Indexes of moon angle array
    -- DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
    -- moon/earth/sat angle (deg)
    XA_ANGLE_MOONEARTHSAT : constant := 0;
    -- moon/earth/sen angle (deg)
    XA_ANGLE_MOONEARTHSEN : constant := 1;
    
    
    --*******************************************************************************
    
    -- Indexes of orbiting sensor's off-boresight/clock  array
    -- off-boresight angle 1
    XA_OFFBORE_EL1 : constant := 0;
    -- off-boresight clock 1
    XA_OFFBORE_AZ1 : constant := 1;
    -- off-boresight angle 2
    XA_OFFBORE_EL2 : constant := 2;
    -- off-boresight clock 2
    XA_OFFBORE_AZ2 : constant := 3;
    XA_OFFBORE_SIZE : constant := 4;
    
    --*******************************************************************************
    
    -- Indexes of LAMOD 1P-card data
    -- Input time format: 0=Minutes since epoch, 1=UTC
    XF_1P_TIMEFRM : constant := 1;
    -- Begin time
    XF_1P_BEGTIME : constant := 2;
    -- End time
    XF_1P_ENDTIME : constant := 3;
    -- Ouput interval
    XF_1P_INTERVAL : constant := 4;
    -- Print options: 0: print look angles, 1: print look angle and initial conditions
    XF_1P_PRTOPT : constant := 5;
    -- Generate obs from look angles flag
    XF_1P_GENOBS : constant := 6;
    -- Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
    XF_1P_VISFLG : constant := 7;
    -- Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
    XF_1P_STEPMODE : constant := 8;
    -- Processing mode: 'O': obsched mode; 'P': P ASCHED mode
    XF_1P_PROCMODE : constant := 9;
    -- Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
    XF_1P_DIAGNOST : constant := 10;
    -- Max solar aspect for optical sites
    XF_1P_MAXSAA : constant := 11;
    
    --*******************************************************************************
    
    -- Indexes of limit test flags in the returned array
    -- az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
    XA_LIMFLG_AZLIM : constant := 0;
    -- el limits test flag (0=failed, 1=passed)
    XA_LIMFLG_ELLIM : constant := 1;
    -- earth in background flag (0=failed, 1=passed)
    XA_LIMFLG_EARTHBK : constant := 2;
    -- earth obstructed flag (0=failed, 1=passed)
    XA_LIMFLG_EARTHOB : constant := 3;
    -- lunar exclusion angle flag (0=failed, 1=passed)
    XA_LIMFLG_LUNEXCL : constant := 4;
    -- max range test flag (0=failed, 1=passed)
    XA_LIMFLG_MAXRANGE : constant := 5;
    -- min range test flag (0=failed, 1=passed)
    XA_LIMFLG_MINRANGE : constant := 6;
    -- penumb eclipse test flag (0=failed, 1=passed)
    XA_LIMFLG_PENECLIP : constant := 7;
    -- relative velocity test flag (0=failed, 1=passed)
    XA_LIMFLG_RVELLIM : constant := 8;
    -- solar aspect angle test flag (0=failed, 1=passed)
    XA_LIMFLG_SAALIM : constant := 9;
    -- solar exclusion angle flag (0=failed, 1=passed)
    XA_LIMFLG_SOLEXCL : constant := 10;
    -- umbral eclipse test flag (0=failed, 1=passed)
    XA_LIMFLG_UMBECLIP : constant := 11;
    XA_LIMFLG_SIZE : constant := 12;
    
    
    -- Generate obs options
    -- Don't generate obs
    GENOBS_NONE : constant := 0;
    -- Generate B3 obs
    GENOBS_B3 : constant := 1;
    -- Generate TYY obs
    GENOBS_TTY : constant := 2;
    -- Generate SP TASKER V obsType
    GENOBS_SPTASKER : constant := 3;
    -- Generate CSV obs
    GENOBS_CSV : constant := 4;
    
    
    -- indexes of look and view data in an array
    -- look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
    XA_LV_LOOKCODE : constant := 0;
    -- time in ds50UTC when the look angle is computed
    XA_LV_DS50UTC : constant := 1;
    -- time mse when the look angle is computed
    XA_LV_MSE : constant := 2;
    -- elevation (deg)
    XA_LV_ELEV : constant := 3;
    -- azimuth (deg)
    XA_LV_AZIM : constant := 4;
    -- range (km)
    XA_LV_RNG : constant := 5;
    -- range rate (km/s)
    XA_LV_RNGRT : constant := 6;
    -- right ascension (deg)
    XA_LV_RA : constant := 7;
    -- declination (deg)
    XA_LV_DEC : constant := 8;
    -- azimuth rate (deg/s)
    XA_LV_AZRATE : constant := 9;
    -- elevation rate (deg/s)
    XA_LV_ELRATE : constant := 10;
    
    -- sensor ECI position (X) (km)
    XA_LV_SENPOSX : constant := 11;
    -- sensor ECI position (Y) (km)
    XA_LV_SENPOSY : constant := 12;
    -- sensor ECI position (Z) (km)
    XA_LV_SENPOSZ : constant := 13;
    -- sensor ECI velocity (X) (km/s)
    XA_LV_SENVELX : constant := 14;
    -- sensor ECI velocity (Y) (km/s)
    XA_LV_SENVELY : constant := 15;
    -- sensor ECI velocity (Z) (km/s)
    XA_LV_SENVELZ : constant := 16;
    -- sensor latitude (deg)
    XA_LV_SENLAT : constant := 17;
    -- sensor longitude (deg)
    XA_LV_SENLON : constant := 18;
    -- sensor height (km)
    XA_LV_SENHEIGHT : constant := 19;
    
    -- satellite ECI position (X) (km)
    XA_LV_SATPOSX : constant := 20;
    -- satellite ECI position (Y) (km)
    XA_LV_SATPOSY : constant := 21;
    -- satellite ECI position (Z) (km)
    XA_LV_SATPOSZ : constant := 22;
    -- satellite ECI velocity (X) (km/s)
    XA_LV_SATVELX : constant := 23;
    -- satellite ECI velocity (Y) (km/s)
    XA_LV_SATVELY : constant := 24;
    -- satellite ECI velocity (Z) (km/s)
    XA_LV_SATVELZ : constant := 25;
    -- satellite latitude (deg)
    XA_LV_SATLAT : constant := 26;
    -- satellite longitude (deg)
    XA_LV_SATLON : constant := 27;
    -- satellite height (km)
    XA_LV_SATHEIGHT : constant := 28;
    
    -- computed U-vector to object (X)
    XA_LV_UVECX : constant := 31;
    -- computed U-vector to object (Y)
    XA_LV_UVECY : constant := 32;
    -- computed U-vector to object (Z)
    XA_LV_UVECZ : constant := 33;
    -- slant range unit vector (X)- vector from the sensor to the satellite
    XA_LV_RUVECX : constant := 34;
    -- slant range unit vector (Y)- vector from the sensor to the satellite
    XA_LV_RUVECY : constant := 35;
    -- slant range unit vector (Z)- vector from the sensor to the satellite
    XA_LV_RUVECZ : constant := 36;
    -- station unit vector (X) - vector directed from the center of the earth to the sensor
    XA_LV_LVECX : constant := 37;
    -- station unit vector (Y) - vector directed from the center of the earth to the sensor
    XA_LV_LVECY : constant := 38;
    -- station unit vector (Z) - vector directed from the center of the earth to the sensor
    XA_LV_LVECZ : constant := 39;
    -- station zenith vector (X)
    XA_LV_ZVECX : constant := 40;
    -- station zenith vector (Y)
    XA_LV_ZVECY : constant := 41;
    -- station zenith vector (Z)
    XA_LV_ZVECZ : constant := 42;
    -- slant range vector (X) (km) - vector from the sensor to the satellite
    XA_LV_RNGVECX : constant := 43;
    -- slant range vector (Y) (km) - vector from the sensor to the satellite
    XA_LV_RNGVECY : constant := 44;
    -- slant range vector (Z) (km) - vector from the sensor to the satellite
    XA_LV_RNGVECZ : constant := 45;
    -- range-rate vector - relative velocity vector (X) (km/s)
    XA_LV_RRTVECX : constant := 46;
    -- range-rate vector - relative velocity vector (Y) (km/s)
    XA_LV_RRTVECY : constant := 47;
    -- range-rate vector - relative velocity vector (Z) (km/s)
    XA_LV_RRTVECZ : constant := 48;
    -- unit vector to sun (X)
    XA_LV_USUNX : constant := 49;
    -- unit vector to sun (Y)
    XA_LV_USUNY : constant := 50;
    -- unit vector to sun (Z)
    XA_LV_USUNZ : constant := 51;
    -- unit vector to moon (X)
    XA_LV_UMOONX : constant := 52;
    -- unit vector to moon (Y)
    XA_LV_UMOONY : constant := 53;
    -- unit vector to moon (Z)
    XA_LV_UMOONZ : constant := 54;
    -- moon/sensor/satellite angle (deg)
    XA_LV_MOSESA : constant := 55;
    -- moon/earth/satellite angle (deg)
    XA_LV_MOEASA : constant := 56;
    -- moon/earth/sensor angle (deg)
    XA_LV_MOEASE : constant := 57;
    -- sun/sensor/satellite angle (deg)
    XA_LV_SUSESA : constant := 58;
    -- sun/earth/satellite angle (deg)
    XA_LV_SUEASA : constant := 59;
    -- sun/earth/sensor angle (deg)
    XA_LV_SUEASE : constant := 60;
    -- solar aspect angle (deg)
    XA_LV_SOLAA : constant := 61;
    -- illumination result
    XA_LV_VIS : constant := 62;
    -- relative velocity (km/s)
    XA_LV_RELVEL : constant := 63;
    -- off-boresight angle (deg) - constant azimuth fan only
    XA_LV_OBSANGLE : constant := 64;
    -- angle to fan (deg) - constant azimuth fan only
    XA_LV_ANG2FAN : constant := 65;
    
    -- pass azimuth check (0=failed, 1=passed)
    XA_LV_AZLIM : constant := 70;
    -- pass elevation check (0=failed, 1=passed)
    XA_LV_ELLIM : constant := 71;
    -- pass earth in background check (0=failed, 1=passed)
    XA_LV_EARTHBK : constant := 72;
    -- pass earth obstruction check (0=failed, 1=passed)
    XA_LV_EARTHOB : constant := 73;
    -- pass lunar exclusion check (0=failed, 1=passed)
    XA_LV_LUNEXCL : constant := 74;
    -- pass maximum range check (0=failed, 1=passed)
    XA_LV_MAXRANGE : constant := 75;
    -- pass minimum range check (0=failed, 1=passed)
    XA_LV_MINRANGE : constant := 76;
    -- pass penum eclipse check (0=failed, 1=passed)
    XA_LV_PENECLIP : constant := 77;
    -- pass relative velocity check (0=failed, 1=passed)
    XA_LV_RVELLIM : constant := 78;
    -- pass solar aspect angle check (0=failed, 1=passed)
    XA_LV_SAALIM : constant := 79;
    -- pass solar exclusion angle check (0=failed, 1=passed)
    XA_LV_SOLEXCL : constant := 80;
    -- pass umbral eclipse check (0=failed, 1=passed)
    XA_LV_UMBECLIP : constant := 81;
    -- pass visibility check for optical sensor (0=failed, 1=passed)
    XA_LV_OPTVIS : constant := 82;
    
    -- orbiting sensor EFG position (X) (km)
    XA_LV_SENPOSE : constant := 90;
    -- orbiting sensor EFG position (Y) (km)
    XA_LV_SENPOSF : constant := 91;
    -- orbiting sensor EFG position (Z) (km)
    XA_LV_SENPOSG : constant := 92;
    -- orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
    XA_LV_NBORE1 : constant := 93;
    -- orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
    XA_LV_NBORE2 : constant := 94;
    -- orbiting sensor off boresight elevation #1 (deg)
    XA_LV_OBEL1 : constant := 95;
    -- orbiting sensor off boresight azimuth #1 (deg)
    XA_LV_OBAZ1 : constant := 96;
    -- orbiting sensor off boresight elevation #2 (deg)
    XA_LV_OBAZ2 : constant := 97;
    -- orbiting sensor off boresight azimuth #2 (deg)
    XA_LV_OBEL2 : constant := 98;
    
    XA_LV_SIZE : constant := 128;
    
    
    -- indexes of sensor/satellite data in an array
    -- Sensor number
    XA_SENSAT_SENNUM : constant := 0;
    -- Satellite number
    XA_SENSAT_SATNUM : constant := 1;
    -- Sensor view type
    XA_SENSAT_VIEWTYPE : constant := 2;
    -- Sensor observation type
    XA_SENSAT_OBSTYPE : constant := 3;
    -- Max number of points per pass
    XA_SENSAT_PTSPERPAS : constant := 4;
    -- Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
    XA_SENSAT_STEPMODE : constant := 5;
    -- Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
    XA_SENSAT_OPTVISFLAG : constant := 6;
    -- Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
    XA_SENSAT_VISPASSONLY : constant := 6;
    -- Start time in ds50TAI
    XA_SENSAT_STARTAI : constant := 7;
    -- Stop time in ds50TAI
    XA_SENSAT_STOPTAI : constant := 8;
    -- Output interval (min)
    XA_SENSAT_INTERVAL : constant := 9;
    -- Satellite's period (min)
    XA_SENSAT_PERIOD : constant := 10;
    -- Sensor number
    XA_SENSAT_SENKEY : constant := 11;
    
    XA_SENSAT_SIZE : constant := 32;
    
    
    -- LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
    -- input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
    XA_LA_PARMS_TIMEFLG : constant := 1;
    -- begin time
    XA_LA_PARMS_STARTTIME : constant := 2;
    -- end time
    XA_LA_PARMS_STOPTIME : constant := 3;
    -- Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
    XA_LA_PARMS_STEPMODE : constant := 4;
    -- optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
    XA_LA_PARMS_VISFLG : constant := 5;
    -- max solar aspect angle (deg) for optical sites
    XA_LA_PARMS_XMSAA : constant := 6;
    
    XA_LA_PARMS_SIZE : constant := 16;
    
    -- Different sensor location types
    -- Sensor location is in ECI - specific to LAMOD
    SENLOC_TYPE_ECI : constant := 4;
    
    -- Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
    -- location type (see SENLOC_TYPE_? for available types)
    XA_LOCSEN_LOCTYPE : constant := 0;
    -- sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
    XA_LOCSEN_POS1 : constant := 1;
    -- sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
    XA_LOCSEN_POS2 : constant := 2;
    -- sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
    XA_LOCSEN_POS3 : constant := 3;
    
    -- for ground sensor
    -- astronomical latitude (deg) (+: North, -: South)
    XA_LOCSEN_ASTROLAT : constant := 4;
    -- astronomical longitude (deg) (+: West, -: East)
    XA_LOCSEN_ASTROLON : constant := 5;
    
    -- for orbiting sensor
    -- orbiting sensor velocity in ECI/X component (km/s)
    XA_LOCSEN_VEL1 : constant := 4;
    -- orbiting sensor velocity in ECI/Y component (km/s)
    XA_LOCSEN_VEL2 : constant := 5;
    -- orbiting sensor velocity in ECI/Z component (km/s)
    XA_LOCSEN_VEL3 : constant := 6;
    
    XA_LOCSEN_SIZE : constant := 16;
    
    
    -- Satellite state data
    -- satellite ECI position X (km) in TEME of Date
    XA_PVSAT_POSX : constant := 0;
    -- satellite ECI position Y (km) in TEME of Date
    XA_PVSAT_POSY : constant := 1;
    -- satellite ECI position Z (km) in TEME of Date
    XA_PVSAT_POSZ : constant := 2;
    -- satellite ECI velocity X (km/sec) in TEME of Date
    XA_PVSAT_VELX : constant := 3;
    -- satellite ECI velocity Y (km/sec) in TEME of Date
    XA_PVSAT_VELY : constant := 4;
    -- satellite ECI velocity Z (km/sec) in TEME of Date
    XA_PVSAT_VELZ : constant := 5;
    
    XA_PVSAT_SIZE : constant := 6;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Lamod dll for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
    function LamodInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodInit";

    -- Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
    -- The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
    procedure LamodGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "LamodGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
    -- Returns zero indicating the file has been read successfully. Other values indicate an error.
    function LamodLoadFile
        (lamodInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodLoadFile";
        --lamodInputFile     : String    (1..512);

    -- Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
    function LamodLoadFileAll
        (lamodInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodLoadFileAll";
        --lamodInputFile     : String    (1..512);

    -- Loads a single Lamod-typed card
    function LamodLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodLoadCard";
        --card               : String    (1..512);

    -- Saves any currently loaded Lamod-related settings to a file
    -- The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
    function LamodSaveFile
        (lamodFile         : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodSaveFile";
        --lamodFile          : String    (1..512);

    -- Returns number of sensors/satellites entered via 1P/2P cards
    -- See LamodGetSenNums for example.
    procedure LamodGetNumOfSensSats
        (numSens           : out     Integer;
        numSats            : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "LamodGetNumOfSensSats";

    -- Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
    procedure LamodGetSenNums
        (senNums           : out     Int1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "LamodGetSenNums";

    -- Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
    -- See LamodGetSenNums for example.
    procedure LamodGetSatNums
        (satNums           : out     Int1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "LamodGetSatNums";

    -- Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
    procedure LamodGet1pCard
        (lamod1PCard       : out     String)
    with Import => True,
        Convention => C,
        External_Name => "LamodGet1pCard";
        --lamod1PCard        : String    (1..512);

    -- Retrieves all Lamod control parameters with a single function call
    procedure LamodGet1pAll
        (timeFlg           : out     Integer;
        startTime          : out     Long_Float;
        stopTime           : out     Long_Float;
        interval           : out     Long_Float;
        prtOpt             : out     Integer;
        punchObs           : out     Integer;
        visFlg             : out     Integer;
        stepMode           : out     Integer;
        schedMode          : out     Character;
        diagMode           : out     Integer;
        solAspAngle        : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "LamodGet1pAll";

    -- Sets all Lamod control parameters with a single function call
    -- The values of visFlg have been changed to match those of sensor limits. VisFlg = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be visFlg = 0).
    -- 
    -- There are cases when the program switches to step mode even though the users have requested culmination mode:
    -- 
    -- When the sensor is an orbiting sensor
    -- When the target satellite orbit has large period (> 960 minutes)
    -- When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)
    -- When a pass has multiple maximum elevations (culmination time == -1.0)
    -- 
    procedure LamodSet1pAll
        (timeFlg           :         Integer;
        startTime          :         Long_Float;
        stopTime           :         Long_Float;
        interval           :         Long_Float;
        prtOpt             :         Integer;
        punchObs           :         Integer;
        visFlg             :         Integer;
        stepMode           :         Integer;
        schedMode          :         Character;
        diagMode           :         Integer;
        solAspAngle        :         Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "LamodSet1pAll";

    -- Retrieves the value of a specified Lamod control parameter (1P-card field) 
    -- 
    -- Remember to convert valueStr to the correct data type that it represents.
    -- 
    -- The table below shows the values for the xf_1P parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 1   Input time format : 0: Minutes since epoch, 1: UTC
    -- 2   Begin time
    -- 3   End time
    -- 4   Ouput interval
    -- 5   Print options: 0: print look angles, 1: print look angle and initial conditions
    -- 6   Generate obs from look angles flag
    -- 7   Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
    -- 2: output pass only if solar aspect angle 
    -- 8   Step mode flag: 0: use culmination mode; 1: use step mode
    -- 9   Processing mode: 'O': obsched mode; 'P':P ASCHED mode
    -- 10  Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
    -- 3: both 1 and 2
    -- 11  Max solar aspect for optical sites   
    -- 	
    procedure LamodGet1pField
        (xf_1P             :         Integer;
        retVal             : out     String)
    with Import => True,
        Convention => C,
        External_Name => "LamodGet1pField";
        --retVal             : String    (1..512);

    -- Sets the value of a specified Lamod control parameter (1P-card field)
    -- See LamodGet1pField for description of the xf_1P parameter values.
    procedure LamodSet1pField
        (xf_1P             :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "LamodSet1pField";
        --valueStr           : String    (1..512);

    -- Retrieves the concurrent viewing options read from the input 3P Parameter card
    -- The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
    procedure LamodGet3pAll
        (concurrFlg        : out     Integer;
        concurrSens        : out     Int1D)
    with Import => True,
        Convention => C,
        External_Name => "LamodGet3pAll";
        --concurrSens        : Int1D     (1..3);

    -- Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
    -- The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
    procedure LamodSet3pAll
        (concurrFlg        :         Integer;
        concurrSens        : in      Int1D)
    with Import => True,
        Convention => C,
        External_Name => "LamodSet3pAll";
        --concurrSens        : Int1D     (1..3);

    -- Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
    -- The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
    procedure LamodGetObsFileName
        (obsFile           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "LamodGetObsFileName";
        --obsFile            : String    (1..512);

    -- Sets the full file name of the output obs file which will be used to store the generated obs data
    -- Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
    -- 
    -- The users need to make sure they have also turned on the flag to generate obs from look angles.
    procedure LamodSetObsFileName
        (obsFile           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "LamodSetObsFileName";
        --obsFile            : String    (1..512);

    -- Checks to see whether the input satellite will ever be viewable to the input sensor
    -- This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
    -- 
    -- If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
    function LamodSenSatVisible
        (senKey            :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodSenSatVisible";

    -- Initializes a sensor/satellite pair in preparation for computing look angles
    -- It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
    -- 
    -- The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
    -- 
    -- Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
    function LamodInitSenSat
        (senKey            :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodInitSenSat";

    -- Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
    -- This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
    -- It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
    -- 
    -- The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
    -- 
    -- Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
    function LamodInitSenSat_MT
        (xa_la_parms       : in      Double1D;
        senKey             :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodInitSenSat_MT";
        --xa_la_parms        : Double1D  (1..16);

    -- Retrieves all of the data for an initialized sensor/satellite pair with a single function call
    function LamodGetSenSatDataAll
        (senSatKey         :         Long_Long_Integer;
        stepMode           : out     Integer;
        optVisFlg          : out     Integer;
        startDs50TAI       : out     Long_Float;
        stopDs50TAI        : out     Long_Float;
        interval           : out     Long_Float;
        period             : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetSenSatDataAll";

    -- Retrieves an individual field of data for an initialized sensor/satellite pair
    -- 
    -- Remember to convert valueStr to the correct data type that it represents.
    -- 
    -- The table below shows the values for the xf_SenSat parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    --  1  Step mode
    --  2  Optical visibility flag
    --  3  Begin time in ds50TAI
    --  4  End time in ds50TAI
    --  5  Print interval 
    --  6  Satellite's period
    -- 
    function LamodGetSenSatDataField
        (senSatKey         :         Long_Long_Integer;
        xf_SenSat          :         Integer;
        retVal             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetSenSatDataField";
        --retVal             : String    (1..512);

    -- Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
    function LamodSenSatDataToArray
        (senSatKey         :         Long_Long_Integer;
        xa_senSat          : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodSenSatDataToArray";
        --xa_senSat          : Double1D  (1..32);

    -- Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
    -- the horizontal limit test. This function only applies when the culmination mode was selected
    -- This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
    function LamodGetNumPasses
        (senSatKey         :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetNumPasses";

    -- Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
    -- See LamodGetNumPasses for example.
    -- If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
    -- There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
    -- For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
    -- Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
    function LamodGetRiseCulmSetTimes
        (senSatKey         :         Long_Long_Integer;
        rcsTimeArr         : out     Double2D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetRiseCulmSetTimes";

    -- Computes a single look angle of the sensor/satellite pair at the specified time
    function LamodComputeLookAngle
        (senSatKey         :         Long_Long_Integer;
        currDs50TAI        :         Long_Float;
        lookCode           : out     Integer;
        xa_look            : out     Double1D;
        senElts            : out     Double1D;
        satElts            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodComputeLookAngle";
        --xa_look            : Double1D  (1..6);
        --senElts            : Double1D  (1..9);
        --satElts            : Double1D  (1..9);

    -- Computes at once look and view data of the sensor/satellite pair at the specified time
    -- 
    -- Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
    function LamodComputeLookView
        (senSatKey         :         Long_Long_Integer;
        currDs50TAI        :         Long_Float;
        xa_lv              : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodComputeLookView";
        --xa_lv              : Double1D  (1..128);

    -- Finds exact time when satellite is IN or OUT of sensor's coverage
    -- 
    -- Note: The start and end times must have different look values (valid and invalid looks or vice versa)
    function LamodFindExactIOTime
        (senSatKey         :         Long_Long_Integer;
        t1Ds50TAI          :         Long_Float;
        t2Ds50TAI          :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "LamodFindExactIOTime";

    -- Returns viewing and geometric data for orbiting sensors
    -- 
    -- Note: This function is not thread safe, please use LamodComputeLookView() instead   
    function LamodGetOrbSenViewdata
        (senSatKey         :         Long_Long_Integer;
        uvSun              : out     Double1D;
        uvMoon             : out     Double1D;
        xa_angle           : out     Double1D;
        nBore1             : out     Integer;
        nBore2             : out     Integer;
        xa_offBore         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetOrbSenViewdata";
        --uvSun              : Double1D  (1..3);
        --uvMoon             : Double1D  (1..3);
        --xa_angle           : Double1D  (1..5);
        --xa_offBore         : Double1D  (1..4);

    -- Retrieves a single field of look angle viewing data
    -- 
    -- See LamodCompRaDec for an example.
    -- 
    -- Note: This function is not thread safe, please use LamodComputeLookView() instead    
    -- 
    -- When the users pass the retArray to this function, make sure it has the proper size as shown in the retArray size column.
    -- 
    -- The retArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
    -- 
    -- The table below shows the values for the xf_View parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    --  1  computed U-vector to object
    --  2  range unit vector
    --  3  topocentric L unit vector
    --  4  station zenith vector
    --  5  computed range vector (km)
    --  6  computed range-rate vector/relative velocity vector (er/kem)
    --  7  vector to sun  (km)
    --  8  vector to moon (km)
    --  9  angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
    -- angle)
    -- 10  illumination result
    -- 11  Relative velocity (km/sec)
    -- 12  sensor position EFG
    -- 13  limit check flags
    -- 14  azimuth and elevation rates (deg/sec)
    -- 15  moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
    -- 	
    -- 
    -- The table below shows the values for the limit check flags (xf_View = 13):
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    --   0 az limits test flag
    --   1 el limits test flag
    --   2 earth in background flag
    --   3 earth obstructed flag
    --   4 lunar exclusion angle fl
    --   5 max range test flag
    --   6 min range test flag
    --   7 penumb eclipse test flag
    --   8 relative velocity test fl
    --   9 solar aspect angle test
    --  10 solar exclusion angle fl
    --  11 umbral eclipse test flag
    -- 	
    function LamodGetViewDataField
        (senSatKey         :         Long_Long_Integer;
        xf_View            :         Integer;
        retVal             : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGetViewDataField";

    -- Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
    -- The users need to be careful when -1 < decDeg < 0 because they might easily display it incorrectly (missing the negative sign of its value).
    procedure LamodCompRaDec
        (xlPos             : in      Double1D;
        rasc               : out     Long_Float;
        decl               : out     Long_Float;
        raHr               : out     Integer;
        raMin              : out     Integer;
        raSec              : out     Long_Float;
        decDeg             : out     Integer;
        decMin             : out     Integer;
        decSec             : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "LamodCompRaDec";
        --xlPos              : Double1D  (1..3);

    -- Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
    -- Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
    -- The function returns one-line or two-line formatted obs string depending on the input punchObs and the sensor's observation type.  The users need to check the returned value of numLines to see what type of the output strings they are.
    function LamodGenObs
        (senSatKey         :         Long_Long_Integer;
        punchObs           :         Integer;
        obsClass           :         Character;
        obsLine1           : out     String;
        obsLine2           : out     String;
        numLines           : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGenObs";
        --obsLine1           : String    (1..512);
        --obsLine2           : String    (1..512);

    -- Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
    -- Note: This is a thread-safe version of the LamodGenObs
    function LamodGenObsAtTime
        (senSatKey         :         Long_Long_Integer;
        currDs50TAI        :         Long_Float;
        punchObs           :         Integer;
        obsClass           :         Character;
        obsLine1           : out     String;
        obsLine2           : out     String;
        numLines           : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodGenObsAtTime";
        --obsLine1           : String    (1..512);
        --obsLine2           : String    (1..512);

    -- Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
    function LamodRemoveSenSat
        (senSatKey         :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodRemoveSenSat";

    -- Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
    function LamodRemoveAllSenSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "LamodRemoveAllSenSats";

    -- Resets all Lamod-related parameters back to their default values
    -- See LamodRemoveAllSenSats for example.
    procedure LamodReset
    with Import => True,
        Convention => C,
        External_Name => "LamodReset";

    -- Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
    -- 
    -- Note: This function doesn't check for sensor limits so all limit flags are returned as passed
    -- 
    procedure LamodSenSatDirect_OS
        (ds50TAI           :         Long_Float;
        xa_locSen          : in      Double1D;
        xa_pvSat           : in      Double1D;
        xa_lv              : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "LamodSenSatDirect_OS";
        --xa_locSen          : Double1D  (1..16);
        --xa_pvSat           : Double1D  (1..6);
        --xa_lv              : Double1D  (1..128);


end LamodDll;

-- ========================= End of auto generated code ==========================
