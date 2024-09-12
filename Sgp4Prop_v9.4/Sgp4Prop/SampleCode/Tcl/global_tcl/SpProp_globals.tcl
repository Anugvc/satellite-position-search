# This wrapper file was generated automatically by the GenDllWrappers program.

# VCM additional options
# use VCM's own data
set VCMOPT_USEOWN 0
# force VCM to use global solar flux and timing constants data
set VCMOPT_USEGLOBAL 1

# Run Modes
# Perfromance priority. This mode allows the buffer of integration points to extend freely
set IDX_RUNMODE_PERF 0
# Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
set IDX_RUNMODE_MEM 1

#*******************************************************************************

# Partials Saving Modes
# Save partials in the buffer
set IDX_PARTIALS_SAVE 1
# Don't save partials in the buffer
set IDX_PARTIALS_DONT 0

# Indexes of different covariance matrices
# UVW convariance matrix - TEME of DATE
set XF_COVMTX_UVW_DATE 1
# Cartesian covariance matrix - TEME of DATE
set XF_COVMTX_XYZ_DATE 2
# Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
set XF_COVMTX_EQNX_DATE 3
# UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
set XF_COVMTX_UVW_J2K 11
# Cartesian covariance matrix - MEME of J2K
set XF_COVMTX_XYZ_J2K 12
# Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
set XF_COVMTX_EQNX_J2K 13
#*******************************************************************************

# Indexes of Lunar/Solar and Planets perturbation modes
# Lunar/Solar perturbation off
set LSPERT_NONE 0
# Lunar/Solar perturbation on (using Analytic mode)
set LSPERT_ANALYTIC 1
# Lunar/Solar perturbation using JPL ephemeris file
set LSPERT_JPL 2
# Lunar/Solar + All planets perturbation using JPL ephemeris file
set LSPERT_ALL 3
# Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
set LSPERT_BIG 4
# Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
set LSPERT_MED 5
# Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
set LSPERT_SMA 6

#*******************************************************************************

# State Transition Matrix Types
# UVW state transition matrix
set STMTYPE_UVW 1
# Cartesian state transition matrix
set STMTYPE_XYZ 2
# Equinoctial state transition matrix
set STMTYPE_EQNX 3

# Different output coordinate systems options for pos/vel/acc
# Output coordinate systems in TEME of Date
set SPCOORD_ECI 1
# Output coordinate systems in MEME of J2K
set SPCOORD_J2K 2

# Different drag perturbation models
# Jacchia 64 model
set DRGMDL_JAC64 1
# Jacchia 70 model
set DRGMDL_JAC70 2
# Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
set DRGMDL_DCA1 3
# JBH09 model
set DRGMDL_JBH09 40
# JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
set DRGMDL_JBHDCA2 41

# Indexes of SP 4P card fields
# Geopotential model to use
set XF_4P_GEOIDX 1
# Earth gravity pertubations flag
set XF_4P_BULGEFLG 2
# Drag pertubations flag
set XF_4P_DRAGFLG 3
# Radiation pressure pertubations flag
set XF_4P_RADFLG 4
# Lunar/Solar pertubations flag
set XF_4P_LUNSOL 5
# F10 value
set XF_4P_F10 6
# F10 average value
set XF_4P_F10AVG 7
# Ap value
set XF_4P_AP 8
# Geopotential truncation order/degree/zonals
set XF_4P_TRUNC 9
# Corrector step convergence criterion; exponent of 1/10; default = 10
set XF_4P_CONVERG 10
# Outgassing pertubations flag
set XF_4P_OGFLG 11
# Solid earth and ocean tide pertubations flag
set XF_4P_TIDESFLG 12
# Input vector coordinate system
set XF_4P_INCOORD 13
# Nutation terms
set XF_4P_NTERMS 14
# Recompute pertubations at each corrector step
set XF_4P_REEVAL 15
# Variable of intergration control
set XF_4P_INTEGCTRL 16
# Variable step size control
set XF_4P_VARSTEP 17
# Initial step size
set XF_4P_INITSTEP 18

# DCA file name
set XF_4P_DCAFILE 21
# Solar flux file name
set XF_4P_FLUXFILE 22
# Geopotential file name
set XF_4P_GEOFILE 23
# JPL file name
set XF_4P_JPLFILE 24
# JPL start time
set XF_4P_JPLSTART 25
# JPL stop time
set XF_4P_JPLSTOP 26

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
set XF_SPAPP_GEODIR 1
# Buffer size
set XF_SPAPP_BUFSIZE 2
# Run mode
set XF_SPAPP_RUNMODE 3
# Save partials data
set XF_SPAPP_SAVEPART 4
# Specter compatibility mode
set XF_SPAPP_SPECTR 5
# Consider parameter
set XF_SPAPP_CONSIDER 6
# Decay altitude
set XF_SPAPP_DECAYALT 7
# Output coordinate system
set XF_SPAPP_OUTCOORD 8
# VCM additional options
set XF_SPAPP_VCMOPT 9

#*******************************************************************************

# Indexes of data fields of an initialized SP satellite
# Satellite number I5
set XF_SPSAT_SATNUM 1
# Satellite's epoch time in days since 1950, UTC
set XF_SPSAT_DS50UTC 2
# Satellite's epoch time in days since 1950, TAI
set XF_SPSAT_DS50TAI 3
# Mu value
set XF_SPSAT_MU 4
# Covariance Matrix flag
set XF_SPSAT_HASCOV 5
# Integration mode
set XF_SPSAT_INTMODE 6
# Nutation terms
set XF_SPSAT_NTERMS 7
# Specter compatibility mode
set XF_SPSAT_SPECTR 8

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
set SP_TIMETYPE_MSE 0
# propagation time is in days since 1950, UTC
set SP_TIMETYPE_DS50UTC 1


# Sp propagated data
# Propagation time in days since 1950, UTC
set XA_SPOUT_UTC 0
# Propagation time in minutes since the satellite's epoch time
set XA_SPOUT_MSE 1
# Propagation time in days since 1950, UT1
set XA_SPOUT_UT1 2
# Propagation time in days since 1950, TAI
set XA_SPOUT_TAI 3
# Propagation time in days since 1950, ET
set XA_SPOUT_ET 4
# Revolution number
set XA_SPOUT_REVNUM 5
# Number of nutation terms
set XA_SPOUT_NTERMS 6
# Spectr compatible mode (0=not compatible, 1=compatible)
set XA_SPOUT_ISSPECTR 7
# Has input covariance matrix (0=no, 1=yes)
set XA_SPOUT_HASCOVMTX 8

# J2K position X (km)
set XA_SPOUT_J2KPOSX 10
# J2K position Y (km)
set XA_SPOUT_J2KPOSY 11
# J2K position Z (km)
set XA_SPOUT_J2KPOSZ 12
# J2K velocity X (km/s)
set XA_SPOUT_J2KVELX 13
# J2K velocity Y (km/s)
set XA_SPOUT_J2KVELY 14
# J2K velocity Z (km/s)
set XA_SPOUT_J2KVELZ 15
# ECI position X (km)
set XA_SPOUT_ECIPOSX 16
# ECI position Y (km)
set XA_SPOUT_ECIPOSY 17
# ECI position Z (km)
set XA_SPOUT_ECIPOSZ 18
# ECI velocity X (km/s)
set XA_SPOUT_ECIVELX 19
# ECI velocity Y (km/s)
set XA_SPOUT_ECIVELY 20
# ECI velocity Z (km/s)
set XA_SPOUT_ECIVELZ 21
# Geodetic latitude (deg)
set XA_SPOUT_LAT 22
# Geodetic longitude (deg)
set XA_SPOUT_LON 23
# Height above geoid (km)
set XA_SPOUT_HEIGHT 24

# Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
set XA_SPOUT_COVTYPE 30
# 6 by 6 covariance matrix (31-66)
set XA_SPOUT_COVMTX 31

# J2K acceleration X (km/s^2)
set XA_SPOUT_J2KACCX 70
# J2K acceleration Y (km/s^2)
set XA_SPOUT_J2KACCY 71
# J2K acceleration Z (km/s^2)
set XA_SPOUT_J2KACCZ 72
# ECI acceleration X (km/s^2)
set XA_SPOUT_ECIACCX 73
# ECI acceleration Y (km/s^2)
set XA_SPOUT_ECIACCY 74
# ECI acceleration Z (km/s^2)
set XA_SPOUT_ECIACCZ 75

set XA_SPOUT_SIZE 128

# Sp extended propagation data
# Propagation time in days since 1950, UTC
set XA_SPEXT_UTC 0
# Propagation time in minutes since the satellite's epoch time
set XA_SPEXT_MSE 1
# Propagation time in days since 1950, UT1
set XA_SPEXT_UT1 2
# Propagation time in days since 1950, TAI
set XA_SPEXT_TAI 3
# Propagation time in days since 1950, ET
set XA_SPEXT_ET 4
# Revolution number
set XA_SPEXT_REVNUM 5
# Number of nutation terms
set XA_SPEXT_NTERMS 6
# Spectr compatible mode (0=not compatible, 1=compatible)
set XA_SPEXT_ISSPECTR 7
# Has input covariance matrix (0=no, 1=yes)
set XA_SPEXT_HASCOVMTX 8

# Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
set XA_SPEXT_COORD 10
# position X (km)
set XA_SPEXT_POSX 11
# position Y (km)
set XA_SPEXT_POSY 12
# position Z (km)
set XA_SPEXT_POSZ 13
# velocity X (km/s)
set XA_SPEXT_VELX 14
# velocity Y (km/s)
set XA_SPEXT_VELY 15
# velocity Z (km/s)
set XA_SPEXT_VELZ 16
# acceleration X (km/s^2)
set XA_SPEXT_ACCX 17
# acceleration Y (km/s^2)
set XA_SPEXT_ACCY 18
# acceleration Z (km/s^2)
set XA_SPEXT_ACCZ 19

# Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
set XA_SPEXT_COVTYPE 30
# 6 by 6 covariance matrix (31-66/1D format - 36 elements)
set XA_SPEXT_COVMTX 31

# State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
set XA_SPEXT_STMTYPE 70
# 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
set XA_SPEXT_STM 71

set XA_SPEXT_SIZE 128


# Different options for generating ephemerides from SP
# ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
set SP_EPHEM_ECI 1
# MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
set SP_EPHEM_J2K 2


# Different time types returned by the SP propagator
# Time in minutes since the satellite's epoch time
set XA_TIMETYPES_MSE 0
# Time in days since 1950, UTC
set XA_TIMETYPES_UTC 1
# Time in days since 1950, UT1
set XA_TIMETYPES_UT1 2
# Time in days since 1950, TAI
set XA_TIMETYPES_TAI 3
# Time in days since 1950, ET
set XA_TIMETYPES_ET 4

set XA_TIMETYPES_SIZE 5


# ========================= End of auto generated code ==========================
