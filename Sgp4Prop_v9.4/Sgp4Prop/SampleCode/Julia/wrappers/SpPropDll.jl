# This wrapper file was generated automatically by the GenDllWrappers program.
module SpPropDll

if Sys.iswindows()
  libname="SpProp"
else
  libname="libspprop"
end

# Export Constant Variables
export VCMOPT_USEOWN
export VCMOPT_USEGLOBAL
export IDX_RUNMODE_PERF
export IDX_RUNMODE_MEM
export IDX_PARTIALS_SAVE
export IDX_PARTIALS_DONT
export XF_COVMTX_UVW_DATE
export XF_COVMTX_XYZ_DATE
export XF_COVMTX_EQNX_DATE
export XF_COVMTX_UVW_J2K
export XF_COVMTX_XYZ_J2K
export XF_COVMTX_EQNX_J2K
export LSPERT_NONE
export LSPERT_ANALYTIC
export LSPERT_JPL
export LSPERT_ALL
export LSPERT_BIG
export LSPERT_MED
export LSPERT_SMA
export STMTYPE_UVW
export STMTYPE_XYZ
export STMTYPE_EQNX
export SPCOORD_ECI
export SPCOORD_J2K
export DRGMDL_JAC64
export DRGMDL_JAC70
export DRGMDL_DCA1
export DRGMDL_JBH09
export DRGMDL_JBHDCA2
export XF_4P_GEOIDX
export XF_4P_BULGEFLG
export XF_4P_DRAGFLG
export XF_4P_RADFLG
export XF_4P_LUNSOL
export XF_4P_F10
export XF_4P_F10AVG
export XF_4P_AP
export XF_4P_TRUNC
export XF_4P_CONVERG
export XF_4P_OGFLG
export XF_4P_TIDESFLG
export XF_4P_INCOORD
export XF_4P_NTERMS
export XF_4P_REEVAL
export XF_4P_INTEGCTRL
export XF_4P_VARSTEP
export XF_4P_INITSTEP
export XF_4P_DCAFILE
export XF_4P_FLUXFILE
export XF_4P_GEOFILE
export XF_4P_JPLFILE
export XF_4P_JPLSTART
export XF_4P_JPLSTOP
export XF_SPAPP_GEODIR
export XF_SPAPP_BUFSIZE
export XF_SPAPP_RUNMODE
export XF_SPAPP_SAVEPART
export XF_SPAPP_SPECTR
export XF_SPAPP_CONSIDER
export XF_SPAPP_DECAYALT
export XF_SPAPP_OUTCOORD
export XF_SPAPP_VCMOPT
export XF_SPSAT_SATNUM
export XF_SPSAT_DS50UTC
export XF_SPSAT_DS50TAI
export XF_SPSAT_MU
export XF_SPSAT_HASCOV
export XF_SPSAT_INTMODE
export XF_SPSAT_NTERMS
export XF_SPSAT_SPECTR
export SP_TIMETYPE_MSE
export SP_TIMETYPE_DS50UTC
export XA_SPOUT_UTC
export XA_SPOUT_MSE
export XA_SPOUT_UT1
export XA_SPOUT_TAI
export XA_SPOUT_ET
export XA_SPOUT_REVNUM
export XA_SPOUT_NTERMS
export XA_SPOUT_ISSPECTR
export XA_SPOUT_HASCOVMTX
export XA_SPOUT_J2KPOSX
export XA_SPOUT_J2KPOSY
export XA_SPOUT_J2KPOSZ
export XA_SPOUT_J2KVELX
export XA_SPOUT_J2KVELY
export XA_SPOUT_J2KVELZ
export XA_SPOUT_ECIPOSX
export XA_SPOUT_ECIPOSY
export XA_SPOUT_ECIPOSZ
export XA_SPOUT_ECIVELX
export XA_SPOUT_ECIVELY
export XA_SPOUT_ECIVELZ
export XA_SPOUT_LAT
export XA_SPOUT_LON
export XA_SPOUT_HEIGHT
export XA_SPOUT_COVTYPE
export XA_SPOUT_COVMTX
export XA_SPOUT_J2KACCX
export XA_SPOUT_J2KACCY
export XA_SPOUT_J2KACCZ
export XA_SPOUT_ECIACCX
export XA_SPOUT_ECIACCY
export XA_SPOUT_ECIACCZ
export XA_SPOUT_SIZE
export XA_SPEXT_UTC
export XA_SPEXT_MSE
export XA_SPEXT_UT1
export XA_SPEXT_TAI
export XA_SPEXT_ET
export XA_SPEXT_REVNUM
export XA_SPEXT_NTERMS
export XA_SPEXT_ISSPECTR
export XA_SPEXT_HASCOVMTX
export XA_SPEXT_COORD
export XA_SPEXT_POSX
export XA_SPEXT_POSY
export XA_SPEXT_POSZ
export XA_SPEXT_VELX
export XA_SPEXT_VELY
export XA_SPEXT_VELZ
export XA_SPEXT_ACCX
export XA_SPEXT_ACCY
export XA_SPEXT_ACCZ
export XA_SPEXT_COVTYPE
export XA_SPEXT_COVMTX
export XA_SPEXT_STMTYPE
export XA_SPEXT_STM
export XA_SPEXT_SIZE
export SP_EPHEM_ECI
export SP_EPHEM_J2K
export XA_TIMETYPES_MSE
export XA_TIMETYPES_UTC
export XA_TIMETYPES_UT1
export XA_TIMETYPES_TAI
export XA_TIMETYPES_ET
export XA_TIMETYPES_SIZE

# Export Functions
export SpInit
export SpGetInfo
export SpLoadFile
export SpLoadFileAll
export SpSaveFile
export SpInitSat
export SpRemoveSat
export SpRemoveAllSats
export SpGetCount
export SpReset
export SpGetApCtrl
export SpGetApCtrlAll
export SpSetApCtrl
export SpSetApCtrlAll
export SpGet4P
export SpSet4P
export SpGetPredCtrl
export SpSetPredCtrl
export SpGetSatData
export SpGetSatDataAll
export SpPropMse
export SpPropDs50UTC
export SpPropDs50UtcLLH
export SpPropDs50UtcPos
export SpPropAll
export SpGetStateDs50UTC
export SpSetStateDs50UTC
export SpSetAndProp
export SpGetPropOut
export SpGetCovMtx
export SpCompCovSigma
export SpSet4pAll
export SpGet4pAll
export SpSet4PCard
export SpGet4PCard
export SpAddFluxRec
export SpGetEphemTimes
export SpGenEphems
export SpGenEphemsCov
export SpGenEphemsVcm_OS
export SpGenEphemsVcmCov_OS
export SpPropAllSats
export SpPropAllExt

# VCM additional options
# use VCM's own data
const VCMOPT_USEOWN    = 0;

# force VCM to use global solar flux and timing constants data
const VCMOPT_USEGLOBAL = 1;


# Run Modes
# Perfromance priority. This mode allows the buffer of integration points to extend freely
const IDX_RUNMODE_PERF = 0;

# Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
const IDX_RUNMODE_MEM  = 1;


#*******************************************************************************

# Partials Saving Modes
# Save partials in the buffer
const IDX_PARTIALS_SAVE = 1;

# Don't save partials in the buffer
const IDX_PARTIALS_DONT = 0;


# Indexes of different covariance matrices
# UVW convariance matrix - TEME of DATE
const XF_COVMTX_UVW_DATE  =  1;

# Cartesian covariance matrix - TEME of DATE
const XF_COVMTX_XYZ_DATE  =  2;

# Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
const XF_COVMTX_EQNX_DATE =  3;

# UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
const XF_COVMTX_UVW_J2K   = 11;

# Cartesian covariance matrix - MEME of J2K
const XF_COVMTX_XYZ_J2K   = 12;

# Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
const XF_COVMTX_EQNX_J2K  = 13;

#*******************************************************************************

# Indexes of Lunar/Solar and Planets perturbation modes
# Lunar/Solar perturbation off
const LSPERT_NONE      = 0;

# Lunar/Solar perturbation on (using Analytic mode)
const LSPERT_ANALYTIC  = 1;

# Lunar/Solar perturbation using JPL ephemeris file
const LSPERT_JPL       = 2;

# Lunar/Solar + All planets perturbation using JPL ephemeris file
const LSPERT_ALL       = 3;

# Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
const LSPERT_BIG       = 4;

# Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
const LSPERT_MED       = 5;

# Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
const LSPERT_SMA       = 6;


#*******************************************************************************

# State Transition Matrix Types
# UVW state transition matrix
const STMTYPE_UVW       = 1;

# Cartesian state transition matrix
const STMTYPE_XYZ       = 2;

# Equinoctial state transition matrix
const STMTYPE_EQNX      = 3;


# Different output coordinate systems options for pos/vel/acc
# Output coordinate systems in TEME of Date
const SPCOORD_ECI      = 1;

# Output coordinate systems in MEME of J2K
const SPCOORD_J2K      = 2;


# Different drag perturbation models
# Jacchia 64 model
const DRGMDL_JAC64   =  1;

# Jacchia 70 model
const DRGMDL_JAC70   =  2;

# Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
const DRGMDL_DCA1    =  3;

# JBH09 model
const DRGMDL_JBH09   = 40;

# JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
const DRGMDL_JBHDCA2 = 41;


# Indexes of SP 4P card fields
# Geopotential model to use
const XF_4P_GEOIDX   = 1;

# Earth gravity pertubations flag
const XF_4P_BULGEFLG = 2;

# Drag pertubations flag
const XF_4P_DRAGFLG  = 3;

# Radiation pressure pertubations flag
const XF_4P_RADFLG   = 4;

# Lunar/Solar pertubations flag
const XF_4P_LUNSOL   = 5;

# F10 value
const XF_4P_F10      = 6;

# F10 average value
const XF_4P_F10AVG   = 7;

# Ap value
const XF_4P_AP       = 8;

# Geopotential truncation order/degree/zonals
const XF_4P_TRUNC    = 9;

# Corrector step convergence criterion; exponent of 1/10; default = 10
const XF_4P_CONVERG  = 10;

# Outgassing pertubations flag
const XF_4P_OGFLG    = 11;

# Solid earth and ocean tide pertubations flag
const XF_4P_TIDESFLG = 12;

# Input vector coordinate system
const XF_4P_INCOORD  = 13;

# Nutation terms
const XF_4P_NTERMS   = 14;

# Recompute pertubations at each corrector step
const XF_4P_REEVAL   = 15;

# Variable of intergration control
const XF_4P_INTEGCTRL= 16;

# Variable step size control
const XF_4P_VARSTEP  = 17;

# Initial step size
const XF_4P_INITSTEP = 18;


# DCA file name
const XF_4P_DCAFILE  = 21;

# Solar flux file name
const XF_4P_FLUXFILE = 22;

# Geopotential file name
const XF_4P_GEOFILE  = 23;

# JPL file name
const XF_4P_JPLFILE  = 24;

# JPL start time
const XF_4P_JPLSTART = 25;

# JPL stop time
const XF_4P_JPLSTOP  = 26;


#XF_4P_PLANETS  = 27, &    # Sets perturbations from all planets to on
#XF_4P_MERCURY  = 28, &    # Sets perturbation from Mercury to on
#XF_4P_VENUS    = 29, &    # Sets perturbation from Venus to on
#XF_4P_MARS     = 30, &    # Sets perturbation from Mars to on
#XF_4P_JUPITER  = 31, &    # Sets perturbation from Jupiter to on
#XF_4P_SATURN   = 32, &    # Sets perturbation from Saturn to on
#XF_4P_URANUS   = 33, &    # Sets perturbation from Uranus to on
#XF_4P_NEPTUNE  = 34, &    # Sets perturbation from Neptune to on
#XF_4P_PLUTO    = 35;      # Sets perturbation from Pluto to on

#*******************************************************************************

# Indexes of SP application control (preference) parameters
# Geopotential directory path
const XF_SPAPP_GEODIR   = 1;

# Buffer size
const XF_SPAPP_BUFSIZE  = 2;

# Run mode
const XF_SPAPP_RUNMODE  = 3;

# Save partials data
const XF_SPAPP_SAVEPART = 4;

# Specter compatibility mode
const XF_SPAPP_SPECTR   = 5;

# Consider parameter
const XF_SPAPP_CONSIDER = 6;

# Decay altitude
const XF_SPAPP_DECAYALT = 7;

# Output coordinate system
const XF_SPAPP_OUTCOORD = 8;

# VCM additional options
const XF_SPAPP_VCMOPT   = 9;


#*******************************************************************************

# Indexes of data fields of an initialized SP satellite
# Satellite number I5
const XF_SPSAT_SATNUM  = 1;

# Satellite's epoch time in days since 1950, UTC
const XF_SPSAT_DS50UTC = 2;

# Satellite's epoch time in days since 1950, TAI
const XF_SPSAT_DS50TAI = 3;

# Mu value
const XF_SPSAT_MU      = 4;

# Covariance Matrix flag
const XF_SPSAT_HASCOV  = 5;

# Integration mode
const XF_SPSAT_INTMODE = 6;

# Nutation terms
const XF_SPSAT_NTERMS  = 7;

# Specter compatibility mode
const XF_SPSAT_SPECTR  = 8;


#*******************************************************************************

## Indexes of Planetary Control
#   XAI_PLANET_MERCURY = 1, & # 0 = off, 1 = on
#   XAI_PLANET_VENUS   = 2, & # 0 = off, 1 = on
#   XAI_PLANET_EARTH   = 3, & # Not used
#   XAI_PLANET_MARS    = 4, & # 0 = off, 1 = on
#   XAI_PLANET_JUPITER = 5, & # 0 = off, 1 = on
#   XAI_PLANET_SATRUN  = 6, & # 0 = off, 1 = on
#   XAI_PLANET_URANUS  = 7, & # 0 = off, 1 = on
#   XAI_PLANET_NEPTUNE = 8, & # 0 = off, 1 = on
#   XAI_PLANET_PLUTO   = 9, & # 0 = off, 1 = on
#   XAI_PLANET_SIZE    = 9;   # Size of array
#
##*******************************************************************************

# Different time types for passing to SpPropAll
# propagation time is in minutes since epoch
const SP_TIMETYPE_MSE      = 0;

# propagation time is in days since 1950, UTC
const SP_TIMETYPE_DS50UTC  = 1;



# Sp propagated data
# Propagation time in days since 1950, UTC
const XA_SPOUT_UTC       =  0;

# Propagation time in minutes since the satellite's epoch time
const XA_SPOUT_MSE       =  1;

# Propagation time in days since 1950, UT1
const XA_SPOUT_UT1       =  2;

# Propagation time in days since 1950, TAI
const XA_SPOUT_TAI       =  3;

# Propagation time in days since 1950, ET
const XA_SPOUT_ET        =  4;

# Revolution number
const XA_SPOUT_REVNUM    =  5;

# Number of nutation terms
const XA_SPOUT_NTERMS    =  6;

# Spectr compatible mode (0=not compatible, 1=compatible)
const XA_SPOUT_ISSPECTR  =  7;

# Has input covariance matrix (0=no, 1=yes)
const XA_SPOUT_HASCOVMTX =  8;


# J2K position X (km)
const XA_SPOUT_J2KPOSX   = 10;

# J2K position Y (km)
const XA_SPOUT_J2KPOSY   = 11;

# J2K position Z (km)
const XA_SPOUT_J2KPOSZ   = 12;

# J2K velocity X (km/s)
const XA_SPOUT_J2KVELX   = 13;

# J2K velocity Y (km/s)
const XA_SPOUT_J2KVELY   = 14;

# J2K velocity Z (km/s)
const XA_SPOUT_J2KVELZ   = 15;

# ECI position X (km)
const XA_SPOUT_ECIPOSX   = 16;

# ECI position Y (km)
const XA_SPOUT_ECIPOSY   = 17;

# ECI position Z (km)
const XA_SPOUT_ECIPOSZ   = 18;

# ECI velocity X (km/s)
const XA_SPOUT_ECIVELX   = 19;

# ECI velocity Y (km/s)
const XA_SPOUT_ECIVELY   = 20;

# ECI velocity Z (km/s)
const XA_SPOUT_ECIVELZ   = 21;

# Geodetic latitude (deg)
const XA_SPOUT_LAT       = 22;

# Geodetic longitude (deg)
const XA_SPOUT_LON       = 23;

# Height above geoid (km)
const XA_SPOUT_HEIGHT    = 24;


# Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
const XA_SPOUT_COVTYPE   = 30;

# 6 by 6 covariance matrix (31-66)
const XA_SPOUT_COVMTX    = 31;


# J2K acceleration X (km/s^2)
const XA_SPOUT_J2KACCX   = 70;

# J2K acceleration Y (km/s^2)
const XA_SPOUT_J2KACCY   = 71;

# J2K acceleration Z (km/s^2)
const XA_SPOUT_J2KACCZ   = 72;

# ECI acceleration X (km/s^2)
const XA_SPOUT_ECIACCX   = 73;

# ECI acceleration Y (km/s^2)
const XA_SPOUT_ECIACCY   = 74;

# ECI acceleration Z (km/s^2)
const XA_SPOUT_ECIACCZ   = 75;


const    XA_SPOUT_SIZE      = 128;     

# Sp extended propagation data
# Propagation time in days since 1950, UTC
const XA_SPEXT_UTC       =  0;

# Propagation time in minutes since the satellite's epoch time
const XA_SPEXT_MSE       =  1;

# Propagation time in days since 1950, UT1
const XA_SPEXT_UT1       =  2;

# Propagation time in days since 1950, TAI
const XA_SPEXT_TAI       =  3;

# Propagation time in days since 1950, ET
const XA_SPEXT_ET        =  4;

# Revolution number
const XA_SPEXT_REVNUM    =  5;

# Number of nutation terms
const XA_SPEXT_NTERMS    =  6;

# Spectr compatible mode (0=not compatible, 1=compatible)
const XA_SPEXT_ISSPECTR  =  7;

# Has input covariance matrix (0=no, 1=yes)
const XA_SPEXT_HASCOVMTX =  8;


# Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
const XA_SPEXT_COORD     = 10;

# position X (km)
const XA_SPEXT_POSX      = 11;

# position Y (km)
const XA_SPEXT_POSY      = 12;

# position Z (km)
const XA_SPEXT_POSZ      = 13;

# velocity X (km/s)
const XA_SPEXT_VELX      = 14;

# velocity Y (km/s)
const XA_SPEXT_VELY      = 15;

# velocity Z (km/s)
const XA_SPEXT_VELZ      = 16;

# acceleration X (km/s^2)
const XA_SPEXT_ACCX      = 17;

# acceleration Y (km/s^2)
const XA_SPEXT_ACCY      = 18;

# acceleration Z (km/s^2)
const XA_SPEXT_ACCZ      = 19;


# Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
const XA_SPEXT_COVTYPE   = 30;

# 6 by 6 covariance matrix (31-66/1D format - 36 elements)
const XA_SPEXT_COVMTX    = 31;


# State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
const XA_SPEXT_STMTYPE   = 70;

# 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
const XA_SPEXT_STM       = 71;


const    XA_SPEXT_SIZE      = 128;     


# Different options for generating ephemerides from SP
# ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
const SP_EPHEM_ECI   = 1;

# MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
const SP_EPHEM_J2K   = 2;



# Different time types returned by the SP propagator
# Time in minutes since the satellite's epoch time
const XA_TIMETYPES_MSE  = 0;

# Time in days since 1950, UTC
const XA_TIMETYPES_UTC  = 1;

# Time in days since 1950, UT1
const XA_TIMETYPES_UT1  = 2;

# Time in days since 1950, TAI
const XA_TIMETYPES_TAI  = 3;

# Time in days since 1950, ET
const XA_TIMETYPES_ET   = 4;


const    XA_TIMETYPES_SIZE = 5;      



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes SpProp DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
function SpInit(apAddr)
   errCode = ccall( (:SpInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
# The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
function SpGetInfo()
   infoStr = " "^128
   ccall( (:SpGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
function SpLoadFile(spInputFile)
   errCode = ccall( (:SpLoadFile,libname) 
     , Int32
     , (Cstring,)
     , spInputFile)
   return errCode
end

#############################################################################
# Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
function SpLoadFileAll(spInputFile)
   errCode = ccall( (:SpLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , spInputFile)
   return errCode
end

#############################################################################
# Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
# The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
function SpSaveFile(spFile, saveMode, saveForm)
   errCode = ccall( (:SpSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , spFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Initializes an SP satellite from an SP TLE, SPVEC, or VCM
# Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
# 
# The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
function SpInitSat(satKey)
   errCode = ccall( (:SpInitSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes a satellite, represented by the satKey, from the set of currently loaded satellites
# Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
# If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
function SpRemoveSat(satKey)
   errCode = ccall( (:SpRemoveSat,libname) 
     , Int32
     , (Int64,)
     , satKey)
   return errCode
end

#############################################################################
# Removes all currently loaded satellites from memory
# Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
# The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
function SpRemoveAllSats()
   errCode = ccall( (:SpRemoveAllSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of SP objects currently created. 
function SpGetCount()
   numSats = ccall( (:SpGetCount,libname) 
     , Int32
     , ())
   return numSats
end

#############################################################################
# Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
function SpReset()
   ccall( (:SpReset,libname) 
     , Nothing
     , ())
end

#############################################################################
# Retrieves the value of an SP application control parameter
# 
# The table below shows the values for the xf_SpApp parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 1 Geopotential directory path
# 2 Buffer size
# 3 Run mode
# 4 Save partials data
# 5 Specter compatibility mode
# 6 Consider parameter
# 7 Decay altitude
# 8 Output coordinate system
# 9 Additional VCM options
# 
function SpGetApCtrl(xf_SpApp)
   valueStr = " "^512
   ccall( (:SpGetApCtrl,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_SpApp,valueStr)
   return valueStr
end

#############################################################################
# Retrieves all SP application control parameters with a single function call
function SpGetApCtrlAll()
   geoDir = " "^512
   bufSize = zeros(Int32, 1)
   runMode = zeros(Int32, 1)
   savePartials = zeros(Int32, 1)
   isSpectr = zeros(Int32, 1)
   consider = zeros(Float64, 1)
   decayAlt = zeros(Int32, 1)
   outCoord = zeros(Int32, 1)
   ccall( (:SpGetApCtrlAll,libname) 
     , Nothing
     , (Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32})
     , geoDir,bufSize,runMode,savePartials,isSpectr,consider,decayAlt,outCoord)
   return geoDir, Int64(bufSize[1]), Int64(runMode[1]), Int64(savePartials[1]), Int64(isSpectr[1]), consider[1], Int64(decayAlt[1]), Int64(outCoord[1])
end

#############################################################################
# Sets an SP application control parameter
# See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
function SpSetApCtrl(xf_SpApp, valueStr)
   ccall( (:SpSetApCtrl,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_SpApp,valueStr)
end

#############################################################################
# Sets all SP application control parameters with a single function call
function SpSetApCtrlAll(geoDir, bufSize, runMode, savePartials, isSpectr, consider, decayAlt, outCoord)
   ccall( (:SpSetApCtrlAll,libname) 
     , Nothing
     , (Cstring
     , Int32
     , Int32
     , Int32
     , Int32
     , Float64
     , Int32
     , Int32)
     , geoDir,bufSize,runMode,savePartials,isSpectr,consider,decayAlt,outCoord)
end

#############################################################################
# Retrieves the value of a numerical integration control parameter
# 
# The table below shows the values for xf_4P parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 1   Geopotential model to use
# 2   Earth gravity pertubations flag
# 3   Drag pertubations flag 
# 4   Radiation pressure pertubations flag
# 5   Lunar/Solar pertubations flag
# 6   F10 value
# 7   F10 average value
# 8   Ap value
# 9   Geopotential truncation order/degree/zonals
# 10  Corrector step convergence criterion; exponent of 1/10; default = 10
# 11  Outgassing pertubations flag
# 12  Solid earth ocean tide pertubations flag
# 13  Input vector coordinate system
# 14  Nutation terms
# 15  Recompute pertubations at each corrector step
# 16  Variable of intergration control
# 17  Variable step size control
# 18  Initial step size
# 21  DCA file name
# 22  Solar flux file name
# 23  Geopotential file name
# 24  JPL file name
# 25  JPL start time
# 26  JPL stop time
# 
function SpGet4P(xf_4P)
   valueStr = " "^512
   ccall( (:SpGet4P,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_4P,valueStr)
   return valueStr
end

#############################################################################
# Sets the value of a numerical integration control parameter
# See SpGet4P for a list of the values for the xf_4P parameter.
# For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
# If the user needs to load these files instantly, please call the SpLoadFile() instead
function SpSet4P(xf_4P, valueStr)
   ccall( (:SpSet4P,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_4P,valueStr)
end

#############################################################################
# Retrieves prediction control parameters
function SpGetPredCtrl()
   startFrEpoch = zeros(Int32, 1)
   stopFrEpoch = zeros(Int32, 1)
   startTime = zeros(Float64, 1)
   stopTime = zeros(Float64, 1)
   interval = zeros(Float64, 1)
   ccall( (:SpGetPredCtrl,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , startFrEpoch,stopFrEpoch,startTime,stopTime,interval)
   return Int64(startFrEpoch[1]), Int64(stopFrEpoch[1]), startTime[1], stopTime[1], interval[1]
end

#############################################################################
# Sets prediction control parameters
function SpSetPredCtrl(startFrEpoch, stopFrEpoch, startTime, stopTime, interval)
   ccall( (:SpSetPredCtrl,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Float64
     , Float64)
     , startFrEpoch,stopFrEpoch,startTime,stopTime,interval)
end

#############################################################################
# Retrieves the value of a field of an SP satellite
# 
# The table below shows the values for the xf_SpSat parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 1  Satellite number I5
# 2  Satellite's epoch time in days since 1950, UTC 
# 3  Satellite's epoch time in days since 1950, TAI
# 4  Mu value 
# 5  Covariance Matrix flag
# 6  Integration mode
# 7  Nutation terms
# 8  Specter compatibility mode
# 
function SpGetSatData(satKey, xf_SpSat)
   valueStr = " "^512
   errCode = ccall( (:SpGetSatData,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , satKey,xf_SpSat,valueStr)
   return errCode, valueStr
end

#############################################################################
# Retrieves all fields of an SP satellite with a single function call
function SpGetSatDataAll(satKey)
   satNum = zeros(Int32, 1)
   epochDs50UTC = zeros(Float64, 1)
   epochDs50TAI = zeros(Float64, 1)
   mu = zeros(Float64, 1)
   hasCovMtx = zeros(Int32, 1)
   integMode = zeros(Int32, 1)
   nTerms = zeros(Int32, 1)
   isSpectr = zeros(Int32, 1)
   errCode = ccall( (:SpGetSatDataAll,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32})
     , satKey,satNum,epochDs50UTC,epochDs50TAI,mu,hasCovMtx,integMode,nTerms,isSpectr)
   return errCode, Int64(satNum[1]), epochDs50UTC[1], epochDs50TAI[1], mu[1], Int64(hasCovMtx[1]), Int64(integMode[1]), Int64(nTerms[1]), Int64(isSpectr[1])
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
# satellite's epoch time
function SpPropMse(satKey, mse)
   xa_timeTypes = zeros(Float64, 5)
   revNum = zeros(Int32, 1)
   posJ2K = zeros(Float64, 3)
   velJ2K = zeros(Float64, 3)
   errCode = ccall( (:SpPropMse,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,mse,xa_timeTypes,revNum,posJ2K,velJ2K)
   return errCode, xa_timeTypes, Int64(revNum[1]), posJ2K, velJ2K
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
function SpPropDs50UTC(satKey, ds50UTC)
   xa_timeTypes = zeros(Float64, 5)
   revNum = zeros(Int32, 1)
   posJ2K = zeros(Float64, 3)
   velJ2K = zeros(Float64, 3)
   errCode = ccall( (:SpPropDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,xa_timeTypes,revNum,posJ2K,velJ2K)
   return errCode, xa_timeTypes, Int64(revNum[1]), posJ2K, velJ2K
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# It only returns the latitude, longitude, and height at that time in coordinate system of Date
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# 
# This function is built especially for application that plots ground trace.
function SpPropDs50UtcLLH(satKey, ds50UTC)
   llh = zeros(Float64, 3)
   errCode = ccall( (:SpPropDs50UtcLLH,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,ds50UTC,llh)
   return errCode, llh
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# It only returns the satellite's ECI position in TEME of DATE
# It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
# 
# This function is built especially for application that plots satellites' positions in 3D.
function SpPropDs50UtcPos(satKey, ds50UTC)
   pos = zeros(Float64, 3)
   errCode = ccall( (:SpPropDs50UtcPos,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , satKey,ds50UTC,pos)
   return errCode, pos
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
# 
# All propagation data is returned by this function.
function SpPropAll(satKey, timeType, timeIn, covType)
   xa_spOut = zeros(Float64, 128)
   errCode = ccall( (:SpPropAll,libname) 
     , Int32
     , (Int64
     , Int32
     , Float64
     , Int32
     , Ref{Float64})
     , satKey,timeType,timeIn,covType,xa_spOut)
   return errCode, xa_spOut
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
# It only returns the position and velocity in TEME of Date
function SpGetStateDs50UTC(satKey, ds50UTC)
   posDate = zeros(Float64, 3)
   velDate = zeros(Float64, 3)
   errCode = ccall( (:SpGetStateDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,posDate,velDate)
   return errCode, posDate, velDate
end

#############################################################################
# Reepochs the state of an existing SP object associated with the satKey. 
# Proper initialization is handled internally so no need to call SpSatInit() afterward 
function SpSetStateDs50UTC(satKey, ds50UTC, posDate, velDate)
   errCode = ccall( (:SpSetStateDs50UTC,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64}
     , Ref{Float64})
     , satKey,ds50UTC,posDate,velDate)
   return errCode
end

#############################################################################
# Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
# Then propagates the updated SP object to the requested time propTimeDs50UTC. 
# Resulting propagated data will be stored in propDataArr.
function SpSetAndProp(satKey, setDataArr, propTimeDs50UTC)
   propDataArr = zeros(Float64, 128)
   errCode = ccall( (:SpSetAndProp,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Float64
     , Ref{Float64})
     , satKey,setDataArr,propTimeDs50UTC,propDataArr)
   return errCode, propDataArr
end

#############################################################################
# This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
# Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
function SpGetPropOut(satKey, index, size_destArr)
   destArr = zeros(Float64, size_destArr)
   errCode = ccall( (:SpGetPropOut,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , satKey,index,destArr)
   return errCode, destArr
end

#############################################################################
# Returns the covariance matrix of a satellite
# Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
function SpGetCovMtx(satKey, covType)
   covMtx = zeros(Float64, 6, 6)
   errCode = ccall( (:SpGetCovMtx,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , satKey,covType,covMtx)
   return errCode, covMtx
end

#############################################################################
# Computes the covariance sigma from the input covariance matrix
function SpCompCovSigma(covMtx)
   covSigma = zeros(Float64, 6)
   ccall( (:SpCompCovSigma,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64})
     , covMtx,covSigma)
   return covSigma
end

#############################################################################
# Sets all numerical integration control parameters with a single function call
function SpSet4pAll(geoIdx, bulgePert, dragPert, radPresPert, lunSolPert, f10, f10Avg, ap, trunc, incr, ogPert, tidePert, inCoord, nTerms, reEval, integStepMode, stepSizeMethod, initStepSize, dcaFile, fluxFile, geoFile, jplFile, jplStart, jplStop)
   ccall( (:SpSet4pAll,libname) 
     , Nothing
     , (Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Int32
     , Float64
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring)
     , geoIdx,bulgePert,dragPert,radPresPert,lunSolPert,f10,f10Avg,ap,trunc,
         incr,ogPert,tidePert,inCoord,nTerms,reEval,integStepMode,stepSizeMethod,initStepSize,dcaFile,
         fluxFile,geoFile,jplFile,jplStart,jplStop)
end

#############################################################################
# Retrieves all numerical integration control parameters with a single function call
function SpGet4pAll()
   geoIdx = zeros(Int32, 1)
   bulgePert = zeros(Int32, 1)
   dragPert = zeros(Int32, 1)
   radPresPert = zeros(Int32, 1)
   lunSolPert = zeros(Int32, 1)
   f10 = zeros(Int32, 1)
   f10Avg = zeros(Int32, 1)
   ap = zeros(Int32, 1)
   trunc = zeros(Int32, 1)
   incr = zeros(Int32, 1)
   ogPert = zeros(Int32, 1)
   tidePert = zeros(Int32, 1)
   inCoord = zeros(Int32, 1)
   nTerms = zeros(Int32, 1)
   reEval = zeros(Int32, 1)
   integStepMode = zeros(Int32, 1)
   stepSizeMethod = zeros(Int32, 1)
   initStepSize = zeros(Float64, 1)
   dcaFile = " "^512
   fluxFile = " "^512
   geoFile = " "^512
   jplFile = " "^512
   jplStart = " "^512
   jplStop = " "^512
   ccall( (:SpGet4pAll,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring
     , Cstring)
     , geoIdx,bulgePert,dragPert,radPresPert,lunSolPert,f10,f10Avg,ap,trunc,
         incr,ogPert,tidePert,inCoord,nTerms,reEval,integStepMode,stepSizeMethod,initStepSize,dcaFile,
         fluxFile,geoFile,jplFile,jplStart,jplStop)
   return Int64(geoIdx[1]), Int64(bulgePert[1]), Int64(dragPert[1]), Int64(radPresPert[1]), Int64(lunSolPert[1]), Int64(f10[1]), Int64(f10Avg[1]), Int64(ap[1]), Int64(trunc[1]), 
         Int64(incr[1]), Int64(ogPert[1]), Int64(tidePert[1]), Int64(inCoord[1]), Int64(nTerms[1]), Int64(reEval[1]), Int64(integStepMode[1]), Int64(stepSizeMethod[1]), initStepSize[1], dcaFile, 
         fluxFile, geoFile, jplFile, jplStart, jplStop
end

#############################################################################
# Read the integration control settings from a 4P-Card
function SpSet4PCard(card4P)
   errCode = ccall( (:SpSet4PCard,libname) 
     , Int32
     , (Cstring,)
     , card4P)
   return errCode
end

#############################################################################
# Builds and returns the integration control card (4P-Card) from the current settings
function SpGet4PCard()
   card4P = " "^512
   ccall( (:SpGet4PCard,libname) 
     , Nothing
     , (Cstring,)
     , card4P)
   return card4P
end

#############################################################################
# Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
function SpAddFluxRec(refDs50UTC, f10, f10Avg, ap)
   errCode = ccall( (:SpAddFluxRec,libname) 
     , Int32
     , (Float64
     , Float64
     , Float64
     , Ref{Float64})
     , refDs50UTC,f10,f10Avg,ap)
   return errCode
end

#############################################################################
# Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
# This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
# An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
function SpGetEphemTimes(satKey, maxEphPts, startDs50UTC, stopDs50UTC, minStepSize, size_ds50UTCArr)
   actualEphPts = zeros(Int32, 1)
   ds50UTCArr = zeros(Float64, size_ds50UTCArr)
   errCode = ccall( (:SpGetEphemTimes,libname) 
     , Int32
     , (Int64
     , Int32
     , Float64
     , Float64
     , Float64
     , Ref{Int32}
     , Ref{Float64})
     , satKey,maxEphPts,startDs50UTC,stopDs50UTC,minStepSize,actualEphPts,ds50UTCArr)
   return errCode, Int64(actualEphPts[1]), ds50UTCArr
end

#############################################################################
# Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
# Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
# that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function SpGenEphems(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 7, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:SpGenEphems,libname) 
     , Int32
     , (Int64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , satKey,startDs50UTC,stopDs50UTC,stepSize,sp_ephem,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# This function is similar to SpGenEphems but also returns covariance matrix data
# Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
function SpGenEphemsCov(satKey, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 28, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:SpGenEphemsCov,libname) 
     , Int32
     , (Int64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , satKey,startDs50UTC,stopDs50UTC,stepSize,sp_ephem,covType,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# Generates ephemerides for the input vcm (in string format) for the specified time span and step size
# Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
# that many points (arrSize) and the errCode is set to IDX_ERR_WARN
function SpGenEphemsVcm_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 7, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:SpGenEphemsVcm_OS,libname) 
     , Int32
     , (Cstring
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , vcmString,startDs50UTC,stopDs50UTC,stepSize,sp_ephem,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
function SpGenEphemsVcmCov_OS(vcmString, startDs50UTC, stopDs50UTC, stepSize, sp_ephem, covType, arrSize, size_ephemArr)
   ephemArr = zeros(Float64, 28, size_ephemArr)
   genEphemPts = zeros(Int32, 1)
   errCode = ccall( (:SpGenEphemsVcmCov_OS,libname) 
     , Int32
     , (Cstring
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Int32})
     , vcmString,startDs50UTC,stopDs50UTC,stepSize,sp_ephem,covType,arrSize,ephemArr,genEphemPts)
   return errCode, ephemArr, Int64(genEphemPts[1])
end

#############################################################################
# Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
function SpPropAllSats(satKeys, numOfSats, ds50UTC, size_ephemArr)
   ephemArr = zeros(Float64, 6, size_ephemArr)
   errCode = ccall( (:SpPropAllSats,libname) 
     , Int32
     , (Ref{Int64}
     , Int32
     , Float64
     , Ref{Float64})
     , satKeys,numOfSats,ds50UTC,ephemArr)
   return errCode, ephemArr
end

#############################################################################
# Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
# 
# All propagation data is returned by this function.
function SpPropAllExt(satKey, timeType, timeIn, spCoord, xf_CovMtx, stmType)
   xa_spExt = zeros(Float64, 128)
   errCode = ccall( (:SpPropAllExt,libname) 
     , Int32
     , (Int64
     , Int32
     , Float64
     , Int32
     , Int32
     , Int32
     , Ref{Float64})
     , satKey,timeType,timeIn,spCoord,xf_CovMtx,stmType,xa_spExt)
   return errCode, xa_spExt
end

#############################################################################

end #of module SpPropDll
# ========================= End of auto generated code ==========================
