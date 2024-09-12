# This wrapper file was generated automatically by the GenDllWrappers program.
module BatchDCDll

if Sys.iswindows()
  libname="BatchDC"
else
  libname="libbatchdc"
end

# Export Constant Variables
export DCPROPTYPE_GP
export DCPROPTYPE_XP
export DCPROPTYPE_SP
export ITERCODE_DONE
export ITERCODE_ERROR
export ITERCODE_ITERATING
export ITERCODE_DIVERGED
export EPFLG_NODALXINGLATESTOB
export EPFLG_LATESTOB
export EPFLG_NODALXINGATTIME
export EPFLG_ATEPOCH
export EPFLG_ATSPECIFIEDTIME
export EPFLG_MIDDLEOBSSPAN
export EPFLG_EARLIESTOB
export EPFLG_BEGINDAYEPOCH
export EPFLG_BEGINDAYLATESTOB
export EPFLG_NODALXINGEPOCH
export CORT_TIME
export CORT_PLANE
export CORT_7ELT
export CORT_INTRK
export CORT_8ELT
export CORT_SUBELT
export CORORD_7ELT
export CORORD_TIM7ELT
export CORORD_TIMPLN7ELT
export CORORD_PLNTIM7ELT
export CORORD_PLN7ELT
export CORORD_N7ELT
export CORORD_L7ELT
export CORORD_LN7ELT
export CORORD_AFAGLN7ELT
export CORORD_6ELT7ELT
export XA_EGPCTRL_OPTION
export XA_EGPCTRL_DCELTTYPE
export XA_EGPCTRL_STARTMSE
export XA_EGPCTRL_STOPMSE
export XA_EGPCTRL_STEPMIN
export XA_EGPCTRL_DRAGCOR
export XA_EGPCTRL_AGOMCOR
export XA_EGPCTRL_EPFLG
export XA_EGPCTRL_NEWEPOCH
export XA_EGPCTRL_BVAL
export XA_EGPCTRL_AGOMVAL
export XA_EGPCTRL_ORDERCOR
export XA_EGPCTRL_MAXOFITERS
export XA_EGPCTRL_SATNUM
export XA_EGPCTRL_SIZE
export MAX_PARAMS
export DC_PRINT_FIRSTBEST
export DC_PRINT_ALLPASS
export DC_PRINT_SUMONLY
export DC_PRINT_ELTONLY
export DC_PRINT_NONE
export ITER_SUM_KEP
export ITER_SUM_EQNX
export XAI_CTRL_PRINTOPTION
export XAI_CTRL_DEBIASOBS
export XAI_CTRL_WEIGHTEDDC
export XAI_CTRL_EPOCHOPTION
export XAI_CTRL_CORRECT_AG
export XAI_CTRL_CORRECT_AF
export XAI_CTRL_CORRECT_PSI
export XAI_CTRL_CORRECT_CHI
export XAI_CTRL_CORRECT_L
export XAI_CTRL_CORRECT_N
export XAI_CTRL_CORRECT_B
export XAI_CTRL_CORRECT_AGOM
export XAI_CTRL_CORRECTORDER
export XAI_CTRL_FOR1ITERONLY
export XAI_CTRL_RESIDSELECT
export XAI_CTRL_SENPERFORM
export XAI_CTRL_DWOBSPERTRCK
export XAI_CTRL_ITERSUMOPT
export XAI_CTRL_PARTIALMETH
export XAI_CTRL_LTC
export XAI_CTRL_BRUCE
export XAI_CTRL_PROPMETHOD
export XAI_CTRL_CORRECTBVSX
export XAI_CTRL_MAXOFITERS
export XAI_CTRL_USEPREDRMS
export XAI_CTRL_RESCOMPMETH
export XAI_CTRL_USEANGRATES
export XAI_CTRL_SIZE
export XAR_CTRL_RMSMULT
export XAR_CTRL_USEREPOCH
export XAR_CTRL_CNVCRITONT
export XAR_CTRL_1STPASDELTAT
export XAR_CTRL_CNVCRITON7ELT
export XAR_CTRL_BRESET
export XAR_CTRL_SIZE
export XAI_DCELTS_SATNUM
export XAI_DCELTS_ELSETNUM
export XAI_DCELTS_ORBTYPE
export XAI_DCELTS_PROPTYPE
export XAI_DCELTS_SPECTR
export XAI_DCELTS_REVNUM
export XAI_DCELTS_CORRTYPE
export XAI_DCELTS_ITERCOUNT
export XAI_DCELTS_SUBITER
export XAI_DCELTS_RESACC
export XAI_DCELTS_RESREJ
export XAI_DCELTS_CORRFLGS
export XAI_DCELTS_SIZE
export XAR_DCELTS_EPOCHDS50UTC
export XAR_DCELTS_NDOT
export XAR_DCELTS_N2DOT
export XAR_DCELTS_BFIELD
export XAR_DCELTS_AGOM
export XAR_DCELTS_OGPARM
export XAR_DCELTS_KEP_A
export XAR_DCELTS_KEP_E
export XAR_DCELTS_KEP_INCLI
export XAR_DCELTS_KEP_MA
export XAR_DCELTS_KEP_NODE
export XAR_DCELTS_KEP_OMEGA
export XAR_DCELTS_EQNX_AF
export XAR_DCELTS_EQNX_AG
export XAR_DCELTS_EQNX_CHI
export XAR_DCELTS_EQNX_PSI
export XAR_DCELTS_EQNX_L
export XAR_DCELTS_EQNX_N
export XAR_DCELTS_POSX
export XAR_DCELTS_POSY
export XAR_DCELTS_POSZ
export XAR_DCELTS_VELX
export XAR_DCELTS_VELY
export XAR_DCELTS_VELZ
export XAR_DCELTS_RMS
export XAR_DCELTS_RMSUNWTD
export XAR_DCELTS_DELTATRMS
export XAR_DCELTS_BETARMS
export XAR_DCELTS_DELTAHTRMS
export XAR_DCELTS_CONVQLTY
export XAR_DCELTS_RMSPD
export XAR_DCELTS_COVL
export XAR_DCELTS_COVN
export XAR_DCELTS_COVCHI
export XAR_DCELTS_COVPSI
export XAR_DCELTS_COVAF
export XAR_DCELTS_COVAG
export XAR_DCELTS_COVBTERM
export XAR_DCELTS_COVNA
export XAR_DCELTS_COVAGOM
export XAR_DCELTS_XMAX
export XAR_DCELTS_XMAX2
export XAR_DCELTS_XMAX3
export XAR_DCELTS_XMAX4
export XAR_DCELTS_PATCL
export XAR_DCELTS_PATCH
export XAR_DCELTS_EQNXCOVMTX
export XAR_DCELTS_SIZE
export XA_REJFLG_DECAYED
export XA_REJFLG_ERROR
export XA_REJFLG_RA
export XA_REJFLG_BETA
export XA_REJFLG_DEC
export XA_REJFLG_HEIGHT
export XA_REJFLG_RANGE
export XA_REJFLG_RR
export XA_REJFLG_TIME
export XA_REJFLG_SIZE
export XA_AC_STD_EPOCH
export XA_AC_STD_NORES
export XA_AC_STD_PRCNTRES
export XA_AC_STD_RMS
export XA_AC_STD_OBSSPAN
export XA_AC_STD_DELTAW
export XA_AC_STD_DELTAABAR
export XA_AC_STD_DELTAN
export XA_AC_STD_DELTAB
export XA_AC_ACT_EPOCH
export XA_AC_ACT_NORES
export XA_AC_ACT_PRCNTRES
export XA_AC_ACT_RMS
export XA_AC_ACT_OBSSPAN
export XA_AC_ACT_DELTAW
export XA_AC_ACT_DELTAABAR
export XA_AC_ACT_DELTAN
export XA_AC_ACT_DELTAB
export XA_AC_SIZE
export XAS_DCELTS_SATNAME_0TO7
export XAS_DCELTS_SIZE
export DCCTRL_MODE_GLOBAL
export DCCTRL_MODE_LOCAL
export XA_DCCTRL_MODE
export XA_DCCTRL_PROPMETHOD
export XA_DCCTRL_DEBIASOBS
export XA_DCCTRL_CORRECTORDER
export XA_DCCTRL_EPOCHOPTION
export XA_DCCTRL_USEPREDRMS
export XA_DCCTRL_RESIDSELECT
export XA_DCCTRL_FOR1ITERONLY
export XA_DCCTRL_MAXOFITERS
export XA_DCCTRL_WEIGHTEDDC
export XA_DCCTRL_LTC
export XA_DCCTRL_BRUCE
export XA_DCCTRL_DWOBSPERTRCK
export XA_DCCTRL_PARTIALMETH
export XA_DCCTRL_CORRECT_AG
export XA_DCCTRL_CORRECT_AF
export XA_DCCTRL_CORRECT_PSI
export XA_DCCTRL_CORRECT_CHI
export XA_DCCTRL_CORRECT_L
export XA_DCCTRL_CORRECT_N
export XA_DCCTRL_CORRECT_B
export XA_DCCTRL_CORRECT_AGOM
export XA_DCCTRL_CNVCRITONT
export XA_DCCTRL_1STPASDELTAT
export XA_DCCTRL_CNVCRITON7ELT
export XA_DCCTRL_RMSMULT
export XA_DCCTRL_BRESET
export XA_DCCTRL_USEREPOCH
export XA_DCCTRL_CONSIDER
export XA_DCCTRL_GPRCM
export XA_DCCTRL_CORRECTBVSX
export XA_DCCTRL_SIZE
export XA_IOMDC_MODE
export XA_IOMDC_DCELTTYPE
export XA_IOMDC_EPFLG
export XA_IOMDC_NEWEPOCH
export XA_IOMDC_ORDERCOR
export XA_IOMDC_OBSSELMODE
export XA_IOMDC_RESIDSELECT
export XA_IOMDC_FOR1ITERONLY
export XA_IOMDC_MAXOFITERS
export XA_IOMDC_WEIGHTEDDC
export XA_IOMDC_LTC
export XA_IOMDC_BRUCE
export XA_IOMDC_DWOBSPERTRCK
export XA_IOMDC_PARTIALMETH
export XA_IOMDC_DEBIASOBS
export XA_IOMDC_USEPREDRMS
export XA_IOMDC_CORRECT_AG
export XA_IOMDC_CORRECT_AF
export XA_IOMDC_CORRECT_PSI
export XA_IOMDC_CORRECT_CHI
export XA_IOMDC_CORRECT_L
export XA_IOMDC_CORRECT_N
export XA_IOMDC_CORRECT_B
export XA_IOMDC_CORRECT_AGOM
export XA_IOMDC_CNVCRITONT
export XA_IOMDC_1STPASDELTAT
export XA_IOMDC_CNVCRITON7ELT
export XA_IOMDC_RMSMULT
export XA_IOMDC_BRESET
export XA_IOMDC_CONSIDER
export XA_IOMDC_GPRCM
export XA_IOMDC_CORRECTBVSX
export XA_IOMDC_METHOD
export XA_IOMDC_NHREV
export XA_IOMDC_IND
export XA_IOMDC_MAXIT
export XA_IOMDC_RNG1
export XA_IOMDC_RNG3
export XA_IOMDC_PDINC
export XA_IOMDC_CONVCR
export XA_IOMDC_SIZE
export IOMDC_METHOD_HB
export IOMDC_METHOD_GDDEFLT
export IOMDC_METHOD_GDSPEC

# Export Functions
export BatchDCInit
export BatchDCGetInfo
export BatchDCLoadFile
export BatchDCLoadFileAll
export BatchDCLoadCard
export BatchDCGetPCard
export BatchDCSaveFile
export BatchDCGetParams
export BatchDCSetParams
export BatchDCGetCtrlArr
export BatchDCSetCtrlArr
export BatchDCInitSat
export BatchDCInitSatObsKeys
export BatchDCInitSatObsSel
export BatchDCSolve
export BatchDCSolveSelObs
export BatchDCRemoveSat
export BatchDCIterate
export BatchDCGetVcm
export BatchDCGetSpVOut
export BatchDCSetSpVOut
export BatchDCResetAll
export BatchDCGetAccptCrit
export SpToEGP
export SpToTle
export SpToTleComb
export SpToCsv
export SpToCsvComb
export ExtEphemToEGP
export IomodDC
# Different DC propagation method
# DC propagator method is GP
const DCPROPTYPE_GP =  0;

# DC propagator method is SGP4-XP
const DCPROPTYPE_XP =  4;

# DC propagator method is SP
const DCPROPTYPE_SP = 99;


# DC iterating returned code
# DC was successful
const ITERCODE_DONE      = 0;

# DC has error
const ITERCODE_ERROR     = 1;

# DC is still iterating
const ITERCODE_ITERATING = 2;

# DC diverged but trying to recover
const ITERCODE_DIVERGED  = 3;


# indexes represent epoch placement options
# Nodal crossing nearest latest obs
const EPFLG_NODALXINGLATESTOB = 0;

# Exact time of latest obs
const EPFLG_LATESTOB          = 1;

# Nodal crossing closest to specified time
const EPFLG_NODALXINGATTIME   = 2;

# Do not change epoch
const EPFLG_ATEPOCH           = 3;

# Exact at specified time
const EPFLG_ATSPECIFIEDTIME   = 4;

# Middle of obs span
const EPFLG_MIDDLEOBSSPAN     = 5;

# Exact time of earliest obs
const EPFLG_EARLIESTOB        = 6;

# Beginning of day of Epoch, good for eGP
const EPFLG_BEGINDAYEPOCH     = 7;

# Beginning of day of Last obs
const EPFLG_BEGINDAYLATESTOB  = 8;

# Nodal crossing nearest epoch, good for eGP
const EPFLG_NODALXINGEPOCH    = 9;


# Different correction types
const    CORT_TIME   = 0, &
const    CORT_PLANE  = 1, &
const    CORT_7ELT   = 2, &
const    CORT_INTRK  = 3, &
const    CORT_8ELT   = 4, &
const    CORT_SUBELT = 5;  

# Different element correction order
# 7-element only [default]
const CORORD_7ELT       = 0;

# time (SP: L, n, B), then 7-element
const CORORD_TIM7ELT    = 1;

# time, plane, then 7-element (SGP4) or 7-elt only; pht/pi vs Af/Ag (SP)
const CORORD_TIMPLN7ELT = 2;

# plane, time, then 7-element (SGP4) or 7-elt only; e/pi vs Af/Ag (SP)
const CORORD_PLNTIM7ELT = 3;

# plane, then 7-element (SGP4) or L, n, B, then 7-elt, with pht/pi vs Af/Ag (SP)
const CORORD_PLN7ELT    = 4;

# n-only, then 7-element
const CORORD_N7ELT      = 5;

# L-only, then 7-element
const CORORD_L7ELT      = 6;

# L & n only, then 7-element
const CORORD_LN7ELT     = 7;

# Af/Ag, L, n only, then 7-element
const CORORD_AFAGLN7ELT = 8;

# 6-element, then 7-element
const CORORD_6ELT7ELT   = 9;



# indexes for EGP control parameters for input VCM/SPVEC-typed elsets or external ephemeris file
# Not being used yet
const XA_EGPCTRL_OPTION     =  0;

# DC element type: 0=SPG4, 4=SGP4-XP
const XA_EGPCTRL_DCELTTYPE  =  1;

# Fit span start time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
const XA_EGPCTRL_STARTMSE   =  2;

# Fit span stop time (minutes since VCM's epoch/specified new epoch) (set start/stop = 0 to auto select)
const XA_EGPCTRL_STOPMSE    =  3;

# Step size in minutes (how often obs are generated) (set to zero to auto select and then actual step size will be returned)
const XA_EGPCTRL_STEPMIN    =  4;

# Drag correction: 0=no correction, 1=correct BStar(SGP4)/BTerm(SGP4-XP), 2=correct X(SGP4 only)
const XA_EGPCTRL_DRAGCOR    =  5;

# agom correction: 0=no correction, 1=correct agom (only when DC element = SGP4-XP)
const XA_EGPCTRL_AGOMCOR    =  6;

# Epoch placement flag - see EPFLG_? for available options
const XA_EGPCTRL_EPFLG      =  7;

# Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)                 *
const XA_EGPCTRL_NEWEPOCH   =  8;


# Addtional option if input is external ephemeris file - BStar(SGP4)/BTerm(SGP4-XP) if XA_EGPCTRL_DRAGCOR is set (= 1)
const XA_EGPCTRL_BVAL       =  9;

# Addtional option if input is external ephemeris file - agom value if XA_EGPCTRL_AGOMCOR is set (= 1)
const XA_EGPCTRL_AGOMVAL    = 10;


# correction order
const XA_EGPCTRL_ORDERCOR   = 11;

# Max # of iterations before declaring divergence [10]
const XA_EGPCTRL_MAXOFITERS = 12;


# satellite number
const XA_EGPCTRL_SATNUM     = 63;


const    XA_EGPCTRL_SIZE       = 64;



# DC setting parameters

const  MAX_PARAMS = 256;


# DC print options
# print first and last iteration
const DC_PRINT_FIRSTBEST   =  0;

# print every pass and summary
const DC_PRINT_ALLPASS     =  1;

# print summary only
const DC_PRINT_SUMONLY     =  2;

# print output elemenets only
const DC_PRINT_ELTONLY     =  3;

# do not print anything
const DC_PRINT_NONE        =  4;


# Iteration summary options
# print summary every iteration in Keplerian elts
const ITER_SUM_KEP         =  1;

# print summary every iteration in Equinoctial elts
const ITER_SUM_EQNX        =  2;


# indexes for integer data fields
# DC print option
const XAI_CTRL_PRINTOPTION  =  0;

# Apply biases from sensor file
const XAI_CTRL_DEBIASOBS    =  1;

# Weighed DC flag
const XAI_CTRL_WEIGHTEDDC   =  2;

# Epoch placement flag - see EPFLG_? for available options
const XAI_CTRL_EPOCHOPTION  =  3;

# Element correction flag - Ag
const XAI_CTRL_CORRECT_AG   =  4;

# Element correction flag - Af
const XAI_CTRL_CORRECT_AF   =  5;

# Element correction flag - Psi
const XAI_CTRL_CORRECT_PSI  =  6;

# Element correction flag - Chi
const XAI_CTRL_CORRECT_CHI  =  7;

# Element correction flag - L
const XAI_CTRL_CORRECT_L    =  8;

# Element correction flag - N
const XAI_CTRL_CORRECT_N    =  9;

# Element correction flag - B* (SGP4) B (SP)
const XAI_CTRL_CORRECT_B    = 10;

# Element correction flag - Agom (SP)
const XAI_CTRL_CORRECT_AGOM = 11;

# Correction order
const XAI_CTRL_CORRECTORDER = 12;

# Correct by the specified correction order for 1 iteration only
const XAI_CTRL_FOR1ITERONLY = 13;

# Flag specifies which residuals are used for RMS calculation and convergence
const XAI_CTRL_RESIDSELECT  = 14;

# Flag; if set, produce sensor performance analysis summary
const XAI_CTRL_SENPERFORM   = 15;

# Flag; if set, deweight according to # of obs per track
const XAI_CTRL_DWOBSPERTRCK = 16;

# Iteration summary control
const XAI_CTRL_ITERSUMOPT   = 17;

# Partials method
const XAI_CTRL_PARTIALMETH  = 18;

# Light time correction control
const XAI_CTRL_LTC          = 19;

# Number of iteration to allow no auto rejection of residuals
const XAI_CTRL_BRUCE        = 20;

# Propagation method - GP=0, XP=4, SP=99
const XAI_CTRL_PROPMETHOD   = 21;

# Flag; if set, correct B* vs X
const XAI_CTRL_CORRECTBVSX  = 22;

# Max # of iterations before declaring divergence
const XAI_CTRL_MAXOFITERS   = 23;

# Use predicted RMS versus previous RMS for convergence testing
const XAI_CTRL_USEPREDRMS   = 24;

# Residual computation method (GP only): DELTA/427M=1, SPADOC4=2
const XAI_CTRL_RESCOMPMETH  = 25;

# Flag; if set, use angle rates (obstypes = 4, 11)
const XAI_CTRL_USEANGRATES  = 26;


const    XAI_CTRL_SIZE         = 256;  



# indexes for real data fields
# RMS multiplier
const XAR_CTRL_RMSMULT        =   0;

# Time of specified epoch
const XAR_CTRL_USEREPOCH      =   1;

# Convergence criteria on time correction (%)
const XAR_CTRL_CNVCRITONT     =   2;

# First pass delta-t rejection criteria
const XAR_CTRL_1STPASDELTAT   =   3;

# Convergence criteria on 7-elt correction (%)
const XAR_CTRL_CNVCRITON7ELT  =   4;

# reset value for B term in subset correction
const XAR_CTRL_BRESET         =   5;

const    XAR_CTRL_SIZE           = 256;


# indexes for accessing DC's integer data
# satellite number
const XAI_DCELTS_SATNUM       =   0;

# elset number
const XAI_DCELTS_ELSETNUM     =   1;

# elset's orbital/element type - see ELTTYPE_ constants for a list of possible values
const XAI_DCELTS_ORBTYPE      =   2;

# propagation method - see PROPTYPE_ constants for a list of possible values (GP=1, SP=2, External Ephemeris=3)
const XAI_DCELTS_PROPTYPE     =   3;

# spectr mode
const XAI_DCELTS_SPECTR       =   4;

# epoch revolution number
const XAI_DCELTS_REVNUM       =   5;

# correction type: 0=TIME, 1=PLANE", 2=7-ELT, 3=IN-TRK, 4=8-ELT, 5=SUBELT; see CORT_? for available values
const XAI_DCELTS_CORRTYPE     =   6;


# total iteration count
const XAI_DCELTS_ITERCOUNT    =  10;

# sub iteration count
const XAI_DCELTS_SUBITER      =  11;

# # residual accepted
const XAI_DCELTS_RESACC       =  12;

# # residual rejected
const XAI_DCELTS_RESREJ       =  13;


# 20-28 correction element flags
const XAI_DCELTS_CORRFLGS     =  20;


const    XAI_DCELTS_SIZE         = 256;

# indexes for accessing DC's real data
# elset's epoch time in days since 1950 UTC
const XAR_DCELTS_EPOCHDS50UTC =   0;

# n-dot/2  (for SGP, eph-type = 0)
const XAR_DCELTS_NDOT         =   1;

# n-double-dot/6  (for SGP, eph-type = 0)
const XAR_DCELTS_N2DOT        =   2;

# either SGP4 bStar (1/er) or SGP4-XP/SP bTerm (m2/kg)
const XAR_DCELTS_BFIELD       =   3;

# SGP4-XP/SP agom (m**2/kg)
const XAR_DCELTS_AGOM         =   4;

# SP outgassing parameter (km/s**2)
const XAR_DCELTS_OGPARM       =   5;

# semi major axis (km)
const XAR_DCELTS_KEP_A        =   6;

# eccentricity
const XAR_DCELTS_KEP_E        =   7;

# inclination (deg)
const XAR_DCELTS_KEP_INCLI    =   8;

# mean anamoly (deg)
const XAR_DCELTS_KEP_MA       =   9;

# right ascension of the ascending node (deg)
const XAR_DCELTS_KEP_NODE     =  10;

# argument of perigee (deg)
const XAR_DCELTS_KEP_OMEGA    =  11;

# AF
const XAR_DCELTS_EQNX_AF      =  12;

# AG
const XAR_DCELTS_EQNX_AG      =  13;

# CHI
const XAR_DCELTS_EQNX_CHI     =  14;

# PSI
const XAR_DCELTS_EQNX_PSI     =  15;

# mean longitude (deg)
const XAR_DCELTS_EQNX_L       =  16;

# mean motion (revs/day)
const XAR_DCELTS_EQNX_N       =  17;

# ECI posX (km)
const XAR_DCELTS_POSX         =  18;

# ECI posY (km)
const XAR_DCELTS_POSY         =  19;

# ECI posZ (km)
const XAR_DCELTS_POSZ         =  20;

# ECI velX (km/s)
const XAR_DCELTS_VELX         =  21;

# ECI velY (km/s)
const XAR_DCELTS_VELY         =  22;

# ECI velZ (km/s)
const XAR_DCELTS_VELZ         =  23;


# RMS (km)
const XAR_DCELTS_RMS          =  40;

# unweighted RMS (km)
const XAR_DCELTS_RMSUNWTD     =  41;

# delta T RMS (min)
const XAR_DCELTS_DELTATRMS    =  42;

# beta RMS (deg)
const XAR_DCELTS_BETARMS      =  43;

# delta height RMS (km)
const XAR_DCELTS_DELTAHTRMS   =  44;

# convergence value (km)
const XAR_DCELTS_CONVQLTY     =  45;

# predicted RMS (km)
const XAR_DCELTS_RMSPD        =  46;


# covariance diagonal L
const XAR_DCELTS_COVL         =  60;

# covariance diagonal N
const XAR_DCELTS_COVN         =  61;

# covariance diagonal CHI
const XAR_DCELTS_COVCHI       =  62;

# covariance diagonal PSI
const XAR_DCELTS_COVPSI       =  63;

# covariance diagonal AF
const XAR_DCELTS_COVAF        =  64;

# covariance diagonal AG
const XAR_DCELTS_COVAG        =  65;

# covariance diagonal BTERM
const XAR_DCELTS_COVBTERM     =  66;

# covariance not used
const XAR_DCELTS_COVNA        =  67;

# covariance diagonal AGOM
const XAR_DCELTS_COVAGOM      =  68;


# max partial residual (km)
const XAR_DCELTS_XMAX         =  70;

# max velocity resid (km/sec)
const XAR_DCELTS_XMAX2        =  71;

# max beta residual (deg)
const XAR_DCELTS_XMAX3        =  72;

# max delta-t residual (min)
const XAR_DCELTS_XMAX4        =  73;

# low argument of latitude coverage (deg)
const XAR_DCELTS_PATCL        =  74;

# high argument of latitude coverage (deg)
const XAR_DCELTS_PATCH        =  75;


# equinoctial covariance matrix - the lower triangular half 200-244
const XAR_DCELTS_EQNXCOVMTX   = 200;


const    XAR_DCELTS_SIZE         = 256;

# indexes for accessing obs rejection flags
# satellite has decayed at the time of obs
const XA_REJFLG_DECAYED      =   0;

# obs residual computation error code
const XA_REJFLG_ERROR        =   1;

# right ascension residual rejected
const XA_REJFLG_RA           =   2;

# beta residual rejected
const XA_REJFLG_BETA         =   3;

# declination residual rejected
const XA_REJFLG_DEC          =   4;

# delta h residual rejected
const XA_REJFLG_HEIGHT       =   5;

# range residual rejected
const XA_REJFLG_RANGE        =   6;

# range rate residual rejected
const XA_REJFLG_RR           =   7;

# delta t residual rejected
const XA_REJFLG_TIME         =   8;


const    XA_REJFLG_SIZE         =  32;

# indexes for accessing DC's acceptance criteria data
# standard - days from epoch
const XA_AC_STD_EPOCH    =   0;

# standard - number of residuals
const XA_AC_STD_NORES    =   1;

# standard - percent residual
const XA_AC_STD_PRCNTRES =   2;

# standard - RMS (km)
const XA_AC_STD_RMS      =   3;

# standard - obs span (days)
const XA_AC_STD_OBSSPAN  =   4;

# standard - change in plan (deg)
const XA_AC_STD_DELTAW   =   5;

# standard - change in abar
const XA_AC_STD_DELTAABAR=   6;

# standard - change in N (rev/day)
const XA_AC_STD_DELTAN   =   7;

# standard - change in B term
const XA_AC_STD_DELTAB   =   8;


# actual - days from epoch
const XA_AC_ACT_EPOCH    =  20;

# actual - number of residuals
const XA_AC_ACT_NORES    =  21;

# actual - percent residual
const XA_AC_ACT_PRCNTRES =  22;

# actual - RMS (km)
const XA_AC_ACT_RMS      =  23;

# actual - obs span (days)
const XA_AC_ACT_OBSSPAN  =  24;

# actual - change in plan (deg)
const XA_AC_ACT_DELTAW   =  25;

# actual - change in abar
const XA_AC_ACT_DELTAABAR=  26;

# actual - change in N (rev/day)
const XA_AC_ACT_DELTAN   =  27;

# actual - change in B term
const XA_AC_ACT_DELTAB   =  28;


const    XA_AC_SIZE         =  64; 


# indexes for accessing DC's string character data - index to index of a substring
# satellite's international designator
const XAS_DCELTS_SATNAME_0TO7 =   0;


const    XAS_DCELTS_SIZE         = 512; 

# Different DC control modes
# Use DC global settings settings
const DCCTRL_MODE_GLOBAL   = 0;

# Use provided/local DC settings
const DCCTRL_MODE_LOCAL    = 1;



# indexes of DC control parameters
# DC control mode: 0= use global settings (ignore the rest), 1= use the provided/local settings (thread-safe) - N/A for BatchDC(Get/Set)CtrlArr()
const XA_DCCTRL_MODE             =  0;

# propagation method: SGP4 = 0, SP = 99, XP = 4, or see DCPROPTYPE_? for available options
const XA_DCCTRL_PROPMETHOD 		=  1;

# debias obs flag: 0= do not debias obs, 1= debias obs
const XA_DCCTRL_DEBIASOBS    		=  2;

# element correction order
const XA_DCCTRL_CORRECTORDER		=  3;

# epoch placement flag - see EPFLG_? for available options
const XA_DCCTRL_EPOCHOPTION  		=  4;

# use predicted RMS versus previous RMS for convergenece testing
const XA_DCCTRL_USEPREDRMS		   =  5;

# residual computation selection
const XA_DCCTRL_RESIDSELECT      =  6;

# correct by the specified correction order for 1 iteration only
const XA_DCCTRL_FOR1ITERONLY		=  7;

# max # of iterations before declaring divergence
const XA_DCCTRL_MAXOFITERS       =  8;

# apply weighed DC flag
const XA_DCCTRL_WEIGHTEDDC		   =  9;

# light time correction control
const XA_DCCTRL_LTC              = 10;

# number of iteration to allow no auto rejection of residuals
const XA_DCCTRL_BRUCE            = 11;

# flag; if set, deweight according to # of obs per track
const XA_DCCTRL_DWOBSPERTRCK     = 12;

# partials method
const XA_DCCTRL_PARTIALMETH      = 13;

# Element correction flag - Ag
const XA_DCCTRL_CORRECT_AG    	= 20;

# Element correction flag - Af
const XA_DCCTRL_CORRECT_AF    	= 21;

# Element correction flag - Psi
const XA_DCCTRL_CORRECT_PSI   	= 22;

# Element correction flag - Chi
const XA_DCCTRL_CORRECT_CHI   	= 23;

# Element correction flag - L
const XA_DCCTRL_CORRECT_L     	= 24;

# Element correction flag - N
const XA_DCCTRL_CORRECT_N     	= 25;

# Element correction flag - B* (SGP4) B (SP)
const XA_DCCTRL_CORRECT_B     	= 26;

# Element correction flag - Agom (SP)
const XA_DCCTRL_CORRECT_AGOM  	= 27;

# Convergence criteria on time (%) [5.0%]
const XA_DCCTRL_CNVCRITONT       = 30;

# First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
const XA_DCCTRL_1STPASDELTAT     = 31;

# Convergence criteria on 7-elt correction (%) [1.0%]
const XA_DCCTRL_CNVCRITON7ELT    = 32;

# RMS multiplier [4.0]
const XA_DCCTRL_RMSMULT          = 33;

# reset value for B term in subset correction [0.01]
const XA_DCCTRL_BRESET           = 34;

# user's specified epoch - only when epoch placement option = 4 exact at specified time
const XA_DCCTRL_USEREPOCH        = 35;

# SP only - density consider parameter
const XA_DCCTRL_CONSIDER         = 40;

# GP only - residual computation method
const XA_DCCTRL_GPRCM 			   = 40;

# GP only - SGP4: correct B* vs X, SGP4-XP: correct B
const XA_DCCTRL_CORRECTBVSX		= 41;


const    XA_DCCTRL_SIZE             = 64;

# Indexes of paramters using in IomodDC()
# Iomod/DC control mode (not yet used)
const XA_IOMDC_MODE           =  0;

# DC element type, see DCPROPTYPE_? for available options
const XA_IOMDC_DCELTTYPE      =  1;

# Epoch placement flag - see EPFLG_? for available options
const XA_IOMDC_EPFLG          =  2;

# Time of specified Epoch in Ds50UTC (only for XA_EGPCTRL_EPFLG = 2 or 4)
const XA_IOMDC_NEWEPOCH       =  3;

# Correction order
const XA_IOMDC_ORDERCOR       =  4;

# IOMOD obs selection mode: 0= auto select, 1= use first 3 obs in the provided list of obs (see OBSSELMODE_? for available options)
const XA_IOMDC_OBSSELMODE     =  5;

# residual computation selection
const XA_IOMDC_RESIDSELECT    =  6;

# correct by the specified correction order for 1 iteration only
const XA_IOMDC_FOR1ITERONLY   =  7;

# max # of iterations before declaring divergence
const XA_IOMDC_MAXOFITERS     =  8;

# apply weighed DC flag
const XA_IOMDC_WEIGHTEDDC		=  9;

# light time correction control
const XA_IOMDC_LTC            = 10;

# number of iteration to allow no auto rejection of residuals
const XA_IOMDC_BRUCE          = 11;

# flag; if set, deweight according to # of obs per track
const XA_IOMDC_DWOBSPERTRCK   = 12;

# partials method
const XA_IOMDC_PARTIALMETH    = 13;

# debias obs flag: 0= do not debias obs, 1= debias obs
const XA_IOMDC_DEBIASOBS    	= 14;

# use predicted RMS versus previous RMS for convergenece testing
const XA_IOMDC_USEPREDRMS		= 15;


# Element correction flag - Ag
const XA_IOMDC_CORRECT_AG    	= 20;

# Element correction flag - Af
const XA_IOMDC_CORRECT_AF    	= 21;

# Element correction flag - Psi
const XA_IOMDC_CORRECT_PSI   	= 22;

# Element correction flag - Chi
const XA_IOMDC_CORRECT_CHI   	= 23;

# Element correction flag - L
const XA_IOMDC_CORRECT_L     	= 24;

# Element correction flag - N
const XA_IOMDC_CORRECT_N     	= 25;

# Element correction flag - B* (SGP4) B (SP)
const XA_IOMDC_CORRECT_B     	= 26;

# Element correction flag - Agom (SP)
const XA_IOMDC_CORRECT_AGOM  	= 27;

# Convergence criteria on time (%) [5.0%]
const XA_IOMDC_CNVCRITONT     = 30;

# First pass delta-t rejection criteria Convergence criteria on time correction (min) [20 minutes]
const XA_IOMDC_1STPASDELTAT   = 31;

# Convergence criteria on 7-elt correction (%) [1.0%]
const XA_IOMDC_CNVCRITON7ELT  = 32;

# RMS multiplier [4.0]
const XA_IOMDC_RMSMULT        = 33;

# reset value for B term in subset correction [0.01]
const XA_IOMDC_BRESET         = 34;

# SP only - density consider parameter
const XA_IOMDC_CONSIDER       = 40;

# GP only - residual computation method
const XA_IOMDC_GPRCM 			= 40;

# GP only - SGP4: correct B* vs X, SGP4-XP: correct B
const XA_IOMDC_CORRECTBVSX		= 41;


# see IOMDC_METHOD_? for available options
const XA_IOMDC_METHOD         = 50;

# The below parameters only apply when XA_IOMDC_METHOD is set to 2 (use customized Gooding settings)
# number of half revolutions [0]
const XA_IOMDC_NHREV          = 51;

# solution number [0]
const XA_IOMDC_IND            = 52;

# maximum number of iterations [20]
const XA_IOMDC_MAXIT          = 53;

# the range guess to first observation (km) [36000]
const XA_IOMDC_RNG1           = 54;

# the range guess to third observation (km) [36000]
const XA_IOMDC_RNG3           = 55;

# partial derivative increment [1e-5]
const XA_IOMDC_PDINC          = 56;

# convergence criterion [1e-9]
const XA_IOMDC_CONVCR         = 57;


# IOMOD/DC parameter list size
const XA_IOMDC_SIZE           = 64;


# Different options for doing IOMOD/DC
# Default option which uses Herrick-Gibbs for all obs types
const IOMDC_METHOD_HB      = 0;

# Use Gooding (with default settings) for angle only type obs and Herrick-Gibbs for other obs types
const IOMDC_METHOD_GDDEFLT = 1;

# Use Gooding (with customized settings) for angle only type obs and Herrick-Gibbs for other obs types
const IOMDC_METHOD_GDSPEC  = 2;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes BatchDC DLL for use in the program
function BatchDCInit(apAddr)
   errCode = ccall( (:BatchDCInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of BatchDC DLL. 
# The information is placed in the string parameter passed in.
function BatchDCGetInfo()
   infoStr = " "^128
   ccall( (:BatchDCGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Read/Load BatchDC input data from an input file
function BatchDCLoadFile(batchDCInputFile)
   errCode = ccall( (:BatchDCLoadFile,libname) 
     , Int32
     , (Cstring,)
     , batchDCInputFile)
   return errCode
end

#############################################################################
# Loads BatchDC control parameters and all BatchDC related data (environment, time, elsets, sensors) from an input text file
function BatchDCLoadFileAll(batchDCInputFile)
   errCode = ccall( (:BatchDCLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , batchDCInputFile)
   return errCode
end

#############################################################################
# Read/Load BatchDC-typed input data from an input card
function BatchDCLoadCard(card)
   errCode = ccall( (:BatchDCLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Builds and returns the DC parameter card (1P-Card) from the current DC settings
function BatchDCGetPCard()
   dcPCard = " "^512
   ccall( (:BatchDCGetPCard,libname) 
     , Nothing
     , (Cstring,)
     , dcPCard)
   return dcPCard
end

#############################################################################
# Saves any currently loaded BatchDC-related settings to a file
function BatchDCSaveFile(batchDCFile, saveMode, saveForm)
   errCode = ccall( (:BatchDCSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , batchDCFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Gets BatchDC parameter data (P Card) - all fields
# 
# The table below shows the structure of the integer array xai_ctrl:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     0DC print option
#     1Apply biases from sensor file
#     2Weighed DC flag
#     3Epoch placement control
#     4Element correction flag - Ag
#     5Element correction flag - Af
#     6Element correction flag - Psi
#     7Element correction flag - Chi
#     8Element correction flag - L
#     9Element correction flag - N
#     10Element correction flag - B* (SGP4) B (SP)
#     11Element correction flag - Agom (SP)
#     12Correction order
#     13Correct by the specified correction order for 1 iteration only
#     14Flag specifies which residuals are used for RMS calculation and convergence
#     15Flag; if set, produce sensor performance analysis summary
#     16Flag; if set, deweight according to # of obs per track
#     17Iteration summary control
#     18Partials method
#     19Light time correction control
#     20Number of iteration to allow no auto rejection of residuals
#     21Propagation method
#     22Flag; if set, correct B* vs X
#     23Max # of iterations before declaring divergence
#     24Use predicted RMS versus previous RMS for convergence testing
# 
# 
# The table below shows the structure of the real array xar_ctrl:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     0RMS multiplier
#     1Time of specified epoch
#     2Convergence criteria on time correction (%)
#     3First pass delta-t rejection criteria
#     4Convergence criteria on 7-elt correction (%)
#     5Reset value for B term in subset correction
# 
function BatchDCGetParams()
   xai_ctrl = zeros(Int32, 256)
   xar_ctrl = zeros(Float64, 256)
   xas_ctrl = " "^512
   ccall( (:BatchDCGetParams,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , xai_ctrl,xar_ctrl,xas_ctrl)
   return convert(Array{Int64,1}, xai_ctrl), xar_ctrl, xas_ctrl
end

#############################################################################
# Sets BatchDC parameter data (P Card) - all fields
# See BatchDCGetParams for the structure of the xai_ctrl and xar_ctrl arrays.
function BatchDCSetParams(xai_ctrl, xar_ctrl, xas_ctrl)
   if typeof(xai_ctrl) == Array{Int64,1}; xai_ctrl=convert(Array{Int32,1},xai_ctrl); end
   ccall( (:BatchDCSetParams,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , xai_ctrl,xar_ctrl,xas_ctrl)
end

#############################################################################
# Returns DC control parameters using array format
function BatchDCGetCtrlArr()
   xa_dcCtrl = zeros(Float64, 64)
   ccall( (:BatchDCGetCtrlArr,libname) 
     , Nothing
     , (Ref{Float64},)
     , xa_dcCtrl)
   return xa_dcCtrl
end

#############################################################################
# Sets DC control parameters using array format
function BatchDCSetCtrlArr(xa_dcCtrl)
   errCode = ccall( (:BatchDCSetCtrlArr,libname) 
     , Int32
     , (Ref{Float64},)
     , xa_dcCtrl)
   return errCode
end

#############################################################################
# Initializes DC parameters for the satellite
# See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
function BatchDCInitSat(satKey, size_obsKeys)
   numObs = zeros(Int32, 1)
   obsKeys = zeros(Int64, size_obsKeys)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:BatchDCInitSat,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,numObs,obsKeys,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, Int64(numObs[1]), obsKeys, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Initializes DC parameters for the satellite using only the provided/preselected obsKeys (not all loaded obs) (Thread-Safe)
# See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
function BatchDCInitSatObsKeys(satKey, xa_dcCtrl, numObs, obsKeys)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:BatchDCInitSatObsKeys,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Int32
     , Ref{Int64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_dcCtrl,numObs,obsKeys,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Initializes DC parameters for the satellite using only obs that match the provided obs selection criteria (not all loaded obs) (Thread-Safe)
# See BatchDCGetParams for the structure of the xai_dcElts and xar_dcElts arrays.
# Note: This can be accomplished by using ObsGetSelected() and BatchDCInitSatObsKeys() as well
function BatchDCInitSatObsSel(satKey, xa_dcCtrl, xa_selob, size_obsKeys)
   numObs = zeros(Int32, 1)
   obsKeys = zeros(Int64, size_obsKeys)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:BatchDCInitSatObsSel,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_dcCtrl,xa_selob,numObs,obsKeys,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, Int64(numObs[1]), obsKeys, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs batch-least-square differential corrections to the specified satellite and
# return the corrected elements and related data - using all loaded obs
# 
# Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
# 
# See BatchDCGetParams for the structure of the xai_dcElts array.
# 
# The table below shows the structure of the integer array xar_dcElts:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#     0elset's epoch time in days since 1950 UTC
#     1n-dot/2  (for SGP, eph-type = 0)
#     2n-double-dot/6  (for SGP, eph-type = 0)
#     3either SGP4 bStar (1/er) or SP bTerm (m2/kg)
#     4SP agom (m**2/kg)
#     5SP outgassing parameter (km/s**2)
#     6semi major axis (km)
#     7eccentricity
#     8inclination (deg)
#     9mean anamoly (deg)
#     10right ascension of the ascending node (deg)
#     11argument of perigee (deg)
#     12AF
#     13AG
#     14CHI
#     15PSI
#     16mean longitude (deg)
#     17mean motion (revs/day)
#     18ECI posX (km)
#     19ECI posY (km)
#     20ECI posZ (km)
#     21ECI velX (km/s)
#     22ECI velY (km/s)
#     23ECI velZ (km/s)
#     
#     40RMS (km)
#     41unweighted RMS (km)
#     42delta T RMS (min)
#     43beta RMS (deg)
#     44delta height RMS (km)
#     45convergence value (km)
#     46predicted RMS (km)
#     
#     60covariance diagonal L
#     61covariance diagonal N
#     62covariance diagonal CHI
#     63covariance diagonal PSI
#     64covariance diagonal AF
#     65covariance diagonal AG
#     66covariance diagonal BTERM
#     67covariance not used
#     68covariance diagonal AGOM
#     
#     200-244equinoctial covariance matrix - the lower triangular half 200-244
# 
function BatchDCSolve(satKey)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:BatchDCSolve,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs batch-least-square differential corrections to the specified satellite and
# return the corrected elements and related data - using only the provided obsKeys (not all loaded obs)
# Note: The input satellite must be intialized by calling BatchDCInitSat() prior to calling this routine
# See BatchDCGetParams for the structure of the xai_dcElts array.
# See BatchDCSolve for the structure of the xar_dcElts array.
function BatchDCSolveSelObs(satKey, obsKeys, numObs)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:BatchDCSolveSelObs,libname) 
     , Int32
     , (Int64
     , Ref{Int64}
     , Int32
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,obsKeys,numObs,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Removes a satellite, represented by the satKey, from BatchDC's memory
function BatchDCRemoveSat(satKey)
   errCode = ccall( (:BatchDCRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Iterates DC for the satellite
# 
# xa_ObsRes size is [numObs, 100].  xa_rejFlg size is [numObs, 32].
# 
# The table below shows the values contained in xa_ObsRes for each ob:
# 
#     table
#     
#         Index
#         Index Interpretation
#     
#      0  Azimuth residual (deg)
#      1  Elevation residual (deg)
#      2  Range residual (km)
#      3  Height residual (deg)
#      4  Beta residual (deg)
#      5  Delta T residual (min)
#      6  Vector magnitude (km)
#      7  Time since epoch (days)
#      8  True argument of latitude (deg)
#      9  Revolution number  
#     10  Range rate residual (km/sec)
#     11  observation ASTAT
#     12  observation type
#     13  satellite true anomaly (deg)
#     14  satellite elevation (deg)
#     15  satellite maintenance category
#     16  obs time in ds50UTC
#     17  obs azimuth (deg)
#     18  obs elevation (deg)
#     19  Velocity angle residual (deg)
#     20  Angular momentum residual (deg)
#     21  Right ascension residual (deg) (for ob types 5, 9, 19)
#     22  Declination residual (deg) (for ob types 5, 9, 19)
#     23  Delta X position (km)
#     24  Delta Y position (km)
#     25  Delta Z position (km)
#     26  Delta X velocity (km/sec)
#     27  Delta Y velocity (km/sec)
#     28  Delta Z velocity (km/sec)
#     29  Angle only obs computed range (km)
#     30  obs azimuth (deg)
#     31  obs elevation (deg)
# 
# 
# See BatchDCGetParams for the structure of the xai_dcElts array.
# 
# See BatchDCSolve for the structure of the xar_dcElts array.
function BatchDCIterate(satKey, size_xa_ObsRes, size_xa_rejFlg)
   xa_ObsRes = zeros(Float64, 100, size_xa_ObsRes)
   xa_rejFlg = zeros(Int32, 32, size_xa_rejFlg)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   iterCode = ccall( (:BatchDCIterate,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_ObsRes,xa_rejFlg,xai_dcElts,xar_dcElts,xas_dcElts)
   return iterCode, xa_ObsRes, convert(Array{Int64,2}, xa_rejFlg), convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Returns a concatenated string representation of a VCM generated by a successful DC
function BatchDCGetVcm(satKey)
   vcmLines = " "^4000
   errCode = ccall( (:BatchDCGetVcm,libname) 
     , Int32
     , (Int64
     , Cstring)
     , satKey,vcmLines)
   return errCode, vcmLines
end

#############################################################################
# Returns the full file name of the output SP Vector file that was specified using "SPVOUT = " 
# in the main input file or using the BatchDCSetSpVOutFileName() function call
function BatchDCGetSpVOut()
   spVOutFile = " "^512
   ccall( (:BatchDCGetSpVOut,libname) 
     , Nothing
     , (Cstring,)
     , spVOutFile)
   return spVOutFile
end

#############################################################################
# Sets the full file name of the SP Vector output file which will be used to store the generated SP vector data
function BatchDCSetSpVOut(spVOutFile)
   ccall( (:BatchDCSetSpVOut,libname) 
     , Nothing
     , (Cstring,)
     , spVOutFile)
end

#############################################################################
# Resets all BatchDC control parameters back to their default values and empties the DC binary tree (objects created by BatchDCInitSat)
function BatchDCResetAll()
   ccall( (:BatchDCResetAll,libname) 
     , Nothing
     , ())
end

#############################################################################
# Returns DC acceptance criteria data for the specified satellite
function BatchDCGetAccptCrit(satKey)
   xa_ac = zeros(Float64, 64)
   errCode = ccall( (:BatchDCGetAccptCrit,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , satKey,xa_ac)
   return errCode, xa_ac
end

#############################################################################
# Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
# returns the corrected SGP4/SGP4-XP elements and related data
# Note: No need to initialize VCM before calling this method
function SpToEGP(satKey, xa_egpCtrl)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:SpToEGP,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_egpCtrl,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, xa_egpCtrl, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
# returns the corrected elements SGP4/SGP4-XP in form of a TLE
# Note: No need to initialize VCM before calling this method
function SpToTle(satKey, xa_egpCtrl)
   line1 = " "^512
   line2 = " "^512
   errCode = ccall( (:SpToTle,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring
     , Cstring)
     , satKey,xa_egpCtrl,line1,line2)
   return errCode, xa_egpCtrl, line1, line2
end

#############################################################################
# Combines SpToEGP and SpToTle functions into just one function call
# Note: No need to initialize VCM before calling this method
function SpToTleComb(satKey, xa_egpCtrl)
   line1 = " "^512
   line2 = " "^512
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:SpToTleComb,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_egpCtrl,line1,line2,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, xa_egpCtrl, line1, line2, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs batch-least-square differential corrections to the specified satellite (VCM/SPVEC) and
# returns the corrected elements SGP4/SGP4-XP in form of a TLE
# Note: No need to initialize VCM before calling this method
function SpToCsv(satKey, xa_egpCtrl)
   csvLine = " "^512
   errCode = ccall( (:SpToCsv,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , satKey,xa_egpCtrl,csvLine)
   return errCode, xa_egpCtrl, csvLine
end

#############################################################################
# Combines SpToEGP and SpToCsv functions into just one function call
# Note: No need to initialize VCM before calling this method
function SpToCsvComb(satKey, xa_egpCtrl)
   csvLine = " "^512
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:SpToCsvComb,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , satKey,xa_egpCtrl,csvLine,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, xa_egpCtrl, csvLine, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs batch-least-square differential corrections using the input external ephemeris and treating them as observations and
# returns the corrected SGP4/SGP4-XP elements and related data
function ExtEphemToEGP(extEphFile, xa_egpCtrl)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:ExtEphemToEGP,libname) 
     , Int32
     , (Cstring
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , extEphFile,xa_egpCtrl,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, xa_egpCtrl, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################
# Performs IOMOD/IODET and then batch-least-square differential corrections on the input observations via their obsKeys (Thread-Safe) 
function IomodDC(numObs, obsKeys, xa_iomdc)
   xai_dcElts = zeros(Int32, 256)
   xar_dcElts = zeros(Float64, 256)
   xas_dcElts = " "^512
   errCode = ccall( (:IomodDC,libname) 
     , Int32
     , (Int32
     , Ref{Int64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring)
     , numObs,obsKeys,xa_iomdc,xai_dcElts,xar_dcElts,xas_dcElts)
   return errCode, convert(Array{Int64,1}, xai_dcElts), xar_dcElts, xas_dcElts
end

#############################################################################

end #of module BatchDCDll
# ========================= End of auto generated code ==========================
