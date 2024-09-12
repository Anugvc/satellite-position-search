-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package RotasDll is
    
    -- Different light-time correction (LTC) options
    -- Don't apply LTC
    LTC_DONTAPPLY : constant := 0;
    -- Apply LTC analytically
    LTC_ANALYTIC : constant := 1;
    -- Apply LTC exactly
    LTC_EXACT : constant := 2;
    
    -- Residual computation methods
    -- Delta/427M method
    RESCOMPMETH_DELTA427M : constant := 1;
    -- Spadoc 4 method
    RESCOMPMETH_SPADOC4 : constant := 2;
    
    -- PV Ob data
    -- ob ECI position X (km) in TEME of Date
    XA_OBPV_POSX : constant := 0;
    -- ob ECI position Y (km) in TEME of Date
    XA_OBPV_POSY : constant := 1;
    -- ob ECI position Z (km) in TEME of Date
    XA_OBPV_POSZ : constant := 2;
    -- ob ECI velocity X (km/sec) in TEME of Date
    XA_OBPV_VELX : constant := 3;
    -- ob ECI velocity Y (km/sec) in TEME of Date
    XA_OBPV_VELY : constant := 4;
    -- ob ECI velocity Z (km/sec) in TEME of Date
    XA_OBPV_VELZ : constant := 5;
    -- ob time in days since 1950, UTC
    XA_OBPV_TIME : constant := 6;
    
    -- the last available index
    XA_OBPV_END : constant := 15;
    XA_OBPV_SIZE : constant := 16;
    
    -- Satellite state data
    -- satellite ECI position X (km) in TEME of Date
    XA_SATPV_POSX : constant := 0;
    -- satellite ECI position Y (km) in TEME of Date
    XA_SATPV_POSY : constant := 1;
    -- satellite ECI position Z (km) in TEME of Date
    XA_SATPV_POSZ : constant := 2;
    -- satellite ECI velocity X (km/sec) in TEME of Date
    XA_SATPV_VELX : constant := 3;
    -- satellite ECI velocity Y (km/sec) in TEME of Date
    XA_SATPV_VELY : constant := 4;
    -- satellite ECI velocity Z (km/sec) in TEME of Date
    XA_SATPV_VELZ : constant := 5;
    
    -- the last available index
    XA_SATPV_END : constant := 15;
    XA_SATPV_SIZE : constant := 16;
    
    
    -- Obs residual data field indexes
    -- Azimuth residual (deg)
    XA_OBSRES_AZ : constant := 0;
    -- Elevation residual (deg)
    XA_OBSRES_EL : constant := 1;
    -- Range residual (km)
    XA_OBSRES_RANGE : constant := 2;
    -- Height residual (deg)
    XA_OBSRES_HEIGHT : constant := 3;
    -- Beta residual (deg). asin(dot(priU, secW))
    XA_OBSRES_BETA : constant := 4;
    -- Delta T residual (min)
    XA_OBSRES_DELTAT : constant := 5;
    -- Vector magnitude (km)
    XA_OBSRES_VMAG : constant := 6;
    -- Time since epoch (days)
    XA_OBSRES_AGE : constant := 7;
    -- True argument of latitude (deg)
    XA_OBSRES_SU : constant := 8;
    -- Revolution number
    XA_OBSRES_REVNUM : constant := 9;
    -- Range rate residual (km/sec)
    XA_OBSRES_RNGRATE : constant := 10;
    -- Observation ASTAT
    XA_OBSRES_ASTAT : constant := 11;
    -- Observation type
    XA_OBSRES_OBSTYPE : constant := 12;
    -- Satellite true anomaly (deg)
    XA_OBSRES_SATANOM : constant := 13;
    -- Satellite elevation (deg)
    XA_OBSRES_SATELEV : constant := 14;
    -- Satellite maintenance category
    XA_OBSRES_SATCAT : constant := 15;
    -- Obs time in ds50UTC
    XA_OBSRES_OBSTIME : constant := 16;
    -- Obs azimuth (deg)
    XA_OBSRES_OBSAZ : constant := 17;
    -- Obs elevation (deg)
    XA_OBSRES_OBSEL : constant := 18;
    -- Velocity angle residual (deg)
    XA_OBSRES_VELANG : constant := 19;
    -- Angular momentum residual (deg).  acos(dot(priW, secW))
    XA_OBSRES_ANGMOM : constant := 20;
    -- Right ascension residual (deg) (for ob types 5, 9, 19)
    XA_OBSRES_RA : constant := 21;
    -- Declination residual (deg) (for ob types 5, 9, 19)
    XA_OBSRES_DEC : constant := 22;
    -- Delta X position (km)
    XA_OBSRES_POSX : constant := 23;
    -- Delta Y position (km)
    XA_OBSRES_POSY : constant := 24;
    -- Delta Z position (km)
    XA_OBSRES_POSZ : constant := 25;
    -- Delta X velocity (km/sec)
    XA_OBSRES_VELX : constant := 26;
    -- Delta Y velocity (km/sec)
    XA_OBSRES_VELY : constant := 27;
    -- Delta Z velocity (km/sec)
    XA_OBSRES_VELZ : constant := 28;
    -- Angle only - Obs computed range (km)
    XA_OBSRES_OBSRNG : constant := 29;
    
    -- Obs right ascension (deg)
    XA_OBSRES_OBSRA : constant := 30;
    -- Obs declination (deg)
    XA_OBSRES_OBSDEC : constant := 31;
    -- Delta east longitude (deg)
    XA_OBSRES_LON : constant := 32;
    
    -- Delta U position (km)
    XA_OBSRES_POSU : constant := 33;
    -- Delta V position (km)
    XA_OBSRES_POSV : constant := 34;
    -- Delta W position (km)
    XA_OBSRES_POSW : constant := 35;
    -- 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
    XA_OBSRES_CHI : constant := 36;
    
    -- Angular Separation between Obs and State (Deg)
    XA_OBSRES_ANGSEP : constant := 38;
    -- TDOA Time Difference of Arrival residual (nano-second)
    XA_OBSRES_TDOA : constant := 39;
    -- FDOA Frequency Differecnce of Arrival (Hz)
    XA_OBSRES_FDOA : constant := 40;
    
    XA_OBSRES_SIZE : constant := 100;
    
    -- Indexes of Rotas Control parameter fields (Rotas P-Card)
    -- Rotas processing mode
    XF_RP_MODE : constant := 1;
    -- Gross Beta limit (deg)
    XF_RP_GROSSBETA : constant := 2;
    -- ASTAT 0 Beta limit (deg)
    XF_RP_BETALIM : constant := 3;
    -- ASTAT 0 delta-t limit (min)
    XF_RP_DELTATLIM : constant := 4;
    -- ASTAT 0 delta-height limit (km)
    XF_RP_DELTAHLIM : constant := 5;
    -- ASTAT 2 multiplier
    XF_RP_ASTAT2MULT : constant := 6;
    -- Residual print flag
    XF_RP_PRTFLAG : constant := 7;
    -- Retag ASTAT 1 ob flag
    XF_RP_RETAGFLAG : constant := 8;
    -- Light-time correction flag
    XF_RP_LTC : constant := 9;
    -- Maximum number of ALLEL assoc's to compute
    XF_RP_NUMASSOC : constant := 10;
    -- Diagnostic print flag
    XF_RP_DIAGNOSTIC : constant := 11;
    -- Covariance print flag
    XF_RP_PRTCOV : constant := 12;
    -- Perform track processing
    XF_RP_TRACKFLAG : constant := 13;
    -- Retagged ob are removed from further association
    XF_RP_REMRETAG : constant := 14;
    -- Debias ob flag
    XF_RP_DEBIAS : constant := 15;
    -- Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
    XF_RP_RESCOMPMETH : constant := 16;
    
    -- ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
    -- Gross Beta limit (deg)
    XA_RT_PARMS_GROSSBETA : constant := 1;
    -- ASTAT 0 Beta limit (deg)
    XA_RT_PARMS_BETALIM : constant := 2;
    -- ASTAT 0 delta-t limit (min)
    XA_RT_PARMS_DELTATLIM : constant := 3;
    -- ASTAT 0 delta-height limit (km)
    XA_RT_PARMS_DELTAHLIM : constant := 4;
    -- ASTAT 2 multiplier
    XA_RT_PARMS_ASTAT2MULT : constant := 5;
    -- Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
    XA_RT_PARMS_LTC : constant := 6;
    -- debias ob flag: 0= do not debias, 1= debias ob
    XA_RT_PARMS_DEBIAS : constant := 7;
    -- Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
    XA_RT_PARMS_RESCOMPMETH : constant := 8;
    -- Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
    XA_RT_PARMS_ANNUALAB : constant := 9;
    -- Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
    XA_RT_PARMS_DIURNALAB : constant := 10;
    XA_RT_PARMS_SIZE : constant := 16;
    
    -- ROTAS Association Multipliers
    -- ASTAT 1 Beta multiplier for Synchronous
    XA_ASSOCMULTP_BETA_SYN : constant := 0;
    -- ASTAT 1 Delta-t multiplier for Synchronous
    XA_ASSOCMULTP_DELTAT_SYN : constant := 1;
    -- ASTAT 1 Delta-height multiplier for Synchronous
    XA_ASSOCMULTP_DELTAH_SYN : constant := 2;
    -- ASTAT 1 Beta multiplier for Deep-space
    XA_ASSOCMULTP_BETA_DS : constant := 3;
    -- ASTAT 1 Delta-t multiplier for Deep-space
    XA_ASSOCMULTP_DELTAT_DS : constant := 4;
    -- ASTAT 1 Delta-height multiplier for Deep-space
    XA_ASSOCMULTP_DELTAH_DS : constant := 5;
    -- ASTAT 1 Beta multiplier for Decaying
    XA_ASSOCMULTP_BETA_DCY : constant := 6;
    -- ASTAT 1 Delta-t multiplier for Decaying
    XA_ASSOCMULTP_DELTAT_DCY : constant := 7;
    -- ASTAT 1 Delta-height multiplier for Decaying
    XA_ASSOCMULTP_DELTAH_DCY : constant := 8;
    -- ASTAT 1 Beta multiplier for Routine
    XA_ASSOCMULTP_BETA_RTN : constant := 9;
    -- ASTAT 1 Delta-t multiplier for Routine
    XA_ASSOCMULTP_DELTAT_RTN : constant := 10;
    -- ASTAT 1 Delta-height multiplier for Routine
    XA_ASSOCMULTP_DELTAH_RTN : constant := 11;
    
    XA_ASSOCMULTP_SIZE : constant := 12;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Rotas DLL for use in the program
    function RotasInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasInit";

    -- Returns information about the current version of Rotas DLL. 
    -- The information is placed in the string parameter passed in.
    procedure RotasGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetInfo";
        --infoStr            : String    (1..128);

    -- Loads Rotas-related parameters from an input text file
    function RotasLoadFile
        (rotasInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasLoadFile";
        --rotasInputFile     : String    (1..512);

    -- Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
    function RotasLoadFileAll
        (rotasInputFile    : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasLoadFileAll";
        --rotasInputFile     : String    (1..512);

    -- Loads a single Rotas-typed card
    function RotasLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasLoadCard";
        --card               : String    (1..512);

    -- Saves current Rotas settings to a file
    function RotasSaveFile
        (rotasFile         : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasSaveFile";
        --rotasFile          : String    (1..512);

    -- Builds and returns the Rotas P-Card from the current Rotas settings
    procedure RotasGetPCard
        (rotasPCard        : out     String)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetPCard";
        --rotasPCard         : String    (1..512);

    -- Retrieves all Rotas control parameters with a single function call
    procedure RotasGetPAll
        (rotasMode         : out     String;
        grossBeta          : out     Long_Float;
        betaLimit          : out     Long_Float;
        deltaTLimit        : out     Long_Float;
        deltaHLimit        : out     Long_Float;
        astat2Mult         : out     Integer;
        prtFlag            : out     Integer;
        retagFlag          : out     Integer;
        ltcFlag            : out     Integer;
        maxNumAssoc        : out     Integer;
        debiasFlag         : out     Integer;
        diagMode           : out     Integer;
        covPrtFlag         : out     Integer;
        isTrackMode        : out     Integer;
        remRetagObs        : out     Integer;
        extArr             : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetPAll";
        --rotasMode          : String    (1..5);
        --extArr             : Double1D  (1..128);

    -- Sets all Rotas control parameters with a single function call
    procedure RotasSetPAll
        (rotasMode         : in      String;
        grossBeta          :         Long_Float;
        betaLimit          :         Long_Float;
        deltaTLimit        :         Long_Float;
        deltaHLimit        :         Long_Float;
        astat2Mult         :         Integer;
        prtFlag            :         Integer;
        retagFlag          :         Integer;
        ltcFlag            :         Integer;
        maxNumAssoc        :         Integer;
        debiasFlag         :         Integer;
        diagMode           :         Integer;
        covPrtFlag         :         Integer;
        isTrackMode        :         Integer;
        remRetagObs        :         Integer;
        extArr             : in      Double1D)
    with Import => True,
        Convention => C,
        External_Name => "RotasSetPAll";
        --rotasMode          : String    (1..5);
        --extArr             : Double1D  (1..128);

    -- Retrieves the value of a specified Rotas control parameter (P-card field)
    -- 
    -- The table below shows the values for the xf_RP parameter:
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    --  1  Rotas processing mode
    --  2  Gross Beta limit (deg)
    --  3  ASTAT 0 Beta limit (deg)
    --  4  ASTAT 0 delta-t limit (min)
    --  5  ASTAT 0 delta-height limit (km)
    --  6  ASTAT 2 multiplier
    --  7  Residual print flag
    --  8  Retag ASTAT 1 ob flag
    --  9  Light-time correction flag
    -- 10  Maximum number of ALLEL assoc's to compute
    -- 11  Diagnostic print flag
    -- 12  Covariance print flag
    -- 13  Perform track processing
    -- 14  Retagged ob are removed from further association
    -- 15  Debias ob flag
    -- 
    procedure RotasGetPField
        (xf_RP             :         Integer;
        retVal             : out     String)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetPField";
        --retVal             : String    (1..512);

    --  Sets the value of a specified Rotas control parameter (P-card field)
    -- See RotasGetPField for values for the xf_RP parameter.
    procedure RotasSetPField
        (xf_RP             :         Integer;
        valueStr           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "RotasSetPField";
        --valueStr           : String    (1..512);

    -- Gets ASTAT 1 association multipliers
    procedure RotasGetAssocMultipliers
        (xa_assocMultp     : out     Int1D)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetAssocMultipliers";
        --xa_assocMultp      : Int1D     (1..12);

    -- Sets ASTAT 1 association multipliers
    procedure RotasSetAssocMultipliers
        (xa_assocMultp     : in      Int1D)
    with Import => True,
        Convention => C,
        External_Name => "RotasSetAssocMultipliers";
        --xa_assocMultp      : Int1D     (1..12);

    -- Resets all Rotas control parameters back to their default values
    procedure RotasResetAll
    with Import => True,
        Convention => C,
        External_Name => "RotasResetAll";

    -- Determines if the observation/satellite pair can possibly have an association
    function RotasHasASTAT
        (obsKey            :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasHasASTAT";

    -- Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
    function RotasHasASTAT_MT
        (xa_rt_parms       : in      Double1D;
        obsKey             :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasHasASTAT_MT";
        --xa_rt_parms        : Double1D  (1..16);

    -- Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
    function RotasHasASTATMultp_MT
        (xa_assocMultp     : in      Int1D;
        xa_rt_parms        : in      Double1D;
        obsKey             :         Long_Long_Integer;
        satKey             :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasHasASTATMultp_MT";
        --xa_assocMultp      : Int1D     (1..12);
        --xa_rt_parms        : Double1D  (1..16);

    -- Computes residuals for one observation against one satellite
    -- Obs type 0 (range rate only) cannot be used to compute residuals.
    function RotasComputeObsResiduals
        (obsKey            :         Long_Long_Integer;
        satKey             :         Long_Long_Integer;
        xa_ObsRes          : out     Double1D;
        satElts            : out     Double1D;
        obElts             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasComputeObsResiduals";
        --xa_ObsRes          : Double1D  (1..100);
        --satElts            : Double1D  (1..9);
        --obElts             : Double1D  (1..9);

    -- Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
    -- Obs type 0 (range rate only) cannot be used to compute residuals.
    function RotasComputeObsResiduals_MT
        (xa_rt_parms       : in      Double1D;
        obsKey             :         Long_Long_Integer;
        satKey             :         Long_Long_Integer;
        xa_ObsRes          : out     Double1D;
        satElts            : out     Double1D;
        obElts             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasComputeObsResiduals_MT";
        --xa_rt_parms        : Double1D  (1..16);
        --xa_ObsRes          : Double1D  (1..100);
        --satElts            : Double1D  (1..9);
        --obElts             : Double1D  (1..9);

    -- Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
    -- Obs type 0 (range rate only) cannot be used to compute residuals.
    function RotasComputeObsResidualsMultp_MT
        (xa_assocMultp     : in      Int1D;
        xa_rt_parms        : in      Double1D;
        obsKey             :         Long_Long_Integer;
        satKey             :         Long_Long_Integer;
        xa_ObsRes          : out     Double1D;
        satElts            : out     Double1D;
        obElts             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasComputeObsResidualsMultp_MT";
        --xa_assocMultp      : Int1D     (1..12);
        --xa_rt_parms        : Double1D  (1..16);
        --xa_ObsRes          : Double1D  (1..100);
        --satElts            : Double1D  (1..9);
        --obElts             : Double1D  (1..9);

    -- Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
    function RotasComputeTrackResiduals
        (obsKeys           : in      Long1D_Ptr;
        trackStartIdx      :         Integer;
        trackLength        :         Integer;
        satKey             :         Long_Long_Integer;
        xa_ObsRes          : out     Double1D;
        trackObsKeys       : out     Long1D;
        b3ObsCard          : out     String;
        satElts            : out     Double1D;
        obElts             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasComputeTrackResiduals";
        --xa_ObsRes          : Double1D  (1..100);
        --trackObsKeys       : Long1D    (1..3);
        --b3ObsCard          : String    (1..512);
        --satElts            : Double1D  (1..9);
        --obElts             : Double1D  (1..9);

    -- Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
    function RotasComputeTrackResiduals_MT
        (xa_assocMultp     : in      Int1D;
        xa_rt_parms        : in      Double1D;
        obsKeys            : in      Long1D_Ptr;
        trackStartIdx      :         Integer;
        trackLength        :         Integer;
        satKey             :         Long_Long_Integer;
        xa_ObsRes          : out     Double1D;
        trackObsKeys       : out     Long1D;
        b3ObsCard          : out     String;
        satElts            : out     Double1D;
        obElts             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasComputeTrackResiduals_MT";
        --xa_assocMultp      : Int1D     (1..12);
        --xa_rt_parms        : Double1D  (1..16);
        --xa_ObsRes          : Double1D  (1..100);
        --trackObsKeys       : Long1D    (1..3);
        --b3ObsCard          : String    (1..512);
        --satElts            : Double1D  (1..9);
        --obElts             : Double1D  (1..9);

    -- Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
    function RotasCompObResDirect
        (obDataArr         : in      Double1D;
        satDataArr         : in      Double1D;
        xa_ObsRes          : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "RotasCompObResDirect";
        --obDataArr          : Double1D  (1..16);
        --satDataArr         : Double1D  (1..16);
        --xa_ObsRes          : Double1D  (1..100);

    -- Returns the name of the retag obs file
    procedure RotasGetRetagObsFile
        (retagObsFile      : out     String)
    with Import => True,
        Convention => C,
        External_Name => "RotasGetRetagObsFile";
        --retagObsFile       : String    (1..512);

    -- Sets the file name of the retag obs file
    procedure RotasSetRetagObsFile
        (retagObsFile      : in      String)
    with Import => True,
        Convention => C,
        External_Name => "RotasSetRetagObsFile";
        --retagObsFile       : String    (1..512);


end RotasDll;

-- ========================= End of auto generated code ==========================
