-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package ObsOpsDll is
    
    -- Different obs selection options
    -- auto select 3 obs among the loaded/selected obs
    OBSSELMODE_AUTO : constant := 0;
    -- use the first 3 obs in list of loaded/selected obs
    OBSSELMODE_1ST3OBS : constant := 1;
    
    
    -- Indexes for accessing Iomod control parameters
    -- control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
    XF_IP_PRINTIOHG : constant := 1;
    -- use first 3 obs flag
    XF_IP_USE1ST3OBS : constant := 2;
    -- satelite number
    XF_IP_SATNUM : constant := 3;
    -- obs sorting order
    XF_IP_SORTORDER : constant := 4;
    -- international designator
    XF_IP_SATNAME : constant := 5;
    -- run DC flag: 1=yes, 0=no
    XF_IP_RUNDC : constant := 6;
    -- run ROTAS flag: 1=yes, 0=no
    XF_IP_RUNROTAS : constant := 7;
    
    -- Indexes of TRI configuration parameters
    -- I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
    XA_TRI_USEDEFAULT : constant := 0;
    -- I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
    XA_TRI_OBSTYPEOUT : constant := 1;
    -- I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
    XA_TRI_APPLYBIAS : constant := 2;
    -- I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
    XA_TRI_LTC : constant := 3;
    -- I - number of obs created for each overlap track
    XA_TRI_CREATEOBSSIZE : constant := 4;
    -- I - default order of the Polyfit for angle RA/DEC
    XA_TRI_DEFANGLEORDER : constant := 5;
    -- I - default order of the Polyfit for range
    XA_TRI_DEFRANGEORDER : constant := 6;
    -- I - default order of the Polyfit for EFG components
    XA_TRI_DEFEFGORDER : constant := 7;
    -- I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
    XA_TRI_AUTOFITANGLE : constant := 8;
    -- I - whether or not to use auto for range (increase order if needed when doing Polyfit)
    XA_TRI_AUTOFITRANGE : constant := 9;
    -- I - anchor order of RA/DEC
    XA_TRI_ANCHORRADEC : constant := 10;
    -- I - check to see satellite number is different
    XA_TRI_SEPSATNO : constant := 11;
    -- D - limit RMS for RA (arcsec)
    XA_TRI_RARMSLIM : constant := 12;
    -- D - limit RMS for Dec (arcsec)
    XA_TRI_DECRMSLIM : constant := 13;
    -- D - limit RMS for Range (km)
    XA_TRI_RANGERMSLIM : constant := 14;
    -- D - track separation criteria (minutes)
    XA_TRI_TRKSEPARATION : constant := 15;
    -- D - minimum stereoscopic angle (deg)
    XA_TRI_MINSTEREOANGLE : constant := 16;
    
    XA_TRI_SIZE : constant := 32;
    
    -- Indexes of overlap track data
    -- I - Satellite number
    XA_OVLP_SATNUM : constant := 0;
    -- I - Sensor number of track 1
    XA_OVLP_SENNUM1 : constant := 1;
    -- I - Sensor number of track 2
    XA_OVLP_SENNUM2 : constant := 2;
    -- D - Overlap track's start time (in DS50UTC)
    XA_OVLP_STARTTIME : constant := 3;
    -- D - Overlap track's end time (in DS50UTC)
    XA_OVLP_ENDTIME : constant := 4;
    
    -- 
    XA_OVLP_SIZE : constant := 8;
    
    -- Indexes of polyfitting track data
    -- I - Satellite number
    XA_FIT_SATNUM : constant := 0;
    -- I - Sensor number of track 1
    XA_FIT_SENNUM1 : constant := 1;
    -- I - Sensor number of track 2
    XA_FIT_SENNUM2 : constant := 2;
    
    -- I - Right ascension polyfit order of track 1
    XA_FIT_RAORDER1 : constant := 3;
    -- I - Right ascension polyfit order of track 2
    XA_FIT_RAORDER2 : constant := 4;
    -- D - Right ascension RMS of track 1
    XA_FIT_RARMS1 : constant := 5;
    -- D - Right ascension RMS of track 2
    XA_FIT_RARMS2 : constant := 6;
    
    -- I - Declination polyfit order of track 1
    XA_FIT_DECORDER1 : constant := 7;
    -- I - Declination polyfit order of track 2
    XA_FIT_DECORDER2 : constant := 8;
    -- D - Declination RMS of track 1
    XA_FIT_DECMS1 : constant := 9;
    -- D - Declination RMS of track 2
    XA_FIT_DECRMS2 : constant := 10;
    
    -- I - Declination polyfit order of track 1
    XA_FIT_RANGEORDER1 : constant := 11;
    -- I - Declination polyfit order of track 2
    XA_FIT_RANGEORDER2 : constant := 12;
    -- D - Declination RMS of track 1
    XA_FIT_RANGERMS1 : constant := 13;
    -- D - Declination RMS of track 2
    XA_FIT_RANGERMS2 : constant := 14;
    
    -- D - First stereoscopic angle (deg)
    XA_FIT_THETA1 : constant := 15;
    -- D - Second stereoscopic angle (deg)
    XA_FIT_THETA2 : constant := 16;
    -- D - Third stereoscopic angle (deg)
    XA_FIT_THETA3 : constant := 17;
    
    -- 
    XA_FIT_SIZE : constant := 32;
    
    

    -- Notes: This function has been deprecated since v9.0.    
    -- Initializes ObsOps DLL for use in the program
    function ObsOpsInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsOpsInit";

    -- Returns information about the current version of ObsOps DLL. 
    -- The information is placed in the string parameter passed in.
    procedure ObsOpsGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ObsOpsGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Iomod parameters from an input text file
    function IomodLoadFile
        (iomodInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IomodLoadFile";
        --iomodInputFile     : String    (1..512);

    -- Loads Iomod control parameters and all Iomod related data (environment, time, sensors, obs) from an input text file
    function IomodLoadFileAll
        (iomodInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IomodLoadFileAll";
        --iomodInputFile     : String    (1..512);

    -- Saves any currently loaded IOMOD-related settings to a file
    function IomodSaveFile
        (iomodFile         : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IomodSaveFile";
        --iomodFile          : String    (1..512);

    -- Builds and returns the IOMOD-parameter card (IP-Card) from the current IOMOD settings
    procedure IomodGetIpCard
        (iomodIPCard       : out     String)
    with Import => True,
        Convention => C,
        External_Name => "IomodGetIpCard";
        --iomodIPCard        : String    (1..512);

    -- Retrieves all IOMOD parameters with a single function call
    procedure IomodGetIpAll
        (printIOHG         : out     Integer;
        useFirst3Obs       : out     Integer;
        satNum             : out     Integer;
        sortOrder          : out     Integer;
        satName            : out     String;
        runDC              : out     Integer;
        runRotas           : out     Integer;
        extArr             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "IomodGetIpAll";
        --satName            : String    (1..8);
        --extArr             : Double1D  (1..128);

    -- Sets all IOMOD parameters with a single function call
    procedure IomodSetIpAll
        (printIOHG         :         Integer;
        useFirst3Obs       :         Integer;
        satNum             :         Integer;
        sortOrder          :         Integer;
        satName            : in      String;
        runDC              :         Integer;
        runRotas           :         Integer;
        extArr             : in      Double1D)
    with Import => True,
        Convention => C,
        External_Name => "IomodSetIpAll";
        --satName            : String    (1..8);
        --extArr             : Double1D  (1..128);

    -- Retrieves the value of a specified IOMOD parameter
    -- 
    -- The table below indicates which index values for the xf_IP parameter:
    -- 
    -- table
    -- 
    -- xf_IP named constants/values
    -- Interpretation
    -- 
    -- XF_IP_PRINTIOHG  = 1control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print
    -- IOHG
    -- XF_IP_USE1ST3OBS = 2use first 3 obs flag
    -- XF_IP_SATNUM     = 3satelite number
    -- XF_IP_SORTORDER  = 4obs sorting order
    -- XF_IP_SATNAME    = 5international designator 
    -- XF_IP_RUNDC      = 6run DC flag: 1=yes, 0=no [deprecated]
    -- XF_IP_RUNROTAS   = 7run ROTAS flag: 1=yes, 0=no [deprecated]
    -- 
    procedure IomodGetIpField
        (xf_IP             :         Integer;
        retVal             : out     String)
    with Import => True,
        Convention => C,
        External_Name => "IomodGetIpField";
        --retVal             : String    (1..512);

    -- Sets the value of a specified IOMOD parameter
    -- See IomodGetIpField for a description of the xf_IP parameter.
    procedure IomodSetIpField
        (xf_IP             :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "IomodSetIpField";
        --valueStr           : String    (1..512);

    -- Computes initial orbit vector from many observations using Herrick-Gibbs method
    function ManyObsToPosVel
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        arr3ObsKeys        : out     Long1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ManyObsToPosVel";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --arr3ObsKeys        : Long1D    (1..3);

    -- Computes initial orbit vector from three selected observations using Herrick-Gibbs method
    function ThreeObsToPosVel
        (arr3ObsKeys       : in      Long1D;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ThreeObsToPosVel";
        --arr3ObsKeys        : Long1D    (1..3);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Computes initial orbit vector directly from the input sensor/observation data - thread safe
    function Iomod_OS
        (xa_senLoc         : in      Double1D;
        numObs             :         Integer;
        xa_obsArr          : in      Double2D_Ptr;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "Iomod_OS";
        --xa_senLoc          : Double1D  (1..16);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Computes initial orbit vector from two selected observations using Two-Ob method
    -- Note: Two-Ob method only works with ob types: 2, 3, 4, P, and V
    function TwoObsToPosVel
        (arr2ObsKeys       : in      Long1D;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TwoObsToPosVel";
        --arr2ObsKeys        : Long1D    (1..2);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Computes the initial orbit vector from three selected angle-only observations using the Gooding Algorithm.
    function AnglesOnlyToPosVel
        (arr3ObsKeys       : in      Long1D;
        range1             :         Long_Float;
        range3             :         Long_Float;
        nhrev              :         Integer;
        ind                :         Integer;
        maxIt              :         Integer;
        pdInc              :         Long_Float;
        criVal             :         Long_Float;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AnglesOnlyToPosVel";
        --arr3ObsKeys        : Long1D    (1..3);
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);

    -- Computes the track length of a track whose first observation started at the input startIdx.
    -- This routine can be used in a loop to find all the tracks in the observation list.
    -- Remember to sort obs in the obsKeyArr in the ascending order of sensor, satno, obsType, time, elev 
    -- by calling ObsGetLoaded(-6, pObsKeys) before feeding the array to this routine
    function FindTrack
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        startIdx           :         Integer;
        trackLength        : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "FindTrack";

    -- Computes initial orbit vector from a track of obs. Also returns the three obs in the track that are used by IOMOD
    function ATrackToPosVel
        (obsKeys           : in      Long1D_Ptr;
        trackStartIdx      :         Integer;
        trackLength        :         Integer;
        timeDs50UTC        : out     Long_Float;
        pos                : out     Double1D;
        vel                : out     Double1D;
        trackObsKeys       : out     Long1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ATrackToPosVel";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --trackObsKeys       : Long1D    (1..3);

    -- Returns the default values of the triangulation settings
    procedure TriGetDefParams
        (xa_tri            : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "TriGetDefParams";
        --xa_tri             : Double1D  (1..32);

    -- Triangulates the input obs and write generated obs with range data to the specified output file
    function TriComputeToFile
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        xa_tri             : in      Double1D;
        toFile             : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TriComputeToFile";
        --xa_tri             : Double1D  (1..32);
        --toFile             : String    (1..512);

    -- Triangulates the input obs and returns the overlap and polyfit information; creates and loads obs with range data into memory and returns their associated obsKeys
    function TriCompute1
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        xa_tri             : in      Double1D;
        numOvlps           : out     Integer;
        xa_ovlp            : out     Double2D_Ptr;
        numFits            : out     Integer;
        xa_fit             : out     Double2D_Ptr;
        maxGenObs          :         Integer;
        nGenObs            : out     Integer;
        genObsKeys         : out     Long1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TriCompute1";
        --xa_tri             : Double1D  (1..32);

    -- Triangulates the input obs and returns the overlap and polyfit information 
    function TriCompute2
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        xa_tri             : in      Double1D;
        numOvlps           : out     Integer;
        xa_ovlp            : out     Double2D_Ptr;
        numFits            : out     Integer;
        xa_fit             : out     Double2D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TriCompute2";
        --xa_tri             : Double1D  (1..32);

    -- Triangulates the input obs; creates and loads obs with range data (by triangulation) into memory and returns their associated obsKeys
    function TriCompute3
        (obsKeyArr         : in      Long1D_Ptr;
        arrSize            :         Integer;
        xa_tri             : in      Double1D;
        maxGenObs          :         Integer;
        nGenObs            : out     Integer;
        genObsKeys         : out     Long1D_Ptr) return Integer
    with Import => True,
        Convention => C,
        External_Name => "TriCompute3";
        --xa_tri             : Double1D  (1..32);

    -- Returns the default values of the waterfall altitude (km)
    function GetWaterfallAlt return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "GetWaterfallAlt";

    -- Converts angle-only observation to lat/lon/height positions
    function AnglesOnlyToLLH
        (obsKey            :         Long_Long_Integer;
        assumedAltitude    :         Long_Float;
        rho                : out     Double1D;
        llhs               : out     Double2D;
        numSols            : out     Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "AnglesOnlyToLLH";
        --rho                : Double1D  (1..2);
        --llhs               : Double2D  (1..3,1..2);

    -- Calculates length of output arrays for Lomb
    -- Used to allocated px, py, prob before call to Lomb
    function LombLengthOut
        (ofac              :         Long_Float;
        hifac              :         Long_Float;
        nSample            :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LombLengthOut";

    -- Creates Lomb-Scargle periodogram.  Reference: Numerical Recipes   
    -- Used to find frequencies in unevenly sampled data, such as Visual Magnitude vs. Time
    procedure Lomb
        (x                 : in      Double1D_Ptr;
        y                  : in      Double1D_Ptr;
        nSample            :         Integer;
        ofac               :         Long_Float;
        hifac              :         Long_Float;
        px                 : out     Double1D_Ptr;
        py                 : out     Double1D_Ptr;
        prob               : out     Double1D_Ptr;
        pxmax              : out     Long_Float;
        pymax              : out     Long_Float;
        probMax            : out     Long_Float)
    with Import => True,
        Convention => C,
        External_Name => "Lomb";

    -- Find False Alarm Probablility of given Power (lower is less likely to be a false alarm)
    function LombFalseProb
        (py                :         Long_Float;
        nout               :         Integer;
        ofac               :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "LombFalseProb";

    -- Find Power of given False Alarm Probablility
    function LombFalseProbInv
        (prob              :         Long_Float;
        nout               :         Integer;
        ofac               :         Long_Float) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "LombFalseProbInv";

    -- Calculate length of output for LombWaveFit
    function LombLengthCoef
        (nFreq             :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "LombLengthCoef";

    -- Fits user defined frequencies to data to find the magnitudes
    -- Solves the equation
    -- y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
    -- For coefficients A and B corresponding to each frequency
    procedure LombWaveFit
        (x                 : in      Double1D_Ptr;
        y                  : in      Double1D_Ptr;
        nSamples           :         Integer;
        freq               : in      Double1D_Ptr;
        nfreq              :         Integer;
        coeffs             : out     Double1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "LombWaveFit";

    -- Calculate value of y given time, x, 
    -- and frequencies and magnitudes that were gotten from wavefit
    -- solves the equation
    -- y= C + sum( A(i)*sin(2*pi*freq(i)*t) + B(i)*sin(2*pi*freq(i)*t)  )
    -- for y
    function LombCalcValueFromTime
        (x                 :         Long_Float;
        mags               : in      Double1D_Ptr;
        freq               : in      Double1D_Ptr;
        nfreq              :         Integer) return Long_Float
    with Import => True,
        Convention => C,
        External_Name => "LombCalcValueFromTime";

    -- Given two observations, calculate the angle between them
    -- Supports obsType 1,2,3,4,5,8,9,18,19
    procedure AngleBetweenObs
        (obsKey1           :         Long_Long_Integer;
        obsKey2            :         Long_Long_Integer;
        angSep             : out     Long_Float;
        errCode            : out     Integer)
    with Import => True,
        Convention => C,
        External_Name => "AngleBetweenObs";


end ObsOpsDll;

-- ========================= End of auto generated code ==========================
