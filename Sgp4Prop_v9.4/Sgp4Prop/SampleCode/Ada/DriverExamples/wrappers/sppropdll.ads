-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package SpPropDll is
    
    -- VCM additional options
    -- use VCM's own data
    VCMOPT_USEOWN : constant := 0;
    -- force VCM to use global solar flux and timing constants data
    VCMOPT_USEGLOBAL : constant := 1;
    
    -- Run Modes
    -- Perfromance priority. This mode allows the buffer of integration points to extend freely
    IDX_RUNMODE_PERF : constant := 0;
    -- Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
    IDX_RUNMODE_MEM : constant := 1;
    
    --*******************************************************************************
    
    -- Partials Saving Modes
    -- Save partials in the buffer
    IDX_PARTIALS_SAVE : constant := 1;
    -- Don't save partials in the buffer
    IDX_PARTIALS_DONT : constant := 0;
    
    -- Indexes of different covariance matrices
    -- UVW convariance matrix - TEME of DATE
    XF_COVMTX_UVW_DATE : constant := 1;
    -- Cartesian covariance matrix - TEME of DATE
    XF_COVMTX_XYZ_DATE : constant := 2;
    -- Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
    XF_COVMTX_EQNX_DATE : constant := 3;
    -- UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
    XF_COVMTX_UVW_J2K : constant := 11;
    -- Cartesian covariance matrix - MEME of J2K
    XF_COVMTX_XYZ_J2K : constant := 12;
    -- Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
    XF_COVMTX_EQNX_J2K : constant := 13;
    --*******************************************************************************
    
    -- Indexes of Lunar/Solar and Planets perturbation modes
    -- Lunar/Solar perturbation off
    LSPERT_NONE : constant := 0;
    -- Lunar/Solar perturbation on (using Analytic mode)
    LSPERT_ANALYTIC : constant := 1;
    -- Lunar/Solar perturbation using JPL ephemeris file
    LSPERT_JPL : constant := 2;
    -- Lunar/Solar + All planets perturbation using JPL ephemeris file
    LSPERT_ALL : constant := 3;
    -- Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
    LSPERT_BIG : constant := 4;
    -- Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
    LSPERT_MED : constant := 5;
    -- Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
    LSPERT_SMA : constant := 6;
    
    --*******************************************************************************
    
    -- State Transition Matrix Types
    -- UVW state transition matrix
    STMTYPE_UVW : constant := 1;
    -- Cartesian state transition matrix
    STMTYPE_XYZ : constant := 2;
    -- Equinoctial state transition matrix
    STMTYPE_EQNX : constant := 3;
    
    -- Different output coordinate systems options for pos/vel/acc
    -- Output coordinate systems in TEME of Date
    SPCOORD_ECI : constant := 1;
    -- Output coordinate systems in MEME of J2K
    SPCOORD_J2K : constant := 2;
    
    -- Different drag perturbation models
    -- Jacchia 64 model
    DRGMDL_JAC64 : constant := 1;
    -- Jacchia 70 model
    DRGMDL_JAC70 : constant := 2;
    -- Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
    DRGMDL_DCA1 : constant := 3;
    -- JBH09 model
    DRGMDL_JBH09 : constant := 40;
    -- JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
    DRGMDL_JBHDCA2 : constant := 41;
    
    -- Indexes of SP 4P card fields
    -- Geopotential model to use
    XF_4P_GEOIDX : constant := 1;
    -- Earth gravity pertubations flag
    XF_4P_BULGEFLG : constant := 2;
    -- Drag pertubations flag
    XF_4P_DRAGFLG : constant := 3;
    -- Radiation pressure pertubations flag
    XF_4P_RADFLG : constant := 4;
    -- Lunar/Solar pertubations flag
    XF_4P_LUNSOL : constant := 5;
    -- F10 value
    XF_4P_F10 : constant := 6;
    -- F10 average value
    XF_4P_F10AVG : constant := 7;
    -- Ap value
    XF_4P_AP : constant := 8;
    -- Geopotential truncation order/degree/zonals
    XF_4P_TRUNC : constant := 9;
    -- Corrector step convergence criterion; exponent of 1/10; default = 10
    XF_4P_CONVERG : constant := 10;
    -- Outgassing pertubations flag
    XF_4P_OGFLG : constant := 11;
    -- Solid earth and ocean tide pertubations flag
    XF_4P_TIDESFLG : constant := 12;
    -- Input vector coordinate system
    XF_4P_INCOORD : constant := 13;
    -- Nutation terms
    XF_4P_NTERMS : constant := 14;
    -- Recompute pertubations at each corrector step
    XF_4P_REEVAL : constant := 15;
    -- Variable of intergration control
    XF_4P_INTEGCTRL : constant := 16;
    -- Variable step size control
    XF_4P_VARSTEP : constant := 17;
    -- Initial step size
    XF_4P_INITSTEP : constant := 18;
    
    -- DCA file name
    XF_4P_DCAFILE : constant := 21;
    -- Solar flux file name
    XF_4P_FLUXFILE : constant := 22;
    -- Geopotential file name
    XF_4P_GEOFILE : constant := 23;
    -- JPL file name
    XF_4P_JPLFILE : constant := 24;
    -- JPL start time
    XF_4P_JPLSTART : constant := 25;
    -- JPL stop time
    XF_4P_JPLSTOP : constant := 26;
    
    --XF_4P_PLANETS  = 27, &    -- Sets perturbations from all planets to on
    --XF_4P_MERCURY  = 28, &    -- Sets perturbation from Mercury to on
    --XF_4P_VENUS    = 29, &    -- Sets perturbation from Venus to on
    --XF_4P_MARS     = 30, &    -- Sets perturbation from Mars to on
    --XF_4P_JUPITER  = 31, &    -- Sets perturbation from Jupiter to on
    --XF_4P_SATURN   = 32, &    -- Sets perturbation from Saturn to on
    --XF_4P_URANUS   = 33, &    -- Sets perturbation from Uranus to on
    --XF_4P_NEPTUNE  = 34, &    -- Sets perturbation from Neptune to on
    --XF_4P_PLUTO    = 35;      -- Sets perturbation from Pluto to on
    
    --*******************************************************************************
    
    -- Indexes of SP application control (preference) parameters
    -- Geopotential directory path
    XF_SPAPP_GEODIR : constant := 1;
    -- Buffer size
    XF_SPAPP_BUFSIZE : constant := 2;
    -- Run mode
    XF_SPAPP_RUNMODE : constant := 3;
    -- Save partials data
    XF_SPAPP_SAVEPART : constant := 4;
    -- Specter compatibility mode
    XF_SPAPP_SPECTR : constant := 5;
    -- Consider parameter
    XF_SPAPP_CONSIDER : constant := 6;
    -- Decay altitude
    XF_SPAPP_DECAYALT : constant := 7;
    -- Output coordinate system
    XF_SPAPP_OUTCOORD : constant := 8;
    -- VCM additional options
    XF_SPAPP_VCMOPT : constant := 9;
    
    --*******************************************************************************
    
    -- Indexes of data fields of an initialized SP satellite
    -- Satellite number I5
    XF_SPSAT_SATNUM : constant := 1;
    -- Satellite's epoch time in days since 1950, UTC
    XF_SPSAT_DS50UTC : constant := 2;
    -- Satellite's epoch time in days since 1950, TAI
    XF_SPSAT_DS50TAI : constant := 3;
    -- Mu value
    XF_SPSAT_MU : constant := 4;
    -- Covariance Matrix flag
    XF_SPSAT_HASCOV : constant := 5;
    -- Integration mode
    XF_SPSAT_INTMODE : constant := 6;
    -- Nutation terms
    XF_SPSAT_NTERMS : constant := 7;
    -- Specter compatibility mode
    XF_SPSAT_SPECTR : constant := 8;
    
    --*******************************************************************************
    
    ---- Indexes of Planetary Control
    --   XAI_PLANET_MERCURY = 1, & -- 0 = off, 1 = on
    --   XAI_PLANET_VENUS   = 2, & -- 0 = off, 1 = on
    --   XAI_PLANET_EARTH   = 3, & -- Not used
    --   XAI_PLANET_MARS    = 4, & -- 0 = off, 1 = on
    --   XAI_PLANET_JUPITER = 5, & -- 0 = off, 1 = on
    --   XAI_PLANET_SATRUN  = 6, & -- 0 = off, 1 = on
    --   XAI_PLANET_URANUS  = 7, & -- 0 = off, 1 = on
    --   XAI_PLANET_NEPTUNE = 8, & -- 0 = off, 1 = on
    --   XAI_PLANET_PLUTO   = 9, & -- 0 = off, 1 = on
    --   XAI_PLANET_SIZE    = 9;   -- Size of array
    --
    ----*******************************************************************************
    
    -- Different time types for passing to SpPropAll
    -- propagation time is in minutes since epoch
    SP_TIMETYPE_MSE : constant := 0;
    -- propagation time is in days since 1950, UTC
    SP_TIMETYPE_DS50UTC : constant := 1;
    
    
    -- Sp propagated data
    -- Propagation time in days since 1950, UTC
    XA_SPOUT_UTC : constant := 0;
    -- Propagation time in minutes since the satellite's epoch time
    XA_SPOUT_MSE : constant := 1;
    -- Propagation time in days since 1950, UT1
    XA_SPOUT_UT1 : constant := 2;
    -- Propagation time in days since 1950, TAI
    XA_SPOUT_TAI : constant := 3;
    -- Propagation time in days since 1950, ET
    XA_SPOUT_ET : constant := 4;
    -- Revolution number
    XA_SPOUT_REVNUM : constant := 5;
    -- Number of nutation terms
    XA_SPOUT_NTERMS : constant := 6;
    -- Spectr compatible mode (0=not compatible, 1=compatible)
    XA_SPOUT_ISSPECTR : constant := 7;
    -- Has input covariance matrix (0=no, 1=yes)
    XA_SPOUT_HASCOVMTX : constant := 8;
    
    -- J2K position X (km)
    XA_SPOUT_J2KPOSX : constant := 10;
    -- J2K position Y (km)
    XA_SPOUT_J2KPOSY : constant := 11;
    -- J2K position Z (km)
    XA_SPOUT_J2KPOSZ : constant := 12;
    -- J2K velocity X (km/s)
    XA_SPOUT_J2KVELX : constant := 13;
    -- J2K velocity Y (km/s)
    XA_SPOUT_J2KVELY : constant := 14;
    -- J2K velocity Z (km/s)
    XA_SPOUT_J2KVELZ : constant := 15;
    -- ECI position X (km)
    XA_SPOUT_ECIPOSX : constant := 16;
    -- ECI position Y (km)
    XA_SPOUT_ECIPOSY : constant := 17;
    -- ECI position Z (km)
    XA_SPOUT_ECIPOSZ : constant := 18;
    -- ECI velocity X (km/s)
    XA_SPOUT_ECIVELX : constant := 19;
    -- ECI velocity Y (km/s)
    XA_SPOUT_ECIVELY : constant := 20;
    -- ECI velocity Z (km/s)
    XA_SPOUT_ECIVELZ : constant := 21;
    -- Geodetic latitude (deg)
    XA_SPOUT_LAT : constant := 22;
    -- Geodetic longitude (deg)
    XA_SPOUT_LON : constant := 23;
    -- Height above geoid (km)
    XA_SPOUT_HEIGHT : constant := 24;
    
    -- Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
    XA_SPOUT_COVTYPE : constant := 30;
    -- 6 by 6 covariance matrix (31-66)
    XA_SPOUT_COVMTX : constant := 31;
    
    -- J2K acceleration X (km/s^2)
    XA_SPOUT_J2KACCX : constant := 70;
    -- J2K acceleration Y (km/s^2)
    XA_SPOUT_J2KACCY : constant := 71;
    -- J2K acceleration Z (km/s^2)
    XA_SPOUT_J2KACCZ : constant := 72;
    -- ECI acceleration X (km/s^2)
    XA_SPOUT_ECIACCX : constant := 73;
    -- ECI acceleration Y (km/s^2)
    XA_SPOUT_ECIACCY : constant := 74;
    -- ECI acceleration Z (km/s^2)
    XA_SPOUT_ECIACCZ : constant := 75;
    
    XA_SPOUT_SIZE : constant := 128;
    
    -- Sp extended propagation data
    -- Propagation time in days since 1950, UTC
    XA_SPEXT_UTC : constant := 0;
    -- Propagation time in minutes since the satellite's epoch time
    XA_SPEXT_MSE : constant := 1;
    -- Propagation time in days since 1950, UT1
    XA_SPEXT_UT1 : constant := 2;
    -- Propagation time in days since 1950, TAI
    XA_SPEXT_TAI : constant := 3;
    -- Propagation time in days since 1950, ET
    XA_SPEXT_ET : constant := 4;
    -- Revolution number
    XA_SPEXT_REVNUM : constant := 5;
    -- Number of nutation terms
    XA_SPEXT_NTERMS : constant := 6;
    -- Spectr compatible mode (0=not compatible, 1=compatible)
    XA_SPEXT_ISSPECTR : constant := 7;
    -- Has input covariance matrix (0=no, 1=yes)
    XA_SPEXT_HASCOVMTX : constant := 8;
    
    -- Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
    XA_SPEXT_COORD : constant := 10;
    -- position X (km)
    XA_SPEXT_POSX : constant := 11;
    -- position Y (km)
    XA_SPEXT_POSY : constant := 12;
    -- position Z (km)
    XA_SPEXT_POSZ : constant := 13;
    -- velocity X (km/s)
    XA_SPEXT_VELX : constant := 14;
    -- velocity Y (km/s)
    XA_SPEXT_VELY : constant := 15;
    -- velocity Z (km/s)
    XA_SPEXT_VELZ : constant := 16;
    -- acceleration X (km/s^2)
    XA_SPEXT_ACCX : constant := 17;
    -- acceleration Y (km/s^2)
    XA_SPEXT_ACCY : constant := 18;
    -- acceleration Z (km/s^2)
    XA_SPEXT_ACCZ : constant := 19;
    
    -- Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
    XA_SPEXT_COVTYPE : constant := 30;
    -- 6 by 6 covariance matrix (31-66/1D format - 36 elements)
    XA_SPEXT_COVMTX : constant := 31;
    
    -- State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
    XA_SPEXT_STMTYPE : constant := 70;
    -- 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
    XA_SPEXT_STM : constant := 71;
    
    XA_SPEXT_SIZE : constant := 128;
    
    
    -- Different options for generating ephemerides from SP
    -- ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
    SP_EPHEM_ECI : constant := 1;
    -- MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
    SP_EPHEM_J2K : constant := 2;
    
    
    -- Different time types returned by the SP propagator
    -- Time in minutes since the satellite's epoch time
    XA_TIMETYPES_MSE : constant := 0;
    -- Time in days since 1950, UTC
    XA_TIMETYPES_UTC : constant := 1;
    -- Time in days since 1950, UT1
    XA_TIMETYPES_UT1 : constant := 2;
    -- Time in days since 1950, TAI
    XA_TIMETYPES_TAI : constant := 3;
    -- Time in days since 1950, ET
    XA_TIMETYPES_ET : constant := 4;
    
    XA_TIMETYPES_SIZE : constant := 5;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes SpProp DLL for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
    function SpInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpInit";

    -- Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
    -- The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
    procedure SpGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SpGetInfo";
        --infoStr            : String    (1..128);

    -- Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
    function SpLoadFile
        (spInputFile       : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpLoadFile";
        --spInputFile        : String    (1..512);

    -- Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
    function SpLoadFileAll
        (spInputFile       : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpLoadFileAll";
        --spInputFile        : String    (1..512);

    -- Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
    -- The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
    function SpSaveFile
        (spFile            : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpSaveFile";
        --spFile             : String    (1..512);

    -- Initializes an SP satellite from an SP TLE, SPVEC, or VCM
    -- Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
    -- 
    -- The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
    function SpInitSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpInitSat";

    -- Removes a satellite, represented by the satKey, from the set of currently loaded satellites
    -- Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
    -- If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
    function SpRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpRemoveSat";

    -- Removes all currently loaded satellites from memory
    -- Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
    -- The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
    function SpRemoveAllSats return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpRemoveAllSats";

    -- Returns the number of SP objects currently created. 
    function SpGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetCount";

    -- Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
    procedure SpReset
    with Import => True,
        Convention => C,
        External_Name => "SpReset";

    -- Retrieves the value of an SP application control parameter
    -- 
    -- The table below shows the values for the xf_SpApp parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 1 Geopotential directory path
    -- 2 Buffer size
    -- 3 Run mode
    -- 4 Save partials data
    -- 5 Specter compatibility mode
    -- 6 Consider parameter
    -- 7 Decay altitude
    -- 8 Output coordinate system
    -- 9 Additional VCM options
    -- 
    procedure SpGetApCtrl
        (xf_SpApp          :         Integer;
        valueStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SpGetApCtrl";
        --valueStr           : String    (1..512);

    -- Retrieves all SP application control parameters with a single function call
    procedure SpGetApCtrlAll
        (geoDir            : out     String;
        bufSize            : out     Integer;
        runMode            : out     Integer;
        savePartials       : out     Integer;
        isSpectr           : out     Integer;
        consider           : out     Long_Float;
        decayAlt           : out     Integer;
        outCoord           : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "SpGetApCtrlAll";
        --geoDir             : String    (1..512);

    -- Sets an SP application control parameter
    -- See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
    procedure SpSetApCtrl
        (xf_SpApp          :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "SpSetApCtrl";
        --valueStr           : String    (1..512);

    -- Sets all SP application control parameters with a single function call
    procedure SpSetApCtrlAll
        (geoDir            : in      String;
        bufSize            :         Integer;
        runMode            :         Integer;
        savePartials       :         Integer;
        isSpectr           :         Integer;
        consider           :         Long_Float;
        decayAlt           :         Integer;
        outCoord           :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "SpSetApCtrlAll";
        --geoDir             : String    (1..512);

    -- Retrieves the value of a numerical integration control parameter
    -- 
    -- The table below shows the values for xf_4P parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 1   Geopotential model to use
    -- 2   Earth gravity pertubations flag
    -- 3   Drag pertubations flag 
    -- 4   Radiation pressure pertubations flag
    -- 5   Lunar/Solar pertubations flag
    -- 6   F10 value
    -- 7   F10 average value
    -- 8   Ap value
    -- 9   Geopotential truncation order/degree/zonals
    -- 10  Corrector step convergence criterion; exponent of 1/10; default = 10
    -- 11  Outgassing pertubations flag
    -- 12  Solid earth ocean tide pertubations flag
    -- 13  Input vector coordinate system
    -- 14  Nutation terms
    -- 15  Recompute pertubations at each corrector step
    -- 16  Variable of intergration control
    -- 17  Variable step size control
    -- 18  Initial step size
    -- 21  DCA file name
    -- 22  Solar flux file name
    -- 23  Geopotential file name
    -- 24  JPL file name
    -- 25  JPL start time
    -- 26  JPL stop time
    -- 
    procedure SpGet4P
        (xf_4P             :         Integer;
        valueStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SpGet4P";
        --valueStr           : String    (1..512);

    -- Sets the value of a numerical integration control parameter
    -- See SpGet4P for a list of the values for the xf_4P parameter.
    -- For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
    -- If the user needs to load these files instantly, please call the SpLoadFile() instead
    procedure SpSet4P
        (xf_4P             :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "SpSet4P";
        --valueStr           : String    (1..512);

    -- Retrieves prediction control parameters
    procedure SpGetPredCtrl
        (startFrEpoch      : out     Integer;
        stopFrEpoch        : out     Integer;
        startTime          : out     Long_Float;
        stopTime           : out     Long_Float;
        interval           : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "SpGetPredCtrl";

    -- Sets prediction control parameters
    procedure SpSetPredCtrl
        (startFrEpoch      :         Integer;
        stopFrEpoch        :         Integer;
        startTime          :         Long_Float;
        stopTime           :         Long_Float;
        interval           :         Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "SpSetPredCtrl";

    -- Retrieves the value of a field of an SP satellite
    -- 
    -- The table below shows the values for the xf_SpSat parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 1  Satellite number I5
    -- 2  Satellite's epoch time in days since 1950, UTC 
    -- 3  Satellite's epoch time in days since 1950, TAI
    -- 4  Mu value 
    -- 5  Covariance Matrix flag
    -- 6  Integration mode
    -- 7  Nutation terms
    -- 8  Specter compatibility mode
    -- 
    function SpGetSatData
        (satKey            :         Long_Long_Integer;
        xf_SpSat           :         Integer;
        valueStr           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetSatData";
        --valueStr           : String    (1..512);

    -- Retrieves all fields of an SP satellite with a single function call
    function SpGetSatDataAll
        (satKey            :         Long_Long_Integer;
        satNum             : out     Integer;
        epochDs50UTC       : out     Long_Float;
        epochDs50TAI       : out     Long_Float;
        mu                 : out     Long_Float;
        hasCovMtx          : out     Integer;
        integMode          : out     Integer;
        nTerms             : out     Integer;
        isSpectr           : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetSatDataAll";

    -- Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
    -- satellite's epoch time
    function SpPropMse
        (satKey            :         Long_Long_Integer;
        mse                :         Long_Float;
        xa_timeTypes       : out     Double1D;
        revNum             : out     Integer;
        posJ2K             : out     Double1D;
        velJ2K             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropMse";
        --xa_timeTypes       : Double1D  (1..5);
        --posJ2K             : Double1D  (1..3);
        --velJ2K             : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    function SpPropDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        xa_timeTypes       : out     Double1D;
        revNum             : out     Integer;
        posJ2K             : out     Double1D;
        velJ2K             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropDs50UTC";
        --xa_timeTypes       : Double1D  (1..5);
        --posJ2K             : Double1D  (1..3);
        --velJ2K             : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- It only returns the latitude, longitude, and height at that time in coordinate system of Date
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- 
    -- This function is built especially for application that plots ground trace.
    function SpPropDs50UtcLLH
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        llh                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropDs50UtcLLH";
        --llh                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- It only returns the satellite's ECI position in TEME of DATE
    -- It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
    -- 
    -- This function is built especially for application that plots satellites' positions in 3D.
    function SpPropDs50UtcPos
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        pos                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropDs50UtcPos";
        --pos                : Double1D  (1..3);

    -- Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
    -- 
    -- All propagation data is returned by this function.
    function SpPropAll
        (satKey            :         Long_Long_Integer;
        timeType           :         Integer;
        timeIn             :         Long_Float;
        covType            :         Integer;
        xa_spOut           : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropAll";
        --xa_spOut           : Double1D  (1..128);

    -- Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
    -- It only returns the position and velocity in TEME of Date
    function SpGetStateDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        posDate            : out     Double1D;
        velDate            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetStateDs50UTC";
        --posDate            : Double1D  (1..3);
        --velDate            : Double1D  (1..3);

    -- Reepochs the state of an existing SP object associated with the satKey. 
    -- Proper initialization is handled internally so no need to call SpSatInit() afterward 
    function SpSetStateDs50UTC
        (satKey            :         Long_Long_Integer;
        ds50UTC            :         Long_Float;
        posDate            : in      Double1D;
        velDate            : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpSetStateDs50UTC";
        --posDate            : Double1D  (1..3);
        --velDate            : Double1D  (1..3);

    -- Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
    -- Then propagates the updated SP object to the requested time propTimeDs50UTC. 
    -- Resulting propagated data will be stored in propDataArr.
    function SpSetAndProp
        (satKey            :         Long_Long_Integer;
        setDataArr         : in      Double1D;
        propTimeDs50UTC    :         Long_Float;
        propDataArr        : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpSetAndProp";
        --setDataArr         : Double1D  (1..128);
        --propDataArr        : Double1D  (1..128);

    -- This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
    -- Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
    function SpGetPropOut
        (satKey            :         Long_Long_Integer;
        index              :         Integer;
        destArr            : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetPropOut";

    -- Returns the covariance matrix of a satellite
    -- Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
    function SpGetCovMtx
        (satKey            :         Long_Long_Integer;
        covType            :         Integer;
        covMtx             : out     Double2D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetCovMtx";
        --covMtx             : Double2D  (1..6,1..6);

    -- Computes the covariance sigma from the input covariance matrix
    procedure SpCompCovSigma
        (covMtx            : in      Double2D;
        covSigma           : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "SpCompCovSigma";
        --covMtx             : Double2D  (1..6,1..6);
        --covSigma           : Double1D  (1..6);

    -- Sets all numerical integration control parameters with a single function call
    procedure SpSet4pAll
        (geoIdx            :         Integer;
        bulgePert          :         Integer;
        dragPert           :         Integer;
        radPresPert        :         Integer;
        lunSolPert         :         Integer;
        f10                :         Integer;
        f10Avg             :         Integer;
        ap                 :         Integer;
        trunc              :         Integer;
        incr               :         Integer;
        ogPert             :         Integer;
        tidePert           :         Integer;
        inCoord            :         Integer;
        nTerms             :         Integer;
        reEval             :         Integer;
        integStepMode      :         Integer;
        stepSizeMethod     :         Integer;
        initStepSize       :         Long_Float;
        dcaFile            : in      String;
        fluxFile           : in      String;
        geoFile            : in      String;
        jplFile            : in      String;
        jplStart           : in      String;
        jplStop            : in      String)
    with Import => True,
        Convention => C,
        External_Name => "SpSet4pAll";
        --dcaFile            : String    (1..512);
        --fluxFile           : String    (1..512);
        --geoFile            : String    (1..512);
        --jplFile            : String    (1..512);
        --jplStart           : String    (1..512);
        --jplStop            : String    (1..512);

    -- Retrieves all numerical integration control parameters with a single function call
    procedure SpGet4pAll
        (geoIdx            : out     Integer;
        bulgePert          : out     Integer;
        dragPert           : out     Integer;
        radPresPert        : out     Integer;
        lunSolPert         : out     Integer;
        f10                : out     Integer;
        f10Avg             : out     Integer;
        ap                 : out     Integer;
        trunc              : out     Integer;
        incr               : out     Integer;
        ogPert             : out     Integer;
        tidePert           : out     Integer;
        inCoord            : out     Integer;
        nTerms             : out     Integer;
        reEval             : out     Integer;
        integStepMode      : out     Integer;
        stepSizeMethod     : out     Integer;
        initStepSize       : out     Long_Float;
        dcaFile            : out     String;
        fluxFile           : out     String;
        geoFile            : out     String;
        jplFile            : out     String;
        jplStart           : out     String;
        jplStop            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SpGet4pAll";
        --dcaFile            : String    (1..512);
        --fluxFile           : String    (1..512);
        --geoFile            : String    (1..512);
        --jplFile            : String    (1..512);
        --jplStart           : String    (1..512);
        --jplStop            : String    (1..512);

    -- Read the integration control settings from a 4P-Card
    function SpSet4PCard
        (card4P            : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpSet4PCard";
        --card4P             : String    (1..512);

    -- Builds and returns the integration control card (4P-Card) from the current settings
    procedure SpGet4PCard
        (card4P            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "SpGet4PCard";
        --card4P             : String    (1..512);

    -- Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
    function SpAddFluxRec
        (refDs50UTC        :         Long_Float;
        f10                :         Long_Float;
        f10Avg             :         Long_Float;
        ap                 : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpAddFluxRec";
        --ap                 : Double1D  (1..8);

    -- Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
    -- This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
    -- An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
    function SpGetEphemTimes
        (satKey            :         Long_Long_Integer;
        maxEphPts          :         Integer;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        minStepSize        :         Long_Float;
        actualEphPts       : out     Integer;
        ds50UTCArr         : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGetEphemTimes";

    -- Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
    -- Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
    -- that many points (arrSize) and the errCode is set to IDX_ERR_WARN
    function SpGenEphems
        (satKey            :         Long_Long_Integer;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSize           :         Long_Float;
        sp_ephem           :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGenEphems";

    -- This function is similar to SpGenEphems but also returns covariance matrix data
    -- Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
    function SpGenEphemsCov
        (satKey            :         Long_Long_Integer;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSize           :         Long_Float;
        sp_ephem           :         Integer;
        covType            :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGenEphemsCov";

    -- Generates ephemerides for the input vcm (in string format) for the specified time span and step size
    -- Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
    -- that many points (arrSize) and the errCode is set to IDX_ERR_WARN
    function SpGenEphemsVcm_OS
        (vcmString         : in      String;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSize           :         Long_Float;
        sp_ephem           :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGenEphemsVcm_OS";
        --vcmString          : String    (1..4000);

    -- This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
    function SpGenEphemsVcmCov_OS
        (vcmString         : in      String;
        startDs50UTC       :         Long_Float;
        stopDs50UTC        :         Long_Float;
        stepSize           :         Long_Float;
        sp_ephem           :         Integer;
        covType            :         Integer;
        arrSize            :         Integer;
        ephemArr           : out     Double2D_Ptr;
        genEphemPts        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpGenEphemsVcmCov_OS";
        --vcmString          : String    (1..4000);

    -- Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
    function SpPropAllSats
        (satKeys           : in      Long1D_Ptr;
        numOfSats          :         Integer;
        ds50UTC            :         Long_Float;
        ephemArr           : out     Double2D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropAllSats";

    -- Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
    -- 
    -- All propagation data is returned by this function.
    function SpPropAllExt
        (satKey            :         Long_Long_Integer;
        timeType           :         Integer;
        timeIn             :         Long_Float;
        spCoord            :         Integer;
        xf_CovMtx          :         Integer;
        stmType            :         Integer;
        xa_spExt           : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpPropAllExt";
        --xa_spExt           : Double1D  (1..128);


end SpPropDll;

-- ========================= End of auto generated code ==========================
