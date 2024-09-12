-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package AofDll is
    
    -- AOF parameters
    -- input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
    XA_AOFCTRL_TIMEFLG : constant := 0;
    -- start time of interest (either MSE or DTG)
    XA_AOFCTRL_START : constant := 1;
    -- stop time of interest (either MSE or DTG)
    XA_AOFCTRL_STOP : constant := 2;
    -- search interval (min)
    XA_AOFCTRL_INTERVAL : constant := 3;
    -- print output control flag; 0=print penetrations only, 1=print penetrations and data description
    XA_AOFCTRL_PRTOPT : constant := 4;
    -- search method: 0=use brute force method, 1=use analytical method
    XA_AOFCTRL_SRCHMET : constant := 5;
    -- output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
    XA_AOFCTRL_SRTTYPE : constant := 6;
    
    XA_AOFCTRL_SIZE : constant := 16;
    
    
    -- Defended area types
    -- area box type
    AREATYPE_I_BOX : constant := 1;
    -- area circle type
    AREATYPE_I_CIRCLE : constant := 2;
    -- area point type
    AREATYPE_I_POINT : constant := 3;
    -- area polygon type
    AREATYPE_I_POLYGON : constant := 4;
    
    
    -- AOF satellite/mission (satellite/sensor) data
    -- satellite number of sensor-bearing satellite
    XA_AOFSEN_SATNUM : constant := 0;
    -- reserved for future use
    XA_AOFSEN_TYPE : constant := 1;
    -- off nadir minimum look angle (deg) (=0 for Cone)
    XA_AOFSEN_MINEL : constant := 2;
    -- off nadir maximum look angle (deg)
    XA_AOFSEN_MAXEL : constant := 3;
    -- minimum azimuth of first azimuth range (deg)
    XA_AOFSEN_MINAZ1 : constant := 4;
    -- maximum azimuth of first azimuth range (deg)
    XA_AOFSEN_MAXAZ1 : constant := 5;
    -- minimum azimuth of second azimuth range (deg)
    XA_AOFSEN_MINAZ2 : constant := 6;
    -- maximum azimuth of second azimuth range (deg)
    XA_AOFSEN_MAXAZ2 : constant := 7;
    -- reserved for future use
    XA_AOFSEN_ELEM7 : constant := 8;
    -- reserved for future use
    XA_AOFSEN_ELEM8 : constant := 9;
    -- reserved for future use
    XA_AOFSEN_ELEM9 : constant := 10;
    -- reserved for future use
    XA_AOFSEN_ELEM10 : constant := 11;
    
    XA_AOFSEN_SIZE : constant := 16;
    
    
    -- AOF satellite/sensor types
    -- circle (specify only off-nadir maximum look angle)
    AOFSENTYPE_CIRCLE : constant := 0;
    
    
    -- AOF run parameters
    -- Maximum number of passes that AOF returns in one start/stop time
    XA_AOFRUN_MAXPASSES : constant := 0;
    -- AOF start time in days since 1950, UTC
    XA_AOFRUN_START : constant := 1;
    -- AOF stop time in days since 1950, UTC
    XA_AOFRUN_STOP : constant := 2;
    -- Search interval (min)
    XA_AOFRUN_INTERVAL : constant := 3;
    
    XA_AOFRUN_SIZE : constant := 8;
    
    
    -- AOF defended area types
    -- Defended area is a box
    AOF_AREATYPE_BOX : constant := 1;
    -- Defended area is a circle
    AOF_AREATYPE_CIRCLE : constant := 2;
    -- Defended area is a point
    AOF_AREATYPE_POINT : constant := 3;
    -- Defended area is a polygon
    AOF_AREATYPE_POLYGON : constant := 4;
    
    
    
    -- AOF defended area data
    -- Area number
    XA_AOFAREA_NUM : constant := 0;
    -- | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
    XA_AOFAREA_TYPE : constant := 1;
    -- | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
    XA_AOFAREA_ELEM1 : constant := 2;
    -- | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
    XA_AOFAREA_ELEM2 : constant := 3;
    -- | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
    XA_AOFAREA_ELEM3 : constant := 4;
    -- | E lon (deg) lower right corner|                         |
    XA_AOFAREA_ELEM4 : constant := 5;
    
    XA_AOFAREA_SIZE : constant := 16;
    
    
    -- Penetration-level darkness status
    -- lit throughout penetration
    DARKLEVEL_ALLLIT : constant := 0;
    -- dark throughout penetration
    DARKLEVEL_ALLDARK : constant := 1;
    -- partly-lit during penetration
    DARKLEVEL_PARTLIT : constant := 2;
    
    -- View angle from overfly satellite to a llh point
    -- Azimuth (deg)
    XA_AOFVIEW_AZIM : constant := 0;
    -- Elevation (deg)
    XA_AOFVIEW_ELEV : constant := 1;
    -- Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
    XA_AOFVIEW_HASLOS : constant := 2;
    
    XA_AOFVIEW_SIZE : constant := 8;
    
    -- maximum of number of lat-lon-height points that can be used to describe a defended area
    MAX_LLHPOINTS : constant := 120;
    
    
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Aof dll for use in the program
    function AofInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofInit";

    -- Returns information about the current version of Aof.dll. The information is placed in the string parameter you pass in
    procedure AofGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "AofGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Aof-related parameters (1P/2P/3P cards, and Aof parameter free format) from an input text file
    function AofLoadFile
        (aofInputFile      : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofLoadFile";
        --aofInputFile       : String    (1..512);

    -- Loads Aof-related parameters from an input text file
    function AofLoadFileAll
        (aofInputFile      : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofLoadFileAll";
        --aofInputFile       : String    (1..512);

    -- Loads a single Aof-typed card
    function AofLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofLoadCard";
        --card               : String    (1..512);

    -- This function retrieves various AOF input data being entered from input flat files (and/or various AOF input cards)
    procedure AofGetDataFrInputFiles
        (xa_aofCtrl        : out     Double1D;
        numOfInpSats       : out     Integer;
        aofInpSats         : out     Int1D;
        numOfMissions      : out     Integer;
        xa_aofSen          : out     Double2D;
        numOfAreas         : out     Integer;
        xa_aofArea         : out     Double2D)
    with Import => True,
        Convention => C,
        External_Name => "AofGetDataFrInputFiles";
        --xa_aofCtrl         : Double1D  (1..16);
        --aofInpSats         : Int1D     (1..100);
        --xa_aofSen          : Double2D  (1..16,1..100);
        --xa_aofArea         : Double2D  (1..16,1..100);

    -- This function resets all Aof control parameters previously loaded from input text files
    procedure AofReset
    with Import => True,
        Convention => C,
        External_Name => "AofReset";

    -- Computes entry/exit times of basic overflight satellite/sensor (cone) versus basic defended areas (box, circle, point)
    -- 
    -- Note:  for xa_aofArea type=4 (polygon), use the AofComplex method.
    function AofBasic
        (xa_aofRun         : in      Double1D;
        satKey             :         Long_Long_Integer;
        xa_aofSen          : in      Double1D;
        xa_aofArea         : in      Double1D;
        numOfPasses        : out     Integer;
        xa_entExitTimes    : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofBasic";
        --xa_aofRun          : Double1D  (1..8);
        --xa_aofSen          : Double1D  (1..16);
        --xa_aofArea         : Double1D  (1..16);

    -- Computes entry/exit times of overflight satellite/sensor having complex configurations (cone, donut, butterfly, leftButterly, rightButterfly)
    -- versus defended areas defined by multiple lat lon height points (polygon)
    -- For a description of the input parameter arrays xa_aofRun and xa_aofSen, see AofBasic.
    -- The input array llhArr is a zero-based array with latitude, longitude and altitude of each point in subsequent entries, e.g.:
    -- llhArr[0] = point 1 latitude, 
    -- llhArr[1] = point 1 longitude, 
    -- llhArr[2] = point 1 altitude, 
    -- llhArr[3] = point 2 latitude, etc.
    function AofComplex
        (xa_aofRun         : in      Double1D;
        satKey             :         Long_Long_Integer;
        xa_aofSen          : in      Double1D;
        numOfLlhPts        :         Integer;
        llhArr             : in      Double1D;
        numOfPasses        : out     Integer;
        xa_entExitTimes    : out     Double1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofComplex";
        --xa_aofRun          : Double1D  (1..8);
        --xa_aofSen          : Double1D  (1..16);
        --llhArr             : Double1D  (1..360);

    -- This function returns a look angle from the llh point to the overfly satellite at the specified time
    function AofGetLook
        (ds50TAI           :         Long_Float;
        llh                : in      Double1D;
        satKey             :         Long_Long_Integer;
        xa_look            : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofGetLook";
        --llh                : Double1D  (1..3);
        --xa_look            : Double1D  (1..8);

    -- This function returns a view angle from the overfly satellite to a llh point at the specified time
    function AofGetView
        (ds50TAI           :         Long_Float;
        llh                : in      Double1D;
        satKey             :         Long_Long_Integer;
        xa_aofView         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofGetView";
        --llh                : Double1D  (1..3);
        --xa_aofView         : Double1D  (1..8);

    -- Determines darkness level of the "defended" area at the specified time
    -- For a description of the input parameter array xa_aofArea, see AofBasic.
    function AofGetDarknessLevel
        (ds50TAI           :         Long_Float;
        xa_aofArea         : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AofGetDarknessLevel";
        --xa_aofArea         : Double1D  (1..16);


end AofDll;

-- ========================= End of auto generated code ==========================
