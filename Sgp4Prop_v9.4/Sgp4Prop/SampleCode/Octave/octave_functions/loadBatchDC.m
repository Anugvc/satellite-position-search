% This wrapper file was generated automatically by the GenDllWrappers program.
function loadBatchDC(OctFilePath)   % Different DC propagation method
   % DC propagator method is GP
   global  DCPROPTYPE_GP;
   % DC propagator method is SGP4-XP
   global  DCPROPTYPE_XP;
   % DC propagator method is SP
   global  DCPROPTYPE_SP;
   
   % DC iterating returned code
   % DC was successful
   global  ITERCODE_DONE;
   % DC has error
   global  ITERCODE_ERROR;
   % DC is still iterating
   global  ITERCODE_ITERATING;
   % DC diverged but trying to recover
   global  ITERCODE_DIVERGED;
   
   % indexes represent epoch placement options
   % Nodal crossing nearest latest obs
   global  EPFLG_NODALXINGLATESTOB;
   % Exact time of latest obs
   global  EPFLG_LATESTOB;
   % Nodal crossing closest to specified time
   global  EPFLG_NODALXINGATTIME;
   % Do not change epoch
   global  EPFLG_ATEPOCH;
   % Exact at specified time
   global  EPFLG_ATSPECIFIEDTIME;
   % Middle of obs span
   global  EPFLG_MIDDLEOBSSPAN;
   % Exact time of earliest obs
   global  EPFLG_EARLIESTOB;
   % Beginning of day of Epoch, good for eGP
   global  EPFLG_BEGINDAYEPOCH;
   % Beginning of day of Last obs
   global  EPFLG_BEGINDAYLATESTOB;
   % Nodal crossing nearest epoch, good for eGP
   global  EPFLG_NODALXINGEPOCH;
   
   % Different correction types
   global  CORT_TIME
   global  CORT_PLANE
   global  CORT_7ELT
   global  CORT_INTRK
   global  CORT_8ELT
   global  CORT_SUBELT
   
   % Different element correction order
   % 7-element only [default]
   global  CORORD_7ELT;
   % time (SP: L, n, B), then 7-element
   global  CORORD_TIM7ELT;
   % time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
   global  CORORD_TIMPLN7ELT;
   % plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
   global  CORORD_PLNTIM7ELT;
   % plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
   global  CORORD_PLN7ELT;
   % n-only, then 7-element
   global  CORORD_N7ELT;
   % L-only, then 7-element
   global  CORORD_L7ELT;
   % L & n only, then 7-element
   global  CORORD_LN7ELT;
   % Af/Ag, L, n only, then 7-element
   global  CORORD_AFAGLN7ELT;
   % 6-element, then 7-element
   global  CORORD_6ELT7ELT;
   
   
   % indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   % Not being used yet
   global  XA_EGPCTRL_OPTION;
   % DC element type: 0=SPG4, 4=SGP4-XP
   global  XA_EGPCTRL_DCELTTYPE;
   % Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   global  XA_EGPCTRL_STARTMSE;
   % Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   global  XA_EGPCTRL_STOPMSE;
   % Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
   global  XA_EGPCTRL_STEPMIN;
   % Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
   global  XA_EGPCTRL_DRAGCOR;
   % agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
   global  XA_EGPCTRL_AGOMCOR;
   % Epoch placement flag - see EPFLG_? for available options
   global  XA_EGPCTRL_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
   global  XA_EGPCTRL_NEWEPOCH;
   
   % Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
   global  XA_EGPCTRL_BVAL;
   % Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
   global  XA_EGPCTRL_AGOMVAL;
   
   % correction order
   global  XA_EGPCTRL_ORDERCOR;
   % Max # of iterations before declaring divergence [10]
   global  XA_EGPCTRL_MAXOFITERS;
   
   % satellite number
   global  XA_EGPCTRL_SATNUM;
   
   global  XA_EGPCTRL_SIZE
   
   
   
   % DC setting parameters
   
   global  MAX_PARAMS
   
   
   % DC print options
   % print first and last iteration
   global  DC_PRINT_FIRSTBEST;
   % print every pass and summary
   global  DC_PRINT_ALLPASS;
   % print summary only
   global  DC_PRINT_SUMONLY;
   % print output elemenets only
   global  DC_PRINT_ELTONLY;
   % do not print anything
   global  DC_PRINT_NONE;
   
   % Iteration summary options
   % print summary every iteration in Keplerian elts
   global  ITER_SUM_KEP;
   % print summary every iteration in Equinoctial elts
   global  ITER_SUM_EQNX;
   
   % indexes for integer data fields
   % DC print option
   global  XAI_CTRL_PRINTOPTION;
   % Apply biases from sensor file
   global  XAI_CTRL_DEBIASOBS;
   % Weighed DC flag
   global  XAI_CTRL_WEIGHTEDDC;
   % Epoch placement flag - see EPFLG_? for available options
   global  XAI_CTRL_EPOCHOPTION;
   % Element correction flag - Ag
   global  XAI_CTRL_CORRECT_AG;
   % Element correction flag - Af
   global  XAI_CTRL_CORRECT_AF;
   % Element correction flag - Psi
   global  XAI_CTRL_CORRECT_PSI;
   % Element correction flag - Chi
   global  XAI_CTRL_CORRECT_CHI;
   % Element correction flag - L
   global  XAI_CTRL_CORRECT_L;
   % Element correction flag - N
   global  XAI_CTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global  XAI_CTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   global  XAI_CTRL_CORRECT_AGOM;
   % Correction order
   global  XAI_CTRL_CORRECTORDER;
   % Correct by the specified correction order for 1 iteration only
   global  XAI_CTRL_FOR1ITERONLY;
   % Flag specifies which residuals are used for RMS calculation and convergence
   global  XAI_CTRL_RESIDSELECT;
   % Flag; if set, produce sensor performance analysis summary
   global  XAI_CTRL_SENPERFORM;
   % Flag; if set, deweight according to # of obs per track
   global  XAI_CTRL_DWOBSPERTRCK;
   % Iteration summary control
   global  XAI_CTRL_ITERSUMOPT;
   % Partials method
   global  XAI_CTRL_PARTIALMETH;
   % Light time correction control
   global  XAI_CTRL_LTC;
   % Number of iteration to allow no auto rejection of residuals
   global  XAI_CTRL_BRUCE;
   % Propagation method - GP=0, XP=4, SP=99
   global  XAI_CTRL_PROPMETHOD;
   % Flag; if set, correct B* vs X
   global  XAI_CTRL_CORRECTBVSX;
   % Max # of iterations before declaring divergence
   global  XAI_CTRL_MAXOFITERS;
   % Use predicted RMS versus previous RMS for convergence testing
   global  XAI_CTRL_USEPREDRMS;
   % Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
   global  XAI_CTRL_RESCOMPMETH;
   % Flag; if set, use angle rates (obstypes = 4, 11)
   global  XAI_CTRL_USEANGRATES;
   
   global  XAI_CTRL_SIZE
   
   
   
   % indexes for real data fields
   % RMS multiplier
   global  XAR_CTRL_RMSMULT;
   % Time of specified epoch
   global  XAR_CTRL_USEREPOCH;
   % Convergence criteria on time correction (%)
   global  XAR_CTRL_CNVCRITONT;
   % First pass delta-t rejection criteria
   global  XAR_CTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%)
   global  XAR_CTRL_CNVCRITON7ELT;
   % reset value for B term in subset correction
   global  XAR_CTRL_BRESET;
   global  XAR_CTRL_SIZE
   
   
   % indexes for accessing DC's integer data
   % satellite number
   global  XAI_DCELTS_SATNUM;
   % elset number
   global  XAI_DCELTS_ELSETNUM;
   % elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
   global  XAI_DCELTS_ORBTYPE;
   % propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
   global  XAI_DCELTS_PROPTYPE;
   % spectr mode
   global  XAI_DCELTS_SPECTR;
   % epoch revolution number
   global  XAI_DCELTS_REVNUM;
   % correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
   global  XAI_DCELTS_CORRTYPE;
   
   % total iteration count
   global  XAI_DCELTS_ITERCOUNT;
   % sub iteration count
   global  XAI_DCELTS_SUBITER;
   % # residual accepted
   global  XAI_DCELTS_RESACC;
   % # residual rejected
   global  XAI_DCELTS_RESREJ;
   
   % 20-28 correction element flags
   global  XAI_DCELTS_CORRFLGS;
   
   global  XAI_DCELTS_SIZE
   
   % indexes for accessing DC's real data
   % elset's epoch time in days since 1950 UTC
   global  XAR_DCELTS_EPOCHDS50UTC;
   % n-dot/2  (for SGP, eph-type = 0)
   global  XAR_DCELTS_NDOT;
   % n-double-dot/6  (for SGP, eph-type = 0)
   global  XAR_DCELTS_N2DOT;
   % either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
   global  XAR_DCELTS_BFIELD;
   % SGP4-XP/SP agom (m**2/kg)
   global  XAR_DCELTS_AGOM;
   % SP outgassing parameter (km/s**2)
   global  XAR_DCELTS_OGPARM;
   % semi major axis (km)
   global  XAR_DCELTS_KEP_A;
   % eccentricity
   global  XAR_DCELTS_KEP_E;
   % inclination (deg)
   global  XAR_DCELTS_KEP_INCLI;
   % mean anamoly (deg)
   global  XAR_DCELTS_KEP_MA;
   % right ascension of the ascending node (deg)
   global  XAR_DCELTS_KEP_NODE;
   % argument of perigee (deg)
   global  XAR_DCELTS_KEP_OMEGA;
   % AF
   global  XAR_DCELTS_EQNX_AF;
   % AG
   global  XAR_DCELTS_EQNX_AG;
   % CHI
   global  XAR_DCELTS_EQNX_CHI;
   % PSI
   global  XAR_DCELTS_EQNX_PSI;
   % mean longitude (deg)
   global  XAR_DCELTS_EQNX_L;
   % mean motion (revs/day)
   global  XAR_DCELTS_EQNX_N;
   % ECI posX (km)
   global  XAR_DCELTS_POSX;
   % ECI posY (km)
   global  XAR_DCELTS_POSY;
   % ECI posZ (km)
   global  XAR_DCELTS_POSZ;
   % ECI velX (km/s)
   global  XAR_DCELTS_VELX;
   % ECI velY (km/s)
   global  XAR_DCELTS_VELY;
   % ECI velZ (km/s)
   global  XAR_DCELTS_VELZ;
   
   % RMS (km)
   global  XAR_DCELTS_RMS;
   % unweighted RMS (km)
   global  XAR_DCELTS_RMSUNWTD;
   % delta T RMS (min)
   global  XAR_DCELTS_DELTATRMS;
   % beta RMS (deg)
   global  XAR_DCELTS_BETARMS;
   % delta height RMS (km)
   global  XAR_DCELTS_DELTAHTRMS;
   % convergence value (km)
   global  XAR_DCELTS_CONVQLTY;
   % predicted RMS (km)
   global  XAR_DCELTS_RMSPD;
   
   % covariance diagonal L
   global  XAR_DCELTS_COVL;
   % covariance diagonal N
   global  XAR_DCELTS_COVN;
   % covariance diagonal CHI
   global  XAR_DCELTS_COVCHI;
   % covariance diagonal PSI
   global  XAR_DCELTS_COVPSI;
   % covariance diagonal AF
   global  XAR_DCELTS_COVAF;
   % covariance diagonal AG
   global  XAR_DCELTS_COVAG;
   % covariance diagonal BTERM
   global  XAR_DCELTS_COVBTERM;
   % covariance not used
   global  XAR_DCELTS_COVNA;
   % covariance diagonal AGOM
   global  XAR_DCELTS_COVAGOM;
   
   % max partial residual (km)
   global  XAR_DCELTS_XMAX;
   % max velocity resid (km/sec)
   global  XAR_DCELTS_XMAX2;
   % max beta residual (deg)
   global  XAR_DCELTS_XMAX3;
   % max delta-t residual (min)
   global  XAR_DCELTS_XMAX4;
   % low argument of latitude coverage (deg)
   global  XAR_DCELTS_PATCL;
   % high argument of latitude coverage (deg)
   global  XAR_DCELTS_PATCH;
   
   % equinoctial covariance matrix - the lower triangular half 200-244
   global  XAR_DCELTS_EQNXCOVMTX;
   
   global  XAR_DCELTS_SIZE
   
   % indexes for accessing obs rejection flags
   % satellite has decayed at the time of obs
   global  XA_REJFLG_DECAYED;
   % obs residual computation error code
   global  XA_REJFLG_ERROR;
   % right ascension residual rejected
   global  XA_REJFLG_RA;
   % beta residual rejected
   global  XA_REJFLG_BETA;
   % declination residual rejected
   global  XA_REJFLG_DEC;
   % delta h residual rejected
   global  XA_REJFLG_HEIGHT;
   % range residual rejected
   global  XA_REJFLG_RANGE;
   % range rate residual rejected
   global  XA_REJFLG_RR;
   % delta t residual rejected
   global  XA_REJFLG_TIME;
   
   global  XA_REJFLG_SIZE
   
   % indexes for accessing DC's acceptance criteria data
   % standard - days from epoch
   global  XA_AC_STD_EPOCH;
   % standard - number of residuals
   global  XA_AC_STD_NORES;
   % standard - percent residual
   global  XA_AC_STD_PRCNTRES;
   % standard - RMS (km)
   global  XA_AC_STD_RMS;
   % standard - obs span (days)
   global  XA_AC_STD_OBSSPAN;
   % standard - change in plan (deg)
   global  XA_AC_STD_DELTAW;
   % standard - change in abar
   global  XA_AC_STD_DELTAABAR;
   % standard - change in N (rev/day)
   global  XA_AC_STD_DELTAN;
   % standard - change in B term
   global  XA_AC_STD_DELTAB;
   
   % actual - days from epoch
   global  XA_AC_ACT_EPOCH;
   % actual - number of residuals
   global  XA_AC_ACT_NORES;
   % actual - percent residual
   global  XA_AC_ACT_PRCNTRES;
   % actual - RMS (km)
   global  XA_AC_ACT_RMS;
   % actual - obs span (days)
   global  XA_AC_ACT_OBSSPAN;
   % actual - change in plan (deg)
   global  XA_AC_ACT_DELTAW;
   % actual - change in abar
   global  XA_AC_ACT_DELTAABAR;
   % actual - change in N (rev/day)
   global  XA_AC_ACT_DELTAN;
   % actual - change in B term
   global  XA_AC_ACT_DELTAB;
   
   global  XA_AC_SIZE
   
   
   % indexes for accessing DC's string character data - index to index of a substring
   % satellite's international designator
   global  XAS_DCELTS_SATNAME_0TO7;
   
   global  XAS_DCELTS_SIZE
   
   % Different DC control modes
   % Use DC global settings settings
   global  DCCTRL_MODE_GLOBAL;
   % Use provided/local DC settings
   global  DCCTRL_MODE_LOCAL;
   
   
   % indexes of DC control parameters
   % DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
   global  XA_DCCTRL_MODE;
   % propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
   global  XA_DCCTRL_PROPMETHOD;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   global  XA_DCCTRL_DEBIASOBS;
   % element correction order
   global  XA_DCCTRL_CORRECTORDER;
   % epoch placement flag - see EPFLG_? for available options
   global  XA_DCCTRL_EPOCHOPTION;
   % use predicted RMS versus previous RMS for convergenece testing
   global  XA_DCCTRL_USEPREDRMS;
   % residual computation selection
   global  XA_DCCTRL_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   global  XA_DCCTRL_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   global  XA_DCCTRL_MAXOFITERS;
   % apply weighed DC flag
   global  XA_DCCTRL_WEIGHTEDDC;
   % light time correction control
   global  XA_DCCTRL_LTC;
   % number of iteration to allow no auto rejection of residuals
   global  XA_DCCTRL_BRUCE;
   % flag; if set, deweight according to # of obs per track
   global  XA_DCCTRL_DWOBSPERTRCK;
   % partials method
   global  XA_DCCTRL_PARTIALMETH;
   % Element correction flag - Ag
   global  XA_DCCTRL_CORRECT_AG;
   % Element correction flag - Af
   global  XA_DCCTRL_CORRECT_AF;
   % Element correction flag - Psi
   global  XA_DCCTRL_CORRECT_PSI;
   % Element correction flag - Chi
   global  XA_DCCTRL_CORRECT_CHI;
   % Element correction flag - L
   global  XA_DCCTRL_CORRECT_L;
   % Element correction flag - N
   global  XA_DCCTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global  XA_DCCTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   global  XA_DCCTRL_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   global  XA_DCCTRL_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   global  XA_DCCTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   global  XA_DCCTRL_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   global  XA_DCCTRL_RMSMULT;
   % reset value for B term in subset correction [0.01]
   global  XA_DCCTRL_BRESET;
   % user's specified epoch - only when epoch placement option = 4 exact at specified time
   global  XA_DCCTRL_USEREPOCH;
   % SP only - density consider parameter
   global  XA_DCCTRL_CONSIDER;
   % GP only - residual computation method
   global  XA_DCCTRL_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   global  XA_DCCTRL_CORRECTBVSX;
   
   global  XA_DCCTRL_SIZE
   
   % Indexes of paramters using in IomodDC()
   % Iomod/DC control mode (not yet used)
   global  XA_IOMDC_MODE;
   % DC element type, see DCPROPTYPE_? for available options
   global  XA_IOMDC_DCELTTYPE;
   % Epoch placement flag - see EPFLG_? for available options
   global  XA_IOMDC_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
   global  XA_IOMDC_NEWEPOCH;
   % Correction order
   global  XA_IOMDC_ORDERCOR;
   % IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
   global  XA_IOMDC_OBSSELMODE;
   % residual computation selection
   global  XA_IOMDC_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   global  XA_IOMDC_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   global  XA_IOMDC_MAXOFITERS;
   % apply weighed DC flag
   global  XA_IOMDC_WEIGHTEDDC;
   % light time correction control
   global  XA_IOMDC_LTC;
   % number of iteration to allow no auto rejection of residuals
   global  XA_IOMDC_BRUCE;
   % flag; if set, deweight according to # of obs per track
   global  XA_IOMDC_DWOBSPERTRCK;
   % partials method
   global  XA_IOMDC_PARTIALMETH;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   global  XA_IOMDC_DEBIASOBS;
   % use predicted RMS versus previous RMS for convergenece testing
   global  XA_IOMDC_USEPREDRMS;
   
   % Element correction flag - Ag
   global  XA_IOMDC_CORRECT_AG;
   % Element correction flag - Af
   global  XA_IOMDC_CORRECT_AF;
   % Element correction flag - Psi
   global  XA_IOMDC_CORRECT_PSI;
   % Element correction flag - Chi
   global  XA_IOMDC_CORRECT_CHI;
   % Element correction flag - L
   global  XA_IOMDC_CORRECT_L;
   % Element correction flag - N
   global  XA_IOMDC_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global  XA_IOMDC_CORRECT_B;
   % Element correction flag - Agom (SP)
   global  XA_IOMDC_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   global  XA_IOMDC_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   global  XA_IOMDC_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   global  XA_IOMDC_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   global  XA_IOMDC_RMSMULT;
   % reset value for B term in subset correction [0.01]
   global  XA_IOMDC_BRESET;
   % SP only - density consider parameter
   global  XA_IOMDC_CONSIDER;
   % GP only - residual computation method
   global  XA_IOMDC_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   global  XA_IOMDC_CORRECTBVSX;
   
   % see IOMDC_METHOD_? for available options
   global  XA_IOMDC_METHOD;
   % The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   % number of half revolutions [0]
   global  XA_IOMDC_NHREV;
   % solution number [0]
   global  XA_IOMDC_IND;
   % maximum number of iterations [20]
   global  XA_IOMDC_MAXIT;
   % the range guess to first observation (km) [36000]
   global  XA_IOMDC_RNG1;
   % the range guess to third observation (km) [36000]
   global  XA_IOMDC_RNG3;
   % partial derivative increment [1e-5]
   global  XA_IOMDC_PDINC;
   % convergence criterion [1e-9]
   global  XA_IOMDC_CONVCR;
   
   % IOMOD/DC parameter list size
   global  XA_IOMDC_SIZE;
   
   % Different options for doing IOMOD/DC
   % Default option which uses Herrick-Gibbs for all obs types
   global  IOMDC_METHOD_HB;
   % Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
   global  IOMDC_METHOD_GDDEFLT;
   % Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
   global  IOMDC_METHOD_GDSPEC;
   
   % Different DC propagation method
   % DC propagator method is GP
   DCPROPTYPE_GP =  0;
   % DC propagator method is SGP4-XP
   DCPROPTYPE_XP =  4;
   % DC propagator method is SP
   DCPROPTYPE_SP = 99;
   
   % DC iterating returned code
   % DC was successful
   ITERCODE_DONE      = 0;
   % DC has error
   ITERCODE_ERROR     = 1;
   % DC is still iterating
   ITERCODE_ITERATING = 2;
   % DC diverged but trying to recover
   ITERCODE_DIVERGED  = 3;
   
   % indexes represent epoch placement options
   % Nodal crossing nearest latest obs
   EPFLG_NODALXINGLATESTOB = 0;
   % Exact time of latest obs
   EPFLG_LATESTOB          = 1;
   % Nodal crossing closest to specified time
   EPFLG_NODALXINGATTIME   = 2;
   % Do not change epoch
   EPFLG_ATEPOCH           = 3;
   % Exact at specified time
   EPFLG_ATSPECIFIEDTIME   = 4;
   % Middle of obs span
   EPFLG_MIDDLEOBSSPAN     = 5;
   % Exact time of earliest obs
   EPFLG_EARLIESTOB        = 6;
   % Beginning of day of Epoch, good for eGP
   EPFLG_BEGINDAYEPOCH     = 7;
   % Beginning of day of Last obs
   EPFLG_BEGINDAYLATESTOB  = 8;
   % Nodal crossing nearest epoch, good for eGP
   EPFLG_NODALXINGEPOCH    = 9;
   
   % Different correction types
   CORT_TIME   = 0
   CORT_PLANE  = 1
   CORT_7ELT   = 2
   CORT_INTRK  = 3
   CORT_8ELT   = 4
   CORT_SUBELT = 5;
   
   % Different element correction order
   % 7-element only [default]
   CORORD_7ELT       = 0;
   % time (SP: L, n, B), then 7-element
   CORORD_TIM7ELT    = 1;
   % time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
   CORORD_TIMPLN7ELT = 2;
   % plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
   CORORD_PLNTIM7ELT = 3;
   % plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
   CORORD_PLN7ELT    = 4;
   % n-only, then 7-element
   CORORD_N7ELT      = 5;
   % L-only, then 7-element
   CORORD_L7ELT      = 6;
   % L & n only, then 7-element
   CORORD_LN7ELT     = 7;
   % Af/Ag, L, n only, then 7-element
   CORORD_AFAGLN7ELT = 8;
   % 6-element, then 7-element
   CORORD_6ELT7ELT   = 9;
   
   
   % indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   % Not being used yet
   XA_EGPCTRL_OPTION     =  0;
   % DC element type: 0=SPG4, 4=SGP4-XP
   XA_EGPCTRL_DCELTTYPE  =  1;
   % Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   XA_EGPCTRL_STARTMSE   =  2;
   % Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   XA_EGPCTRL_STOPMSE    =  3;
   % Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
   XA_EGPCTRL_STEPMIN    =  4;
   % Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
   XA_EGPCTRL_DRAGCOR    =  5;
   % agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
   XA_EGPCTRL_AGOMCOR    =  6;
   % Epoch placement flag - see EPFLG_? for available options
   XA_EGPCTRL_EPFLG      =  7;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
   XA_EGPCTRL_NEWEPOCH   =  8;
   
   % Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
   XA_EGPCTRL_BVAL       =  9;
   % Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
   XA_EGPCTRL_AGOMVAL    = 10;
   
   % correction order
   XA_EGPCTRL_ORDERCOR   = 11;
   % Max # of iterations before declaring divergence [10]
   XA_EGPCTRL_MAXOFITERS = 12;
   
   % satellite number
   XA_EGPCTRL_SATNUM     = 63;
   
   XA_EGPCTRL_SIZE       = 64;
   
   
   
   % DC setting parameters
   
   MAX_PARAMS = 256;
   
   
   % DC print options
   % print first and last iteration
   DC_PRINT_FIRSTBEST   =  0;
   % print every pass and summary
   DC_PRINT_ALLPASS     =  1;
   % print summary only
   DC_PRINT_SUMONLY     =  2;
   % print output elemenets only
   DC_PRINT_ELTONLY     =  3;
   % do not print anything
   DC_PRINT_NONE        =  4;
   
   % Iteration summary options
   % print summary every iteration in Keplerian elts
   ITER_SUM_KEP         =  1;
   % print summary every iteration in Equinoctial elts
   ITER_SUM_EQNX        =  2;
   
   % indexes for integer data fields
   % DC print option
   XAI_CTRL_PRINTOPTION  =  0;
   % Apply biases from sensor file
   XAI_CTRL_DEBIASOBS    =  1;
   % Weighed DC flag
   XAI_CTRL_WEIGHTEDDC   =  2;
   % Epoch placement flag - see EPFLG_? for available options
   XAI_CTRL_EPOCHOPTION  =  3;
   % Element correction flag - Ag
   XAI_CTRL_CORRECT_AG   =  4;
   % Element correction flag - Af
   XAI_CTRL_CORRECT_AF   =  5;
   % Element correction flag - Psi
   XAI_CTRL_CORRECT_PSI  =  6;
   % Element correction flag - Chi
   XAI_CTRL_CORRECT_CHI  =  7;
   % Element correction flag - L
   XAI_CTRL_CORRECT_L    =  8;
   % Element correction flag - N
   XAI_CTRL_CORRECT_N    =  9;
   % Element correction flag - B* (SGP4) B (SP)
   XAI_CTRL_CORRECT_B    = 10;
   % Element correction flag - Agom (SP)
   XAI_CTRL_CORRECT_AGOM = 11;
   % Correction order
   XAI_CTRL_CORRECTORDER = 12;
   % Correct by the specified correction order for 1 iteration only
   XAI_CTRL_FOR1ITERONLY = 13;
   % Flag specifies which residuals are used for RMS calculation and convergence
   XAI_CTRL_RESIDSELECT  = 14;
   % Flag; if set, produce sensor performance analysis summary
   XAI_CTRL_SENPERFORM   = 15;
   % Flag; if set, deweight according to # of obs per track
   XAI_CTRL_DWOBSPERTRCK = 16;
   % Iteration summary control
   XAI_CTRL_ITERSUMOPT   = 17;
   % Partials method
   XAI_CTRL_PARTIALMETH  = 18;
   % Light time correction control
   XAI_CTRL_LTC          = 19;
   % Number of iteration to allow no auto rejection of residuals
   XAI_CTRL_BRUCE        = 20;
   % Propagation method - GP=0, XP=4, SP=99
   XAI_CTRL_PROPMETHOD   = 21;
   % Flag; if set, correct B* vs X
   XAI_CTRL_CORRECTBVSX  = 22;
   % Max # of iterations before declaring divergence
   XAI_CTRL_MAXOFITERS   = 23;
   % Use predicted RMS versus previous RMS for convergence testing
   XAI_CTRL_USEPREDRMS   = 24;
   % Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
   XAI_CTRL_RESCOMPMETH  = 25;
   % Flag; if set, use angle rates (obstypes = 4, 11)
   XAI_CTRL_USEANGRATES  = 26;
   
   XAI_CTRL_SIZE         = 256;
   
   
   
   % indexes for real data fields
   % RMS multiplier
   XAR_CTRL_RMSMULT        =   0;
   % Time of specified epoch
   XAR_CTRL_USEREPOCH      =   1;
   % Convergence criteria on time correction (%)
   XAR_CTRL_CNVCRITONT     =   2;
   % First pass delta-t rejection criteria
   XAR_CTRL_1STPASDELTAT   =   3;
   % Convergence criteria on 7-elt correction (%)
   XAR_CTRL_CNVCRITON7ELT  =   4;
   % reset value for B term in subset correction
   XAR_CTRL_BRESET         =   5;
   XAR_CTRL_SIZE           = 256;
   
   
   % indexes for accessing DC's integer data
   % satellite number
   XAI_DCELTS_SATNUM       =   0;
   % elset number
   XAI_DCELTS_ELSETNUM     =   1;
   % elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
   XAI_DCELTS_ORBTYPE      =   2;
   % propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
   XAI_DCELTS_PROPTYPE     =   3;
   % spectr mode
   XAI_DCELTS_SPECTR       =   4;
   % epoch revolution number
   XAI_DCELTS_REVNUM       =   5;
   % correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
   XAI_DCELTS_CORRTYPE     =   6;
   
   % total iteration count
   XAI_DCELTS_ITERCOUNT    =  10;
   % sub iteration count
   XAI_DCELTS_SUBITER      =  11;
   % # residual accepted
   XAI_DCELTS_RESACC       =  12;
   % # residual rejected
   XAI_DCELTS_RESREJ       =  13;
   
   % 20-28 correction element flags
   XAI_DCELTS_CORRFLGS     =  20;
   
   XAI_DCELTS_SIZE         = 256;
   
   % indexes for accessing DC's real data
   % elset's epoch time in days since 1950 UTC
   XAR_DCELTS_EPOCHDS50UTC =   0;
   % n-dot/2  (for SGP, eph-type = 0)
   XAR_DCELTS_NDOT         =   1;
   % n-double-dot/6  (for SGP, eph-type = 0)
   XAR_DCELTS_N2DOT        =   2;
   % either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
   XAR_DCELTS_BFIELD       =   3;
   % SGP4-XP/SP agom (m**2/kg)
   XAR_DCELTS_AGOM         =   4;
   % SP outgassing parameter (km/s**2)
   XAR_DCELTS_OGPARM       =   5;
   % semi major axis (km)
   XAR_DCELTS_KEP_A        =   6;
   % eccentricity
   XAR_DCELTS_KEP_E        =   7;
   % inclination (deg)
   XAR_DCELTS_KEP_INCLI    =   8;
   % mean anamoly (deg)
   XAR_DCELTS_KEP_MA       =   9;
   % right ascension of the ascending node (deg)
   XAR_DCELTS_KEP_NODE     =  10;
   % argument of perigee (deg)
   XAR_DCELTS_KEP_OMEGA    =  11;
   % AF
   XAR_DCELTS_EQNX_AF      =  12;
   % AG
   XAR_DCELTS_EQNX_AG      =  13;
   % CHI
   XAR_DCELTS_EQNX_CHI     =  14;
   % PSI
   XAR_DCELTS_EQNX_PSI     =  15;
   % mean longitude (deg)
   XAR_DCELTS_EQNX_L       =  16;
   % mean motion (revs/day)
   XAR_DCELTS_EQNX_N       =  17;
   % ECI posX (km)
   XAR_DCELTS_POSX         =  18;
   % ECI posY (km)
   XAR_DCELTS_POSY         =  19;
   % ECI posZ (km)
   XAR_DCELTS_POSZ         =  20;
   % ECI velX (km/s)
   XAR_DCELTS_VELX         =  21;
   % ECI velY (km/s)
   XAR_DCELTS_VELY         =  22;
   % ECI velZ (km/s)
   XAR_DCELTS_VELZ         =  23;
   
   % RMS (km)
   XAR_DCELTS_RMS          =  40;
   % unweighted RMS (km)
   XAR_DCELTS_RMSUNWTD     =  41;
   % delta T RMS (min)
   XAR_DCELTS_DELTATRMS    =  42;
   % beta RMS (deg)
   XAR_DCELTS_BETARMS      =  43;
   % delta height RMS (km)
   XAR_DCELTS_DELTAHTRMS   =  44;
   % convergence value (km)
   XAR_DCELTS_CONVQLTY     =  45;
   % predicted RMS (km)
   XAR_DCELTS_RMSPD        =  46;
   
   % covariance diagonal L
   XAR_DCELTS_COVL         =  60;
   % covariance diagonal N
   XAR_DCELTS_COVN         =  61;
   % covariance diagonal CHI
   XAR_DCELTS_COVCHI       =  62;
   % covariance diagonal PSI
   XAR_DCELTS_COVPSI       =  63;
   % covariance diagonal AF
   XAR_DCELTS_COVAF        =  64;
   % covariance diagonal AG
   XAR_DCELTS_COVAG        =  65;
   % covariance diagonal BTERM
   XAR_DCELTS_COVBTERM     =  66;
   % covariance not used
   XAR_DCELTS_COVNA        =  67;
   % covariance diagonal AGOM
   XAR_DCELTS_COVAGOM      =  68;
   
   % max partial residual (km)
   XAR_DCELTS_XMAX         =  70;
   % max velocity resid (km/sec)
   XAR_DCELTS_XMAX2        =  71;
   % max beta residual (deg)
   XAR_DCELTS_XMAX3        =  72;
   % max delta-t residual (min)
   XAR_DCELTS_XMAX4        =  73;
   % low argument of latitude coverage (deg)
   XAR_DCELTS_PATCL        =  74;
   % high argument of latitude coverage (deg)
   XAR_DCELTS_PATCH        =  75;
   
   % equinoctial covariance matrix - the lower triangular half 200-244
   XAR_DCELTS_EQNXCOVMTX   = 200;
   
   XAR_DCELTS_SIZE         = 256;
   
   % indexes for accessing obs rejection flags
   % satellite has decayed at the time of obs
   XA_REJFLG_DECAYED      =   0;
   % obs residual computation error code
   XA_REJFLG_ERROR        =   1;
   % right ascension residual rejected
   XA_REJFLG_RA           =   2;
   % beta residual rejected
   XA_REJFLG_BETA         =   3;
   % declination residual rejected
   XA_REJFLG_DEC          =   4;
   % delta h residual rejected
   XA_REJFLG_HEIGHT       =   5;
   % range residual rejected
   XA_REJFLG_RANGE        =   6;
   % range rate residual rejected
   XA_REJFLG_RR           =   7;
   % delta t residual rejected
   XA_REJFLG_TIME         =   8;
   
   XA_REJFLG_SIZE         =  32;
   
   % indexes for accessing DC's acceptance criteria data
   % standard - days from epoch
   XA_AC_STD_EPOCH    =   0;
   % standard - number of residuals
   XA_AC_STD_NORES    =   1;
   % standard - percent residual
   XA_AC_STD_PRCNTRES =   2;
   % standard - RMS (km)
   XA_AC_STD_RMS      =   3;
   % standard - obs span (days)
   XA_AC_STD_OBSSPAN  =   4;
   % standard - change in plan (deg)
   XA_AC_STD_DELTAW   =   5;
   % standard - change in abar
   XA_AC_STD_DELTAABAR=   6;
   % standard - change in N (rev/day)
   XA_AC_STD_DELTAN   =   7;
   % standard - change in B term
   XA_AC_STD_DELTAB   =   8;
   
   % actual - days from epoch
   XA_AC_ACT_EPOCH    =  20;
   % actual - number of residuals
   XA_AC_ACT_NORES    =  21;
   % actual - percent residual
   XA_AC_ACT_PRCNTRES =  22;
   % actual - RMS (km)
   XA_AC_ACT_RMS      =  23;
   % actual - obs span (days)
   XA_AC_ACT_OBSSPAN  =  24;
   % actual - change in plan (deg)
   XA_AC_ACT_DELTAW   =  25;
   % actual - change in abar
   XA_AC_ACT_DELTAABAR=  26;
   % actual - change in N (rev/day)
   XA_AC_ACT_DELTAN   =  27;
   % actual - change in B term
   XA_AC_ACT_DELTAB   =  28;
   
   XA_AC_SIZE         =  64;
   
   
   % indexes for accessing DC's string character data - index to index of a substring
   % satellite's international designator
   XAS_DCELTS_SATNAME_0TO7 =   0;
   
   XAS_DCELTS_SIZE         = 512;
   
   % Different DC control modes
   % Use DC global settings settings
   DCCTRL_MODE_GLOBAL   = 0;
   % Use provided/local DC settings
   DCCTRL_MODE_LOCAL    = 1;
   
   
   % indexes of DC control parameters
   % DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
   XA_DCCTRL_MODE             =  0;
   % propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
   XA_DCCTRL_PROPMETHOD 		=  1;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   XA_DCCTRL_DEBIASOBS    		=  2;
   % element correction order
   XA_DCCTRL_CORRECTORDER		=  3;
   % epoch placement flag - see EPFLG_? for available options
   XA_DCCTRL_EPOCHOPTION  		=  4;
   % use predicted RMS versus previous RMS for convergenece testing
   XA_DCCTRL_USEPREDRMS		   =  5;
   % residual computation selection
   XA_DCCTRL_RESIDSELECT      =  6;
   % correct by the specified correction order for 1 iteration only
   XA_DCCTRL_FOR1ITERONLY		=  7;
   % max # of iterations before declaring divergence
   XA_DCCTRL_MAXOFITERS       =  8;
   % apply weighed DC flag
   XA_DCCTRL_WEIGHTEDDC		   =  9;
   % light time correction control
   XA_DCCTRL_LTC              = 10;
   % number of iteration to allow no auto rejection of residuals
   XA_DCCTRL_BRUCE            = 11;
   % flag; if set, deweight according to # of obs per track
   XA_DCCTRL_DWOBSPERTRCK     = 12;
   % partials method
   XA_DCCTRL_PARTIALMETH      = 13;
   % Element correction flag - Ag
   XA_DCCTRL_CORRECT_AG    	= 20;
   % Element correction flag - Af
   XA_DCCTRL_CORRECT_AF    	= 21;
   % Element correction flag - Psi
   XA_DCCTRL_CORRECT_PSI   	= 22;
   % Element correction flag - Chi
   XA_DCCTRL_CORRECT_CHI   	= 23;
   % Element correction flag - L
   XA_DCCTRL_CORRECT_L     	= 24;
   % Element correction flag - N
   XA_DCCTRL_CORRECT_N     	= 25;
   % Element correction flag - B* (SGP4) B (SP)
   XA_DCCTRL_CORRECT_B     	= 26;
   % Element correction flag - Agom (SP)
   XA_DCCTRL_CORRECT_AGOM  	= 27;
   % Convergence criteria on time (%) [5.0%]
   XA_DCCTRL_CNVCRITONT       = 30;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   XA_DCCTRL_1STPASDELTAT     = 31;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   XA_DCCTRL_CNVCRITON7ELT    = 32;
   % RMS multiplier [4.0]
   XA_DCCTRL_RMSMULT          = 33;
   % reset value for B term in subset correction [0.01]
   XA_DCCTRL_BRESET           = 34;
   % user's specified epoch - only when epoch placement option = 4 exact at specified time
   XA_DCCTRL_USEREPOCH        = 35;
   % SP only - density consider parameter
   XA_DCCTRL_CONSIDER         = 40;
   % GP only - residual computation method
   XA_DCCTRL_GPRCM 			   = 40;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   XA_DCCTRL_CORRECTBVSX		= 41;
   
   XA_DCCTRL_SIZE             = 64;
   
   % Indexes of paramters using in IomodDC()
   % Iomod/DC control mode (not yet used)
   XA_IOMDC_MODE           =  0;
   % DC element type, see DCPROPTYPE_? for available options
   XA_IOMDC_DCELTTYPE      =  1;
   % Epoch placement flag - see EPFLG_? for available options
   XA_IOMDC_EPFLG          =  2;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
   XA_IOMDC_NEWEPOCH       =  3;
   % Correction order
   XA_IOMDC_ORDERCOR       =  4;
   % IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
   XA_IOMDC_OBSSELMODE     =  5;
   % residual computation selection
   XA_IOMDC_RESIDSELECT    =  6;
   % correct by the specified correction order for 1 iteration only
   XA_IOMDC_FOR1ITERONLY   =  7;
   % max # of iterations before declaring divergence
   XA_IOMDC_MAXOFITERS     =  8;
   % apply weighed DC flag
   XA_IOMDC_WEIGHTEDDC		=  9;
   % light time correction control
   XA_IOMDC_LTC            = 10;
   % number of iteration to allow no auto rejection of residuals
   XA_IOMDC_BRUCE          = 11;
   % flag; if set, deweight according to # of obs per track
   XA_IOMDC_DWOBSPERTRCK   = 12;
   % partials method
   XA_IOMDC_PARTIALMETH    = 13;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   XA_IOMDC_DEBIASOBS    	= 14;
   % use predicted RMS versus previous RMS for convergenece testing
   XA_IOMDC_USEPREDRMS		= 15;
   
   % Element correction flag - Ag
   XA_IOMDC_CORRECT_AG    	= 20;
   % Element correction flag - Af
   XA_IOMDC_CORRECT_AF    	= 21;
   % Element correction flag - Psi
   XA_IOMDC_CORRECT_PSI   	= 22;
   % Element correction flag - Chi
   XA_IOMDC_CORRECT_CHI   	= 23;
   % Element correction flag - L
   XA_IOMDC_CORRECT_L     	= 24;
   % Element correction flag - N
   XA_IOMDC_CORRECT_N     	= 25;
   % Element correction flag - B* (SGP4) B (SP)
   XA_IOMDC_CORRECT_B     	= 26;
   % Element correction flag - Agom (SP)
   XA_IOMDC_CORRECT_AGOM  	= 27;
   % Convergence criteria on time (%) [5.0%]
   XA_IOMDC_CNVCRITONT     = 30;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   XA_IOMDC_1STPASDELTAT   = 31;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   XA_IOMDC_CNVCRITON7ELT  = 32;
   % RMS multiplier [4.0]
   XA_IOMDC_RMSMULT        = 33;
   % reset value for B term in subset correction [0.01]
   XA_IOMDC_BRESET         = 34;
   % SP only - density consider parameter
   XA_IOMDC_CONSIDER       = 40;
   % GP only - residual computation method
   XA_IOMDC_GPRCM 			= 40;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   XA_IOMDC_CORRECTBVSX		= 41;
   
   % see IOMDC_METHOD_? for available options
   XA_IOMDC_METHOD         = 50;
   % The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   % number of half revolutions [0]
   XA_IOMDC_NHREV          = 51;
   % solution number [0]
   XA_IOMDC_IND            = 52;
   % maximum number of iterations [20]
   XA_IOMDC_MAXIT          = 53;
   % the range guess to first observation (km) [36000]
   XA_IOMDC_RNG1           = 54;
   % the range guess to third observation (km) [36000]
   XA_IOMDC_RNG3           = 55;
   % partial derivative increment [1e-5]
   XA_IOMDC_PDINC          = 56;
   % convergence criterion [1e-9]
   XA_IOMDC_CONVCR         = 57;
   
   % IOMOD/DC parameter list size
   XA_IOMDC_SIZE           = 64;
   
   % Different options for doing IOMOD/DC
   % Default option which uses Herrick-Gibbs for all obs types
   IOMDC_METHOD_HB      = 0;
   % Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
   IOMDC_METHOD_GDDEFLT = 1;
   % Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
   IOMDC_METHOD_GDSPEC  = 2;
   
   autoload("LoadBatchDCDll",strcat(OctFilePath,"BatchDC.oct"));
   autoload("FreeBatchDCDll",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes BatchDC DLL for use in the program
   autoload("BatchDCInit",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Returns information about the current version of BatchDC DLL. 
   %  The information is placed in the string parameter passed in.
   autoload("BatchDCGetInfo",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Read/Load BatchDC input data from an input file
   autoload("BatchDCLoadFile",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
   autoload("BatchDCLoadFileAll",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Read/Load BatchDC-typed input data from an input card
   autoload("BatchDCLoadCard",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Builds and returns the DC parameter card (1P-Card) from the current DC settings
   autoload("BatchDCGetPCard",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Saves any currently loaded BatchDC-related settings to a file
   autoload("BatchDCSaveFile",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Gets BatchDC parameter data (P Card) - all fields
   %  <br>
   %  The table below shows the structure of the integer array xai_ctrl:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>0</td><td>DC print option</td></tr>
   %      <tr><td>1</td><td>Apply biases from sensor file</td></tr>
   %      <tr><td>2</td><td>Weighed DC flag</td></tr>
   %      <tr><td>3</td><td>Epoch placement control</td></tr>
   %      <tr><td>4</td><td>Element correction flag - Ag</td></tr>
   %      <tr><td>5</td><td>Element correction flag - Af</td></tr>
   %      <tr><td>6</td><td>Element correction flag - Psi</td></tr>
   %      <tr><td>7</td><td>Element correction flag - Chi</td></tr>
   %      <tr><td>8</td><td>Element correction flag - L</td></tr>
   %      <tr><td>9</td><td>Element correction flag - N</td></tr>
   %      <tr><td>10</td><td>Element correction flag - B* (SGP4) B (SP)</td></tr>
   %      <tr><td>11</td><td>Element correction flag - Agom (SP)</td></tr>
   %      <tr><td>12</td><td>Correction order</td></tr>
   %      <tr><td>13</td><td>Correct by the specified correction order for 1 iteration only</td></tr>
   %      <tr><td>14</td><td>Flag specifies which residuals are used for RMS calculation and convergence</td></tr>
   %      <tr><td>15</td><td>Flag; if set, produce sensor performance analysis summary</td></tr>
   %      <tr><td>16</td><td>Flag; if set, deweight according to # of obs per track</td></tr>
   %      <tr><td>17</td><td>Iteration summary control</td></tr>
   %      <tr><td>18</td><td>Partials method</td></tr>
   %      <tr><td>19</td><td>Light time correction control</td></tr>
   %      <tr><td>20</td><td>Number of iteration to allow no auto rejection of residuals</td></tr>
   %      <tr><td>21</td><td>Propagation method</td></tr>
   %      <tr><td>22</td><td>Flag; if set, correct B* vs X</td></tr>
   %      <tr><td>23</td><td>Max # of iterations before declaring divergence</td></tr>
   %      <tr><td>24</td><td>Use predicted RMS versus previous RMS for convergence testing</td></tr>
   %  </table>
   %  <br>
   %  The table below shows the structure of the real array xar_ctrl:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>0</td><td>RMS multiplier</td></tr>
   %      <tr><td>1</td><td>Time of specified epoch</td></tr>
   %      <tr><td>2</td><td>Convergence criteria on time correction (%)</td></tr>
   %      <tr><td>3</td><td>First pass delta-t rejection criteria</td></tr>
   %      <tr><td>4</td><td>Convergence criteria on 7-elt correction (%)</td></tr>
   %      <tr><td>5</td><td>Reset value for B term in subset correction</td></tr>
   %  </table>
   autoload("BatchDCGetParams",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Sets BatchDC parameter data (P Card) - all fields
   %  See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
   autoload("BatchDCSetParams",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Returns DC control parameters using array format
   autoload("BatchDCGetCtrlArr",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Sets DC control parameters using array format
   autoload("BatchDCSetCtrlArr",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Initializes DC parameters for the satellite
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   autoload("BatchDCInitSat",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   autoload("BatchDCInitSatObsKeys",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   %  Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
   autoload("BatchDCInitSatObsSel",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections to the specified satellite and
   %  return the corrected elements and related data - using all loaded obs
   %  <br>
   %  Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   %  <br>
   %  See BatchDCGetParams for the structure of the xai_dcElts array.
   %  <br>
   %  The table below shows the structure of the integer array xar_dcElts:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td>0</td><td>elset's epoch time in days since 1950 UTC</td></tr>
   %      <tr><td>1</td><td>n-dot/2  (for SGP, eph-type = 0)</td></tr>
   %      <tr><td>2</td><td>n-double-dot/6  (for SGP, eph-type = 0)</td></tr>
   %      <tr><td>3</td><td>either SGP4 bStar (1/er) or SP bTerm (m2/kg)</td></tr>
   %      <tr><td>4</td><td>SP agom (m**2/kg)</td></tr>
   %      <tr><td>5</td><td>SP outgassing parameter (km/s**2)</td></tr>
   %      <tr><td>6</td><td>semi major axis (km)</td></tr>
   %      <tr><td>7</td><td>eccentricity</td></tr>
   %      <tr><td>8</td><td>inclination (deg)</td></tr>
   %      <tr><td>9</td><td>mean anamoly (deg)</td></tr>
   %      <tr><td>10</td><td>right ascension of the ascending node (deg)</td></tr>
   %      <tr><td>11</td><td>argument of perigee (deg)</td></tr>
   %      <tr><td>12</td><td>AF</td></tr>
   %      <tr><td>13</td><td>AG</td></tr>
   %      <tr><td>14</td><td>CHI</td></tr>
   %      <tr><td>15</td><td>PSI</td></tr>
   %      <tr><td>16</td><td>mean longitude (deg)</td></tr>
   %      <tr><td>17</td><td>mean motion (revs/day)</td></tr>
   %      <tr><td>18</td><td>ECI posX (km)</td></tr>
   %      <tr><td>19</td><td>ECI posY (km)</td></tr>
   %      <tr><td>20</td><td>ECI posZ (km)</td></tr>
   %      <tr><td>21</td><td>ECI velX (km/s)</td></tr>
   %      <tr><td>22</td><td>ECI velY (km/s)</td></tr>
   %      <tr><td>23</td><td>ECI velZ (km/s)</td></tr>
   %      <tr><td></td><td></td></tr>
   %      <tr><td>40</td><td>RMS (km)</td></tr>
   %      <tr><td>41</td><td>unweighted RMS (km)</td></tr>
   %      <tr><td>42</td><td>delta T RMS (min)</td></tr>
   %      <tr><td>43</td><td>beta RMS (deg)</td></tr>
   %      <tr><td>44</td><td>delta height RMS (km)</td></tr>
   %      <tr><td>45</td><td>convergence value (km)</td></tr>
   %      <tr><td>46</td><td>predicted RMS (km)</td></tr>
   %      <tr><td></td><td></td></tr>
   %      <tr><td>60</td><td>covariance diagonal L</td></tr>
   %      <tr><td>61</td><td>covariance diagonal N</td></tr>
   %      <tr><td>62</td><td>covariance diagonal CHI</td></tr>
   %      <tr><td>63</td><td>covariance diagonal PSI</td></tr>
   %      <tr><td>64</td><td>covariance diagonal AF</td></tr>
   %      <tr><td>65</td><td>covariance diagonal AG</td></tr>
   %      <tr><td>66</td><td>covariance diagonal BTERM</td></tr>
   %      <tr><td>67</td><td>covariance not used</td></tr>
   %      <tr><td>68</td><td>covariance diagonal AGOM</td></tr>
   %      <tr><td></td><td></td></tr>
   %      <tr><td>200-244</td><td>equinoctial covariance matrix - the lower triangular half 200-244</td></tr>
   %  </table>
   autoload("BatchDCSolve",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections to the specified satellite and
   %  return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
   %  Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   %  See BatchDCGetParams for the structure of the xai_dcElts array.
   %  See BatchDCSolve for the structure of the xar_dcElts array.
   autoload("BatchDCSolveSelObs",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Removes a satellite, represented by the satKey, from BatchDC's memory
   autoload("BatchDCRemoveSat",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Iterates DC for the satellite
   %  <br>
   %  xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
   %  <br>
   %  The table below shows the values contained in xa_ObsRes for each ob:
   %  <table>
   %      <caption>table</caption>
   %      <tr>
   %          <td><b>Index</b></td>
   %          <td><b>Index Interpretation</b></td>
   %      </tr>
   %      <tr><td> 0 </td><td> Azimuth residual (deg)</td></tr>
   %      <tr><td> 1 </td><td> Elevation residual (deg)</td></tr>
   %      <tr><td> 2 </td><td> Range residual (km)</td></tr>
   %      <tr><td> 3 </td><td> Height residual (deg)</td></tr>
   %      <tr><td> 4 </td><td> Beta residual (deg)</td></tr>
   %      <tr><td> 5 </td><td> Delta T residual (min)</td></tr>
   %      <tr><td> 6 </td><td> Vector magnitude (km)</td></tr>
   %      <tr><td> 7 </td><td> Time since epoch (days)</td></tr>
   %      <tr><td> 8 </td><td> True argument of latitude (deg)</td></tr>
   %      <tr><td> 9 </td><td> Revolution number  </td></tr>
   %      <tr><td>10 </td><td> Range rate residual (km/sec)</td></tr>
   %      <tr><td>11 </td><td> observation ASTAT</td></tr>
   %      <tr><td>12 </td><td> observation type</td></tr>
   %      <tr><td>13 </td><td> satellite true anomaly (deg)</td></tr>
   %      <tr><td>14 </td><td> satellite elevation (deg)</td></tr>
   %      <tr><td>15 </td><td> satellite maintenance category</td></tr>
   %      <tr><td>16 </td><td> obs time in ds50UTC</td></tr>
   %      <tr><td>17 </td><td> obs azimuth (deg)</td></tr>
   %      <tr><td>18 </td><td> obs elevation (deg)</td></tr>
   %      <tr><td>19 </td><td> Velocity angle residual (deg)</td></tr>
   %      <tr><td>20 </td><td> Angular momentum residual (deg)</td></tr>
   %      <tr><td>21 </td><td> Right ascension residual (deg) (for ob types 5, 9, 19)</td></tr>
   %      <tr><td>22 </td><td> Declination residual (deg) (for ob types 5, 9, 19)</td></tr>
   %      <tr><td>23 </td><td> Delta X position (km)</td></tr>
   %      <tr><td>24 </td><td> Delta Y position (km)</td></tr>
   %      <tr><td>25 </td><td> Delta Z position (km)</td></tr>
   %      <tr><td>26 </td><td> Delta X velocity (km/sec)</td></tr>
   %      <tr><td>27 </td><td> Delta Y velocity (km/sec)</td></tr>
   %      <tr><td>28 </td><td> Delta Z velocity (km/sec)</td></tr>
   %      <tr><td>29 </td><td> Angle only obs computed range (km)</td></tr>
   %      <tr><td>30 </td><td> obs azimuth (deg)</td></tr>
   %      <tr><td>31 </td><td> obs elevation (deg)</td></tr>
   %  </table>
   %  <br>
   %  See BatchDCGetParams for the structure of the xai_dcElts array.
   %  <br>
   %  See BatchDCSolve for the structure of the xar_dcElts array.
   autoload("BatchDCIterate",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Returns a concatenated string representation of a VCM generated by a successful DC
   autoload("BatchDCGetVcm",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
   %  in the main input file or using the BatchDCSetSpVOutFileName() function call
   autoload("BatchDCGetSpVOut",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
   autoload("BatchDCSetSpVOut",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
   autoload("BatchDCResetAll",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Returns DC acceptance criteria data for the specified satellite
   autoload("BatchDCGetAccptCrit",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected SGP4/SGP4-XP elements and related data
   %  Note: No need to initialize VCM before calling this method
   autoload("SpToEGP",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   %  Note: No need to initialize VCM before calling this method
   autoload("SpToTle",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Combines SpToEGP and SpToTle functions into just one function call
   %  Note: No need to initialize VCM before calling this method
   autoload("SpToTleComb",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   %  Note: No need to initialize VCM before calling this method
   autoload("SpToCsv",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Combines SpToEGP and SpToCsv functions into just one function call
   %  Note: No need to initialize VCM before calling this method
   autoload("SpToCsvComb",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
   %  returns the corrected SGP4/SGP4-XP elements and related data
   autoload("ExtEphemToEGP",strcat(OctFilePath,"BatchDC.oct"));
   
   %  Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
   autoload("IomodDC",strcat(OctFilePath,"BatchDC.oct"));
   LoadBatchDCDll;
endfunction
% ========================= End of auto generated code ==========================
