# This wrapper file was generated automatically by the GenDllWrappers program.
module LamodDll

if Sys.iswindows()
  libname="Lamod"
else
  libname="liblamod"
end

# Export Constant Variables
export XF_SENSAT_STEPMODE
export XF_SENSAT_OPTVISFLAG
export XF_SENSAT_VISPASSONLY
export XF_SENSAT_BEGDS50TAI
export XF_SENSAT_ENDDS50TAI
export XF_SENSAT_INTERVAL
export XF_SENSAT_PERIOD
export LOOK_VALID
export LOOK_HTEST
export LOOK_SENLIMS
export XA_LOOK_DS50UTC
export XA_LOOK_MSE
export XA_LOOK_ELEV
export XA_LOOK_AZIM
export XA_LOOK_RNG
export XA_LOOK_RNGRT
export XA_LOOK_SIZE
export XF_VIEW_UVEC
export XF_VIEW_RUVEC
export XF_VIEW_LVEC
export XF_VIEW_ZVEC
export XF_VIEW_RNGVEC
export XF_VIEW_RRTVEC
export XF_VIEW_SUNVEC
export XF_VIEW_MOONVEC
export XF_VIEW_ANGARR
export XF_VIEW_CVIS
export XF_VIEW_RELVEL
export XF_VIEW_SENEFG
export XF_VIEW_LIMFLGS
export XF_VIEW_AZELRATES
export XF_VIEW_MOONANGLES
export XA_ANGLE_MOONSENSAT
export XA_ANGLE_SUNEARTHSAT
export XA_ANGLE_SUNEARTHSEN
export XA_ANGLE_SUNSENSAT
export XA_ANGLE_SOLARASPECT
export XA_ANGLE_SIZE
export XA_ANGLE_MOONEARTHSAT
export XA_ANGLE_MOONEARTHSEN
export XA_OFFBORE_EL1
export XA_OFFBORE_AZ1
export XA_OFFBORE_EL2
export XA_OFFBORE_AZ2
export XA_OFFBORE_SIZE
export XF_1P_TIMEFRM
export XF_1P_BEGTIME
export XF_1P_ENDTIME
export XF_1P_INTERVAL
export XF_1P_PRTOPT
export XF_1P_GENOBS
export XF_1P_VISFLG
export XF_1P_STEPMODE
export XF_1P_PROCMODE
export XF_1P_DIAGNOST
export XF_1P_MAXSAA
export XA_LIMFLG_AZLIM
export XA_LIMFLG_ELLIM
export XA_LIMFLG_EARTHBK
export XA_LIMFLG_EARTHOB
export XA_LIMFLG_LUNEXCL
export XA_LIMFLG_MAXRANGE
export XA_LIMFLG_MINRANGE
export XA_LIMFLG_PENECLIP
export XA_LIMFLG_RVELLIM
export XA_LIMFLG_SAALIM
export XA_LIMFLG_SOLEXCL
export XA_LIMFLG_UMBECLIP
export XA_LIMFLG_SIZE
export GENOBS_NONE
export GENOBS_B3
export GENOBS_TTY
export GENOBS_SPTASKER
export GENOBS_CSV
export XA_LV_LOOKCODE
export XA_LV_DS50UTC
export XA_LV_MSE
export XA_LV_ELEV
export XA_LV_AZIM
export XA_LV_RNG
export XA_LV_RNGRT
export XA_LV_RA
export XA_LV_DEC
export XA_LV_AZRATE
export XA_LV_ELRATE
export XA_LV_SENPOSX
export XA_LV_SENPOSY
export XA_LV_SENPOSZ
export XA_LV_SENVELX
export XA_LV_SENVELY
export XA_LV_SENVELZ
export XA_LV_SENLAT
export XA_LV_SENLON
export XA_LV_SENHEIGHT
export XA_LV_SATPOSX
export XA_LV_SATPOSY
export XA_LV_SATPOSZ
export XA_LV_SATVELX
export XA_LV_SATVELY
export XA_LV_SATVELZ
export XA_LV_SATLAT
export XA_LV_SATLON
export XA_LV_SATHEIGHT
export XA_LV_UVECX
export XA_LV_UVECY
export XA_LV_UVECZ
export XA_LV_RUVECX
export XA_LV_RUVECY
export XA_LV_RUVECZ
export XA_LV_LVECX
export XA_LV_LVECY
export XA_LV_LVECZ
export XA_LV_ZVECX
export XA_LV_ZVECY
export XA_LV_ZVECZ
export XA_LV_RNGVECX
export XA_LV_RNGVECY
export XA_LV_RNGVECZ
export XA_LV_RRTVECX
export XA_LV_RRTVECY
export XA_LV_RRTVECZ
export XA_LV_USUNX
export XA_LV_USUNY
export XA_LV_USUNZ
export XA_LV_UMOONX
export XA_LV_UMOONY
export XA_LV_UMOONZ
export XA_LV_MOSESA
export XA_LV_MOEASA
export XA_LV_MOEASE
export XA_LV_SUSESA
export XA_LV_SUEASA
export XA_LV_SUEASE
export XA_LV_SOLAA
export XA_LV_VIS
export XA_LV_RELVEL
export XA_LV_OBSANGLE
export XA_LV_ANG2FAN
export XA_LV_AZLIM
export XA_LV_ELLIM
export XA_LV_EARTHBK
export XA_LV_EARTHOB
export XA_LV_LUNEXCL
export XA_LV_MAXRANGE
export XA_LV_MINRANGE
export XA_LV_PENECLIP
export XA_LV_RVELLIM
export XA_LV_SAALIM
export XA_LV_SOLEXCL
export XA_LV_UMBECLIP
export XA_LV_OPTVIS
export XA_LV_SENPOSE
export XA_LV_SENPOSF
export XA_LV_SENPOSG
export XA_LV_NBORE1
export XA_LV_NBORE2
export XA_LV_OBEL1
export XA_LV_OBAZ1
export XA_LV_OBAZ2
export XA_LV_OBEL2
export XA_LV_SIZE
export XA_SENSAT_SENNUM
export XA_SENSAT_SATNUM
export XA_SENSAT_VIEWTYPE
export XA_SENSAT_OBSTYPE
export XA_SENSAT_PTSPERPAS
export XA_SENSAT_STEPMODE
export XA_SENSAT_OPTVISFLAG
export XA_SENSAT_VISPASSONLY
export XA_SENSAT_STARTAI
export XA_SENSAT_STOPTAI
export XA_SENSAT_INTERVAL
export XA_SENSAT_PERIOD
export XA_SENSAT_SENKEY
export XA_SENSAT_SIZE
export XA_LA_PARMS_TIMEFLG
export XA_LA_PARMS_STARTTIME
export XA_LA_PARMS_STOPTIME
export XA_LA_PARMS_STEPMODE
export XA_LA_PARMS_VISFLG
export XA_LA_PARMS_XMSAA
export XA_LA_PARMS_SIZE
export SENLOC_TYPE_ECI
export XA_LOCSEN_LOCTYPE
export XA_LOCSEN_POS1
export XA_LOCSEN_POS2
export XA_LOCSEN_POS3
export XA_LOCSEN_ASTROLAT
export XA_LOCSEN_ASTROLON
export XA_LOCSEN_VEL1
export XA_LOCSEN_VEL2
export XA_LOCSEN_VEL3
export XA_LOCSEN_SIZE
export XA_PVSAT_POSX
export XA_PVSAT_POSY
export XA_PVSAT_POSZ
export XA_PVSAT_VELX
export XA_PVSAT_VELY
export XA_PVSAT_VELZ
export XA_PVSAT_SIZE

# Export Functions
export LamodInit
export LamodGetInfo
export LamodLoadFile
export LamodLoadFileAll
export LamodLoadCard
export LamodSaveFile
export LamodGetNumOfSensSats
export LamodGetSenNums
export LamodGetSatNums
export LamodGet1pCard
export LamodGet1pAll
export LamodSet1pAll
export LamodGet1pField
export LamodSet1pField
export LamodGet3pAll
export LamodSet3pAll
export LamodGetObsFileName
export LamodSetObsFileName
export LamodSenSatVisible
export LamodInitSenSat
export LamodInitSenSat_MT
export LamodGetSenSatDataAll
export LamodGetSenSatDataField
export LamodSenSatDataToArray
export LamodGetNumPasses
export LamodGetRiseCulmSetTimes
export LamodComputeLookAngle
export LamodComputeLookView
export LamodFindExactIOTime
export LamodGetOrbSenViewdata
export LamodGetViewDataField
export LamodCompRaDec
export LamodGenObs
export LamodGenObsAtTime
export LamodRemoveSenSat
export LamodRemoveAllSenSats
export LamodReset
export LamodSenSatDirect_OS

# Indexes of SenSatData fields
# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
const XF_SENSAT_STEPMODE     = 1;

# Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
const XF_SENSAT_OPTVISFLAG   = 2;

# Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
const XF_SENSAT_VISPASSONLY  = 2;

# Begin time in ds50TAI
const XF_SENSAT_BEGDS50TAI   = 3;

# End time in ds50TAI
const XF_SENSAT_ENDDS50TAI   = 4;

# Print interval
const XF_SENSAT_INTERVAL     = 5;

# Satellite's period
const XF_SENSAT_PERIOD       = 6;



#*******************************************************************************
# Indexes of lookCode
# Valid look
const LOOK_VALID   = 0;

# Failed horizon break test
const LOOK_HTEST   = 1;

# Failed limit tests
const LOOK_SENLIMS = 2;


#*******************************************************************************

# Indexes of look angle data output
# Look time in ds50UTC
const XA_LOOK_DS50UTC= 0;

# Look time in minutes since epoch
const XA_LOOK_MSE    = 1;

# Elevation (deg)
const XA_LOOK_ELEV   = 2;

# Azimuth (deg)
const XA_LOOK_AZIM   = 3;

# Range (km) or ? for optical sensor
const XA_LOOK_RNG    = 4;

# Range rate (km/sec) or ? for optical sensor
const XA_LOOK_RNGRT  = 5;

const    XA_LOOK_SIZE   = 6;

#*******************************************************************************

# Indexes of viewing data output
# computed U-vector to object
const XF_VIEW_UVEC      =  1;

# range unit vector
const XF_VIEW_RUVEC     =  2;

# topocentric L unit vector
const XF_VIEW_LVEC      =  3;

# station zenith vector
const XF_VIEW_ZVEC      =  4;

# computed range vector (km)
const XF_VIEW_RNGVEC    =  5;

# computed range-rate vector/relative velocity vector (km/sec)
const XF_VIEW_RRTVEC    =  6;

# unit vector of sun
const XF_VIEW_SUNVEC    =  7;

# unit vector of moon
const XF_VIEW_MOONVEC   =  8;

# angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
const XF_VIEW_ANGARR    =  9;

# illumination result
const XF_VIEW_CVIS      = 10;

# Relative velocity (km/sec)
const XF_VIEW_RELVEL    = 11;

# sensor position EFG
const XF_VIEW_SENEFG    = 12;

# limit check flags
const XF_VIEW_LIMFLGS   = 13;

# azimuth and elevation rates (deg/sec)
const XF_VIEW_AZELRATES = 14;

# moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
const XF_VIEW_MOONANGLES= 15;



#*******************************************************************************

# Indexes of angle array
# moon/sen/sat angle (deg)
const XA_ANGLE_MOONSENSAT  = 0;

# sun/earth/sat angle (deg)
const XA_ANGLE_SUNEARTHSAT = 1;

# sun/earth/sen angle (deg)
const XA_ANGLE_SUNEARTHSEN = 2;

# sun/sen/sat angle (deg) - solar exclusion angle
const XA_ANGLE_SUNSENSAT   = 3;

# earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
const XA_ANGLE_SOLARASPECT = 4;

const    XA_ANGLE_SIZE        = 5;

# Indexes of moon angle array
# DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
# moon/earth/sat angle (deg)
const XA_ANGLE_MOONEARTHSAT = 0;

# moon/earth/sen angle (deg)
const XA_ANGLE_MOONEARTHSEN = 1;



#*******************************************************************************

# Indexes of orbiting sensor's off-boresight/clock  array
# off-boresight angle 1
const XA_OFFBORE_EL1 = 0;

# off-boresight clock 1
const XA_OFFBORE_AZ1 = 1;

# off-boresight angle 2
const XA_OFFBORE_EL2 = 2;

# off-boresight clock 2
const XA_OFFBORE_AZ2 = 3;

const    XA_OFFBORE_SIZE= 4;

#*******************************************************************************

# Indexes of LAMOD 1P-card data
# Input time format: 0=Minutes since epoch, 1=UTC
const XF_1P_TIMEFRM = 1;

# Begin time
const XF_1P_BEGTIME = 2;

# End time
const XF_1P_ENDTIME = 3;

# Ouput interval
const XF_1P_INTERVAL= 4;

# Print options: 0: print look angles, 1: print look angle and initial conditions
const XF_1P_PRTOPT  = 5;

# Generate obs from look angles flag
const XF_1P_GENOBS  = 6;

# Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
const XF_1P_VISFLG  = 7;

# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
const XF_1P_STEPMODE = 8;

# Processing mode: 'O': obsched mode; 'P': P ASCHED mode
const XF_1P_PROCMODE = 9;

# Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
const XF_1P_DIAGNOST = 10;

# Max solar aspect for optical sites
const XF_1P_MAXSAA   = 11;


#*******************************************************************************

# Indexes of limit test flags in the returned array
# az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
const XA_LIMFLG_AZLIM    =  0;

# el limits test flag (0=failed, 1=passed)
const XA_LIMFLG_ELLIM    =  1;

# earth in background flag (0=failed, 1=passed)
const XA_LIMFLG_EARTHBK  =  2;

# earth obstructed flag (0=failed, 1=passed)
const XA_LIMFLG_EARTHOB  =  3;

# lunar exclusion angle flag (0=failed, 1=passed)
const XA_LIMFLG_LUNEXCL  =  4;

# max range test flag (0=failed, 1=passed)
const XA_LIMFLG_MAXRANGE =  5;

# min range test flag (0=failed, 1=passed)
const XA_LIMFLG_MINRANGE =  6;

# penumb eclipse test flag (0=failed, 1=passed)
const XA_LIMFLG_PENECLIP =  7;

# relative velocity test flag (0=failed, 1=passed)
const XA_LIMFLG_RVELLIM  =  8;

# solar aspect angle test flag (0=failed, 1=passed)
const XA_LIMFLG_SAALIM   =  9;

# solar exclusion angle flag (0=failed, 1=passed)
const XA_LIMFLG_SOLEXCL  = 10;

# umbral eclipse test flag (0=failed, 1=passed)
const XA_LIMFLG_UMBECLIP = 11;

const    XA_LIMFLG_SIZE     = 12;


# Generate obs options
# Don't generate obs
const GENOBS_NONE      =  0;

# Generate B3 obs
const GENOBS_B3        =  1;

# Generate TYY obs
const GENOBS_TTY       =  2;

# Generate SP TASKER V obsType
const GENOBS_SPTASKER  =  3;

# Generate CSV obs
const GENOBS_CSV       =  4;



# indexes of look and view data in an array
# look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
const XA_LV_LOOKCODE =   0;

# time in ds50UTC when the look angle is computed
const XA_LV_DS50UTC  =   1;

# time mse when the look angle is computed
const XA_LV_MSE      =   2;

# elevation (deg)
const XA_LV_ELEV     =   3;

# azimuth (deg)
const XA_LV_AZIM     =   4;

# range (km)
const XA_LV_RNG      =   5;

# range rate (km/s)
const XA_LV_RNGRT    =   6;

# right ascension (deg)
const XA_LV_RA       =   7;

# declination (deg)
const XA_LV_DEC      =   8;

# azimuth rate (deg/s)
const XA_LV_AZRATE   =   9;

# elevation rate (deg/s)
const XA_LV_ELRATE   =  10;


# sensor ECI position (X) (km)
const XA_LV_SENPOSX  =  11;

# sensor ECI position (Y) (km)
const XA_LV_SENPOSY  =  12;

# sensor ECI position (Z) (km)
const XA_LV_SENPOSZ  =  13;

# sensor ECI velocity (X) (km/s)
const XA_LV_SENVELX  =  14;

# sensor ECI velocity (Y) (km/s)
const XA_LV_SENVELY  =  15;

# sensor ECI velocity (Z) (km/s)
const XA_LV_SENVELZ  =  16;

# sensor latitude (deg)
const XA_LV_SENLAT   =  17;

# sensor longitude (deg)
const XA_LV_SENLON   =  18;

# sensor height (km)
const XA_LV_SENHEIGHT=  19;


# satellite ECI position (X) (km)
const XA_LV_SATPOSX  =  20;

# satellite ECI position (Y) (km)
const XA_LV_SATPOSY  =  21;

# satellite ECI position (Z) (km)
const XA_LV_SATPOSZ  =  22;

# satellite ECI velocity (X) (km/s)
const XA_LV_SATVELX  =  23;

# satellite ECI velocity (Y) (km/s)
const XA_LV_SATVELY  =  24;

# satellite ECI velocity (Z) (km/s)
const XA_LV_SATVELZ  =  25;

# satellite latitude (deg)
const XA_LV_SATLAT   =  26;

# satellite longitude (deg)
const XA_LV_SATLON   =  27;

# satellite height (km)
const XA_LV_SATHEIGHT=  28;


# computed U-vector to object (X)
const XA_LV_UVECX    =  31;

# computed U-vector to object (Y)
const XA_LV_UVECY    =  32;

# computed U-vector to object (Z)
const XA_LV_UVECZ    =  33;

# slant range unit vector (X)- vector from the sensor to the satellite
const XA_LV_RUVECX   =  34;

# slant range unit vector (Y)- vector from the sensor to the satellite
const XA_LV_RUVECY   =  35;

# slant range unit vector (Z)- vector from the sensor to the satellite
const XA_LV_RUVECZ   =  36;

# station unit vector (X) - vector directed from the center of the earth to the sensor
const XA_LV_LVECX    =  37;

# station unit vector (Y) - vector directed from the center of the earth to the sensor
const XA_LV_LVECY    =  38;

# station unit vector (Z) - vector directed from the center of the earth to the sensor
const XA_LV_LVECZ    =  39;

# station zenith vector (X)
const XA_LV_ZVECX    =  40;

# station zenith vector (Y)
const XA_LV_ZVECY    =  41;

# station zenith vector (Z)
const XA_LV_ZVECZ    =  42;

# slant range vector (X) (km) - vector from the sensor to the satellite
const XA_LV_RNGVECX  =  43;

# slant range vector (Y) (km) - vector from the sensor to the satellite
const XA_LV_RNGVECY  =  44;

# slant range vector (Z) (km) - vector from the sensor to the satellite
const XA_LV_RNGVECZ  =  45;

# range-rate vector - relative velocity vector (X) (km/s)
const XA_LV_RRTVECX  =  46;

# range-rate vector - relative velocity vector (Y) (km/s)
const XA_LV_RRTVECY  =  47;

# range-rate vector - relative velocity vector (Z) (km/s)
const XA_LV_RRTVECZ  =  48;

# unit vector to sun (X)
const XA_LV_USUNX    =  49;

# unit vector to sun (Y)
const XA_LV_USUNY    =  50;

# unit vector to sun (Z)
const XA_LV_USUNZ    =  51;

# unit vector to moon (X)
const XA_LV_UMOONX   =  52;

# unit vector to moon (Y)
const XA_LV_UMOONY   =  53;

# unit vector to moon (Z)
const XA_LV_UMOONZ   =  54;

# moon/sensor/satellite angle (deg)
const XA_LV_MOSESA   =  55;

# moon/earth/satellite angle (deg)
const XA_LV_MOEASA   =  56;

# moon/earth/sensor angle (deg)
const XA_LV_MOEASE   =  57;

# sun/sensor/satellite angle (deg)
const XA_LV_SUSESA   =  58;

# sun/earth/satellite angle (deg)
const XA_LV_SUEASA   =  59;

# sun/earth/sensor angle (deg)
const XA_LV_SUEASE   =  60;

# solar aspect angle (deg)
const XA_LV_SOLAA    =  61;

# illumination result
const XA_LV_VIS      =  62;

# relative velocity (km/s)
const XA_LV_RELVEL   =  63;

# off-boresight angle (deg) - constant azimuth fan only
const XA_LV_OBSANGLE =  64;

# angle to fan (deg) - constant azimuth fan only
const XA_LV_ANG2FAN  =  65;


# pass azimuth check (0=failed, 1=passed)
const XA_LV_AZLIM    =  70;

# pass elevation check (0=failed, 1=passed)
const XA_LV_ELLIM    =  71;

# pass earth in background check (0=failed, 1=passed)
const XA_LV_EARTHBK  =  72;

# pass earth obstruction check (0=failed, 1=passed)
const XA_LV_EARTHOB  =  73;

# pass lunar exclusion check (0=failed, 1=passed)
const XA_LV_LUNEXCL  =  74;

# pass maximum range check (0=failed, 1=passed)
const XA_LV_MAXRANGE =  75;

# pass minimum range check (0=failed, 1=passed)
const XA_LV_MINRANGE =  76;

# pass penum eclipse check (0=failed, 1=passed)
const XA_LV_PENECLIP =  77;

# pass relative velocity check (0=failed, 1=passed)
const XA_LV_RVELLIM  =  78;

# pass solar aspect angle check (0=failed, 1=passed)
const XA_LV_SAALIM   =  79;

# pass solar exclusion angle check (0=failed, 1=passed)
const XA_LV_SOLEXCL  =  80;

# pass umbral eclipse check (0=failed, 1=passed)
const XA_LV_UMBECLIP =  81;

# pass visibility check for optical sensor (0=failed, 1=passed)
const XA_LV_OPTVIS   =  82;


# orbiting sensor EFG position (X) (km)
const XA_LV_SENPOSE  =  90;

# orbiting sensor EFG position (Y) (km)
const XA_LV_SENPOSF  =  91;

# orbiting sensor EFG position (Z) (km)
const XA_LV_SENPOSG  =  92;

# orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
const XA_LV_NBORE1   =  93;

# orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
const XA_LV_NBORE2   =  94;

# orbiting sensor off boresight elevation #1 (deg)
const XA_LV_OBEL1    =  95;

# orbiting sensor off boresight azimuth #1 (deg)
const XA_LV_OBAZ1    =  96;

# orbiting sensor off boresight elevation #2 (deg)
const XA_LV_OBAZ2    =  97;

# orbiting sensor off boresight azimuth #2 (deg)
const XA_LV_OBEL2    =  98;


const    XA_LV_SIZE     = 128;


# indexes of sensor/satellite data in an array
# Sensor number
const XA_SENSAT_SENNUM     =  0;

# Satellite number
const XA_SENSAT_SATNUM     =  1;

# Sensor view type
const XA_SENSAT_VIEWTYPE   =  2;

# Sensor observation type
const XA_SENSAT_OBSTYPE    =  3;

# Max number of points per pass
const XA_SENSAT_PTSPERPAS  =  4;

# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
const XA_SENSAT_STEPMODE   =  5;

# Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
const XA_SENSAT_OPTVISFLAG =  6;

# Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
const XA_SENSAT_VISPASSONLY=  6;

# Start time in ds50TAI
const XA_SENSAT_STARTAI    =  7;

# Stop time in ds50TAI
const XA_SENSAT_STOPTAI    =  8;

# Output interval (min)
const XA_SENSAT_INTERVAL   =  9;

# Satellite's period (min)
const XA_SENSAT_PERIOD     = 10;

# Sensor number
const XA_SENSAT_SENKEY     = 11;


const    XA_SENSAT_SIZE       = 32;        


# LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
# input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
const XA_LA_PARMS_TIMEFLG     =  1;

# begin time
const XA_LA_PARMS_STARTTIME   =  2;

# end time
const XA_LA_PARMS_STOPTIME    =  3;

# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
const XA_LA_PARMS_STEPMODE    =  4;

# optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
const XA_LA_PARMS_VISFLG      =  5;

# max solar aspect angle (deg) for optical sites
const XA_LA_PARMS_XMSAA       =  6;


const    XA_LA_PARMS_SIZE        = 16;

# Different sensor location types
# Sensor location is in ECI - specific to LAMOD
const SENLOC_TYPE_ECI =  4;


# Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
# location type (see SENLOC_TYPE_? for available types)
const XA_LOCSEN_LOCTYPE   =  0;

# sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
const XA_LOCSEN_POS1      =  1;

# sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
const XA_LOCSEN_POS2      =  2;

# sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
const XA_LOCSEN_POS3      =  3;


# for ground sensor
# astronomical latitude (deg) (+: North, -: South)
const XA_LOCSEN_ASTROLAT  =  4;

# astronomical longitude (deg) (+: West, -: East)
const XA_LOCSEN_ASTROLON  =  5;


# for orbiting sensor
# orbiting sensor velocity in ECI/X component (km/s)
const XA_LOCSEN_VEL1      =  4;

# orbiting sensor velocity in ECI/Y component (km/s)
const XA_LOCSEN_VEL2      =  5;

# orbiting sensor velocity in ECI/Z component (km/s)
const XA_LOCSEN_VEL3      =  6;


const    XA_LOCSEN_SIZE      = 16;


# Satellite state data
# satellite ECI position X (km) in TEME of Date
const XA_PVSAT_POSX    =  0;

# satellite ECI position Y (km) in TEME of Date
const XA_PVSAT_POSY    =  1;

# satellite ECI position Z (km) in TEME of Date
const XA_PVSAT_POSZ    =  2;

# satellite ECI velocity X (km/sec) in TEME of Date
const XA_PVSAT_VELX    =  3;

# satellite ECI velocity Y (km/sec) in TEME of Date
const XA_PVSAT_VELY    =  4;

# satellite ECI velocity Z (km/sec) in TEME of Date
const XA_PVSAT_VELZ    =  5;


const    XA_PVSAT_SIZE    = 6;


#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Lamod dll for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
function LamodInit(apAddr)
   errCode = ccall( (:LamodInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
# The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
function LamodGetInfo()
   infoStr = " "^128
   ccall( (:LamodGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
# Returns zero indicating the file has been read successfully. Other values indicate an error.
function LamodLoadFile(lamodInputFile)
   errCode = ccall( (:LamodLoadFile,libname) 
     , Int32
     , (Cstring,)
     , lamodInputFile)
   return errCode
end

#############################################################################
# Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
function LamodLoadFileAll(lamodInputFile)
   errCode = ccall( (:LamodLoadFileAll,libname) 
     , Int32
     , (Cstring,)
     , lamodInputFile)
   return errCode
end

#############################################################################
# Loads a single Lamod-typed card
function LamodLoadCard(card)
   errCode = ccall( (:LamodLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Saves any currently loaded Lamod-related settings to a file
# The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
function LamodSaveFile(lamodFile, saveMode, saveForm)
   errCode = ccall( (:LamodSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , lamodFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Returns number of sensors/satellites entered via 1P/2P cards
# See LamodGetSenNums for example.
function LamodGetNumOfSensSats()
   numSens = zeros(Int32, 1)
   numSats = zeros(Int32, 1)
   ccall( (:LamodGetNumOfSensSats,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32})
     , numSens,numSats)
   return Int64(numSens[1]), Int64(numSats[1])
end

#############################################################################
# Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
function LamodGetSenNums(size_senNums)
   senNums = zeros(Int32, size_senNums)
   ccall( (:LamodGetSenNums,libname) 
     , Nothing
     , (Ref{Int32},)
     , senNums)
   return convert(Array{Int64,1}, senNums)
end

#############################################################################
# Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
# See LamodGetSenNums for example.
function LamodGetSatNums(size_satNums)
   satNums = zeros(Int32, size_satNums)
   ccall( (:LamodGetSatNums,libname) 
     , Nothing
     , (Ref{Int32},)
     , satNums)
   return convert(Array{Int64,1}, satNums)
end

#############################################################################
# Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
function LamodGet1pCard()
   lamod1PCard = " "^512
   ccall( (:LamodGet1pCard,libname) 
     , Nothing
     , (Cstring,)
     , lamod1PCard)
   return lamod1PCard
end

#############################################################################
# Retrieves all Lamod control parameters with a single function call
function LamodGet1pAll()
   timeFlg = zeros(Int32, 1)
   startTime = zeros(Float64, 1)
   stopTime = zeros(Float64, 1)
   interval = zeros(Float64, 1)
   prtOpt = zeros(Int32, 1)
   punchObs = zeros(Int32, 1)
   visFlg = zeros(Int32, 1)
   stepMode = zeros(Int32, 1)
   schedMode = " "
   diagMode = zeros(Int32, 1)
   solAspAngle = zeros(Float64, 1)
   ccall( (:LamodGet1pAll,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Cstring
     , Ref{Int32}
     , Ref{Float64})
     , timeFlg,startTime,stopTime,interval,prtOpt,punchObs,visFlg,stepMode,schedMode,
         diagMode,solAspAngle)
   return Int64(timeFlg[1]), startTime[1], stopTime[1], interval[1], Int64(prtOpt[1]), Int64(punchObs[1]), Int64(visFlg[1]), Int64(stepMode[1]), schedMode, 
         Int64(diagMode[1]), solAspAngle[1]
end

#############################################################################
# Sets all Lamod control parameters with a single function call
# The values of visFlg have been changed to match those of sensor limits. VisFlg = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be visFlg = 0).
# 
# There are cases when the program switches to step mode even though the users have requested culmination mode:
# 
# When the sensor is an orbiting sensor
# When the target satellite orbit has large period (> 960 minutes)
# When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)
# When a pass has multiple maximum elevations (culmination time == -1.0)
# 
function LamodSet1pAll(timeFlg, startTime, stopTime, interval, prtOpt, punchObs, visFlg, stepMode, schedMode, diagMode, solAspAngle)
   ccall( (:LamodSet1pAll,libname) 
     , Nothing
     , (Int32
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Int32
     , Cchar
     , Int32
     , Float64)
     , timeFlg,startTime,stopTime,interval,prtOpt,punchObs,visFlg,stepMode,schedMode[1],
         diagMode,solAspAngle)
end

#############################################################################
# Retrieves the value of a specified Lamod control parameter (1P-card field) 
# 
# Remember to convert valueStr to the correct data type that it represents.
# 
# The table below shows the values for the xf_1P parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 1   Input time format : 0: Minutes since epoch, 1: UTC
# 2   Begin time
# 3   End time
# 4   Ouput interval
# 5   Print options: 0: print look angles, 1: print look angle and initial conditions
# 6   Generate obs from look angles flag
# 7   Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
# 2: output pass only if solar aspect angle 
# 8   Step mode flag: 0: use culmination mode; 1: use step mode
# 9   Processing mode: 'O': obsched mode; 'P':P ASCHED mode
# 10  Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
# 3: both 1 and 2
# 11  Max solar aspect for optical sites   
# 	
function LamodGet1pField(xf_1P)
   retVal = " "^512
   ccall( (:LamodGet1pField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_1P,retVal)
   return retVal
end

#############################################################################
# Sets the value of a specified Lamod control parameter (1P-card field)
# See LamodGet1pField for description of the xf_1P parameter values.
function LamodSet1pField(xf_1P, valueStr)
   ccall( (:LamodSet1pField,libname) 
     , Nothing
     , (Int32
     , Cstring)
     , xf_1P,valueStr)
end

#############################################################################
# Retrieves the concurrent viewing options read from the input 3P Parameter card
# The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
function LamodGet3pAll()
   concurrFlg = zeros(Int32, 1)
   concurrSens = zeros(Int32, 3)
   ccall( (:LamodGet3pAll,libname) 
     , Nothing
     , (Ref{Int32}
     , Ref{Int32})
     , concurrFlg,concurrSens)
   return Int64(concurrFlg[1]), convert(Array{Int64,1}, concurrSens)
end

#############################################################################
# Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
# The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
function LamodSet3pAll(concurrFlg, concurrSens)
   if typeof(concurrSens) == Array{Int64,1}; concurrSens=convert(Array{Int32,1},concurrSens); end
   ccall( (:LamodSet3pAll,libname) 
     , Nothing
     , (Int32
     , Ref{Int32})
     , concurrFlg,concurrSens)
end

#############################################################################
# Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
# The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
function LamodGetObsFileName()
   obsFile = " "^512
   ccall( (:LamodGetObsFileName,libname) 
     , Nothing
     , (Cstring,)
     , obsFile)
   return obsFile
end

#############################################################################
# Sets the full file name of the output obs file which will be used to store the generated obs data
# Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
# 
# The users need to make sure they have also turned on the flag to generate obs from look angles.
function LamodSetObsFileName(obsFile)
   ccall( (:LamodSetObsFileName,libname) 
     , Nothing
     , (Cstring,)
     , obsFile)
end

#############################################################################
# Checks to see whether the input satellite will ever be viewable to the input sensor
# This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
# 
# If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodSenSatVisible(senKey, satKey)
   senSatVisible = ccall( (:LamodSenSatVisible,libname) 
     , Int32
     , (Int64
     , Int64)
     , senKey,satKey)
   return senSatVisible
end

#############################################################################
# Initializes a sensor/satellite pair in preparation for computing look angles
# It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
# 
# The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
# 
# Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodInitSenSat(senKey, satKey)
   senSatKey = ccall( (:LamodInitSenSat,libname) 
     , Int64
     , (Int64
     , Int64)
     , senKey,satKey)
   return senSatKey
end

#############################################################################
# Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
# This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
# It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
# 
# The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
# 
# Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
function LamodInitSenSat_MT(xa_la_parms, senKey, satKey)
   senSatKey = ccall( (:LamodInitSenSat_MT,libname) 
     , Int64
     , (Ref{Float64}
     , Int64
     , Int64)
     , xa_la_parms,senKey,satKey)
   return senSatKey
end

#############################################################################
# Retrieves all of the data for an initialized sensor/satellite pair with a single function call
function LamodGetSenSatDataAll(senSatKey)
   stepMode = zeros(Int32, 1)
   optVisFlg = zeros(Int32, 1)
   startDs50TAI = zeros(Float64, 1)
   stopDs50TAI = zeros(Float64, 1)
   interval = zeros(Float64, 1)
   period = zeros(Float64, 1)
   errCode = ccall( (:LamodGetSenSatDataAll,libname) 
     , Int32
     , (Int64
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , senSatKey,stepMode,optVisFlg,startDs50TAI,stopDs50TAI,interval,period)
   return errCode, Int64(stepMode[1]), Int64(optVisFlg[1]), startDs50TAI[1], stopDs50TAI[1], interval[1], period[1]
end

#############################################################################
# Retrieves an individual field of data for an initialized sensor/satellite pair
# 
# Remember to convert valueStr to the correct data type that it represents.
# 
# The table below shows the values for the xf_SenSat parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
#  1  Step mode
#  2  Optical visibility flag
#  3  Begin time in ds50TAI
#  4  End time in ds50TAI
#  5  Print interval 
#  6  Satellite's period
# 
function LamodGetSenSatDataField(senSatKey, xf_SenSat)
   retVal = " "^512
   errCode = ccall( (:LamodGetSenSatDataField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senSatKey,xf_SenSat,retVal)
   return errCode, retVal
end

#############################################################################
# Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
function LamodSenSatDataToArray(senSatKey)
   xa_senSat = zeros(Float64, 32)
   errCode = ccall( (:LamodSenSatDataToArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , senSatKey,xa_senSat)
   return errCode, xa_senSat
end

#############################################################################
# Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
# the horizontal limit test. This function only applies when the culmination mode was selected
# This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
function LamodGetNumPasses(senSatKey)
   numPasses = ccall( (:LamodGetNumPasses,libname) 
     , Int32
     , (Int64,)
     , senSatKey)
   return numPasses
end

#############################################################################
# Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
# See LamodGetNumPasses for example.
# If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
# There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
# For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
# Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
function LamodGetRiseCulmSetTimes(senSatKey, size_rcsTimeArr)
   rcsTimeArr = zeros(Float64, 3, size_rcsTimeArr)
   errCode = ccall( (:LamodGetRiseCulmSetTimes,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , senSatKey,rcsTimeArr)
   return errCode, rcsTimeArr
end

#############################################################################
# Computes a single look angle of the sensor/satellite pair at the specified time
function LamodComputeLookAngle(senSatKey, currDs50TAI)
   lookCode = zeros(Int32, 1)
   xa_look = zeros(Float64, 6)
   senElts = zeros(Float64, 9)
   satElts = zeros(Float64, 9)
   errCode = ccall( (:LamodComputeLookAngle,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , senSatKey,currDs50TAI,lookCode,xa_look,senElts,satElts)
   return errCode, Int64(lookCode[1]), xa_look, senElts, satElts
end

#############################################################################
# Computes at once look and view data of the sensor/satellite pair at the specified time
# 
# Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
function LamodComputeLookView(senSatKey, currDs50TAI)
   xa_lv = zeros(Float64, 128)
   errCode = ccall( (:LamodComputeLookView,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , senSatKey,currDs50TAI,xa_lv)
   return errCode, xa_lv
end

#############################################################################
# Finds exact time when satellite is IN or OUT of sensor's coverage
# 
# Note: The start and end times must have different look values (valid and invalid looks or vice versa)
function LamodFindExactIOTime(senSatKey, t1Ds50TAI, t2Ds50TAI)
   ioDs50TAI = ccall( (:LamodFindExactIOTime,libname) 
     , Float64
     , (Int64
     , Float64
     , Float64)
     , senSatKey,t1Ds50TAI,t2Ds50TAI)
   return ioDs50TAI
end

#############################################################################
# Returns viewing and geometric data for orbiting sensors
# 
# Note: This function is not thread safe, please use LamodComputeLookView() instead   
function LamodGetOrbSenViewdata(senSatKey)
   uvSun = zeros(Float64, 3)
   uvMoon = zeros(Float64, 3)
   xa_angle = zeros(Float64, 5)
   nBore1 = zeros(Int32, 1)
   nBore2 = zeros(Int32, 1)
   xa_offBore = zeros(Float64, 4)
   errCode = ccall( (:LamodGetOrbSenViewdata,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , senSatKey,uvSun,uvMoon,xa_angle,nBore1,nBore2,xa_offBore)
   return errCode, uvSun, uvMoon, xa_angle, Int64(nBore1[1]), Int64(nBore2[1]), xa_offBore
end

#############################################################################
# Retrieves a single field of look angle viewing data
# 
# See LamodCompRaDec for an example.
# 
# Note: This function is not thread safe, please use LamodComputeLookView() instead    
# 
# When the users pass the retArray to this function, make sure it has the proper size as shown in the retArray size column.
# 
# The retArray Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
# 
# The table below shows the values for the xf_View parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
#  1  computed U-vector to object
#  2  range unit vector
#  3  topocentric L unit vector
#  4  station zenith vector
#  5  computed range vector (km)
#  6  computed range-rate vector/relative velocity vector (er/kem)
#  7  vector to sun  (km)
#  8  vector to moon (km)
#  9  angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
# angle)
# 10  illumination result
# 11  Relative velocity (km/sec)
# 12  sensor position EFG
# 13  limit check flags
# 14  azimuth and elevation rates (deg/sec)
# 15  moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
# 	
# 
# The table below shows the values for the limit check flags (xf_View = 13):
# 
# table
# 
# Index
# Index Interpretation
# 
#   0 az limits test flag
#   1 el limits test flag
#   2 earth in background flag
#   3 earth obstructed flag
#   4 lunar exclusion angle fl
#   5 max range test flag
#   6 min range test flag
#   7 penumb eclipse test flag
#   8 relative velocity test fl
#   9 solar aspect angle test
#  10 solar exclusion angle fl
#  11 umbral eclipse test flag
# 	
function LamodGetViewDataField(senSatKey, xf_View, size_retVal)
   retVal = zeros(Float64, size_retVal)
   errCode = ccall( (:LamodGetViewDataField,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , senSatKey,xf_View,retVal)
   return errCode, retVal
end

#############################################################################
# Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
# The users need to be careful when -1 < decDeg < 0 because they might easily display it incorrectly (missing the negative sign of its value).
function LamodCompRaDec(xlPos)
   rasc = zeros(Float64, 1)
   decl = zeros(Float64, 1)
   raHr = zeros(Int32, 1)
   raMin = zeros(Int32, 1)
   raSec = zeros(Float64, 1)
   decDeg = zeros(Int32, 1)
   decMin = zeros(Int32, 1)
   decSec = zeros(Float64, 1)
   ccall( (:LamodCompRaDec,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , xlPos,rasc,decl,raHr,raMin,raSec,decDeg,decMin,decSec)
   return rasc[1], decl[1], Int64(raHr[1]), Int64(raMin[1]), raSec[1], Int64(decDeg[1]), Int64(decMin[1]), decSec[1]
end

#############################################################################
# Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
# Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
# The function returns one-line or two-line formatted obs string depending on the input punchObs and the sensor's observation type.  The users need to check the returned value of numLines to see what type of the output strings they are.
function LamodGenObs(senSatKey, punchObs, obsClass)
   obsLine1 = " "^512
   obsLine2 = " "^512
   numLines = zeros(Int32, 1)
   errCode = ccall( (:LamodGenObs,libname) 
     , Int32
     , (Int64
     , Int32
     , Cchar
     , Cstring
     , Cstring
     , Ref{Int32})
     , senSatKey,punchObs,obsClass[1],obsLine1,obsLine2,numLines)
   return errCode, obsLine1, obsLine2, Int64(numLines[1])
end

#############################################################################
# Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
# Note: This is a thread-safe version of the LamodGenObs
function LamodGenObsAtTime(senSatKey, currDs50TAI, punchObs, obsClass)
   obsLine1 = " "^512
   obsLine2 = " "^512
   numLines = zeros(Int32, 1)
   errCode = ccall( (:LamodGenObsAtTime,libname) 
     , Int32
     , (Int64
     , Float64
     , Int32
     , Cchar
     , Cstring
     , Cstring
     , Ref{Int32})
     , senSatKey,currDs50TAI,punchObs,obsClass[1],obsLine1,obsLine2,numLines)
   return errCode, obsLine1, obsLine2, Int64(numLines[1])
end

#############################################################################
# Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
function LamodRemoveSenSat(senSatKey)
   errCode = ccall( (:LamodRemoveSenSat,libname) 
     , Int32
     , (Int64,)
     , senSatKey)
   return errCode
end

#############################################################################
# Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
function LamodRemoveAllSenSats()
   errCode = ccall( (:LamodRemoveAllSenSats,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Resets all Lamod-related parameters back to their default values
# See LamodRemoveAllSenSats for example.
function LamodReset()
   ccall( (:LamodReset,libname) 
     , Nothing
     , ())
end

#############################################################################
# Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
# 
# Note: This function doesn't check for sensor limits so all limit flags are returned as passed
# 
function LamodSenSatDirect_OS(ds50TAI, xa_locSen, xa_pvSat)
   xa_lv = zeros(Float64, 128)
   ccall( (:LamodSenSatDirect_OS,libname) 
     , Nothing
     , (Float64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , ds50TAI,xa_locSen,xa_pvSat,xa_lv)
   return xa_lv
end

#############################################################################

end #of module LamodDll
# ========================= End of auto generated code ==========================
