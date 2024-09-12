-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package BatchDCDll is
    -- Different DC propagation method
    -- DC propagator method is GP
    DCPROPTYPE_GP : constant := 0;
    -- DC propagator method is SGP4-XP
    DCPROPTYPE_XP : constant := 4;
    -- DC propagator method is SP
    DCPROPTYPE_SP : constant := 99;
    
    -- DC iterating returned code
    -- DC was successful
    ITERCODE_DONE : constant := 0;
    -- DC has error
    ITERCODE_ERROR : constant := 1;
    -- DC is still iterating
    ITERCODE_ITERATING : constant := 2;
    -- DC diverged but trying to recover
    ITERCODE_DIVERGED : constant := 3;
    
    -- indexes represent epoch placement options
    -- Nodal crossing nearest latest obs
    EPFLG_NODALXINGLATESTOB : constant := 0;
    -- Exact time of latest obs
    EPFLG_LATESTOB : constant := 1;
    -- Nodal crossing closest to specified time
    EPFLG_NODALXINGATTIME : constant := 2;
    -- Do not change epoch
    EPFLG_ATEPOCH : constant := 3;
    -- Exact at specified time
    EPFLG_ATSPECIFIEDTIME : constant := 4;
    -- Middle of obs span
    EPFLG_MIDDLEOBSSPAN : constant := 5;
    -- Exact time of earliest obs
    EPFLG_EARLIESTOB : constant := 6;
    -- Beginning of day of Epoch, good for eGP
    EPFLG_BEGINDAYEPOCH : constant := 7;
    -- Beginning of day of Last obs
    EPFLG_BEGINDAYLATESTOB : constant := 8;
    -- Nodal crossing nearest epoch, good for eGP
    EPFLG_NODALXINGEPOCH : constant := 9;
    
    -- Different correction types
    CORT_TIME : constant := 0;
    CORT_PLANE : constant := 1;
    CORT_7ELT : constant := 2;
    CORT_INTRK : constant := 3;
    CORT_8ELT : constant := 4;
    CORT_SUBELT : constant := 5;
    
    -- Different element correction order
    -- 7-element only [default]
    CORORD_7ELT : constant := 0;
    -- time (SP: L, n, B), then 7-element
    CORORD_TIM7ELT : constant := 1;
    -- time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
    CORORD_TIMPLN7ELT : constant := 2;
    -- plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
    CORORD_PLNTIM7ELT : constant := 3;
    -- plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
    CORORD_PLN7ELT : constant := 4;
    -- n-only, then 7-element
    CORORD_N7ELT : constant := 5;
    -- L-only, then 7-element
    CORORD_L7ELT : constant := 6;
    -- L & n only, then 7-element
    CORORD_LN7ELT : constant := 7;
    -- Af/Ag, L, n only, then 7-element
    CORORD_AFAGLN7ELT : constant := 8;
    -- 6-element, then 7-element
    CORORD_6ELT7ELT : constant := 9;
    
    
    -- indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
    -- Not being used yet
    XA_EGPCTRL_OPTION : constant := 0;
    -- DC element type: 0=SPG4, 4=SGP4-XP
    XA_EGPCTRL_DCELTTYPE : constant := 1;
    -- Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
    XA_EGPCTRL_STARTMSE : constant := 2;
    -- Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
    XA_EGPCTRL_STOPMSE : constant := 3;
    -- Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
    XA_EGPCTRL_STEPMIN : constant := 4;
    -- Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
    XA_EGPCTRL_DRAGCOR : constant := 5;
    -- agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
    XA_EGPCTRL_AGOMCOR : constant := 6;
    -- Epoch placement flag - see EPFLG_? for available options
    XA_EGPCTRL_EPFLG : constant := 7;
    -- Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
    XA_EGPCTRL_NEWEPOCH : constant := 8;
    
    -- Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
    XA_EGPCTRL_BVAL : constant := 9;
    -- Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
    XA_EGPCTRL_AGOMVAL : constant := 10;
    
    -- correction order
    XA_EGPCTRL_ORDERCOR : constant := 11;
    -- Max # of iterations before declaring divergence [10]
    XA_EGPCTRL_MAXOFITERS : constant := 12;
    
    -- satellite number
    XA_EGPCTRL_SATNUM : constant := 63;
    
    XA_EGPCTRL_SIZE : constant := 64;
    
    
    
    -- DC setting parameters
    
    MAX_PARAMS : constant := 256;
    
    
    -- DC print options
    -- print first and last iteration
    DC_PRINT_FIRSTBEST : constant := 0;
    -- print every pass and summary
    DC_PRINT_ALLPASS : constant := 1;
    -- print summary only
    DC_PRINT_SUMONLY : constant := 2;
    -- print output elemenets only
    DC_PRINT_ELTONLY : constant := 3;
    -- do not print anything
    DC_PRINT_NONE : constant := 4;
    
    -- Iteration summary options
    -- print summary every iteration in Keplerian elts
    ITER_SUM_KEP : constant := 1;
    -- print summary every iteration in Equinoctial elts
    ITER_SUM_EQNX : constant := 2;
    
    -- indexes for integer data fields
    -- DC print option
    XAI_CTRL_PRINTOPTION : constant := 0;
    -- Apply biases from sensor file
    XAI_CTRL_DEBIASOBS : constant := 1;
    -- Weighed DC flag
    XAI_CTRL_WEIGHTEDDC : constant := 2;
    -- Epoch placement flag - see EPFLG_? for available options
    XAI_CTRL_EPOCHOPTION : constant := 3;
    -- Element correction flag - Ag
    XAI_CTRL_CORRECT_AG : constant := 4;
    -- Element correction flag - Af
    XAI_CTRL_CORRECT_AF : constant := 5;
    -- Element correction flag - Psi
    XAI_CTRL_CORRECT_PSI : constant := 6;
    -- Element correction flag - Chi
    XAI_CTRL_CORRECT_CHI : constant := 7;
    -- Element correction flag - L
    XAI_CTRL_CORRECT_L : constant := 8;
    -- Element correction flag - N
    XAI_CTRL_CORRECT_N : constant := 9;
    -- Element correction flag - B* (SGP4) B (SP)
    XAI_CTRL_CORRECT_B : constant := 10;
    -- Element correction flag - Agom (SP)
    XAI_CTRL_CORRECT_AGOM : constant := 11;
    -- Correction order
    XAI_CTRL_CORRECTORDER : constant := 12;
    -- Correct by the specified correction order for 1 iteration only
    XAI_CTRL_FOR1ITERONLY : constant := 13;
    -- Flag specifies which residuals are used for RMS calculation and convergence
    XAI_CTRL_RESIDSELECT : constant := 14;
    -- Flag; if set, produce sensor performance analysis summary
    XAI_CTRL_SENPERFORM : constant := 15;
    -- Flag; if set, deweight according to # of obs per track
    XAI_CTRL_DWOBSPERTRCK : constant := 16;
    -- Iteration summary control
    XAI_CTRL_ITERSUMOPT : constant := 17;
    -- Partials method
    XAI_CTRL_PARTIALMETH : constant := 18;
    -- Light time correction control
    XAI_CTRL_LTC : constant := 19;
    -- Number of iteration to allow no auto rejection of residuals
    XAI_CTRL_BRUCE : constant := 20;
    -- Propagation method - GP=0, XP=4, SP=99
    XAI_CTRL_PROPMETHOD : constant := 21;
    -- Flag; if set, correct B* vs X
    XAI_CTRL_CORRECTBVSX : constant := 22;
    -- Max # of iterations before declaring divergence
    XAI_CTRL_MAXOFITERS : constant := 23;
    -- Use predicted RMS versus previous RMS for convergence testing
    XAI_CTRL_USEPREDRMS : constant := 24;
    -- Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
    XAI_CTRL_RESCOMPMETH : constant := 25;
    -- Flag; if set, use angle rates (obstypes = 4, 11)
    XAI_CTRL_USEANGRATES : constant := 26;
    
    XAI_CTRL_SIZE : constant := 256;
    
    
    
    -- indexes for real data fields
    -- RMS multiplier
    XAR_CTRL_RMSMULT : constant := 0;
    -- Time of specified epoch
    XAR_CTRL_USEREPOCH : constant := 1;
    -- Convergence criteria on time correction (%)
    XAR_CTRL_CNVCRITONT : constant := 2;
    -- First pass delta-t rejection criteria
    XAR_CTRL_1STPASDELTAT : constant := 3;
    -- Convergence criteria on 7-elt correction (%)
    XAR_CTRL_CNVCRITON7ELT : constant := 4;
    -- reset value for B term in subset correction
    XAR_CTRL_BRESET : constant := 5;
    XAR_CTRL_SIZE : constant := 256;
    
    
    -- indexes for accessing DC's integer data
    -- satellite number
    XAI_DCELTS_SATNUM : constant := 0;
    -- elset number
    XAI_DCELTS_ELSETNUM : constant := 1;
    -- elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
    XAI_DCELTS_ORBTYPE : constant := 2;
    -- propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
    XAI_DCELTS_PROPTYPE : constant := 3;
    -- spectr mode
    XAI_DCELTS_SPECTR : constant := 4;
    -- epoch revolution number
    XAI_DCELTS_REVNUM : constant := 5;
    -- correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
    XAI_DCELTS_CORRTYPE : constant := 6;
    
    -- total iteration count
    XAI_DCELTS_ITERCOUNT : constant := 10;
    -- sub iteration count
    XAI_DCELTS_SUBITER : constant := 11;
    -- # residual accepted
    XAI_DCELTS_RESACC : constant := 12;
    -- # residual rejected
    XAI_DCELTS_RESREJ : constant := 13;
    
    -- 20-28 correction element flags
    XAI_DCELTS_CORRFLGS : constant := 20;
    
    XAI_DCELTS_SIZE : constant := 256;
    
    -- indexes for accessing DC's real data
    -- elset's epoch time in days since 1950 UTC
    XAR_DCELTS_EPOCHDS50UTC : constant := 0;
    -- n-dot/2  (for SGP, eph-type = 0)
    XAR_DCELTS_NDOT : constant := 1;
    -- n-double-dot/6  (for SGP, eph-type = 0)
    XAR_DCELTS_N2DOT : constant := 2;
    -- either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
    XAR_DCELTS_BFIELD : constant := 3;
    -- SGP4-XP/SP agom (m**2/kg)
    XAR_DCELTS_AGOM : constant := 4;
    -- SP outgassing parameter (km/s**2)
    XAR_DCELTS_OGPARM : constant := 5;
    -- semi major axis (km)
    XAR_DCELTS_KEP_A : constant := 6;
    -- eccentricity
    XAR_DCELTS_KEP_E : constant := 7;
    -- inclination (deg)
    XAR_DCELTS_KEP_INCLI : constant := 8;
    -- mean anamoly (deg)
    XAR_DCELTS_KEP_MA : constant := 9;
    -- right ascension of the ascending node (deg)
    XAR_DCELTS_KEP_NODE : constant := 10;
    -- argument of perigee (deg)
    XAR_DCELTS_KEP_OMEGA : constant := 11;
    -- AF
    XAR_DCELTS_EQNX_AF : constant := 12;
    -- AG
    XAR_DCELTS_EQNX_AG : constant := 13;
    -- CHI
    XAR_DCELTS_EQNX_CHI : constant := 14;
    -- PSI
    XAR_DCELTS_EQNX_PSI : constant := 15;
    -- mean longitude (deg)
    XAR_DCELTS_EQNX_L : constant := 16;
    -- mean motion (revs/day)
    XAR_DCELTS_EQNX_N : constant := 17;
    -- ECI posX (km)
    XAR_DCELTS_POSX : constant := 18;
    -- ECI posY (km)
    XAR_DCELTS_POSY : constant := 19;
    -- ECI posZ (km)
    XAR_DCELTS_POSZ : constant := 20;
    -- ECI velX (km/s)
    XAR_DCELTS_VELX : constant := 21;
    -- ECI velY (km/s)
    XAR_DCELTS_VELY : constant := 22;
    -- ECI velZ (km/s)
    XAR_DCELTS_VELZ : constant := 23;
    
    -- RMS (km)
    XAR_DCELTS_RMS : constant := 40;
    -- unweighted RMS (km)
    XAR_DCELTS_RMSUNWTD : constant := 41;
    -- delta T RMS (min)
    XAR_DCELTS_DELTATRMS : constant := 42;
    -- beta RMS (deg)
    XAR_DCELTS_BETARMS : constant := 43;
    -- delta height RMS (km)
    XAR_DCELTS_DELTAHTRMS : constant := 44;
    -- convergence value (km)
    XAR_DCELTS_CONVQLTY : constant := 45;
    -- predicted RMS (km)
    XAR_DCELTS_RMSPD : constant := 46;
    
    -- covariance diagonal L
    XAR_DCELTS_COVL : constant := 60;
    -- covariance diagonal N
    XAR_DCELTS_COVN : constant := 61;
    -- covariance diagonal CHI
    XAR_DCELTS_COVCHI : constant := 62;
    -- covariance diagonal PSI
    XAR_DCELTS_COVPSI : constant := 63;
    -- covariance diagonal AF
    XAR_DCELTS_COVAF : constant := 64;
    -- covariance diagonal AG
    XAR_DCELTS_COVAG : constant := 65;
    -- covariance diagonal BTERM
    XAR_DCELTS_COVBTERM : constant := 66;
    -- covariance not used
    XAR_DCELTS_COVNA : constant := 67;
    -- covariance diagonal AGOM
    XAR_DCELTS_COVAGOM : constant := 68;
    
    -- max partial residual (km)
    XAR_DCELTS_XMAX : constant := 70;
    -- max velocity resid (km/sec)
    XAR_DCELTS_XMAX2 : constant := 71;
    -- max beta residual (deg)
    XAR_DCELTS_XMAX3 : constant := 72;
    -- max delta-t residual (min)
    XAR_DCELTS_XMAX4 : constant := 73;
    -- low argument of latitude coverage (deg)
    XAR_DCELTS_PATCL : constant := 74;
    -- high argument of latitude coverage (deg)
    XAR_DCELTS_PATCH : constant := 75;
    
    -- equinoctial covariance matrix - the lower triangular half 200-244
    XAR_DCELTS_EQNXCOVMTX : constant := 200;
    
    XAR_DCELTS_SIZE : constant := 256;
    
    -- indexes for accessing obs rejection flags
    -- satellite has decayed at the time of obs
    XA_REJFLG_DECAYED : constant := 0;
    -- obs residual computation error code
    XA_REJFLG_ERROR : constant := 1;
    -- right ascension residual rejected
    XA_REJFLG_RA : constant := 2;
    -- beta residual rejected
    XA_REJFLG_BETA : constant := 3;
    -- declination residual rejected
    XA_REJFLG_DEC : constant := 4;
    -- delta h residual rejected
    XA_REJFLG_HEIGHT : constant := 5;
    -- range residual rejected
    XA_REJFLG_RANGE : constant := 6;
    -- range rate residual rejected
    XA_REJFLG_RR : constant := 7;
    -- delta t residual rejected
    XA_REJFLG_TIME : constant := 8;
    
    XA_REJFLG_SIZE : constant := 32;
    
    -- indexes for accessing DC's acceptance criteria data
    -- standard - days from epoch
    XA_AC_STD_EPOCH : constant := 0;
    -- standard - number of residuals
    XA_AC_STD_NORES : constant := 1;
    -- standard - percent residual
    XA_AC_STD_PRCNTRES : constant := 2;
    -- standard - RMS (km)
    XA_AC_STD_RMS : constant := 3;
    -- standard - obs span (days)
    XA_AC_STD_OBSSPAN : constant := 4;
    -- standard - change in plan (deg)
    XA_AC_STD_DELTAW : constant := 5;
    -- standard - change in abar
    XA_AC_STD_DELTAABAR : constant := 6;
    -- standard - change in N (rev/day)
    XA_AC_STD_DELTAN : constant := 7;
    -- standard - change in B term
    XA_AC_STD_DELTAB : constant := 8;
    
    -- actual - days from epoch
    XA_AC_ACT_EPOCH : constant := 20;
    -- actual - number of residuals
    XA_AC_ACT_NORES : constant := 21;
    -- actual - percent residual
    XA_AC_ACT_PRCNTRES : constant := 22;
    -- actual - RMS (km)
    XA_AC_ACT_RMS : constant := 23;
    -- actual - obs span (days)
    XA_AC_ACT_OBSSPAN : constant := 24;
    -- actual - change in plan (deg)
    XA_AC_ACT_DELTAW : constant := 25;
    -- actual - change in abar
    XA_AC_ACT_DELTAABAR : constant := 26;
    -- actual - change in N (rev/day)
    XA_AC_ACT_DELTAN : constant := 27;
    -- actual - change in B term
    XA_AC_ACT_DELTAB : constant := 28;
    
    XA_AC_SIZE : constant := 64;
    
    
    -- indexes for accessing DC's string character data - index to index of a substring
    -- satellite's international designator
    XAS_DCELTS_SATNAME_0TO7 : constant := 0;
    
    XAS_DCELTS_SIZE : constant := 512;
    
    -- Different DC control modes
    -- Use DC global settings settings
    DCCTRL_MODE_GLOBAL : constant := 0;
    -- Use provided/local DC settings
    DCCTRL_MODE_LOCAL : constant := 1;
    
    
    -- indexes of DC control parameters
    -- DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
    XA_DCCTRL_MODE : constant := 0;
    -- propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
    XA_DCCTRL_PROPMETHOD : constant := 1;
    -- debias obs flag: 0= do not debias obs, 1= debias obs
    XA_DCCTRL_DEBIASOBS : constant := 2;
    -- element correction order
    XA_DCCTRL_CORRECTORDER : constant := 3;
    -- epoch placement flag - see EPFLG_? for available options
    XA_DCCTRL_EPOCHOPTION : constant := 4;
    -- use predicted RMS versus previous RMS for convergenece testing
    XA_DCCTRL_USEPREDRMS : constant := 5;
    -- residual computation selection
    XA_DCCTRL_RESIDSELECT : constant := 6;
    -- correct by the specified correction order for 1 iteration only
    XA_DCCTRL_FOR1ITERONLY : constant := 7;
    -- max # of iterations before declaring divergence
    XA_DCCTRL_MAXOFITERS : constant := 8;
    -- apply weighed DC flag
    XA_DCCTRL_WEIGHTEDDC : constant := 9;
    -- light time correction control
    XA_DCCTRL_LTC : constant := 10;
    -- number of iteration to allow no auto rejection of residuals
    XA_DCCTRL_BRUCE : constant := 11;
    -- flag; if set, deweight according to # of obs per track
    XA_DCCTRL_DWOBSPERTRCK : constant := 12;
    -- partials method
    XA_DCCTRL_PARTIALMETH : constant := 13;
    -- Element correction flag - Ag
    XA_DCCTRL_CORRECT_AG : constant := 20;
    -- Element correction flag - Af
    XA_DCCTRL_CORRECT_AF : constant := 21;
    -- Element correction flag - Psi
    XA_DCCTRL_CORRECT_PSI : constant := 22;
    -- Element correction flag - Chi
    XA_DCCTRL_CORRECT_CHI : constant := 23;
    -- Element correction flag - L
    XA_DCCTRL_CORRECT_L : constant := 24;
    -- Element correction flag - N
    XA_DCCTRL_CORRECT_N : constant := 25;
    -- Element correction flag - B* (SGP4) B (SP)
    XA_DCCTRL_CORRECT_B : constant := 26;
    -- Element correction flag - Agom (SP)
    XA_DCCTRL_CORRECT_AGOM : constant := 27;
    -- Convergence criteria on time (%) [5.0%]
    XA_DCCTRL_CNVCRITONT : constant := 30;
    -- First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
    XA_DCCTRL_1STPASDELTAT : constant := 31;
    -- Convergence criteria on 7-elt correction (%) [1.0%]
    XA_DCCTRL_CNVCRITON7ELT : constant := 32;
    -- RMS multiplier [4.0]
    XA_DCCTRL_RMSMULT : constant := 33;
    -- reset value for B term in subset correction [0.01]
    XA_DCCTRL_BRESET : constant := 34;
    -- user's specified epoch - only when epoch placement option = 4 exact at specified time
    XA_DCCTRL_USEREPOCH : constant := 35;
    -- SP only - density consider parameter
    XA_DCCTRL_CONSIDER : constant := 40;
    -- GP only - residual computation method
    XA_DCCTRL_GPRCM : constant := 40;
    -- GP only - SGP4: correct B* vs X, SGP4-XP: correct B
    XA_DCCTRL_CORRECTBVSX : constant := 41;
    
    XA_DCCTRL_SIZE : constant := 64;
    
    -- Indexes of paramters using in IomodDC()
    -- Iomod/DC control mode (not yet used)
    XA_IOMDC_MODE : constant := 0;
    -- DC element type, see DCPROPTYPE_? for available options
    XA_IOMDC_DCELTTYPE : constant := 1;
    -- Epoch placement flag - see EPFLG_? for available options
    XA_IOMDC_EPFLG : constant := 2;
    -- Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
    XA_IOMDC_NEWEPOCH : constant := 3;
    -- Correction order
    XA_IOMDC_ORDERCOR : constant := 4;
    -- IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
    XA_IOMDC_OBSSELMODE : constant := 5;
    -- residual computation selection
    XA_IOMDC_RESIDSELECT : constant := 6;
    -- correct by the specified correction order for 1 iteration only
    XA_IOMDC_FOR1ITERONLY : constant := 7;
    -- max # of iterations before declaring divergence
    XA_IOMDC_MAXOFITERS : constant := 8;
    -- apply weighed DC flag
    XA_IOMDC_WEIGHTEDDC : constant := 9;
    -- light time correction control
    XA_IOMDC_LTC : constant := 10;
    -- number of iteration to allow no auto rejection of residuals
    XA_IOMDC_BRUCE : constant := 11;
    -- flag; if set, deweight according to # of obs per track
    XA_IOMDC_DWOBSPERTRCK : constant := 12;
    -- partials method
    XA_IOMDC_PARTIALMETH : constant := 13;
    -- debias obs flag: 0= do not debias obs, 1= debias obs
    XA_IOMDC_DEBIASOBS : constant := 14;
    -- use predicted RMS versus previous RMS for convergenece testing
    XA_IOMDC_USEPREDRMS : constant := 15;
    
    -- Element correction flag - Ag
    XA_IOMDC_CORRECT_AG : constant := 20;
    -- Element correction flag - Af
    XA_IOMDC_CORRECT_AF : constant := 21;
    -- Element correction flag - Psi
    XA_IOMDC_CORRECT_PSI : constant := 22;
    -- Element correction flag - Chi
    XA_IOMDC_CORRECT_CHI : constant := 23;
    -- Element correction flag - L
    XA_IOMDC_CORRECT_L : constant := 24;
    -- Element correction flag - N
    XA_IOMDC_CORRECT_N : constant := 25;
    -- Element correction flag - B* (SGP4) B (SP)
    XA_IOMDC_CORRECT_B : constant := 26;
    -- Element correction flag - Agom (SP)
    XA_IOMDC_CORRECT_AGOM : constant := 27;
    -- Convergence criteria on time (%) [5.0%]
    XA_IOMDC_CNVCRITONT : constant := 30;
    -- First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
    XA_IOMDC_1STPASDELTAT : constant := 31;
    -- Convergence criteria on 7-elt correction (%) [1.0%]
    XA_IOMDC_CNVCRITON7ELT : constant := 32;
    -- RMS multiplier [4.0]
    XA_IOMDC_RMSMULT : constant := 33;
    -- reset value for B term in subset correction [0.01]
    XA_IOMDC_BRESET : constant := 34;
    -- SP only - density consider parameter
    XA_IOMDC_CONSIDER : constant := 40;
    -- GP only - residual computation method
    XA_IOMDC_GPRCM : constant := 40;
    -- GP only - SGP4: correct B* vs X, SGP4-XP: correct B
    XA_IOMDC_CORRECTBVSX : constant := 41;
    
    -- see IOMDC_METHOD_? for available options
    XA_IOMDC_METHOD : constant := 50;
    -- The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
    -- number of half revolutions [0]
    XA_IOMDC_NHREV : constant := 51;
    -- solution number [0]
    XA_IOMDC_IND : constant := 52;
    -- maximum number of iterations [20]
    XA_IOMDC_MAXIT : constant := 53;
    -- the range guess to first observation (km) [36000]
    XA_IOMDC_RNG1 : constant := 54;
    -- the range guess to third observation (km) [36000]
    XA_IOMDC_RNG3 : constant := 55;
    -- partial derivative increment [1e-5]
    XA_IOMDC_PDINC : constant := 56;
    -- convergence criterion [1e-9]
    XA_IOMDC_CONVCR : constant := 57;
    
    -- IOMOD/DC parameter list size
    XA_IOMDC_SIZE : constant := 64;
    
    -- Different options for doing IOMOD/DC
    -- Default option which uses Herrick-Gibbs for all obs types
    IOMDC_METHOD_HB : constant := 0;
    -- Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
    IOMDC_METHOD_GDDEFLT : constant := 1;
    -- Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
    IOMDC_METHOD_GDSPEC : constant := 2;
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes BatchDC DLL for use in the program
    function BatchDCInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCInit";

    -- Returns information about the current version of BatchDC DLL. 
    -- The information is placed in the string parameter passed in.
    procedure BatchDCGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetInfo";
        --infoStr            : String    (1..128);

    -- Read/Load BatchDC input data from an input file
    function BatchDCLoadFile
        (batchDCInputFile  : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCLoadFile";
        --batchDCInputFile   : String    (1..512);

    -- Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
    function BatchDCLoadFileAll
        (batchDCInputFile  : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCLoadFileAll";
        --batchDCInputFile   : String    (1..512);

    -- Read/Load BatchDC-typed input data from an input card
    function BatchDCLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCLoadCard";
        --card               : String    (1..512);

    -- Builds and returns the DC parameter card (1P-Card) from the current DC settings
    procedure BatchDCGetPCard
        (dcPCard           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetPCard";
        --dcPCard            : String    (1..512);

    -- Saves any currently loaded BatchDC-related settings to a file
    function BatchDCSaveFile
        (batchDCFile       : in      String;
        saveMode           :         Integer;
        saveForm           :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSaveFile";
        --batchDCFile        : String    (1..512);

    -- Gets BatchDC parameter data (P Card) - all fields
    -- 
    -- The table below shows the structure of the integer array xai_ctrl:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     0DC print option
    --     1Apply biases from sensor file
    --     2Weighed DC flag
    --     3Epoch placement control
    --     4Element correction flag - Ag
    --     5Element correction flag - Af
    --     6Element correction flag - Psi
    --     7Element correction flag - Chi
    --     8Element correction flag - L
    --     9Element correction flag - N
    --     10Element correction flag - B* (SGP4) B (SP)
    --     11Element correction flag - Agom (SP)
    --     12Correction order
    --     13Correct by the specified correction order for 1 iteration only
    --     14Flag specifies which residuals are used for RMS calculation and convergence
    --     15Flag; if set, produce sensor performance analysis summary
    --     16Flag; if set, deweight according to # of obs per track
    --     17Iteration summary control
    --     18Partials method
    --     19Light time correction control
    --     20Number of iteration to allow no auto rejection of residuals
    --     21Propagation method
    --     22Flag; if set, correct B* vs X
    --     23Max # of iterations before declaring divergence
    --     24Use predicted RMS versus previous RMS for convergence testing
    -- 
    -- 
    -- The table below shows the structure of the real array xar_ctrl:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     0RMS multiplier
    --     1Time of specified epoch
    --     2Convergence criteria on time correction (%)
    --     3First pass delta-t rejection criteria
    --     4Convergence criteria on 7-elt correction (%)
    --     5Reset value for B term in subset correction
    -- 
    procedure BatchDCGetParams
        (xai_ctrl          : out     Int1D;
        xar_ctrl           : out     Double1D;
        xas_ctrl           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetParams";
        --xai_ctrl           : Int1D     (1..256);
        --xar_ctrl           : Double1D  (1..256);
        --xas_ctrl           : String    (1..512);

    -- Sets BatchDC parameter data (P Card) - all fields
    -- See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
    procedure BatchDCSetParams
        (xai_ctrl          : in      Int1D;
        xar_ctrl           : in      Double1D;
        xas_ctrl           : in      String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSetParams";
        --xai_ctrl           : Int1D     (1..256);
        --xar_ctrl           : Double1D  (1..256);
        --xas_ctrl           : String    (1..512);

    -- Returns DC control parameters using array format
    procedure BatchDCGetCtrlArr
        (xa_dcCtrl         : out     Double1D)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetCtrlArr";
        --xa_dcCtrl          : Double1D  (1..64);

    -- Sets DC control parameters using array format
    function BatchDCSetCtrlArr
        (xa_dcCtrl         : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSetCtrlArr";
        --xa_dcCtrl          : Double1D  (1..64);

    -- Initializes DC parameters for the satellite
    -- See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
    function BatchDCInitSat
        (satKey            :         Long_Long_Integer;
        numObs             : out     Integer;
        obsKeys            : out     Long1D_Ptr;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCInitSat";
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
    -- See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
    function BatchDCInitSatObsKeys
        (satKey            :         Long_Long_Integer;
        xa_dcCtrl          : in      Double1D;
        numObs             :         Integer;
        obsKeys            : in      Long1D_Ptr;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCInitSatObsKeys";
        --xa_dcCtrl          : Double1D  (1..64);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
    -- See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
    -- Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
    function BatchDCInitSatObsSel
        (satKey            :         Long_Long_Integer;
        xa_dcCtrl          : in      Double1D;
        xa_selob           : in      Double1D;
        numObs             : out     Integer;
        obsKeys            : out     Long1D_Ptr;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCInitSatObsSel";
        --xa_dcCtrl          : Double1D  (1..64);
        --xa_selob           : Double1D  (1..128);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs batch-least-square differential corrections to the specified satellite and
    -- return the corrected elements and related data - using all loaded obs
    -- 
    -- Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
    -- 
    -- See BatchDCGetParams for the structure of the xai_dcElts array.
    -- 
    -- The table below shows the structure of the integer array xar_dcElts:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --     0elset's epoch time in days since 1950 UTC
    --     1n-dot/2  (for SGP, eph-type = 0)
    --     2n-double-dot/6  (for SGP, eph-type = 0)
    --     3either SGP4 bStar (1/er) or SP bTerm (m2/kg)
    --     4SP agom (m**2/kg)
    --     5SP outgassing parameter (km/s**2)
    --     6semi major axis (km)
    --     7eccentricity
    --     8inclination (deg)
    --     9mean anamoly (deg)
    --     10right ascension of the ascending node (deg)
    --     11argument of perigee (deg)
    --     12AF
    --     13AG
    --     14CHI
    --     15PSI
    --     16mean longitude (deg)
    --     17mean motion (revs/day)
    --     18ECI posX (km)
    --     19ECI posY (km)
    --     20ECI posZ (km)
    --     21ECI velX (km/s)
    --     22ECI velY (km/s)
    --     23ECI velZ (km/s)
    --     
    --     40RMS (km)
    --     41unweighted RMS (km)
    --     42delta T RMS (min)
    --     43beta RMS (deg)
    --     44delta height RMS (km)
    --     45convergence value (km)
    --     46predicted RMS (km)
    --     
    --     60covariance diagonal L
    --     61covariance diagonal N
    --     62covariance diagonal CHI
    --     63covariance diagonal PSI
    --     64covariance diagonal AF
    --     65covariance diagonal AG
    --     66covariance diagonal BTERM
    --     67covariance not used
    --     68covariance diagonal AGOM
    --     
    --     200-244equinoctial covariance matrix - the lower triangular half 200-244
    -- 
    function BatchDCSolve
        (satKey            :         Long_Long_Integer;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSolve";
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs batch-least-square differential corrections to the specified satellite and
    -- return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
    -- Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
    -- See BatchDCGetParams for the structure of the xai_dcElts array.
    -- See BatchDCSolve for the structure of the xar_dcElts array.
    function BatchDCSolveSelObs
        (satKey            :         Long_Long_Integer;
        obsKeys            : in      Long1D_Ptr;
        numObs             :         Integer;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSolveSelObs";
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Removes a satellite, represented by the satKey, from BatchDC's memory
    function BatchDCRemoveSat
        (satKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCRemoveSat";

    -- Iterates DC for the satellite
    -- 
    -- xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
    -- 
    -- The table below shows the values contained in xa_ObsRes for each ob:
    -- 
    --     table
    --     
    --         Index
    --         Index Interpretation
    --     
    --      0  Azimuth residual (deg)
    --      1  Elevation residual (deg)
    --      2  Range residual (km)
    --      3  Height residual (deg)
    --      4  Beta residual (deg)
    --      5  Delta T residual (min)
    --      6  Vector magnitude (km)
    --      7  Time since epoch (days)
    --      8  True argument of latitude (deg)
    --      9  Revolution number  
    --     10  Range rate residual (km/sec)
    --     11  observation ASTAT
    --     12  observation type
    --     13  satellite true anomaly (deg)
    --     14  satellite elevation (deg)
    --     15  satellite maintenance category
    --     16  obs time in ds50UTC
    --     17  obs azimuth (deg)
    --     18  obs elevation (deg)
    --     19  Velocity angle residual (deg)
    --     20  Angular momentum residual (deg)
    --     21  Right ascension residual (deg) (for ob types 5, 9, 19)
    --     22  Declination residual (deg) (for ob types 5, 9, 19)
    --     23  Delta X position (km)
    --     24  Delta Y position (km)
    --     25  Delta Z position (km)
    --     26  Delta X velocity (km/sec)
    --     27  Delta Y velocity (km/sec)
    --     28  Delta Z velocity (km/sec)
    --     29  Angle only obs computed range (km)
    --     30  obs azimuth (deg)
    --     31  obs elevation (deg)
    -- 
    -- 
    -- See BatchDCGetParams for the structure of the xai_dcElts array.
    -- 
    -- See BatchDCSolve for the structure of the xar_dcElts array.
    function BatchDCIterate
        (satKey            :         Long_Long_Integer;
        xa_ObsRes          : out     Double2D_Ptr;
        xa_rejFlg          : out     Int2D_Ptr;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCIterate";
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Returns a concatenated string representation of a VCM generated by a successful DC
    function BatchDCGetVcm
        (satKey            :         Long_Long_Integer;
        vcmLines           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetVcm";
        --vcmLines           : String    (1..4000);

    -- Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
    -- in the main input file or using the BatchDCSetSpVOutFileName() function call
    procedure BatchDCGetSpVOut
        (spVOutFile        : out     String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetSpVOut";
        --spVOutFile         : String    (1..512);

    -- Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
    procedure BatchDCSetSpVOut
        (spVOutFile        : in      String)
    with Import => True,
        Convention => C,
        External_Name => "BatchDCSetSpVOut";
        --spVOutFile         : String    (1..512);

    -- Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
    procedure BatchDCResetAll
    with Import => True,
        Convention => C,
        External_Name => "BatchDCResetAll";

    -- Returns DC acceptance criteria data for the specified satellite
    function BatchDCGetAccptCrit
        (satKey            :         Long_Long_Integer;
        xa_ac              : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "BatchDCGetAccptCrit";
        --xa_ac              : Double1D  (1..64);

    -- Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
    -- returns the corrected SGP4/SGP4-XP elements and related data
    -- Note: No need to initialize VCM before calling this method
    function SpToEGP
        (satKey            :         Long_Long_Integer;
        xa_egpCtrl         : in out  Double1D;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpToEGP";
        --xa_egpCtrl         : Double1D  (1..64);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
    -- returns the corrected elements SGP4/SGP4-XP in form of a TLE
    -- Note: No need to initialize VCM before calling this method
    function SpToTle
        (satKey            :         Long_Long_Integer;
        xa_egpCtrl         : in out  Double1D;
        line1              : out     String;
        line2              : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpToTle";
        --xa_egpCtrl         : Double1D  (1..64);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Combines SpToEGP and SpToTle functions into just one function call
    -- Note: No need to initialize VCM before calling this method
    function SpToTleComb
        (satKey            :         Long_Long_Integer;
        xa_egpCtrl         : in out  Double1D;
        line1              : out     String;
        line2              : out     String;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpToTleComb";
        --xa_egpCtrl         : Double1D  (1..64);
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
    -- returns the corrected elements SGP4/SGP4-XP in form of a TLE
    -- Note: No need to initialize VCM before calling this method
    function SpToCsv
        (satKey            :         Long_Long_Integer;
        xa_egpCtrl         : in out  Double1D;
        csvLine            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpToCsv";
        --xa_egpCtrl         : Double1D  (1..64);
        --csvLine            : String    (1..512);

    -- Combines SpToEGP and SpToCsv functions into just one function call
    -- Note: No need to initialize VCM before calling this method
    function SpToCsvComb
        (satKey            :         Long_Long_Integer;
        xa_egpCtrl         : in out  Double1D;
        csvLine            : out     String;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SpToCsvComb";
        --xa_egpCtrl         : Double1D  (1..64);
        --csvLine            : String    (1..512);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
    -- returns the corrected SGP4/SGP4-XP elements and related data
    function ExtEphemToEGP
        (extEphFile        : in      String;
        xa_egpCtrl         : in out  Double1D;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ExtEphemToEGP";
        --extEphFile         : String    (1..512);
        --xa_egpCtrl         : Double1D  (1..64);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);

    -- Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
    function IomodDC
        (numObs            :         Integer;
        obsKeys            : in      Long1D_Ptr;
        xa_iomdc           : in      Double1D;
        xai_dcElts         : out     Int1D;
        xar_dcElts         : out     Double1D;
        xas_dcElts         : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "IomodDC";
        --xa_iomdc           : Double1D  (1..64);
        --xai_dcElts         : Int1D     (1..256);
        --xar_dcElts         : Double1D  (1..256);
        --xas_dcElts         : String    (1..512);


end BatchDCDll;

-- ========================= End of auto generated code ==========================
