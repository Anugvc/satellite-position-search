% This wrapper file was generated automatically by the GenDllWrappers program.
function freeBatchDC()   % Different DC propagation method
   % DC propagator method is GP
   global DCPROPTYPE_GP;
   % DC propagator method is SGP4-XP
   global DCPROPTYPE_XP;
   % DC propagator method is SP
   global DCPROPTYPE_SP;
   
   % DC iterating returned code
   % DC was successful
   global ITERCODE_DONE;
   % DC has error
   global ITERCODE_ERROR;
   % DC is still iterating
   global ITERCODE_ITERATING;
   % DC diverged but trying to recover
   global ITERCODE_DIVERGED;
   
   % indexes represent epoch placement options
   % Nodal crossing nearest latest obs
   global EPFLG_NODALXINGLATESTOB;
   % Exact time of latest obs
   global EPFLG_LATESTOB;
   % Nodal crossing closest to specified time
   global EPFLG_NODALXINGATTIME;
   % Do not change epoch
   global EPFLG_ATEPOCH;
   % Exact at specified time
   global EPFLG_ATSPECIFIEDTIME;
   % Middle of obs span
   global EPFLG_MIDDLEOBSSPAN;
   % Exact time of earliest obs
   global EPFLG_EARLIESTOB;
   % Beginning of day of Epoch, good for eGP
   global EPFLG_BEGINDAYEPOCH;
   % Beginning of day of Last obs
   global EPFLG_BEGINDAYLATESTOB;
   % Nodal crossing nearest epoch, good for eGP
   global EPFLG_NODALXINGEPOCH;
   
   % Different correction types
   global CORT_TIME;
   global CORT_PLANE;
   global CORT_7ELT;
   global CORT_INTRK;
   global CORT_8ELT;
   global CORT_SUBELT;
   
   % Different element correction order
   % 7-element only [default]
   global CORORD_7ELT;
   % time (SP: L, n, B), then 7-element
   global CORORD_TIM7ELT;
   % time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
   global CORORD_TIMPLN7ELT;
   % plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
   global CORORD_PLNTIM7ELT;
   % plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
   global CORORD_PLN7ELT;
   % n-only, then 7-element
   global CORORD_N7ELT;
   % L-only, then 7-element
   global CORORD_L7ELT;
   % L & n only, then 7-element
   global CORORD_LN7ELT;
   % Af/Ag, L, n only, then 7-element
   global CORORD_AFAGLN7ELT;
   % 6-element, then 7-element
   global CORORD_6ELT7ELT;
   
   
   % indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   % Not being used yet
   global XA_EGPCTRL_OPTION;
   % DC element type: 0=SPG4, 4=SGP4-XP
   global XA_EGPCTRL_DCELTTYPE;
   % Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   global XA_EGPCTRL_STARTMSE;
   % Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   global XA_EGPCTRL_STOPMSE;
   % Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
   global XA_EGPCTRL_STEPMIN;
   % Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
   global XA_EGPCTRL_DRAGCOR;
   % agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
   global XA_EGPCTRL_AGOMCOR;
   % Epoch placement flag - see EPFLG_? for available options
   global XA_EGPCTRL_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
   global XA_EGPCTRL_NEWEPOCH;
   
   % Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
   global XA_EGPCTRL_BVAL;
   % Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
   global XA_EGPCTRL_AGOMVAL;
   
   % correction order
   global XA_EGPCTRL_ORDERCOR;
   % Max # of iterations before declaring divergence [10]
   global XA_EGPCTRL_MAXOFITERS;
   
   % satellite number
   global XA_EGPCTRL_SATNUM;
   
   global XA_EGPCTRL_SIZE;
   
   
   
   % DC setting parameters
   
   global MAX_PARAMS;
   
   
   % DC print options
   % print first and last iteration
   global DC_PRINT_FIRSTBEST;
   % print every pass and summary
   global DC_PRINT_ALLPASS;
   % print summary only
   global DC_PRINT_SUMONLY;
   % print output elemenets only
   global DC_PRINT_ELTONLY;
   % do not print anything
   global DC_PRINT_NONE;
   
   % Iteration summary options
   % print summary every iteration in Keplerian elts
   global ITER_SUM_KEP;
   % print summary every iteration in Equinoctial elts
   global ITER_SUM_EQNX;
   
   % indexes for integer data fields
   % DC print option
   global XAI_CTRL_PRINTOPTION;
   % Apply biases from sensor file
   global XAI_CTRL_DEBIASOBS;
   % Weighed DC flag
   global XAI_CTRL_WEIGHTEDDC;
   % Epoch placement flag - see EPFLG_? for available options
   global XAI_CTRL_EPOCHOPTION;
   % Element correction flag - Ag
   global XAI_CTRL_CORRECT_AG;
   % Element correction flag - Af
   global XAI_CTRL_CORRECT_AF;
   % Element correction flag - Psi
   global XAI_CTRL_CORRECT_PSI;
   % Element correction flag - Chi
   global XAI_CTRL_CORRECT_CHI;
   % Element correction flag - L
   global XAI_CTRL_CORRECT_L;
   % Element correction flag - N
   global XAI_CTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global XAI_CTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   global XAI_CTRL_CORRECT_AGOM;
   % Correction order
   global XAI_CTRL_CORRECTORDER;
   % Correct by the specified correction order for 1 iteration only
   global XAI_CTRL_FOR1ITERONLY;
   % Flag specifies which residuals are used for RMS calculation and convergence
   global XAI_CTRL_RESIDSELECT;
   % Flag; if set, produce sensor performance analysis summary
   global XAI_CTRL_SENPERFORM;
   % Flag; if set, deweight according to # of obs per track
   global XAI_CTRL_DWOBSPERTRCK;
   % Iteration summary control
   global XAI_CTRL_ITERSUMOPT;
   % Partials method
   global XAI_CTRL_PARTIALMETH;
   % Light time correction control
   global XAI_CTRL_LTC;
   % Number of iteration to allow no auto rejection of residuals
   global XAI_CTRL_BRUCE;
   % Propagation method - GP=0, XP=4, SP=99
   global XAI_CTRL_PROPMETHOD;
   % Flag; if set, correct B* vs X
   global XAI_CTRL_CORRECTBVSX;
   % Max # of iterations before declaring divergence
   global XAI_CTRL_MAXOFITERS;
   % Use predicted RMS versus previous RMS for convergence testing
   global XAI_CTRL_USEPREDRMS;
   % Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
   global XAI_CTRL_RESCOMPMETH;
   % Flag; if set, use angle rates (obstypes = 4, 11)
   global XAI_CTRL_USEANGRATES;
   
   global XAI_CTRL_SIZE;
   
   
   
   % indexes for real data fields
   % RMS multiplier
   global XAR_CTRL_RMSMULT;
   % Time of specified epoch
   global XAR_CTRL_USEREPOCH;
   % Convergence criteria on time correction (%)
   global XAR_CTRL_CNVCRITONT;
   % First pass delta-t rejection criteria
   global XAR_CTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%)
   global XAR_CTRL_CNVCRITON7ELT;
   % reset value for B term in subset correction
   global XAR_CTRL_BRESET;
   global XAR_CTRL_SIZE;
   
   
   % indexes for accessing DC's integer data
   % satellite number
   global XAI_DCELTS_SATNUM;
   % elset number
   global XAI_DCELTS_ELSETNUM;
   % elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
   global XAI_DCELTS_ORBTYPE;
   % propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
   global XAI_DCELTS_PROPTYPE;
   % spectr mode
   global XAI_DCELTS_SPECTR;
   % epoch revolution number
   global XAI_DCELTS_REVNUM;
   % correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
   global XAI_DCELTS_CORRTYPE;
   
   % total iteration count
   global XAI_DCELTS_ITERCOUNT;
   % sub iteration count
   global XAI_DCELTS_SUBITER;
   % # residual accepted
   global XAI_DCELTS_RESACC;
   % # residual rejected
   global XAI_DCELTS_RESREJ;
   
   % 20-28 correction element flags
   global XAI_DCELTS_CORRFLGS;
   
   global XAI_DCELTS_SIZE;
   
   % indexes for accessing DC's real data
   % elset's epoch time in days since 1950 UTC
   global XAR_DCELTS_EPOCHDS50UTC;
   % n-dot/2  (for SGP, eph-type = 0)
   global XAR_DCELTS_NDOT;
   % n-double-dot/6  (for SGP, eph-type = 0)
   global XAR_DCELTS_N2DOT;
   % either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
   global XAR_DCELTS_BFIELD;
   % SGP4-XP/SP agom (m**2/kg)
   global XAR_DCELTS_AGOM;
   % SP outgassing parameter (km/s**2)
   global XAR_DCELTS_OGPARM;
   % semi major axis (km)
   global XAR_DCELTS_KEP_A;
   % eccentricity
   global XAR_DCELTS_KEP_E;
   % inclination (deg)
   global XAR_DCELTS_KEP_INCLI;
   % mean anamoly (deg)
   global XAR_DCELTS_KEP_MA;
   % right ascension of the ascending node (deg)
   global XAR_DCELTS_KEP_NODE;
   % argument of perigee (deg)
   global XAR_DCELTS_KEP_OMEGA;
   % AF
   global XAR_DCELTS_EQNX_AF;
   % AG
   global XAR_DCELTS_EQNX_AG;
   % CHI
   global XAR_DCELTS_EQNX_CHI;
   % PSI
   global XAR_DCELTS_EQNX_PSI;
   % mean longitude (deg)
   global XAR_DCELTS_EQNX_L;
   % mean motion (revs/day)
   global XAR_DCELTS_EQNX_N;
   % ECI posX (km)
   global XAR_DCELTS_POSX;
   % ECI posY (km)
   global XAR_DCELTS_POSY;
   % ECI posZ (km)
   global XAR_DCELTS_POSZ;
   % ECI velX (km/s)
   global XAR_DCELTS_VELX;
   % ECI velY (km/s)
   global XAR_DCELTS_VELY;
   % ECI velZ (km/s)
   global XAR_DCELTS_VELZ;
   
   % RMS (km)
   global XAR_DCELTS_RMS;
   % unweighted RMS (km)
   global XAR_DCELTS_RMSUNWTD;
   % delta T RMS (min)
   global XAR_DCELTS_DELTATRMS;
   % beta RMS (deg)
   global XAR_DCELTS_BETARMS;
   % delta height RMS (km)
   global XAR_DCELTS_DELTAHTRMS;
   % convergence value (km)
   global XAR_DCELTS_CONVQLTY;
   % predicted RMS (km)
   global XAR_DCELTS_RMSPD;
   
   % covariance diagonal L
   global XAR_DCELTS_COVL;
   % covariance diagonal N
   global XAR_DCELTS_COVN;
   % covariance diagonal CHI
   global XAR_DCELTS_COVCHI;
   % covariance diagonal PSI
   global XAR_DCELTS_COVPSI;
   % covariance diagonal AF
   global XAR_DCELTS_COVAF;
   % covariance diagonal AG
   global XAR_DCELTS_COVAG;
   % covariance diagonal BTERM
   global XAR_DCELTS_COVBTERM;
   % covariance not used
   global XAR_DCELTS_COVNA;
   % covariance diagonal AGOM
   global XAR_DCELTS_COVAGOM;
   
   % max partial residual (km)
   global XAR_DCELTS_XMAX;
   % max velocity resid (km/sec)
   global XAR_DCELTS_XMAX2;
   % max beta residual (deg)
   global XAR_DCELTS_XMAX3;
   % max delta-t residual (min)
   global XAR_DCELTS_XMAX4;
   % low argument of latitude coverage (deg)
   global XAR_DCELTS_PATCL;
   % high argument of latitude coverage (deg)
   global XAR_DCELTS_PATCH;
   
   % equinoctial covariance matrix - the lower triangular half 200-244
   global XAR_DCELTS_EQNXCOVMTX;
   
   global XAR_DCELTS_SIZE;
   
   % indexes for accessing obs rejection flags
   % satellite has decayed at the time of obs
   global XA_REJFLG_DECAYED;
   % obs residual computation error code
   global XA_REJFLG_ERROR;
   % right ascension residual rejected
   global XA_REJFLG_RA;
   % beta residual rejected
   global XA_REJFLG_BETA;
   % declination residual rejected
   global XA_REJFLG_DEC;
   % delta h residual rejected
   global XA_REJFLG_HEIGHT;
   % range residual rejected
   global XA_REJFLG_RANGE;
   % range rate residual rejected
   global XA_REJFLG_RR;
   % delta t residual rejected
   global XA_REJFLG_TIME;
   
   global XA_REJFLG_SIZE;
   
   % indexes for accessing DC's acceptance criteria data
   % standard - days from epoch
   global XA_AC_STD_EPOCH;
   % standard - number of residuals
   global XA_AC_STD_NORES;
   % standard - percent residual
   global XA_AC_STD_PRCNTRES;
   % standard - RMS (km)
   global XA_AC_STD_RMS;
   % standard - obs span (days)
   global XA_AC_STD_OBSSPAN;
   % standard - change in plan (deg)
   global XA_AC_STD_DELTAW;
   % standard - change in abar
   global XA_AC_STD_DELTAABAR;
   % standard - change in N (rev/day)
   global XA_AC_STD_DELTAN;
   % standard - change in B term
   global XA_AC_STD_DELTAB;
   
   % actual - days from epoch
   global XA_AC_ACT_EPOCH;
   % actual - number of residuals
   global XA_AC_ACT_NORES;
   % actual - percent residual
   global XA_AC_ACT_PRCNTRES;
   % actual - RMS (km)
   global XA_AC_ACT_RMS;
   % actual - obs span (days)
   global XA_AC_ACT_OBSSPAN;
   % actual - change in plan (deg)
   global XA_AC_ACT_DELTAW;
   % actual - change in abar
   global XA_AC_ACT_DELTAABAR;
   % actual - change in N (rev/day)
   global XA_AC_ACT_DELTAN;
   % actual - change in B term
   global XA_AC_ACT_DELTAB;
   
   global XA_AC_SIZE;
   
   
   % indexes for accessing DC's string character data - index to index of a substring
   % satellite's international designator
   global XAS_DCELTS_SATNAME_0TO7;
   
   global XAS_DCELTS_SIZE;
   
   % Different DC control modes
   % Use DC global settings settings
   global DCCTRL_MODE_GLOBAL;
   % Use provided/local DC settings
   global DCCTRL_MODE_LOCAL;
   
   
   % indexes of DC control parameters
   % DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
   global XA_DCCTRL_MODE;
   % propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
   global XA_DCCTRL_PROPMETHOD;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   global XA_DCCTRL_DEBIASOBS;
   % element correction order
   global XA_DCCTRL_CORRECTORDER;
   % epoch placement flag - see EPFLG_? for available options
   global XA_DCCTRL_EPOCHOPTION;
   % use predicted RMS versus previous RMS for convergenece testing
   global XA_DCCTRL_USEPREDRMS;
   % residual computation selection
   global XA_DCCTRL_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   global XA_DCCTRL_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   global XA_DCCTRL_MAXOFITERS;
   % apply weighed DC flag
   global XA_DCCTRL_WEIGHTEDDC;
   % light time correction control
   global XA_DCCTRL_LTC;
   % number of iteration to allow no auto rejection of residuals
   global XA_DCCTRL_BRUCE;
   % flag; if set, deweight according to # of obs per track
   global XA_DCCTRL_DWOBSPERTRCK;
   % partials method
   global XA_DCCTRL_PARTIALMETH;
   % Element correction flag - Ag
   global XA_DCCTRL_CORRECT_AG;
   % Element correction flag - Af
   global XA_DCCTRL_CORRECT_AF;
   % Element correction flag - Psi
   global XA_DCCTRL_CORRECT_PSI;
   % Element correction flag - Chi
   global XA_DCCTRL_CORRECT_CHI;
   % Element correction flag - L
   global XA_DCCTRL_CORRECT_L;
   % Element correction flag - N
   global XA_DCCTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global XA_DCCTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   global XA_DCCTRL_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   global XA_DCCTRL_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   global XA_DCCTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   global XA_DCCTRL_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   global XA_DCCTRL_RMSMULT;
   % reset value for B term in subset correction [0.01]
   global XA_DCCTRL_BRESET;
   % user's specified epoch - only when epoch placement option = 4 exact at specified time
   global XA_DCCTRL_USEREPOCH;
   % SP only - density consider parameter
   global XA_DCCTRL_CONSIDER;
   % GP only - residual computation method
   global XA_DCCTRL_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   global XA_DCCTRL_CORRECTBVSX;
   
   global XA_DCCTRL_SIZE;
   
   % Indexes of paramters using in IomodDC()
   % Iomod/DC control mode (not yet used)
   global XA_IOMDC_MODE;
   % DC element type, see DCPROPTYPE_? for available options
   global XA_IOMDC_DCELTTYPE;
   % Epoch placement flag - see EPFLG_? for available options
   global XA_IOMDC_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
   global XA_IOMDC_NEWEPOCH;
   % Correction order
   global XA_IOMDC_ORDERCOR;
   % IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
   global XA_IOMDC_OBSSELMODE;
   % residual computation selection
   global XA_IOMDC_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   global XA_IOMDC_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   global XA_IOMDC_MAXOFITERS;
   % apply weighed DC flag
   global XA_IOMDC_WEIGHTEDDC;
   % light time correction control
   global XA_IOMDC_LTC;
   % number of iteration to allow no auto rejection of residuals
   global XA_IOMDC_BRUCE;
   % flag; if set, deweight according to # of obs per track
   global XA_IOMDC_DWOBSPERTRCK;
   % partials method
   global XA_IOMDC_PARTIALMETH;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   global XA_IOMDC_DEBIASOBS;
   % use predicted RMS versus previous RMS for convergenece testing
   global XA_IOMDC_USEPREDRMS;
   
   % Element correction flag - Ag
   global XA_IOMDC_CORRECT_AG;
   % Element correction flag - Af
   global XA_IOMDC_CORRECT_AF;
   % Element correction flag - Psi
   global XA_IOMDC_CORRECT_PSI;
   % Element correction flag - Chi
   global XA_IOMDC_CORRECT_CHI;
   % Element correction flag - L
   global XA_IOMDC_CORRECT_L;
   % Element correction flag - N
   global XA_IOMDC_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   global XA_IOMDC_CORRECT_B;
   % Element correction flag - Agom (SP)
   global XA_IOMDC_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   global XA_IOMDC_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   global XA_IOMDC_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   global XA_IOMDC_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   global XA_IOMDC_RMSMULT;
   % reset value for B term in subset correction [0.01]
   global XA_IOMDC_BRESET;
   % SP only - density consider parameter
   global XA_IOMDC_CONSIDER;
   % GP only - residual computation method
   global XA_IOMDC_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   global XA_IOMDC_CORRECTBVSX;
   
   % see IOMDC_METHOD_? for available options
   global XA_IOMDC_METHOD;
   % The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   % number of half revolutions [0]
   global XA_IOMDC_NHREV;
   % solution number [0]
   global XA_IOMDC_IND;
   % maximum number of iterations [20]
   global XA_IOMDC_MAXIT;
   % the range guess to first observation (km) [36000]
   global XA_IOMDC_RNG1;
   % the range guess to third observation (km) [36000]
   global XA_IOMDC_RNG3;
   % partial derivative increment [1e-5]
   global XA_IOMDC_PDINC;
   % convergence criterion [1e-9]
   global XA_IOMDC_CONVCR;
   
   % IOMOD/DC parameter list size
   global XA_IOMDC_SIZE;
   
   % Different options for doing IOMOD/DC
   % Default option which uses Herrick-Gibbs for all obs types
   global IOMDC_METHOD_HB;
   % Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
   global IOMDC_METHOD_GDDEFLT;
   % Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
   global IOMDC_METHOD_GDSPEC;
   
   % Different DC propagation method
   % DC propagator method is GP
   clear DCPROPTYPE_GP;
   % DC propagator method is SGP4-XP
   clear DCPROPTYPE_XP;
   % DC propagator method is SP
   clear DCPROPTYPE_SP;
   
   % DC iterating returned code
   % DC was successful
   clear ITERCODE_DONE;
   % DC has error
   clear ITERCODE_ERROR;
   % DC is still iterating
   clear ITERCODE_ITERATING;
   % DC diverged but trying to recover
   clear ITERCODE_DIVERGED;
   
   % indexes represent epoch placement options
   % Nodal crossing nearest latest obs
   clear EPFLG_NODALXINGLATESTOB;
   % Exact time of latest obs
   clear EPFLG_LATESTOB;
   % Nodal crossing closest to specified time
   clear EPFLG_NODALXINGATTIME;
   % Do not change epoch
   clear EPFLG_ATEPOCH;
   % Exact at specified time
   clear EPFLG_ATSPECIFIEDTIME;
   % Middle of obs span
   clear EPFLG_MIDDLEOBSSPAN;
   % Exact time of earliest obs
   clear EPFLG_EARLIESTOB;
   % Beginning of day of Epoch, good for eGP
   clear EPFLG_BEGINDAYEPOCH;
   % Beginning of day of Last obs
   clear EPFLG_BEGINDAYLATESTOB;
   % Nodal crossing nearest epoch, good for eGP
   clear EPFLG_NODALXINGEPOCH;
   
   % Different correction types
   clear CORT_TIME;
   clear CORT_PLANE;
   clear CORT_7ELT;
   clear CORT_INTRK;
   clear CORT_8ELT;
   clear CORT_SUBELT;
   
   % Different element correction order
   % 7-element only [default]
   clear CORORD_7ELT;
   % time (SP: L, n, B), then 7-element
   clear CORORD_TIM7ELT;
   % time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
   clear CORORD_TIMPLN7ELT;
   % plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
   clear CORORD_PLNTIM7ELT;
   % plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
   clear CORORD_PLN7ELT;
   % n-only, then 7-element
   clear CORORD_N7ELT;
   % L-only, then 7-element
   clear CORORD_L7ELT;
   % L & n only, then 7-element
   clear CORORD_LN7ELT;
   % Af/Ag, L, n only, then 7-element
   clear CORORD_AFAGLN7ELT;
   % 6-element, then 7-element
   clear CORORD_6ELT7ELT;
   
   
   % indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
   % Not being used yet
   clear XA_EGPCTRL_OPTION;
   % DC element type: 0=SPG4, 4=SGP4-XP
   clear XA_EGPCTRL_DCELTTYPE;
   % Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   clear XA_EGPCTRL_STARTMSE;
   % Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
   clear XA_EGPCTRL_STOPMSE;
   % Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
   clear XA_EGPCTRL_STEPMIN;
   % Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
   clear XA_EGPCTRL_DRAGCOR;
   % agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
   clear XA_EGPCTRL_AGOMCOR;
   % Epoch placement flag - see EPFLG_? for available options
   clear XA_EGPCTRL_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
   clear XA_EGPCTRL_NEWEPOCH;
   
   % Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
   clear XA_EGPCTRL_BVAL;
   % Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
   clear XA_EGPCTRL_AGOMVAL;
   
   % correction order
   clear XA_EGPCTRL_ORDERCOR;
   % Max # of iterations before declaring divergence [10]
   clear XA_EGPCTRL_MAXOFITERS;
   
   % satellite number
   clear XA_EGPCTRL_SATNUM;
   
   clear XA_EGPCTRL_SIZE;
   
   
   
   % DC setting parameters
   
   clear MAX_PARAMS;
   
   
   % DC print options
   % print first and last iteration
   clear DC_PRINT_FIRSTBEST;
   % print every pass and summary
   clear DC_PRINT_ALLPASS;
   % print summary only
   clear DC_PRINT_SUMONLY;
   % print output elemenets only
   clear DC_PRINT_ELTONLY;
   % do not print anything
   clear DC_PRINT_NONE;
   
   % Iteration summary options
   % print summary every iteration in Keplerian elts
   clear ITER_SUM_KEP;
   % print summary every iteration in Equinoctial elts
   clear ITER_SUM_EQNX;
   
   % indexes for integer data fields
   % DC print option
   clear XAI_CTRL_PRINTOPTION;
   % Apply biases from sensor file
   clear XAI_CTRL_DEBIASOBS;
   % Weighed DC flag
   clear XAI_CTRL_WEIGHTEDDC;
   % Epoch placement flag - see EPFLG_? for available options
   clear XAI_CTRL_EPOCHOPTION;
   % Element correction flag - Ag
   clear XAI_CTRL_CORRECT_AG;
   % Element correction flag - Af
   clear XAI_CTRL_CORRECT_AF;
   % Element correction flag - Psi
   clear XAI_CTRL_CORRECT_PSI;
   % Element correction flag - Chi
   clear XAI_CTRL_CORRECT_CHI;
   % Element correction flag - L
   clear XAI_CTRL_CORRECT_L;
   % Element correction flag - N
   clear XAI_CTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   clear XAI_CTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   clear XAI_CTRL_CORRECT_AGOM;
   % Correction order
   clear XAI_CTRL_CORRECTORDER;
   % Correct by the specified correction order for 1 iteration only
   clear XAI_CTRL_FOR1ITERONLY;
   % Flag specifies which residuals are used for RMS calculation and convergence
   clear XAI_CTRL_RESIDSELECT;
   % Flag; if set, produce sensor performance analysis summary
   clear XAI_CTRL_SENPERFORM;
   % Flag; if set, deweight according to # of obs per track
   clear XAI_CTRL_DWOBSPERTRCK;
   % Iteration summary control
   clear XAI_CTRL_ITERSUMOPT;
   % Partials method
   clear XAI_CTRL_PARTIALMETH;
   % Light time correction control
   clear XAI_CTRL_LTC;
   % Number of iteration to allow no auto rejection of residuals
   clear XAI_CTRL_BRUCE;
   % Propagation method - GP=0, XP=4, SP=99
   clear XAI_CTRL_PROPMETHOD;
   % Flag; if set, correct B* vs X
   clear XAI_CTRL_CORRECTBVSX;
   % Max # of iterations before declaring divergence
   clear XAI_CTRL_MAXOFITERS;
   % Use predicted RMS versus previous RMS for convergence testing
   clear XAI_CTRL_USEPREDRMS;
   % Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
   clear XAI_CTRL_RESCOMPMETH;
   % Flag; if set, use angle rates (obstypes = 4, 11)
   clear XAI_CTRL_USEANGRATES;
   
   clear XAI_CTRL_SIZE;
   
   
   
   % indexes for real data fields
   % RMS multiplier
   clear XAR_CTRL_RMSMULT;
   % Time of specified epoch
   clear XAR_CTRL_USEREPOCH;
   % Convergence criteria on time correction (%)
   clear XAR_CTRL_CNVCRITONT;
   % First pass delta-t rejection criteria
   clear XAR_CTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%)
   clear XAR_CTRL_CNVCRITON7ELT;
   % reset value for B term in subset correction
   clear XAR_CTRL_BRESET;
   clear XAR_CTRL_SIZE;
   
   
   % indexes for accessing DC's integer data
   % satellite number
   clear XAI_DCELTS_SATNUM;
   % elset number
   clear XAI_DCELTS_ELSETNUM;
   % elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
   clear XAI_DCELTS_ORBTYPE;
   % propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
   clear XAI_DCELTS_PROPTYPE;
   % spectr mode
   clear XAI_DCELTS_SPECTR;
   % epoch revolution number
   clear XAI_DCELTS_REVNUM;
   % correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
   clear XAI_DCELTS_CORRTYPE;
   
   % total iteration count
   clear XAI_DCELTS_ITERCOUNT;
   % sub iteration count
   clear XAI_DCELTS_SUBITER;
   % # residual accepted
   clear XAI_DCELTS_RESACC;
   % # residual rejected
   clear XAI_DCELTS_RESREJ;
   
   % 20-28 correction element flags
   clear XAI_DCELTS_CORRFLGS;
   
   clear XAI_DCELTS_SIZE;
   
   % indexes for accessing DC's real data
   % elset's epoch time in days since 1950 UTC
   clear XAR_DCELTS_EPOCHDS50UTC;
   % n-dot/2  (for SGP, eph-type = 0)
   clear XAR_DCELTS_NDOT;
   % n-double-dot/6  (for SGP, eph-type = 0)
   clear XAR_DCELTS_N2DOT;
   % either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
   clear XAR_DCELTS_BFIELD;
   % SGP4-XP/SP agom (m**2/kg)
   clear XAR_DCELTS_AGOM;
   % SP outgassing parameter (km/s**2)
   clear XAR_DCELTS_OGPARM;
   % semi major axis (km)
   clear XAR_DCELTS_KEP_A;
   % eccentricity
   clear XAR_DCELTS_KEP_E;
   % inclination (deg)
   clear XAR_DCELTS_KEP_INCLI;
   % mean anamoly (deg)
   clear XAR_DCELTS_KEP_MA;
   % right ascension of the ascending node (deg)
   clear XAR_DCELTS_KEP_NODE;
   % argument of perigee (deg)
   clear XAR_DCELTS_KEP_OMEGA;
   % AF
   clear XAR_DCELTS_EQNX_AF;
   % AG
   clear XAR_DCELTS_EQNX_AG;
   % CHI
   clear XAR_DCELTS_EQNX_CHI;
   % PSI
   clear XAR_DCELTS_EQNX_PSI;
   % mean longitude (deg)
   clear XAR_DCELTS_EQNX_L;
   % mean motion (revs/day)
   clear XAR_DCELTS_EQNX_N;
   % ECI posX (km)
   clear XAR_DCELTS_POSX;
   % ECI posY (km)
   clear XAR_DCELTS_POSY;
   % ECI posZ (km)
   clear XAR_DCELTS_POSZ;
   % ECI velX (km/s)
   clear XAR_DCELTS_VELX;
   % ECI velY (km/s)
   clear XAR_DCELTS_VELY;
   % ECI velZ (km/s)
   clear XAR_DCELTS_VELZ;
   
   % RMS (km)
   clear XAR_DCELTS_RMS;
   % unweighted RMS (km)
   clear XAR_DCELTS_RMSUNWTD;
   % delta T RMS (min)
   clear XAR_DCELTS_DELTATRMS;
   % beta RMS (deg)
   clear XAR_DCELTS_BETARMS;
   % delta height RMS (km)
   clear XAR_DCELTS_DELTAHTRMS;
   % convergence value (km)
   clear XAR_DCELTS_CONVQLTY;
   % predicted RMS (km)
   clear XAR_DCELTS_RMSPD;
   
   % covariance diagonal L
   clear XAR_DCELTS_COVL;
   % covariance diagonal N
   clear XAR_DCELTS_COVN;
   % covariance diagonal CHI
   clear XAR_DCELTS_COVCHI;
   % covariance diagonal PSI
   clear XAR_DCELTS_COVPSI;
   % covariance diagonal AF
   clear XAR_DCELTS_COVAF;
   % covariance diagonal AG
   clear XAR_DCELTS_COVAG;
   % covariance diagonal BTERM
   clear XAR_DCELTS_COVBTERM;
   % covariance not used
   clear XAR_DCELTS_COVNA;
   % covariance diagonal AGOM
   clear XAR_DCELTS_COVAGOM;
   
   % max partial residual (km)
   clear XAR_DCELTS_XMAX;
   % max velocity resid (km/sec)
   clear XAR_DCELTS_XMAX2;
   % max beta residual (deg)
   clear XAR_DCELTS_XMAX3;
   % max delta-t residual (min)
   clear XAR_DCELTS_XMAX4;
   % low argument of latitude coverage (deg)
   clear XAR_DCELTS_PATCL;
   % high argument of latitude coverage (deg)
   clear XAR_DCELTS_PATCH;
   
   % equinoctial covariance matrix - the lower triangular half 200-244
   clear XAR_DCELTS_EQNXCOVMTX;
   
   clear XAR_DCELTS_SIZE;
   
   % indexes for accessing obs rejection flags
   % satellite has decayed at the time of obs
   clear XA_REJFLG_DECAYED;
   % obs residual computation error code
   clear XA_REJFLG_ERROR;
   % right ascension residual rejected
   clear XA_REJFLG_RA;
   % beta residual rejected
   clear XA_REJFLG_BETA;
   % declination residual rejected
   clear XA_REJFLG_DEC;
   % delta h residual rejected
   clear XA_REJFLG_HEIGHT;
   % range residual rejected
   clear XA_REJFLG_RANGE;
   % range rate residual rejected
   clear XA_REJFLG_RR;
   % delta t residual rejected
   clear XA_REJFLG_TIME;
   
   clear XA_REJFLG_SIZE;
   
   % indexes for accessing DC's acceptance criteria data
   % standard - days from epoch
   clear XA_AC_STD_EPOCH;
   % standard - number of residuals
   clear XA_AC_STD_NORES;
   % standard - percent residual
   clear XA_AC_STD_PRCNTRES;
   % standard - RMS (km)
   clear XA_AC_STD_RMS;
   % standard - obs span (days)
   clear XA_AC_STD_OBSSPAN;
   % standard - change in plan (deg)
   clear XA_AC_STD_DELTAW;
   % standard - change in abar
   clear XA_AC_STD_DELTAABAR;
   % standard - change in N (rev/day)
   clear XA_AC_STD_DELTAN;
   % standard - change in B term
   clear XA_AC_STD_DELTAB;
   
   % actual - days from epoch
   clear XA_AC_ACT_EPOCH;
   % actual - number of residuals
   clear XA_AC_ACT_NORES;
   % actual - percent residual
   clear XA_AC_ACT_PRCNTRES;
   % actual - RMS (km)
   clear XA_AC_ACT_RMS;
   % actual - obs span (days)
   clear XA_AC_ACT_OBSSPAN;
   % actual - change in plan (deg)
   clear XA_AC_ACT_DELTAW;
   % actual - change in abar
   clear XA_AC_ACT_DELTAABAR;
   % actual - change in N (rev/day)
   clear XA_AC_ACT_DELTAN;
   % actual - change in B term
   clear XA_AC_ACT_DELTAB;
   
   clear XA_AC_SIZE;
   
   
   % indexes for accessing DC's string character data - index to index of a substring
   % satellite's international designator
   clear XAS_DCELTS_SATNAME_0TO7;
   
   clear XAS_DCELTS_SIZE;
   
   % Different DC control modes
   % Use DC global settings settings
   clear DCCTRL_MODE_GLOBAL;
   % Use provided/local DC settings
   clear DCCTRL_MODE_LOCAL;
   
   
   % indexes of DC control parameters
   % DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
   clear XA_DCCTRL_MODE;
   % propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
   clear XA_DCCTRL_PROPMETHOD;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   clear XA_DCCTRL_DEBIASOBS;
   % element correction order
   clear XA_DCCTRL_CORRECTORDER;
   % epoch placement flag - see EPFLG_? for available options
   clear XA_DCCTRL_EPOCHOPTION;
   % use predicted RMS versus previous RMS for convergenece testing
   clear XA_DCCTRL_USEPREDRMS;
   % residual computation selection
   clear XA_DCCTRL_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   clear XA_DCCTRL_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   clear XA_DCCTRL_MAXOFITERS;
   % apply weighed DC flag
   clear XA_DCCTRL_WEIGHTEDDC;
   % light time correction control
   clear XA_DCCTRL_LTC;
   % number of iteration to allow no auto rejection of residuals
   clear XA_DCCTRL_BRUCE;
   % flag; if set, deweight according to # of obs per track
   clear XA_DCCTRL_DWOBSPERTRCK;
   % partials method
   clear XA_DCCTRL_PARTIALMETH;
   % Element correction flag - Ag
   clear XA_DCCTRL_CORRECT_AG;
   % Element correction flag - Af
   clear XA_DCCTRL_CORRECT_AF;
   % Element correction flag - Psi
   clear XA_DCCTRL_CORRECT_PSI;
   % Element correction flag - Chi
   clear XA_DCCTRL_CORRECT_CHI;
   % Element correction flag - L
   clear XA_DCCTRL_CORRECT_L;
   % Element correction flag - N
   clear XA_DCCTRL_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   clear XA_DCCTRL_CORRECT_B;
   % Element correction flag - Agom (SP)
   clear XA_DCCTRL_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   clear XA_DCCTRL_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   clear XA_DCCTRL_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   clear XA_DCCTRL_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   clear XA_DCCTRL_RMSMULT;
   % reset value for B term in subset correction [0.01]
   clear XA_DCCTRL_BRESET;
   % user's specified epoch - only when epoch placement option = 4 exact at specified time
   clear XA_DCCTRL_USEREPOCH;
   % SP only - density consider parameter
   clear XA_DCCTRL_CONSIDER;
   % GP only - residual computation method
   clear XA_DCCTRL_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   clear XA_DCCTRL_CORRECTBVSX;
   
   clear XA_DCCTRL_SIZE;
   
   % Indexes of paramters using in IomodDC()
   % Iomod/DC control mode (not yet used)
   clear XA_IOMDC_MODE;
   % DC element type, see DCPROPTYPE_? for available options
   clear XA_IOMDC_DCELTTYPE;
   % Epoch placement flag - see EPFLG_? for available options
   clear XA_IOMDC_EPFLG;
   % Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
   clear XA_IOMDC_NEWEPOCH;
   % Correction order
   clear XA_IOMDC_ORDERCOR;
   % IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
   clear XA_IOMDC_OBSSELMODE;
   % residual computation selection
   clear XA_IOMDC_RESIDSELECT;
   % correct by the specified correction order for 1 iteration only
   clear XA_IOMDC_FOR1ITERONLY;
   % max # of iterations before declaring divergence
   clear XA_IOMDC_MAXOFITERS;
   % apply weighed DC flag
   clear XA_IOMDC_WEIGHTEDDC;
   % light time correction control
   clear XA_IOMDC_LTC;
   % number of iteration to allow no auto rejection of residuals
   clear XA_IOMDC_BRUCE;
   % flag; if set, deweight according to # of obs per track
   clear XA_IOMDC_DWOBSPERTRCK;
   % partials method
   clear XA_IOMDC_PARTIALMETH;
   % debias obs flag: 0= do not debias obs, 1= debias obs
   clear XA_IOMDC_DEBIASOBS;
   % use predicted RMS versus previous RMS for convergenece testing
   clear XA_IOMDC_USEPREDRMS;
   
   % Element correction flag - Ag
   clear XA_IOMDC_CORRECT_AG;
   % Element correction flag - Af
   clear XA_IOMDC_CORRECT_AF;
   % Element correction flag - Psi
   clear XA_IOMDC_CORRECT_PSI;
   % Element correction flag - Chi
   clear XA_IOMDC_CORRECT_CHI;
   % Element correction flag - L
   clear XA_IOMDC_CORRECT_L;
   % Element correction flag - N
   clear XA_IOMDC_CORRECT_N;
   % Element correction flag - B* (SGP4) B (SP)
   clear XA_IOMDC_CORRECT_B;
   % Element correction flag - Agom (SP)
   clear XA_IOMDC_CORRECT_AGOM;
   % Convergence criteria on time (%) [5.0%]
   clear XA_IOMDC_CNVCRITONT;
   % First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
   clear XA_IOMDC_1STPASDELTAT;
   % Convergence criteria on 7-elt correction (%) [1.0%]
   clear XA_IOMDC_CNVCRITON7ELT;
   % RMS multiplier [4.0]
   clear XA_IOMDC_RMSMULT;
   % reset value for B term in subset correction [0.01]
   clear XA_IOMDC_BRESET;
   % SP only - density consider parameter
   clear XA_IOMDC_CONSIDER;
   % GP only - residual computation method
   clear XA_IOMDC_GPRCM;
   % GP only - SGP4: correct B* vs X, SGP4-XP: correct B
   clear XA_IOMDC_CORRECTBVSX;
   
   % see IOMDC_METHOD_? for available options
   clear XA_IOMDC_METHOD;
   % The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
   % number of half revolutions [0]
   clear XA_IOMDC_NHREV;
   % solution number [0]
   clear XA_IOMDC_IND;
   % maximum number of iterations [20]
   clear XA_IOMDC_MAXIT;
   % the range guess to first observation (km) [36000]
   clear XA_IOMDC_RNG1;
   % the range guess to third observation (km) [36000]
   clear XA_IOMDC_RNG3;
   % partial derivative increment [1e-5]
   clear XA_IOMDC_PDINC;
   % convergence criterion [1e-9]
   clear XA_IOMDC_CONVCR;
   
   % IOMOD/DC parameter list size
   clear XA_IOMDC_SIZE;
   
   % Different options for doing IOMOD/DC
   % Default option which uses Herrick-Gibbs for all obs types
   clear IOMDC_METHOD_HB;
   % Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
   clear IOMDC_METHOD_GDDEFLT;
   % Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
   clear IOMDC_METHOD_GDSPEC;
   
   FreeBatchDCDll;
   clear LoadBatchDCDll;
   clear FreeBatchDCDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes BatchDC DLL for use in the program
   clear BatchDCInit
   
   %  Returns information about the current version of BatchDC DLL. 
   %  The information is placed in the string parameter passed in.
   clear BatchDCGetInfo
   
   %  Read/Load BatchDC input data from an input file
   clear BatchDCLoadFile
   
   %  Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
   clear BatchDCLoadFileAll
   
   %  Read/Load BatchDC-typed input data from an input card
   clear BatchDCLoadCard
   
   %  Builds and returns the DC parameter card (1P-Card) from the current DC settings
   clear BatchDCGetPCard
   
   %  Saves any currently loaded BatchDC-related settings to a file
   clear BatchDCSaveFile
   
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
   clear BatchDCGetParams
   
   %  Sets BatchDC parameter data (P Card) - all fields
   %  See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
   clear BatchDCSetParams
   
   %  Returns DC control parameters using array format
   clear BatchDCGetCtrlArr
   
   %  Sets DC control parameters using array format
   clear BatchDCSetCtrlArr
   
   %  Initializes DC parameters for the satellite
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   clear BatchDCInitSat
   
   %  Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   clear BatchDCInitSatObsKeys
   
   %  Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
   %  See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
   %  Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
   clear BatchDCInitSatObsSel
   
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
   clear BatchDCSolve
   
   %  Performs batch-least-square differential corrections to the specified satellite and
   %  return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
   %  Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
   %  See BatchDCGetParams for the structure of the xai_dcElts array.
   %  See BatchDCSolve for the structure of the xar_dcElts array.
   clear BatchDCSolveSelObs
   
   %  Removes a satellite, represented by the satKey, from BatchDC's memory
   clear BatchDCRemoveSat
   
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
   clear BatchDCIterate
   
   %  Returns a concatenated string representation of a VCM generated by a successful DC
   clear BatchDCGetVcm
   
   %  Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
   %  in the main input file or using the BatchDCSetSpVOutFileName() function call
   clear BatchDCGetSpVOut
   
   %  Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
   clear BatchDCSetSpVOut
   
   %  Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
   clear BatchDCResetAll
   
   %  Returns DC acceptance criteria data for the specified satellite
   clear BatchDCGetAccptCrit
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected SGP4/SGP4-XP elements and related data
   %  Note: No need to initialize VCM before calling this method
   clear SpToEGP
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   %  Note: No need to initialize VCM before calling this method
   clear SpToTle
   
   %  Combines SpToEGP and SpToTle functions into just one function call
   %  Note: No need to initialize VCM before calling this method
   clear SpToTleComb
   
   %  Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
   %  returns the corrected elements SGP4/SGP4-XP in form of a TLE
   %  Note: No need to initialize VCM before calling this method
   clear SpToCsv
   
   %  Combines SpToEGP and SpToCsv functions into just one function call
   %  Note: No need to initialize VCM before calling this method
   clear SpToCsvComb
   
   %  Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
   %  returns the corrected SGP4/SGP4-XP elements and related data
   clear ExtEphemToEGP
   
   %  Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
   clear IomodDC
endfunction
% ========================= End of auto generated code ==========================
