-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package ComboDll is
    
    -- Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
    -- input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
    XA_CB_PARMS_TIMEFLG : constant := 1;
    -- begin time
    XA_CB_PARMS_STARTTIME : constant := 2;
    -- end time
    XA_CB_PARMS_STOPTIME : constant := 3;
    -- maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
    XA_CB_PARMS_MAXSEP : constant := 4;
    -- close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
    XA_CB_PARMS_PROXLIM : constant := 5;
    XA_CB_PARMS_SIZE : constant := 16;
    
    -- Constants represent combo failed cases
    -- Primary satellite's epoch too far from time span
    FAILED_PRITOOFAR : constant := 101;
    -- Secondary satellite's epoch too far from time span
    FAILED_SECTOOFAR : constant := 102;
    -- Primary/secondary satellites are identical
    FAILED_SAMESAT : constant := 103;
    -- Secondary satellite failed perigee/apogee test
    FAILED_ALTITUDE : constant := 104;
    -- Secondary satellite is considered a brief span
    WARN_BRIEFSPAN : constant := 105;
    -- Secondary satellite is in sustained relative geometry
    WARN_SUSRELGEO : constant := 106;
    
    -- Indexes of LAMOD 7P-card fields
    -- Input time format : 0: Minutes since epoch, 1: UTC
    XF_7P_TIMEFLAG : constant := 1;
    -- Begin time
    XF_7P_BEGTIME : constant := 2;
    -- End time
    XF_7P_ENDTIME : constant := 3;
    -- Control flag for computing relative minima
    XF_7P_RELMINFLG : constant := 4;
    -- Control flag for computing absolute minimum
    XF_7P_ABSMINFLG : constant := 5;
    -- Control flag for computing periods of close proximity
    XF_7P_EETIMES : constant := 6;
    -- Control flag for computing relative ephemeris
    XF_7P_RELEPHFLG : constant := 7;
    -- Control flag for computing probability of collision
    XF_7P_POCSIGMA : constant := 8;
    -- Maximum separation for relative minima
    XF_7P_RELMINLIM : constant := 9;
    -- Close proximity limit
    XF_7P_ABSMINLIM : constant := 10;
    -- Relative ephemeris sampling interval
    XF_7P_RELEPHINT : constant := 11;
    -- Print options
    XF_7P_PRTOPT : constant := 12;
    -- Primary satellite effective radius (m)
    XF_7P_PRADIUS : constant := 13;
    -- Secondary satellite effective radius (m)
    XF_7P_SRADIUS : constant := 14;
    
    -- Different input of covariance matrix to compute POC
    -- ECI pos, vel, and ECI covariance
    XF_COVTYPE_ECI : constant := 1;
    -- EFG pos, vel, and UVW covariance
    XF_COVTYPE_UVW : constant := 2;
    
    -- Indexes of Combo's POC data
    -- Normalized distance (n-sigma) to circumscribing square
    XA_CB_POC_NORMSQR : constant := 0;
    -- POC of square
    XA_CB_POC_SQR : constant := 1;
    -- Normalized distance (n-sigma) to circle
    XA_CB_POC_NORMCIR : constant := 2;
    -- POC of circle
    XA_CB_POC_CIR : constant := 3;
    
    XA_CB_POC_SIZE : constant := 4;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Combo dll for use in the program
    -- If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
    function ComboInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboInit";

    -- Returns information about the current version of Combo.dll. The information is placed in the string parameter you pass in
    -- The returned string provides information about the version number, build date, and the platform of the Combo DLL. 
    procedure ComboGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ComboGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Combo-related parameters (7P/8P/9P cards, and Combo parameter free format) from a text file
    function ComboLoadFile
        (comboInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboLoadFile";
        --comboInputFile     : String    (1..512);

    -- Loads Combo control parameters and all Combo related data (environment, time, elsets) from an input text file
    function ComboLoadFileAll
        (comboInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboLoadFileAll";
        --comboInputFile     : String    (1..512);

    -- Loads a single Combo-typed card (7P, 8P, and 9P)
    function ComboLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboLoadCard";
        --card               : String    (1..512);

    -- Saves any currently loaded COMBO-related settings to a file
    -- The purpose of this function is to save the current Combo-related settings, usually used in GUI applications, for future use.
    function ComboSaveFile
        (comboFile         : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboSaveFile";
        --comboFile          : String    (1..512);

    -- Returns the number of primary and secondary satellites that were entered via 7P-card, 8P-card, 9P-card, or Combo parameter free format 
    procedure ComboGetNumOfPriSecSats
        (numPriSats        : out     Integer;
        numSecSats         : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "ComboGetNumOfPriSecSats";

    -- Returns an array of primary satellite numbers that were entered via 7P-card, 9P-card, or Combo parameter free format
    procedure ComboGetPriSatNums
        (priSatNums        : out     Int1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ComboGetPriSatNums";

    -- Returns an array of secondary satellite numbers that were entered via 7P-card, 8P-card, or Combo parameter free format
    procedure ComboGetSecSatNums
        (secSatNums        : out     Int1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ComboGetSecSatNums";

    -- Constructs Combo 7P-Card from COMBO control parameters
    procedure ComboGet7pCard
        (combo7pCard       : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ComboGet7pCard";
        --combo7pCard        : String    (1..512);

    -- Retrieves all Combo control parameters with a single function call
    procedure ComboGet7pAll
        (timeFlg           : out     Integer;
        startTime          : out     Long_Float;
        stopTime           : out     Long_Float;
        relMinFlg          : out     Integer;
        absMinFlg          : out     Integer;
        closeProxFlg       : out     Integer;
        relEphFlg          : out     Integer;
        pocSigma           : out     Long_Float;
        relMinLim          : out     Long_Float;
        closeProxLim       : out     Long_Float;
        relEphInterval     : out     Long_Float;
        prtOpt             : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "ComboGet7pAll";

    -- Sets all Combo control parameters with a single function call
    procedure ComboSet7pAll
        (timeFlg           :         Integer;
        startTime          :         Long_Float;
        stopTime           :         Long_Float;
        relMinFlg          :         Integer;
        absMinFlg          :         Integer;
        closeProxFlg       :         Integer;
        relEphFlg          :         Integer;
        pocSigma           :         Long_Float;
        relMinLim          :         Long_Float;
        closeProxLim       :         Long_Float;
        relEphInterval     :         Long_Float;
        prtOpt             :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "ComboSet7pAll";

    -- Retrieves the value of a single Combo control parameter (7P-card)
    procedure ComboGet7pField
        (xf_7P             :         Integer;
        retVal             : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ComboGet7pField";
        --retVal             : String    (1..512);

    -- Sets the value of a single Combo control parameter (7P-card)
    -- See ComboGet7pField for a list of index values for the parameter xf_7P.
    procedure ComboSet7pField
        (xf_7P             :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "ComboSet7pField";
        --valueStr           : String    (1..512);

    -- Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
    -- 
    -- If absMinDs50UTC = 0 or absMinDist = 1.0E20, this means no absolute minimum found. Otherwise, the absMinDs50UTC and absMinDist are returned whether or not absMinDist is greater than the specified "Close proximity limit".
    -- 
    -- Returns zero indicating the COMBO data was computed successfully. Other values indicate an error. Here is the list of possible error/warning code it returns:
    -- 
    --     table
    -- 
    -- Value
    -- Value Interpretation
    -- 
    -- 101 Primary satellite's epoch too far from the time span
    -- 102 Secondary satellite's epoch too far from the time span
    -- 103 Primary/secondary satellites are identical
    -- 104 Secondary satellite failed perigee/apogee test
    -- 105 Secondary satellite is considered a brief span
    -- 106 Secondary satellite is in sustained relative geometry
    -- 
    -- 
    -- When the function's returned value is 108 (secondary satellite is in sustained relative geometry), the entry/exit times should be ignored.
    function ComboCompPriSec
        (priSatKey         :         Long_Long_Integer;
        secSatKey          :         Long_Long_Integer;
        absMinDs50UTC      : out     Long_Float;
        absMinDist         : out     Long_Float;
        relMinDs50UTCs     : out     Double1D;
        numOfRelMins       : out     Integer;
        entryDs50UTCs      : out     Double1D;
        exitDs50UTCs       : out     Double1D;
        numOfEntryExits    : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboCompPriSec";
        --relMinDs50UTCs     : Double1D  (1..1000);
        --entryDs50UTCs      : Double1D  (1..1000);
        --exitDs50UTCs       : Double1D  (1..1000);

    -- Returns computation of miss between orbits (COMBO) data for the specified primary and secondary satellites
    -- This function is similar to ComboCompPriSec but allows the user to enter separate COMBO parameters for each call which is suitable for multithread application
    function ComboCompPriSec_MT
        (xa_cb_parms       : in      Double1D;
        priSatKey          :         Long_Long_Integer;
        secSatKey          :         Long_Long_Integer;
        absMinDs50UTC      : out     Long_Float;
        absMinDist         : out     Long_Float;
        relMinDs50UTCs     : out     Double1D;
        numOfRelMins       : out     Integer;
        entryDs50UTCs      : out     Double1D;
        exitDs50UTCs       : out     Double1D;
        numOfEntryExits    : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboCompPriSec_MT";
        --xa_cb_parms        : Double1D  (1..16);
        --relMinDs50UTCs     : Double1D  (1..1000);
        --entryDs50UTCs      : Double1D  (1..1000);
        --exitDs50UTCs       : Double1D  (1..1000);

    -- Computes probability of collision between a primary and secondary satellite
    function ComboPOC
        (priSatPos         : in      Double1D;
        priSatVel          : in      Double1D;
        priSatCov          : in      Double2D;
        priSatRad          :         Long_Float;
        secSatPos          : in      Double1D;
        secSatVel          : in      Double1D;
        secSatCov          : in      Double2D;
        secSatRad          :         Long_Float;
        xf_CovType         :         Integer;
        xa_cb_poc          : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboPOC";
        --priSatPos          : Double1D  (1..3);
        --priSatVel          : Double1D  (1..3);
        --priSatCov          : Double2D  (1..3,1..3);
        --secSatPos          : Double1D  (1..3);
        --secSatVel          : Double1D  (1..3);
        --secSatCov          : Double2D  (1..3,1..3);
        --xa_cb_poc          : Double1D  (1..4);

    -- Computes probability of collision using data from a CSM/OCM file
    function ComboCSMPOC
        (csmFile           : in      String;
        sumR               :         Long_Float;
        xa_cb_poc          : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ComboCSMPOC";
        --csmFile            : String    (1..512);
        --xa_cb_poc          : Double1D  (1..4);


end ComboDll;

-- ========================= End of auto generated code ==========================
