-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package FovDll is
    
    -- Fov run parameters
    -- Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
    XA_FOVRUN_MAXPASSES : constant := 0;
    -- FOV start time in days since 1950, UTC
    XA_FOVRUN_START : constant := 1;
    -- FOV stop time in days since 1950, UTC
    XA_FOVRUN_STOP : constant := 2;
    -- Cone half angle (deg) (0=auto) (0-45)
    XA_FOVRUN_HALFCONE : constant := 3;
    -- Search interval (min)
    XA_FOVRUN_INTERVAL : constant := 4;
    
    XA_FOVRUN_SIZE : constant := 8;
    
    -- FOV source types
    -- Source is sensor
    FOV_SRCTYPE_SEN : constant := 1;
    -- Source is lat lon height
    FOV_SRCTYPE_LLH : constant := 2;
    -- Source is EFG
    FOV_SRCTYPE_EFG : constant := 3;
    -- Source is XYZ
    FOV_SRCTYPE_XYZ : constant := 4;
    
    -- FOV source types
    -- Target is elset
    FOV_TGTTYPE_ELSET : constant := 1;
    -- Target is constant Az/El
    FOV_TGTTYPE_AZEL : constant := 2;
    -- Target is RA/Dec (STAR)
    FOV_TGTTYPE_RADEC : constant := 3;
    
    -- FOV source specification
    -- 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
    XA_FOVSRC_TYPE : constant := 0;
    -- Sensor# | Source ID   | Source ID  | Source ID
    XA_FOVSRC_ID : constant := 1;
    -- | N lat (deg) | EFG: E (m) | X (m)
    XA_FOVSRC_ELEM1 : constant := 2;
    -- | E lon (deg) | EFG: F (m) | Y (m)
    XA_FOVSRC_ELEM2 : constant := 3;
    -- | height (m)  | EFG: G (m) | Z (m)
    XA_FOVSRC_ELEM3 : constant := 4;
    -- |             |            | time of position in Ds50UTC
    XA_FOVSRC_ELEM4 : constant := 5;
    
    XA_FOVSRC_SIZE : constant := 8;
    
    
    -- FOV target specification
    -- 1=ELSET | 2=AZEL    | 3=RADEC
    XA_FOVTGT_TYPE : constant := 0;
    -- Elset#  | Target ID | Target ID
    XA_FOVTGT_ID : constant := 1;
    -- | az (deg)  | RA (deg)
    XA_FOVTGT_ELEM1 : constant := 2;
    -- | el (deg)  | Dec (deg)
    XA_FOVTGT_ELEM2 : constant := 3;
    -- |           | equinox indicator
    XA_FOVTGT_ELEM3 : constant := 4;
    
    XA_FOVTGT_SIZE : constant := 8;
    
    -- entry/minimum/exit time data
    -- entry time (ds50UTC)
    XA_EMEDAT_ENTRY : constant := 0;
    -- minimum time (ds50UTC)
    XA_EMEDAT_MIN : constant := 1;
    -- exit time (ds50UTC)
    XA_EMEDAT_EXIT : constant := 2;
    
    XA_EMEDAT_SIZE : constant := 3;
    
    -- FOV parameters
    -- Cone half angle (deg) (0=auto) (0-45)
    XA_FOVCTRL_HALFCONE : constant := 0;
    -- Search interval (min)
    XA_FOVCTRL_INTERVAL : constant := 1;
    -- Print option
    XA_FOVCTRL_PRTOPT : constant := 2;
    
    XA_FOVCTRL_SIZE : constant := 8;
    
    
    -- maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
    FOVMAXNUM : constant := 128;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Fov dll for use in the program
    function FovInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovInit";

    -- Returns information about the current version of Fov.dll. The information is placed in the string parameter you pass in
    procedure FovGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "FovGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
    function FovLoadFile
        (fovInputFile      : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovLoadFile";
        --fovInputFile       : String    (1..512);

    -- Loads Fov-related parameters (1P/2P/3P cards, and Fov parameter free format) from an input text file
    function FovLoadFileAll
        (fovInputFile      : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovLoadFileAll";
        --fovInputFile       : String    (1..512);

    -- Loads a single Fov-typed card
    function FovLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovLoadCard";
        --card               : String    (1..512);

    -- Saves any currently loaded Fov-related settings to a file
    function FovSaveFile
        (fovFile           : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovSaveFile";
        --fovFile            : String    (1..512);

    -- This function retrieves various FOV input data being entered from input flat files (various FOV cards)
    procedure FovGetDataFrInputFiles
        (xa_fovCtrl        : out     Double1D;
        numOfWindows       : out     Integer;
        startStopTimes     : out     Double1D;
        numOfSources       : out     Integer;
        xa_fovSrc_Arr      : out     Double2D;
        numOfTargets       : out     Integer;
        xa_fovTgt_Arr      : out     Double2D;
        numVicSats         : out     Integer;
        vicSatNums         : out     Int1D)
    with Import => True,
        Convention => C,
        External_Name => "FovGetDataFrInputFiles";
        --xa_fovCtrl         : Double1D  (1..8);
        --startStopTimes     : Double1D  (1..256);
        --xa_fovSrc_Arr      : Double2D  (1..8,1..128);
        --xa_fovTgt_Arr      : Double2D  (1..8,1..128);
        --vicSatNums         : Int1D     (1..128);

    -- This function screens the specified start/end time window and returns passes when the target satellite can be seen (passed all limit checks) by the source 
    function FovFindTargetPasses
        (startTimeDs50UTC  :         Long_Float;
        stopTimeDs50UTC    :         Long_Float;
        srcSenKey          :         Long_Long_Integer;
        tgtSatKey          :         Long_Long_Integer;
        tgtPassesArr       : out     Double2D_Ptr;
        numOfPasses        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovFindTargetPasses";

    -- This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is an elset).
    -- 
    -- The xa_emeDat array size is [numObs, 3].  The penetration time indexes are:
    -- 
    -- table
    -- 
    -- Name
    -- Index
    -- Index Interpretation
    -- 
    --  0 entry time (ds50UTC)
    --  1 minimum time (ds50UTC)
    --  2 exit time (ds50UTC)
    -- 
    -- 
    -- See FovGetDataFrInputFiles for a description of the XA_FOVSRC parameter values.
    function FovTargetElset
        (xa_fovRun         : in      Double1D;
        xa_fovSrc          : in      Double1D;
        tgtSatKey          :         Long_Long_Integer;
        vicSatKey          :         Long_Long_Integer;
        xa_emeDat          : out     Double2D_Ptr;
        numOfPasses        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovTargetElset";
        --xa_fovRun          : Double1D  (1..8);
        --xa_fovSrc          : Double1D  (1..8);

    -- This function returns a look angle from the source to the potential victim satellite at the specified time (target is an elset)
    -- 
    -- If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid.
    function FovTargetElsetLook
        (currDs50TAI       :         Long_Float;
        xa_fovSrc          : in      Double1D;
        vicSatKey          :         Long_Long_Integer;
        xa_look            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovTargetElsetLook";
        --xa_fovSrc          : Double1D  (1..8);
        --xa_look            : Double1D  (1..8);

    -- This function screens a potential victim satellite for penetrating the illumination cone between a source and a target (target is a vector: AZ/EL or RA/DEC).
    -- See FovTargetElset for a description of the xa_emeDat array.
    -- If actual number of passes exceeds the set limit in XA_FOVRUN_MAXPASSES, an error is returned. However, the data in xa_emeDat is still valid 
    function FovTargetVec
        (xa_fovRun         : in      Double1D;
        xa_fovSrc          : in      Double1D;
        xa_fovTgt          : in      Double1D;
        vicSatKey          :         Long_Long_Integer;
        xa_emeDat          : out     Double2D_Ptr;
        numOfPasses        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovTargetVec";
        --xa_fovRun          : Double1D  (1..8);
        --xa_fovSrc          : Double1D  (1..8);
        --xa_fovTgt          : Double1D  (1..8);

    -- This function returns a look angle from the source to the potential victim satellite at the specified time (target is a vector: AZ/EL or RA/DEC).
    -- See FovGetDataFrInputFiles for a description of the XA_FOVSRC and XA_FOVTGT parameter values.
    -- See FovTargetElsetLook for a description of the XA_LOOK parameter values.
    function FovTargetVecLook
        (currDs50TAI       :         Long_Float;
        xa_fovSrc          : in      Double1D;
        xa_fovTgt          : in      Double1D;
        vicSatKey          :         Long_Long_Integer;
        xa_look            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FovTargetVecLook";
        --xa_fovSrc          : Double1D  (1..8);
        --xa_fovTgt          : Double1D  (1..8);
        --xa_look            : Double1D  (1..8);

    -- Resets all FOV control parameters back to their default values
    procedure FovReset
    with Import => True,
        Convention => C,
        External_Name => "FovReset";


end FovDll;

-- ========================= End of auto generated code ==========================
