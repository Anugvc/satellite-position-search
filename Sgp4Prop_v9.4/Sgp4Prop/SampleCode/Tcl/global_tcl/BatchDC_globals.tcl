# This wrapper file was generated automatically by the GenDllWrappers program.
# Different DC propagation method
# DC propagator method is GP
set DCPROPTYPE_GP 0
# DC propagator method is SGP4-XP
set DCPROPTYPE_XP 4
# DC propagator method is SP
set DCPROPTYPE_SP 99

# DC iterating returned code
# DC was successful
set ITERCODE_DONE 0
# DC has error
set ITERCODE_ERROR 1
# DC is still iterating
set ITERCODE_ITERATING 2
# DC diverged but trying to recover
set ITERCODE_DIVERGED 3

# indexes represent epoch placement options
# Nodal crossing nearest latest obs
set EPFLG_NODALXINGLATESTOB 0
# Exact time of latest obs
set EPFLG_LATESTOB 1
# Nodal crossing closest to specified time
set EPFLG_NODALXINGATTIME 2
# Do not change epoch
set EPFLG_ATEPOCH 3
# Exact at specified time
set EPFLG_ATSPECIFIEDTIME 4
# Middle of obs span
set EPFLG_MIDDLEOBSSPAN 5
# Exact time of earliest obs
set EPFLG_EARLIESTOB 6
# Beginning of day of Epoch, good for eGP
set EPFLG_BEGINDAYEPOCH 7
# Beginning of day of Last obs
set EPFLG_BEGINDAYLATESTOB 8
# Nodal crossing nearest epoch, good for eGP
set EPFLG_NODALXINGEPOCH 9

# Different correction types
set CORT_TIME 0
set CORT_PLANE 1
set CORT_7ELT 2
set CORT_INTRK 3
set CORT_8ELT 4
set CORT_SUBELT 5

# Different element correction order
# 7-element only [default]
set CORORD_7ELT 0
# time (SP: L, n, B), then 7-element
set CORORD_TIM7ELT 1
# time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
set CORORD_TIMPLN7ELT 2
# plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
set CORORD_PLNTIM7ELT 3
# plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
set CORORD_PLN7ELT 4
# n-only, then 7-element
set CORORD_N7ELT 5
# L-only, then 7-element
set CORORD_L7ELT 6
# L & n only, then 7-element
set CORORD_LN7ELT 7
# Af/Ag, L, n only, then 7-element
set CORORD_AFAGLN7ELT 8
# 6-element, then 7-element
set CORORD_6ELT7ELT 9


# indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
# Not being used yet
set XA_EGPCTRL_OPTION 0
# DC element type: 0=SPG4, 4=SGP4-XP
set XA_EGPCTRL_DCELTTYPE 1
# Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
set XA_EGPCTRL_STARTMSE 2
# Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
set XA_EGPCTRL_STOPMSE 3
# Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
set XA_EGPCTRL_STEPMIN 4
# Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
set XA_EGPCTRL_DRAGCOR 5
# agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
set XA_EGPCTRL_AGOMCOR 6
# Epoch placement flag - see EPFLG_? for available options
set XA_EGPCTRL_EPFLG 7
# Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
set XA_EGPCTRL_NEWEPOCH 8

# Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
set XA_EGPCTRL_BVAL 9
# Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
set XA_EGPCTRL_AGOMVAL 10

# correction order
set XA_EGPCTRL_ORDERCOR 11
# Max # of iterations before declaring divergence [10]
set XA_EGPCTRL_MAXOFITERS 12

# satellite number
set XA_EGPCTRL_SATNUM 63

set XA_EGPCTRL_SIZE 64



# DC setting parameters

set MAX_PARAMS 256


# DC print options
# print first and last iteration
set DC_PRINT_FIRSTBEST 0
# print every pass and summary
set DC_PRINT_ALLPASS 1
# print summary only
set DC_PRINT_SUMONLY 2
# print output elemenets only
set DC_PRINT_ELTONLY 3
# do not print anything
set DC_PRINT_NONE 4

# Iteration summary options
# print summary every iteration in Keplerian elts
set ITER_SUM_KEP 1
# print summary every iteration in Equinoctial elts
set ITER_SUM_EQNX 2

# indexes for integer data fields
# DC print option
set XAI_CTRL_PRINTOPTION 0
# Apply biases from sensor file
set XAI_CTRL_DEBIASOBS 1
# Weighed DC flag
set XAI_CTRL_WEIGHTEDDC 2
# Epoch placement flag - see EPFLG_? for available options
set XAI_CTRL_EPOCHOPTION 3
# Element correction flag - Ag
set XAI_CTRL_CORRECT_AG 4
# Element correction flag - Af
set XAI_CTRL_CORRECT_AF 5
# Element correction flag - Psi
set XAI_CTRL_CORRECT_PSI 6
# Element correction flag - Chi
set XAI_CTRL_CORRECT_CHI 7
# Element correction flag - L
set XAI_CTRL_CORRECT_L 8
# Element correction flag - N
set XAI_CTRL_CORRECT_N 9
# Element correction flag - B* (SGP4) B (SP)
set XAI_CTRL_CORRECT_B 10
# Element correction flag - Agom (SP)
set XAI_CTRL_CORRECT_AGOM 11
# Correction order
set XAI_CTRL_CORRECTORDER 12
# Correct by the specified correction order for 1 iteration only
set XAI_CTRL_FOR1ITERONLY 13
# Flag specifies which residuals are used for RMS calculation and convergence
set XAI_CTRL_RESIDSELECT 14
# Flag; if set, produce sensor performance analysis summary
set XAI_CTRL_SENPERFORM 15
# Flag; if set, deweight according to # of obs per track
set XAI_CTRL_DWOBSPERTRCK 16
# Iteration summary control
set XAI_CTRL_ITERSUMOPT 17
# Partials method
set XAI_CTRL_PARTIALMETH 18
# Light time correction control
set XAI_CTRL_LTC 19
# Number of iteration to allow no auto rejection of residuals
set XAI_CTRL_BRUCE 20
# Propagation method - GP=0, XP=4, SP=99
set XAI_CTRL_PROPMETHOD 21
# Flag; if set, correct B* vs X
set XAI_CTRL_CORRECTBVSX 22
# Max # of iterations before declaring divergence
set XAI_CTRL_MAXOFITERS 23
# Use predicted RMS versus previous RMS for convergence testing
set XAI_CTRL_USEPREDRMS 24
# Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
set XAI_CTRL_RESCOMPMETH 25
# Flag; if set, use angle rates (obstypes = 4, 11)
set XAI_CTRL_USEANGRATES 26

set XAI_CTRL_SIZE 256



# indexes for real data fields
# RMS multiplier
set XAR_CTRL_RMSMULT 0
# Time of specified epoch
set XAR_CTRL_USEREPOCH 1
# Convergence criteria on time correction (%)
set XAR_CTRL_CNVCRITONT 2
# First pass delta-t rejection criteria
set XAR_CTRL_1STPASDELTAT 3
# Convergence criteria on 7-elt correction (%)
set XAR_CTRL_CNVCRITON7ELT 4
# reset value for B term in subset correction
set XAR_CTRL_BRESET 5
set XAR_CTRL_SIZE 256


# indexes for accessing DC's integer data
# satellite number
set XAI_DCELTS_SATNUM 0
# elset number
set XAI_DCELTS_ELSETNUM 1
# elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
set XAI_DCELTS_ORBTYPE 2
# propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
set XAI_DCELTS_PROPTYPE 3
# spectr mode
set XAI_DCELTS_SPECTR 4
# epoch revolution number
set XAI_DCELTS_REVNUM 5
# correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
set XAI_DCELTS_CORRTYPE 6

# total iteration count
set XAI_DCELTS_ITERCOUNT 10
# sub iteration count
set XAI_DCELTS_SUBITER 11
# # residual accepted
set XAI_DCELTS_RESACC 12
# # residual rejected
set XAI_DCELTS_RESREJ 13

# 20-28 correction element flags
set XAI_DCELTS_CORRFLGS 20

set XAI_DCELTS_SIZE 256

# indexes for accessing DC's real data
# elset's epoch time in days since 1950 UTC
set XAR_DCELTS_EPOCHDS50UTC 0
# n-dot/2  (for SGP, eph-type = 0)
set XAR_DCELTS_NDOT 1
# n-double-dot/6  (for SGP, eph-type = 0)
set XAR_DCELTS_N2DOT 2
# either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
set XAR_DCELTS_BFIELD 3
# SGP4-XP/SP agom (m**2/kg)
set XAR_DCELTS_AGOM 4
# SP outgassing parameter (km/s**2)
set XAR_DCELTS_OGPARM 5
# semi major axis (km)
set XAR_DCELTS_KEP_A 6
# eccentricity
set XAR_DCELTS_KEP_E 7
# inclination (deg)
set XAR_DCELTS_KEP_INCLI 8
# mean anamoly (deg)
set XAR_DCELTS_KEP_MA 9
# right ascension of the ascending node (deg)
set XAR_DCELTS_KEP_NODE 10
# argument of perigee (deg)
set XAR_DCELTS_KEP_OMEGA 11
# AF
set XAR_DCELTS_EQNX_AF 12
# AG
set XAR_DCELTS_EQNX_AG 13
# CHI
set XAR_DCELTS_EQNX_CHI 14
# PSI
set XAR_DCELTS_EQNX_PSI 15
# mean longitude (deg)
set XAR_DCELTS_EQNX_L 16
# mean motion (revs/day)
set XAR_DCELTS_EQNX_N 17
# ECI posX (km)
set XAR_DCELTS_POSX 18
# ECI posY (km)
set XAR_DCELTS_POSY 19
# ECI posZ (km)
set XAR_DCELTS_POSZ 20
# ECI velX (km/s)
set XAR_DCELTS_VELX 21
# ECI velY (km/s)
set XAR_DCELTS_VELY 22
# ECI velZ (km/s)
set XAR_DCELTS_VELZ 23

# RMS (km)
set XAR_DCELTS_RMS 40
# unweighted RMS (km)
set XAR_DCELTS_RMSUNWTD 41
# delta T RMS (min)
set XAR_DCELTS_DELTATRMS 42
# beta RMS (deg)
set XAR_DCELTS_BETARMS 43
# delta height RMS (km)
set XAR_DCELTS_DELTAHTRMS 44
# convergence value (km)
set XAR_DCELTS_CONVQLTY 45
# predicted RMS (km)
set XAR_DCELTS_RMSPD 46

# covariance diagonal L
set XAR_DCELTS_COVL 60
# covariance diagonal N
set XAR_DCELTS_COVN 61
# covariance diagonal CHI
set XAR_DCELTS_COVCHI 62
# covariance diagonal PSI
set XAR_DCELTS_COVPSI 63
# covariance diagonal AF
set XAR_DCELTS_COVAF 64
# covariance diagonal AG
set XAR_DCELTS_COVAG 65
# covariance diagonal BTERM
set XAR_DCELTS_COVBTERM 66
# covariance not used
set XAR_DCELTS_COVNA 67
# covariance diagonal AGOM
set XAR_DCELTS_COVAGOM 68

# max partial residual (km)
set XAR_DCELTS_XMAX 70
# max velocity resid (km/sec)
set XAR_DCELTS_XMAX2 71
# max beta residual (deg)
set XAR_DCELTS_XMAX3 72
# max delta-t residual (min)
set XAR_DCELTS_XMAX4 73
# low argument of latitude coverage (deg)
set XAR_DCELTS_PATCL 74
# high argument of latitude coverage (deg)
set XAR_DCELTS_PATCH 75

# equinoctial covariance matrix - the lower triangular half 200-244
set XAR_DCELTS_EQNXCOVMTX 200

set XAR_DCELTS_SIZE 256

# indexes for accessing obs rejection flags
# satellite has decayed at the time of obs
set XA_REJFLG_DECAYED 0
# obs residual computation error code
set XA_REJFLG_ERROR 1
# right ascension residual rejected
set XA_REJFLG_RA 2
# beta residual rejected
set XA_REJFLG_BETA 3
# declination residual rejected
set XA_REJFLG_DEC 4
# delta h residual rejected
set XA_REJFLG_HEIGHT 5
# range residual rejected
set XA_REJFLG_RANGE 6
# range rate residual rejected
set XA_REJFLG_RR 7
# delta t residual rejected
set XA_REJFLG_TIME 8

set XA_REJFLG_SIZE 32

# indexes for accessing DC's acceptance criteria data
# standard - days from epoch
set XA_AC_STD_EPOCH 0
# standard - number of residuals
set XA_AC_STD_NORES 1
# standard - percent residual
set XA_AC_STD_PRCNTRES 2
# standard - RMS (km)
set XA_AC_STD_RMS 3
# standard - obs span (days)
set XA_AC_STD_OBSSPAN 4
# standard - change in plan (deg)
set XA_AC_STD_DELTAW 5
# standard - change in abar
set XA_AC_STD_DELTAABAR 6
# standard - change in N (rev/day)
set XA_AC_STD_DELTAN 7
# standard - change in B term
set XA_AC_STD_DELTAB 8

# actual - days from epoch
set XA_AC_ACT_EPOCH 20
# actual - number of residuals
set XA_AC_ACT_NORES 21
# actual - percent residual
set XA_AC_ACT_PRCNTRES 22
# actual - RMS (km)
set XA_AC_ACT_RMS 23
# actual - obs span (days)
set XA_AC_ACT_OBSSPAN 24
# actual - change in plan (deg)
set XA_AC_ACT_DELTAW 25
# actual - change in abar
set XA_AC_ACT_DELTAABAR 26
# actual - change in N (rev/day)
set XA_AC_ACT_DELTAN 27
# actual - change in B term
set XA_AC_ACT_DELTAB 28

set XA_AC_SIZE 64


# indexes for accessing DC's string character data - index to index of a substring
# satellite's international designator
set XAS_DCELTS_SATNAME_0TO7 0

set XAS_DCELTS_SIZE 512

# Different DC control modes
# Use DC global settings settings
set DCCTRL_MODE_GLOBAL 0
# Use provided/local DC settings
set DCCTRL_MODE_LOCAL 1


# indexes of DC control parameters
# DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
set XA_DCCTRL_MODE 0
# propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
set XA_DCCTRL_PROPMETHOD 		 1
# debias obs flag: 0= do not debias obs, 1= debias obs
set XA_DCCTRL_DEBIASOBS    		 2
# element correction order
set XA_DCCTRL_CORRECTORDER		 3
# epoch placement flag - see EPFLG_? for available options
set XA_DCCTRL_EPOCHOPTION  		 4
# use predicted RMS versus previous RMS for convergenece testing
set XA_DCCTRL_USEPREDRMS		 5
# residual computation selection
set XA_DCCTRL_RESIDSELECT 6
# correct by the specified correction order for 1 iteration only
set XA_DCCTRL_FOR1ITERONLY		 7
# max # of iterations before declaring divergence
set XA_DCCTRL_MAXOFITERS 8
# apply weighed DC flag
set XA_DCCTRL_WEIGHTEDDC		 9
# light time correction control
set XA_DCCTRL_LTC 10
# number of iteration to allow no auto rejection of residuals
set XA_DCCTRL_BRUCE 11
# flag; if set, deweight according to # of obs per track
set XA_DCCTRL_DWOBSPERTRCK 12
# partials method
set XA_DCCTRL_PARTIALMETH 13
# Element correction flag - Ag
set XA_DCCTRL_CORRECT_AG    	 20
# Element correction flag - Af
set XA_DCCTRL_CORRECT_AF    	 21
# Element correction flag - Psi
set XA_DCCTRL_CORRECT_PSI   	 22
# Element correction flag - Chi
set XA_DCCTRL_CORRECT_CHI   	 23
# Element correction flag - L
set XA_DCCTRL_CORRECT_L     	 24
# Element correction flag - N
set XA_DCCTRL_CORRECT_N     	 25
# Element correction flag - B* (SGP4) B (SP)
set XA_DCCTRL_CORRECT_B     	 26
# Element correction flag - Agom (SP)
set XA_DCCTRL_CORRECT_AGOM  	 27
# Convergence criteria on time (%) [5.0%]
set XA_DCCTRL_CNVCRITONT 30
# First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
set XA_DCCTRL_1STPASDELTAT 31
# Convergence criteria on 7-elt correction (%) [1.0%]
set XA_DCCTRL_CNVCRITON7ELT 32
# RMS multiplier [4.0]
set XA_DCCTRL_RMSMULT 33
# reset value for B term in subset correction [0.01]
set XA_DCCTRL_BRESET 34
# user's specified epoch - only when epoch placement option = 4 exact at specified time
set XA_DCCTRL_USEREPOCH 35
# SP only - density consider parameter
set XA_DCCTRL_CONSIDER 40
# GP only - residual computation method
set XA_DCCTRL_GPRCM 			 40
# GP only - SGP4: correct B* vs X, SGP4-XP: correct B
set XA_DCCTRL_CORRECTBVSX		 41

set XA_DCCTRL_SIZE 64

# Indexes of paramters using in IomodDC()
# Iomod/DC control mode (not yet used)
set XA_IOMDC_MODE 0
# DC element type, see DCPROPTYPE_? for available options
set XA_IOMDC_DCELTTYPE 1
# Epoch placement flag - see EPFLG_? for available options
set XA_IOMDC_EPFLG 2
# Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
set XA_IOMDC_NEWEPOCH 3
# Correction order
set XA_IOMDC_ORDERCOR 4
# IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
set XA_IOMDC_OBSSELMODE 5
# residual computation selection
set XA_IOMDC_RESIDSELECT 6
# correct by the specified correction order for 1 iteration only
set XA_IOMDC_FOR1ITERONLY 7
# max # of iterations before declaring divergence
set XA_IOMDC_MAXOFITERS 8
# apply weighed DC flag
set XA_IOMDC_WEIGHTEDDC		 9
# light time correction control
set XA_IOMDC_LTC 10
# number of iteration to allow no auto rejection of residuals
set XA_IOMDC_BRUCE 11
# flag; if set, deweight according to # of obs per track
set XA_IOMDC_DWOBSPERTRCK 12
# partials method
set XA_IOMDC_PARTIALMETH 13
# debias obs flag: 0= do not debias obs, 1= debias obs
set XA_IOMDC_DEBIASOBS    	 14
# use predicted RMS versus previous RMS for convergenece testing
set XA_IOMDC_USEPREDRMS		 15

# Element correction flag - Ag
set XA_IOMDC_CORRECT_AG    	 20
# Element correction flag - Af
set XA_IOMDC_CORRECT_AF    	 21
# Element correction flag - Psi
set XA_IOMDC_CORRECT_PSI   	 22
# Element correction flag - Chi
set XA_IOMDC_CORRECT_CHI   	 23
# Element correction flag - L
set XA_IOMDC_CORRECT_L     	 24
# Element correction flag - N
set XA_IOMDC_CORRECT_N     	 25
# Element correction flag - B* (SGP4) B (SP)
set XA_IOMDC_CORRECT_B     	 26
# Element correction flag - Agom (SP)
set XA_IOMDC_CORRECT_AGOM  	 27
# Convergence criteria on time (%) [5.0%]
set XA_IOMDC_CNVCRITONT 30
# First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
set XA_IOMDC_1STPASDELTAT 31
# Convergence criteria on 7-elt correction (%) [1.0%]
set XA_IOMDC_CNVCRITON7ELT 32
# RMS multiplier [4.0]
set XA_IOMDC_RMSMULT 33
# reset value for B term in subset correction [0.01]
set XA_IOMDC_BRESET 34
# SP only - density consider parameter
set XA_IOMDC_CONSIDER 40
# GP only - residual computation method
set XA_IOMDC_GPRCM 			 40
# GP only - SGP4: correct B* vs X, SGP4-XP: correct B
set XA_IOMDC_CORRECTBVSX		 41

# see IOMDC_METHOD_? for available options
set XA_IOMDC_METHOD 50
# The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
# number of half revolutions [0]
set XA_IOMDC_NHREV 51
# solution number [0]
set XA_IOMDC_IND 52
# maximum number of iterations [20]
set XA_IOMDC_MAXIT 53
# the range guess to first observation (km) [36000]
set XA_IOMDC_RNG1 54
# the range guess to third observation (km) [36000]
set XA_IOMDC_RNG3 55
# partial derivative increment [1e-5]
set XA_IOMDC_PDINC 56
# convergence criterion [1e-9]
set XA_IOMDC_CONVCR 57

# IOMOD/DC parameter list size
set XA_IOMDC_SIZE 64

# Different options for doing IOMOD/DC
# Default option which uses Herrick-Gibbs for all obs types
set IOMDC_METHOD_HB 0
# Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
set IOMDC_METHOD_GDDEFLT 1
# Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
set IOMDC_METHOD_GDSPEC 2

# ========================= End of auto generated code ==========================
