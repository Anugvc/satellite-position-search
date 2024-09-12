-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package SensorDll is
    
    -- Sensor segment types
    -- bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
    SEG_BCONE : constant := 1;
    -- dome-typed limit: Min/Max Az/El/Range
    SEG_DOME : constant := 2;
    
    
    
    -- Indexes of dome segment parameters
    -- start azimuth (deg)
    XA_SEG_DOME_AZFR : constant := 0;
    -- end azimuth (deg)
    XA_SEG_DOME_AZTO : constant := 1;
    -- lower-bound elevation (deg)
    XA_SEG_DOME_ELFR : constant := 2;
    -- higher-bound elevation (deg)
    XA_SEG_DOME_ELTO : constant := 3;
    -- minimum range (km)
    XA_SEG_DOME_MINRNG : constant := 4;
    -- maximum range (km)
    XA_SEG_DOME_MAXRNG : constant := 5;
    
    XA_SEG_DOME_SIZE : constant := 16;
    
    
    -- Indexes of bounded-cone segment parameters
    -- boresight azimuth (deg)
    XA_SEG_BCONE_BSAZ : constant := 0;
    -- boresight elevation (deg)
    XA_SEG_BCONE_BSEL : constant := 1;
    -- offboresight lower angle (deg)
    XA_SEG_BCONE_ANGFR : constant := 2;
    -- offboresight higher angle (deg)
    XA_SEG_BCONE_ANGTO : constant := 3;
    -- minimum range (km)
    XA_SEG_BCONE_MINRNG : constant := 4;
    -- maximum range (km)
    XA_SEG_BCONE_MAXRNG : constant := 5;
    -- minimum cut-off elevation (deg)
    XA_SEG_BCONE_MINEL : constant := 6;
    
    XA_SEG_BCONE_SIZE : constant := 16;
    
    
    -- Different key mode options for senKey
    -- Default - duplicate sensor can not be loaded in binary tree
    SEN_KEYMODE_NODUP : constant := 0;
    -- Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
    SEN_KEYMODE_DMA : constant := 1;
    
    -- sensor key possible errors
    -- Bad sensor key
    BADSENKEY : constant := -1;
    -- Duplicate sensor key
    DUPSENKEY : constant := 0;
    
    -- Different sensor types
    -- bounded-cone tracker
    VT_BCT : constant := 2;
    -- conventional tracker
    VT_CON : constant := 3;
    -- optical tracker
    VT_OPT : constant := 4;
    -- constant azimuth fan sweeping vertical plane
    VT_FAN : constant := 7;
    -- orbiting sensor (same as 'M' or 'O')
    VT_ORB : constant := 9;
    -- space fence's field of regard FOR ('R' = 86)
    VT_FOR : constant := 82;
    -- space fence's surveillance fan FOV ('V' = 82)
    VT_FOV : constant := 86;
    
    -- Different sensor location types
    -- Sensor location is in ECR
    SENLOC_TYPE_ECR : constant := 1;
    -- Sensor location is in EFG
    SENLOC_TYPE_EFG : constant := 2;
    -- Sensor location is in LLH
    SENLOC_TYPE_LLH : constant := 3;
    
    
    -- Sensor Data -
    --*******************************************************************************
    -- generic data for all sensor types
    --*******************************************************************************
    -- sensor number
    XA_SEN_GEN_SENNUM : constant := 0;
    -- sensor minimum range (km) (=0 no minimum range check)
    XA_SEN_GEN_MINRNG : constant := 3;
    -- sensor maxinmum range (km) (=0 no maximum range check)
    XA_SEN_GEN_MAXRNG : constant := 4;
    -- range rate/relative velocity limit (km/sec) (=0 no range rate check)
    XA_SEN_GEN_RRLIM : constant := 5;
    -- min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
    XA_SEN_GEN_RNGLIMFLG : constant := 6;
    -- is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
    XA_SEN_GEN_SMSEN : constant := 7;
    
    
    --*******************************************************************************
    
    -- sensor location - for all ground-based sensor types (non-orbiting)
    -- location type (see SENLOC_TYPE_? for available types)
    XA_SEN_GRN_LOCTYPE : constant := 10;
    -- sensor location ECR/EFG X component (km) or LLH/Lat (deg)
    XA_SEN_GRN_POS1 : constant := 11;
    -- sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
    XA_SEN_GRN_POS2 : constant := 12;
    -- sensor location ECR/EFG Z component (km) or LLH/Height (km)
    XA_SEN_GRN_POS3 : constant := 13;
    -- astronomical latitude (deg) (+: North, -: South)
    XA_SEN_GRN_ASTROLAT : constant := 14;
    -- astronomical longitude (deg) (+: West, -: East)
    XA_SEN_GRN_ASTROLON : constant := 15;
    
    
    --*******************************************************************************
    -- sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
    --*******************************************************************************
    -- Bounded cone tracker (conical sensor) (VT_BCT)
    -- conical sensor boresight azimuth angle (deg)
    XA_SEN_BCT_BRSGHTAZ : constant := 20;
    -- conical sensor boresight elevation angle (deg)
    XA_SEN_BCT_BRSGHTEL : constant := 21;
    -- coninal sensor off-boresight angle/half cone angle (deg)
    XA_SEN_BCT_HALFANG : constant := 22;
    -- conical sensor minimum elevation angle (deg)
    XA_SEN_BCT_MINEL : constant := 23;
    
    --*******************************************************************************
    -- Conventinoal tracker (VT_CON)
    -- low elevation limit #1 (deg)
    XA_SEN_CON_ELFR1 : constant := 20;
    -- hight elevation limit #1 (deg)
    XA_SEN_CON_ELTO1 : constant := 21;
    -- low azimuth limit #1 (deg)
    XA_SEN_CON_AZFR1 : constant := 22;
    -- hight azimuth limit #1 (deg)
    XA_SEN_CON_AZTO1 : constant := 23;
    -- low elevation limit #2 (deg)
    XA_SEN_CON_ELFR2 : constant := 24;
    -- hight elevation limit #2 (deg)
    XA_SEN_CON_ELTO2 : constant := 25;
    -- low azimuth limit #2 (deg)
    XA_SEN_CON_AZFR2 : constant := 26;
    -- hight azimuth limit #2 (deg)
    XA_SEN_CON_AZTO2 : constant := 27;
    
    --*******************************************************************************
    -- Optical tracker (VT_OPT)
    -- low elevation limit #1 (deg)
    XA_SEN_OPT_ELFR1 : constant := 20;
    -- hight elevation limit #1 (deg)
    XA_SEN_OPT_ELTO1 : constant := 21;
    -- low azimuth limit #1 (deg)
    XA_SEN_OPT_AZFR1 : constant := 22;
    -- hight azimuth limit #1 (deg)
    XA_SEN_OPT_AZTO1 : constant := 23;
    -- low elevation limit #2 (deg)
    XA_SEN_OPT_ELFR2 : constant := 24;
    -- hight elevation limit #2 (deg)
    XA_SEN_OPT_ELTO2 : constant := 25;
    -- low azimuth limit #2 (deg)
    XA_SEN_OPT_AZFR2 : constant := 26;
    -- hight azimuth limit #2 (deg)
    XA_SEN_OPT_AZTO2 : constant := 27;
    
    -- optical sensor solar exclusion angle (to check for solar aspect angle limit)
    XA_SEN_OPT_SEA : constant := 40;
    -- ground site twilight offset angle
    XA_SEN_OPT_TWILGHT : constant := 41;
    -- visual pass check (sensor in dark, satellite illuminated)
    XA_SEN_OPT_VISCHK : constant := 42;
    
    --*******************************************************************************
    -- Constant azimuth fan (VT_FAN)
    -- fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
    XA_SEN_FAN_AZ : constant := 20;
    -- fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
    XA_SEN_FAN_TILTANGLE : constant := 21;
    -- fan's off-boresight angle (deg) [0, 90]
    XA_SEN_FAN_OBSANGLE : constant := 23;
    
    
    --*******************************************************************************
    -- Orbiting sensor (VT_ORB)
    -- orbiting sensor's satellite number
    XA_SEN_ORB_SATNUM : constant := 10;
    
    -- orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
    XA_SEN_ORB_ELMIN1 : constant := 20;
    -- orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
    XA_SEN_ORB_ELMAX1 : constant := 21;
    -- orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
    XA_SEN_ORB_AZMIN1 : constant := 22;
    -- orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
    XA_SEN_ORB_AZMAX1 : constant := 23;
    -- orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
    XA_SEN_ORB_ELMIN2 : constant := 24;
    -- orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
    XA_SEN_ORB_ELMAX2 : constant := 25;
    -- orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
    XA_SEN_ORB_AZMIN2 : constant := 26;
    -- orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
    XA_SEN_ORB_AZMAX2 : constant := 27;
    
    -- orbiting sensor earth limb exclusion distance (km)
    XA_SEN_ORB_EARTHLIMB : constant := 40;
    -- orbiting sensor solar exclusion angle (deg)
    XA_SEN_ORB_SEA : constant := 41;
    -- orbiting sensor lunar exclusion angle (deg)
    XA_SEN_ORB_LEA : constant := 42;
    -- orbiting sensor minimum illumination angle (deg)
    XA_SEN_ORB_MINILLUM : constant := 43;
    -- orbiting sensor allow earth in the back ground
    XA_SEN_ORB_EARTHBRND : constant := 44;
    -- orbiting sensor planetary restriction
    XA_SEN_ORB_PLNTRYRES : constant := 45;
    
    --*******************************************************************************
    
    -- Space fence Field Of Regard (VT_FOR)
    -- Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)
    
    
    --*******************************************************************************
    
    -- Space fence Field Of View (VT_FOV)
    -- north/south beam width (deg)
    XA_SEN_FOV_BEAMWIDTH : constant := 20;
    -- fence tilt angle (deg)
    XA_SEN_FOV_TILTANGLE : constant := 21;
    
    
    --*******************************************************************************
    
    -- Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
    -- unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
    XA_SEN_GEN_UNIT : constant := 90;
    -- output interval (min)
    XA_SEN_GEN_INTERVAL : constant := 91;
    -- max number of points per pass
    XA_SEN_GEN_PTSPERPAS : constant := 92;
    
    
    -- sensor sigmas/biases - ROTAS/BATCHDC
    -- azimuth sigma (deg)
    XA_SEN_GEN_AZSIGMA : constant := 110;
    -- elevation sigma (deg)
    XA_SEN_GEN_ELSIGMA : constant := 111;
    -- range sigma (km)
    XA_SEN_GEN_RGSIGMA : constant := 112;
    -- range-rate sigma (km/sec)
    XA_SEN_GEN_RRSIGMA : constant := 113;
    -- az rate sigma (deg/sec)
    XA_SEN_GEN_ARSIGMA : constant := 114;
    -- el rate sigma (deg/sec)
    XA_SEN_GEN_ERSIGMA : constant := 115;
    -- azimuth bias (deg)
    XA_SEN_GEN_AZBIAS : constant := 116;
    -- elevation bias (deg)
    XA_SEN_GEN_ELBIAS : constant := 117;
    -- range bias (km)
    XA_SEN_GEN_RGBIAS : constant := 118;
    -- range-rate bias (km/sec)
    XA_SEN_GEN_RRBIAS : constant := 119;
    -- time bias (sec)
    XA_SEN_GEN_TIMEBIAS : constant := 120;
    
    
    XA_SEN_SIZE : constant := 128;
    
    -- Indexes of SENSOR text data in an array of chars
    -- The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
    -- sensor security classification (1-character length)
    XS_SEN_SECCLASS_0_1 : constant := 0;
    -- sensor viewing type (1-character length)
    XS_SEN_VIEWTYPE_1_1 : constant := 1;
    -- sensor observation type (1-character length)
    XS_SEN_OBSTYPE_2_1 : constant := 2;
    -- sensor description/narrative/notes (24-character length)
    XS_SEN_DSCRPTN_3_24 : constant := 3;
    -- orbiting sensor's boresight vector #1 (1-character length)
    XS_SEN_ORB_BSVEC1_27_1 : constant := 27;
    -- orbiting sensor's boresight vector #2 (1-character length)
    XS_SEN_ORB_BSVEC2_28_1 : constant := 28;
    -- for VT_FOR only, az/el table file path (256-character length)
    XS_SEN_FOR_AZFILE_255_256 : constant := 255;
    
    XS_SEN_LENGTH : constant := 512;
    
    -- Indexes of Sensor data fields
    -- Sensor number
    XF_SENLOC_NUM : constant := 1;
    -- Sensor location - astronomical longitude (deg) (+=West/-=East)
    XF_SENLOC_LAT : constant := 2;
    -- Sensor location - astronomical latitude (deg)  (+=North/-=South)
    XF_SENLOC_LON : constant := 3;
    -- Sensor ECR position X (km)
    XF_SENLOC_POSX : constant := 4;
    -- Sensor ECR position Y (km)
    XF_SENLOC_POSY : constant := 5;
    -- Sensor ECR position Z (km)
    XF_SENLOC_POSZ : constant := 6;
    -- Sensor description
    XF_SENLOC_DESC : constant := 7;
    -- Orbiting sensor's number (satNum)
    XF_SENLOC_ORBSATNUM : constant := 8;
    -- Sensor classification
    XF_SENLOC_SECCLASS : constant := 9;
    
    -- Sensor view type
    XF_SENLIM_VIEWTYPE : constant := 11;
    -- Sensor observation type
    XF_SENLIM_OBSTYPE : constant := 12;
    -- Unit on range/range rate
    XF_SENLIM_UNIT : constant := 13;
    -- Max observable range (km)
    XF_SENLIM_MAXRNG : constant := 14;
    -- Min observable range (km)
    XF_SENLIM_MINRNG : constant := 15;
    -- Output interval (min)
    XF_SENLIM_INTERVAL : constant := 16;
    -- Visual pass control flag
    XF_SENLIM_OPTVISFLG : constant := 17;
    -- Range limit control flag
    XF_SENLIM_RNGLIMFLG : constant := 18;
    -- Max number of points per pass
    XF_SENLIM_PTSPERPAS : constant := 19;
    -- Range rate/relative velocity limit (km/sec)
    XF_SENLIM_RRLIM : constant := 20;
    
    -- Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
    XF_SENLIM_ELLIM1 : constant := 31;
    -- Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
    XF_SENLIM_ELLIM2 : constant := 32;
    -- Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
    XF_SENLIM_ELLIM3 : constant := 33;
    -- Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
    XF_SENLIM_ELLIM4 : constant := 34;
    -- Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
    XF_SENLIM_AZLIM1 : constant := 35;
    -- Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
    XF_SENLIM_AZLIM2 : constant := 36;
    -- Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
    XF_SENLIM_AZLIM3 : constant := 37;
    -- Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
    XF_SENLIM_AZLIM4 : constant := 38;
    
    
    -- Orbiting sensor planetary restriction
    XF_SENLIM_PLNTRYRES : constant := 52;
    -- Orbiting sensor boresight vector 1
    XF_SENLIM_BOREVEC1 : constant := 53;
    -- Orbiting sensor boresight vector 2
    XF_SENLIM_BOREVEC2 : constant := 54;
    -- Allow orbiting sensor to view sat against earth background
    XF_SENLIM_KEARTH : constant := 55;
    -- Orbiting sensor earth limb exclusion distance (km)
    XF_SENLIM_ELIMB : constant := 56;
    -- Orbiting sensor solar exclusion angle (deg)
    XF_SENLIM_SOLEXCANG : constant := 57;
    -- Orbiting sensor lunar exclusion angle (deg)
    XF_SENLIM_LUNEXCANG : constant := 58;
    
    
    -- Orbiting sensor min illumination angle (deg)
    XF_SENLIM_MINIL : constant := 59;
    -- Ground site twilight offset angle (deg)
    XF_SENLIM_TWILIT : constant := 60;
    -- Is special mobil sensor flag / column 9 in 1L card
    XF_SENLIM_SMSEN : constant := 61;
    -- Number of additional segments added to sensor limits
    XF_SENLIM_NUMSEGS : constant := 62;
    -- Space fence FOR's Az/El table file name
    XF_SENLIM_FILE : constant := 63;
    -- Number of rows in space fence FOR's Az/El table
    XF_SENLIM_AZELROWS : constant := 64;
    
    --*******************************************************************************
    
    -- Indexes of sensor location data
    -- Sensor nubmer
    XA_SENLOC_NUM : constant := 0;
    -- Sensor location - astronomical latitude (deg)  (+=North/-=South)
    XA_SENLOC_LAT : constant := 1;
    -- Sensor location - astronomical longitude (deg) (+=West/-=East)
    XA_SENLOC_LON : constant := 2;
    -- Sensor ECR position X (km)
    XA_SENLOC_POSX : constant := 3;
    -- Sensor ECR position Y (km)
    XA_SENLOC_POSY : constant := 4;
    -- Sensor ECR position Z (km)
    XA_SENLOC_POSZ : constant := 5;
    
    XA_SENLOC_SIZE : constant := 16;
    
    --*******************************************************************************
    
    -- Indexes of Sensor's sigmas & biases data fields
    -- azimuth sigma (deg)
    XAF_SENBS_AZSIGMA : constant := 0;
    -- elevation sigma (deg)
    XAF_SENBS_ELSIGMA : constant := 1;
    -- range sigma (km)
    XAF_SENBS_RGSIGMA : constant := 2;
    -- range-rate sigma (km/sec)
    XAF_SENBS_RRSIGMA : constant := 3;
    -- az rate sigma (deg/sec)
    XAF_SENBS_ARSIGMA : constant := 4;
    -- el rate sigma (deg/sec)
    XAF_SENBS_ERSIGMA : constant := 5;
    
    -- azimuth bias (deg)
    XAF_SENBS_AZBIAS : constant := 8;
    -- elevation bias (deg)
    XAF_SENBS_ELBIAS : constant := 9;
    -- range bias (km)
    XAF_SENBS_RGBIAS : constant := 10;
    -- range-rate bias (km/sec)
    XAF_SENBS_RRBIAS : constant := 11;
    -- time bias (sec)
    XAF_SENBS_TIMEBIAS : constant := 15;
    
    XAF_SENBS_SIZE : constant := 16;
    
    -- Named constants for different obs types
    -- obs contains range rate only data
    OT_RRATE : constant := 0;
    -- obs contains azimuth, elevation data
    OT_AZEL : constant := 1;
    -- obs contains azimuth, elevation, and range data
    OT_AZEL_RNG : constant := 2;
    -- obs contains azimuth, elevation, range, and range rate data
    OT_AZEL_RNGRRATE : constant := 3;
    -- obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
    OT_AZEL_ALL : constant := 4;
    -- obs contains right ascention and declination data
    OT_RADEC : constant := 5;
    -- obs contains range only data
    OT_RNGONLY : constant := 6;
    -- obs contains azimuth, elevation, and sensor location data
    OT_AZEL_SENPOS : constant := 8;
    -- obs contains right ascension, declination, and sensor location data
    OT_RADEC_SENPOS : constant := 9;
    -- obs contains ECI position and velocity data
    OT_VEL : constant := 10;
    -- obs contains ECI position data
    OT_POS : constant := 11;
    -- obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
    OT_SLR : constant := 16;
    -- obs contains azimuth, elevation, sensor location, and range data
    OT_M : constant := 18;
    -- obs contains right ascension, declination, sensor location, and range data
    OT_O : constant := 19;
    -- obs contains TDOA/FDOA data
    OT_RF : constant := 13;
    -- obs contains range rate only data - for use in obs selection criteria
    OT_RRATE_SELOB : constant := 999;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Sensor DLL for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. 
    -- The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
    -- in the DLL Prerequisite section, before using this DLL.
    function SensorInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorInit";

    -- Returns information about the current version of Sensor DLL. 
    -- The information is placed in the string parameter passed in.
    -- The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
    procedure SensorGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SensorGetInfo";
        --infoStr            : String    (1..128);

    -- Loads sensor data, contained in a text file, into the set of loaded sensors
    -- The users can use this function repeatedly to load sensor data from different input files. 
    -- However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
    -- 
    -- Sensor data can be included directly in the main input file or they can be read from a separate file 
    -- identified with "SENFIL=[pathname\filename]".
    -- 
    -- This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
    -- It won't read anything else.
    function SensorLoadFile
        (senFile           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorLoadFile";
        --senFile            : String    (1..512);

    -- Loads a single sensor-typed card
    function SensorLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorLoadCard";
        --card               : String    (1..512);

    -- Saves the currently loaded sensor data to a file
    -- If the users call this routine immediately after the SensorLoadFile(). 
    -- The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
    -- 
    -- The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
    function SensorSaveFile
        (sensorFile        : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSaveFile";
        --sensorFile         : String    (1..512);

    -- Removes a sensor, represented by the senKey, from the set of currently loaded sensors
    -- If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
    function SensorRemove
        (senKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorRemove";

    -- Removes all currently loaded sensors from memory
    -- The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
    function SensorRemoveAll return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorRemoveAll";

    -- Returns the number of sensors currently loaded
    -- See SensorGetLoaded for example.
    -- This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
    function SensorGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetCount";

    -- Retrieves all of the currently loaded senKeys. 
    -- These senKeys can be used to access the internal data for the sensors.
    -- It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
    -- The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
    -- 
    -- If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
    procedure SensorGetLoaded
        (order             :         Integer;
        senKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "SensorGetLoaded";

    -- Retrieves sensor location data for a sensor
    function SensorGetLocAll
        (senKey            :         Long_Long_Integer;
        astroLat           : out     Long_Float;
        astroLon           : out     Long_Float;
        senPos             : out     Double1D;
        senDesc            : out     String;
        orbSatNum          : out     Integer;
        secClass           : out     Character) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetLocAll";
        --senPos             : Double1D  (1..3);
        --senDesc            : String    (1..24);

    -- Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
    -- This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
    -- 
    -- If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
    -- 
    -- If it is an orbiting sensor, the users need to provide the associated satellite number.
    function SensorSetLocAll
        (senKey            :         Long_Long_Integer;
        astroLat           :         Long_Float;
        astroLon           :         Long_Float;
        senPos             : in      Double1D;
        senDesc            : in      String;
        orbSatNum          :         Integer;
        secClass           :         Character) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetLocAll";
        --senPos             : Double1D  (1..3);
        --senDesc            : String    (1..24);

    -- Retrieves the value of an individual field of sensor location data
    -- 
    -- Make sure to use the appropriate field index for ground sensors and orbiting sensors.
    -- 
    -- The table below shows the values for the xf_SenLoc parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 1Sensor number
    -- 2Sensor astronomical latitude (deg)
    -- 3Sensor astronomical longitude (deg)
    -- 4Sensor position X (km)
    -- 5Sensor position Y (km)
    -- 6Sensor position Z (km)
    -- 7Sensor description
    -- 8Orbiting sensor's number (satNum)   
    -- 9Sensor classification    
    --    
    function SensorGetLocField
        (senKey            :         Long_Long_Integer;
        xf_SenLoc          :         Integer;
        strValue           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetLocField";
        --strValue           : String    (1..512);

    -- Updates the value of an individual field of sensor location data
    -- See SensorGetLocField for a description of the xf_SenLoc values.
    -- The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
    -- 
    -- Make sure to use the appropriate field index for ground sensors and orbiting sensors.
    function SensorSetLocField
        (senKey            :         Long_Long_Integer;
        xf_SenLoc          :         Integer;
        strValue           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetLocField";
        --strValue           : String    (1..512);

    -- Retrieves sensor limits data
    -- This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
    function SensorGet1L
        (senKey            :         Long_Long_Integer;
        viewType           : out     Character;
        obsType            : out     Character;
        rngUnits           : out     Integer;
        maxRngLim          : out     Long_Float;
        boresight1         : out     Character;
        elLim1             : out     Long_Float;
        elLim2             : out     Long_Float;
        azLim1             : out     Long_Float;
        azLim2             : out     Long_Float;
        interval           : out     Long_Float;
        visFlg             : out     Integer;
        rngLimFlg          : out     Integer;
        maxPPP             : out     Integer;
        minRngLim          : out     Long_Float;
        plntryRes          : out     Integer;
        rrLim              : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGet1L";

    -- Adds/updates sensor limits data (non DMA) via individually provided field values
    -- This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
    -- 
    -- If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
    -- 
    -- If it is an orbiting sensor, the users need to provide the associated satellite number.
    function SensorSet1L
        (senKey            :         Long_Long_Integer;
        viewType           :         Character;
        obsType            :         Character;
        rngUnits           :         Integer;
        maxRngLim          :         Long_Float;
        boresight1         :         Character;
        elLim1             :         Long_Float;
        elLim2             :         Long_Float;
        azLim1             :         Long_Float;
        azLim2             :         Long_Float;
        interval           :         Long_Float;
        visFlg             :         Integer;
        rngLimFlg          :         Integer;
        maxPPP             :         Integer;
        minRngLim          :         Long_Float;
        plntryRes          :         Integer;
        rrLim              :         Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSet1L";

    -- Retrieves additional sensor limits data
    -- This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
    function SensorGet2L
        (senKey            :         Long_Long_Integer;
        boresight2         : out     Character;
        elLim3             : out     Long_Float;
        elLim4             : out     Long_Float;
        azLim3             : out     Long_Float;
        azLim4             : out     Long_Float;
        earthBckgrnd       : out     Integer;
        earthLimb          : out     Long_Float;
        solarXAngle        : out     Long_Float;
        lunarXAngle        : out     Long_Float;
        minIllum           : out     Long_Float;
        twilit             : out     Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGet2L";

    -- Adds/updates additional sensor limits data
    -- This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
    -- 
    -- If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
    function SensorSet2L
        (senKey            :         Long_Long_Integer;
        boresight2         :         Character;
        elLim3             :         Long_Float;
        elLim4             :         Long_Float;
        azLim3             :         Long_Float;
        azLim4             :         Long_Float;
        earthBckgrnd       :         Integer;
        earthLimb          :         Long_Float;
        solarXAngle        :         Long_Float;
        lunarXAngle        :         Long_Float;
        minIllum           :         Long_Float;
        twilit             :         Long_Float) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSet2L";

    -- Retrieves an individual field of sensor limits data
    -- 
    -- Make sure to use the appropriate field index for ground sensors and orbiting sensors.
    -- 
    -- The table below shows the values for the xf_SenLim parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 11 Sensor view type
    -- 12 Sensor observation type
    -- 13 Unit on range/range rate
    -- 14 Max observable range (km)
    -- 15 Min observable range (km)
    -- 16 Output interval (min)
    -- 17 Visual pass control flag
    -- 18 Range limit control flag 
    -- 19 Max number of points per pass
    -- 20 Range rate/relative velocity limit (km/sec)
    -- 31 Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)
    -- 32 
    -- 33 
    -- 34 
    -- 35 Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)
    -- 36 
    -- 37 
    -- 38 
    -- 52 Orbiting sensor planetary restriction
    -- 53 Orbiting sensor boresight vector 1
    -- 54 Orbiting sensor boresight vector 2
    -- 55 Allow orbiting sensor to view sat against earth background
    -- 56 Orbiting sensor earth limb exclusion distance (km)
    -- 57 Orbiting sensor solar exclusion angle (deg)   
    -- 58 Orbiting sensor lunar exclusion angle (deg)
    -- 59 Orbiting sensor min illumination angle (deg)
    -- 60 Ground site twilight offset angle (deg)    
    --    
    function SensorGetLimField
        (senKey            :         Long_Long_Integer;
        xf_SenLim          :         Integer;
        strValue           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetLimField";
        --strValue           : String    (1..512);

    -- Updates an individual field of sensor limits data
    -- See SensorGetLimField for a description of the xf_SenLim parameter.
    -- The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
    -- 
    -- Make sure to use the appropriate field index for ground sensors and orbiting sensors.
    function SensorSetLimField
        (senKey            :         Long_Long_Integer;
        xf_SenLim          :         Integer;
        strValue           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetLimField";
        --strValue           : String    (1..512);

    -- Retrieves sensor sigma/bias data
    function SensorGetBS
        (senKey            :         Long_Long_Integer;
        xaf_senbs          : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetBS";
        --xaf_senbs          : Double1D  (1..16);

    -- Adds/updates sensor sigma/bias data (non DMA)
    function SensorSetBS
        (senKey            :         Long_Long_Integer;
        xaf_senbs          : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetBS";
        --xaf_senbs          : Double1D  (1..16);

    -- Retrieves an individual field of sensor sigma/bias data
    function SensorGetBSField
        (senKey            :         Long_Long_Integer;
        xaf_senbs          :         Integer;
        strValue           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetBSField";
        --strValue           : String    (1..512);

    -- Updates an individual field of sensor sigma/bias data
    function SensorSetBSField
        (senKey            :         Long_Long_Integer;
        xaf_senbs          :         Integer;
        strValue           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetBSField";
        --strValue           : String    (1..512);

    -- Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
    function SensorGetLines
        (senKey            :         Long_Long_Integer;
        sCard              : out     String;
        l1Card             : out     String;
        l2Card             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetLines";
        --sCard              : String    (1..512);
        --l1Card             : String    (1..512);
        --l2Card             : String    (1..512);

    -- Gets sensor's orbiting satellite's satKey
    function SensorGetOrbSatKey
        (senKey            :         Long_Long_Integer;
        orbSatKey          : out     Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetOrbSatKey";

    -- Sets sensor's orbiting satellite's satKey
    function SensorSetOrbSatKey
        (senKey            :         Long_Long_Integer;
        orbSatKey          :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorSetOrbSatKey";

    -- Loads Space Fence's detailed azimuth-elevation definition table
    function SensorLoadAzElTable
        (senKey            :         Long_Long_Integer;
        azElTableFile      : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorLoadAzElTable";
        --azElTableFile      : String    (1..512);

    -- Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
    function SensorAddSegment
        (senKey            :         Long_Long_Integer;
        segType            :         Integer;
        xa_seg             : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorAddSegment";
        --xa_seg             : Double1D  (1..16);

    -- Retrieves sensor segment data of the specified segment (segNum)
    function SensorGetSegment
        (senKey            :         Long_Long_Integer;
        segNum             :         Integer;
        segType            : out     Integer;
        xa_seg             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetSegment";
        --xa_seg             : Double1D  (1..16);

    -- Sets sensor key mode
    -- This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
    -- and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
    function SetSenKeyMode
        (sen_keyMode       :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetSenKeyMode";

    -- Gets current sensor key mode
    function GetSenKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetSenKeyMode";

    -- Returs the sensor number associated with the input senKey
    function SenNumOf
        (senKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SenNumOf";

    -- Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
    -- A negative value will be returned if there is an error.
    function SensorGetSenKey
        (senNum            :         Integer) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorGetSenKey";

    -- This function is similar to SensorGetSenKey but designed to be used in Matlab. 
    -- Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
    -- A negative value will be returned in senKey if there is an error.
    procedure SensorGetSenKeyML
        (senNum            :         Integer;
        senKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "SensorGetSenKeyML";

    -- Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
    function SensorAddFrArray
        (xa_sen            : in      Double1D;
        xs_sen             : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorAddFrArray";
        --xa_sen             : Double1D  (1..128);
        --xs_sen             : String    (1..512);

    -- Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
    function SensorDataToArray
        (senKey            :         Long_Long_Integer;
        xa_sen             : out     Double1D;
        xs_sen             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SensorDataToArray";
        --xa_sen             : Double1D  (1..128);
        --xs_sen             : String    (1..512);


end SensorDll;

-- ========================= End of auto generated code ==========================
