# This wrapper file was generated automatically by the GenDllWrappers program.
module SensorDll

if Sys.iswindows()
  libname="Sensor"
else
  libname="libsensor"
end

# Export Constant Variables
export SEG_BCONE
export SEG_DOME
export XA_SEG_DOME_AZFR
export XA_SEG_DOME_AZTO
export XA_SEG_DOME_ELFR
export XA_SEG_DOME_ELTO
export XA_SEG_DOME_MINRNG
export XA_SEG_DOME_MAXRNG
export XA_SEG_DOME_SIZE
export XA_SEG_BCONE_BSAZ
export XA_SEG_BCONE_BSEL
export XA_SEG_BCONE_ANGFR
export XA_SEG_BCONE_ANGTO
export XA_SEG_BCONE_MINRNG
export XA_SEG_BCONE_MAXRNG
export XA_SEG_BCONE_MINEL
export XA_SEG_BCONE_SIZE
export SEN_KEYMODE_NODUP
export SEN_KEYMODE_DMA
export BADSENKEY
export DUPSENKEY
export VT_BCT
export VT_CON
export VT_OPT
export VT_FAN
export VT_ORB
export VT_FOR
export VT_FOV
export SENLOC_TYPE_ECR
export SENLOC_TYPE_EFG
export SENLOC_TYPE_LLH
export XA_SEN_GEN_SENNUM
export XA_SEN_GEN_MINRNG
export XA_SEN_GEN_MAXRNG
export XA_SEN_GEN_RRLIM
export XA_SEN_GEN_RNGLIMFLG
export XA_SEN_GEN_SMSEN
export XA_SEN_GRN_LOCTYPE
export XA_SEN_GRN_POS1
export XA_SEN_GRN_POS2
export XA_SEN_GRN_POS3
export XA_SEN_GRN_ASTROLAT
export XA_SEN_GRN_ASTROLON
export XA_SEN_BCT_BRSGHTAZ
export XA_SEN_BCT_BRSGHTEL
export XA_SEN_BCT_HALFANG
export XA_SEN_BCT_MINEL
export XA_SEN_CON_ELFR1
export XA_SEN_CON_ELTO1
export XA_SEN_CON_AZFR1
export XA_SEN_CON_AZTO1
export XA_SEN_CON_ELFR2
export XA_SEN_CON_ELTO2
export XA_SEN_CON_AZFR2
export XA_SEN_CON_AZTO2
export XA_SEN_OPT_ELFR1
export XA_SEN_OPT_ELTO1
export XA_SEN_OPT_AZFR1
export XA_SEN_OPT_AZTO1
export XA_SEN_OPT_ELFR2
export XA_SEN_OPT_ELTO2
export XA_SEN_OPT_AZFR2
export XA_SEN_OPT_AZTO2
export XA_SEN_OPT_SEA
export XA_SEN_OPT_TWILGHT
export XA_SEN_OPT_VISCHK
export XA_SEN_FAN_AZ
export XA_SEN_FAN_TILTANGLE
export XA_SEN_FAN_OBSANGLE
export XA_SEN_ORB_SATNUM
export XA_SEN_ORB_ELMIN1
export XA_SEN_ORB_ELMAX1
export XA_SEN_ORB_AZMIN1
export XA_SEN_ORB_AZMAX1
export XA_SEN_ORB_ELMIN2
export XA_SEN_ORB_ELMAX2
export XA_SEN_ORB_AZMIN2
export XA_SEN_ORB_AZMAX2
export XA_SEN_ORB_EARTHLIMB
export XA_SEN_ORB_SEA
export XA_SEN_ORB_LEA
export XA_SEN_ORB_MINILLUM
export XA_SEN_ORB_EARTHBRND
export XA_SEN_ORB_PLNTRYRES
export XA_SEN_FOV_BEAMWIDTH
export XA_SEN_FOV_TILTANGLE
export XA_SEN_GEN_UNIT
export XA_SEN_GEN_INTERVAL
export XA_SEN_GEN_PTSPERPAS
export XA_SEN_GEN_AZSIGMA
export XA_SEN_GEN_ELSIGMA
export XA_SEN_GEN_RGSIGMA
export XA_SEN_GEN_RRSIGMA
export XA_SEN_GEN_ARSIGMA
export XA_SEN_GEN_ERSIGMA
export XA_SEN_GEN_AZBIAS
export XA_SEN_GEN_ELBIAS
export XA_SEN_GEN_RGBIAS
export XA_SEN_GEN_RRBIAS
export XA_SEN_GEN_TIMEBIAS
export XA_SEN_SIZE
export XS_SEN_SECCLASS_0_1
export XS_SEN_VIEWTYPE_1_1
export XS_SEN_OBSTYPE_2_1
export XS_SEN_DSCRPTN_3_24
export XS_SEN_ORB_BSVEC1_27_1
export XS_SEN_ORB_BSVEC2_28_1
export XS_SEN_FOR_AZFILE_255_256
export XS_SEN_LENGTH
export XF_SENLOC_NUM
export XF_SENLOC_LAT
export XF_SENLOC_LON
export XF_SENLOC_POSX
export XF_SENLOC_POSY
export XF_SENLOC_POSZ
export XF_SENLOC_DESC
export XF_SENLOC_ORBSATNUM
export XF_SENLOC_SECCLASS
export XF_SENLIM_VIEWTYPE
export XF_SENLIM_OBSTYPE
export XF_SENLIM_UNIT
export XF_SENLIM_MAXRNG
export XF_SENLIM_MINRNG
export XF_SENLIM_INTERVAL
export XF_SENLIM_OPTVISFLG
export XF_SENLIM_RNGLIMFLG
export XF_SENLIM_PTSPERPAS
export XF_SENLIM_RRLIM
export XF_SENLIM_ELLIM1
export XF_SENLIM_ELLIM2
export XF_SENLIM_ELLIM3
export XF_SENLIM_ELLIM4
export XF_SENLIM_AZLIM1
export XF_SENLIM_AZLIM2
export XF_SENLIM_AZLIM3
export XF_SENLIM_AZLIM4
export XF_SENLIM_PLNTRYRES
export XF_SENLIM_BOREVEC1
export XF_SENLIM_BOREVEC2
export XF_SENLIM_KEARTH
export XF_SENLIM_ELIMB
export XF_SENLIM_SOLEXCANG
export XF_SENLIM_LUNEXCANG
export XF_SENLIM_MINIL
export XF_SENLIM_TWILIT
export XF_SENLIM_SMSEN
export XF_SENLIM_NUMSEGS
export XF_SENLIM_FILE
export XF_SENLIM_AZELROWS
export XA_SENLOC_NUM
export XA_SENLOC_LAT
export XA_SENLOC_LON
export XA_SENLOC_POSX
export XA_SENLOC_POSY
export XA_SENLOC_POSZ
export XA_SENLOC_SIZE
export XAF_SENBS_AZSIGMA
export XAF_SENBS_ELSIGMA
export XAF_SENBS_RGSIGMA
export XAF_SENBS_RRSIGMA
export XAF_SENBS_ARSIGMA
export XAF_SENBS_ERSIGMA
export XAF_SENBS_AZBIAS
export XAF_SENBS_ELBIAS
export XAF_SENBS_RGBIAS
export XAF_SENBS_RRBIAS
export XAF_SENBS_TIMEBIAS
export XAF_SENBS_SIZE
export OT_RRATE
export OT_AZEL
export OT_AZEL_RNG
export OT_AZEL_RNGRRATE
export OT_AZEL_ALL
export OT_RADEC
export OT_RNGONLY
export OT_AZEL_SENPOS
export OT_RADEC_SENPOS
export OT_VEL
export OT_POS
export OT_SLR
export OT_M
export OT_O
export OT_RF
export OT_RRATE_SELOB

# Export Functions
export SensorInit
export SensorGetInfo
export SensorLoadFile
export SensorLoadCard
export SensorSaveFile
export SensorRemove
export SensorRemoveAll
export SensorGetCount
export SensorGetLoaded
export SensorGetLocAll
export SensorSetLocAll
export SensorGetLocField
export SensorSetLocField
export SensorGet1L
export SensorSet1L
export SensorGet2L
export SensorSet2L
export SensorGetLimField
export SensorSetLimField
export SensorGetBS
export SensorSetBS
export SensorGetBSField
export SensorSetBSField
export SensorGetLines
export SensorGetOrbSatKey
export SensorSetOrbSatKey
export SensorLoadAzElTable
export SensorAddSegment
export SensorGetSegment
export SetSenKeyMode
export GetSenKeyMode
export SenNumOf
export SensorGetSenKey
export SensorGetSenKeyML
export SensorAddFrArray
export SensorDataToArray

# Sensor segment types
# bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
const SEG_BCONE = 1;

# dome-typed limit: Min/Max Az/El/Range
const SEG_DOME  = 2;




# Indexes of dome segment parameters
# start azimuth (deg)
const XA_SEG_DOME_AZFR   =  0;

# end azimuth (deg)
const XA_SEG_DOME_AZTO   =  1;

# lower-bound elevation (deg)
const XA_SEG_DOME_ELFR   =  2;

# higher-bound elevation (deg)
const XA_SEG_DOME_ELTO   =  3;

# minimum range (km)
const XA_SEG_DOME_MINRNG =  4;

# maximum range (km)
const XA_SEG_DOME_MAXRNG =  5;


const    XA_SEG_DOME_SIZE   = 16;


# Indexes of bounded-cone segment parameters
# boresight azimuth (deg)
const XA_SEG_BCONE_BSAZ   =  0;

# boresight elevation (deg)
const XA_SEG_BCONE_BSEL   =  1;

# offboresight lower angle (deg)
const XA_SEG_BCONE_ANGFR  =  2;

# offboresight higher angle (deg)
const XA_SEG_BCONE_ANGTO  =  3;

# minimum range (km)
const XA_SEG_BCONE_MINRNG =  4;

# maximum range (km)
const XA_SEG_BCONE_MAXRNG =  5;

# minimum cut-off elevation (deg)
const XA_SEG_BCONE_MINEL  =  6;


const    XA_SEG_BCONE_SIZE   = 16;


# Different key mode options for senKey
# Default - duplicate sensor can not be loaded in binary tree
const SEN_KEYMODE_NODUP  = 0;

# Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
const SEN_KEYMODE_DMA    = 1;


# sensor key possible errors
# Bad sensor key
const BADSENKEY = -1;

# Duplicate sensor key
const DUPSENKEY =  0;


# Different sensor types
# bounded-cone tracker
const VT_BCT =   2;

# conventional tracker
const VT_CON =   3;

# optical tracker
const VT_OPT =   4;

# constant azimuth fan sweeping vertical plane
const VT_FAN =   7;

# orbiting sensor (same as 'M' or 'O')
const VT_ORB =   9;

# space fence's field of regard FOR ('R' = 86)
const VT_FOR  = 82;

# space fence's surveillance fan FOV ('V' = 82)
const VT_FOV  = 86;


# Different sensor location types
# Sensor location is in ECR
const SENLOC_TYPE_ECR =  1;

# Sensor location is in EFG
const SENLOC_TYPE_EFG =  2;

# Sensor location is in LLH
const SENLOC_TYPE_LLH =  3;



# Sensor Data -
#*******************************************************************************
# generic data for all sensor types
#*******************************************************************************
# sensor number
const XA_SEN_GEN_SENNUM    =  0;

# sensor minimum range (km) (=0 no minimum range check)
const XA_SEN_GEN_MINRNG    =  3;

# sensor maxinmum range (km) (=0 no maximum range check)
const XA_SEN_GEN_MAXRNG    =  4;

# range rate/relative velocity limit (km/sec) (=0 no range rate check)
const XA_SEN_GEN_RRLIM     =  5;

# min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
const XA_SEN_GEN_RNGLIMFLG =  6;

# is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
const XA_SEN_GEN_SMSEN     =  7;



#*******************************************************************************

# sensor location - for all ground-based sensor types (non-orbiting)
# location type (see SENLOC_TYPE_? for available types)
const XA_SEN_GRN_LOCTYPE   = 10;

# sensor location ECR/EFG X component (km) or LLH/Lat (deg)
const XA_SEN_GRN_POS1      = 11;

# sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
const XA_SEN_GRN_POS2      = 12;

# sensor location ECR/EFG Z component (km) or LLH/Height (km)
const XA_SEN_GRN_POS3      = 13;

# astronomical latitude (deg) (+: North, -: South)
const XA_SEN_GRN_ASTROLAT  = 14;

# astronomical longitude (deg) (+: West, -: East)
const XA_SEN_GRN_ASTROLON  = 15;



#*******************************************************************************
# sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
#*******************************************************************************
# Bounded cone tracker (conical sensor) (VT_BCT)
# conical sensor boresight azimuth angle (deg)
const XA_SEN_BCT_BRSGHTAZ  = 20;

# conical sensor boresight elevation angle (deg)
const XA_SEN_BCT_BRSGHTEL  = 21;

# coninal sensor off-boresight angle/half cone angle (deg)
const XA_SEN_BCT_HALFANG   = 22;

# conical sensor minimum elevation angle (deg)
const XA_SEN_BCT_MINEL     = 23;


#*******************************************************************************
# Conventinoal tracker (VT_CON)
# low elevation limit #1 (deg)
const XA_SEN_CON_ELFR1     = 20;

# hight elevation limit #1 (deg)
const XA_SEN_CON_ELTO1     = 21;

# low azimuth limit #1 (deg)
const XA_SEN_CON_AZFR1     = 22;

# hight azimuth limit #1 (deg)
const XA_SEN_CON_AZTO1     = 23;

# low elevation limit #2 (deg)
const XA_SEN_CON_ELFR2     = 24;

# hight elevation limit #2 (deg)
const XA_SEN_CON_ELTO2     = 25;

# low azimuth limit #2 (deg)
const XA_SEN_CON_AZFR2     = 26;

# hight azimuth limit #2 (deg)
const XA_SEN_CON_AZTO2     = 27;


#*******************************************************************************
# Optical tracker (VT_OPT)
# low elevation limit #1 (deg)
const XA_SEN_OPT_ELFR1     = 20;

# hight elevation limit #1 (deg)
const XA_SEN_OPT_ELTO1     = 21;

# low azimuth limit #1 (deg)
const XA_SEN_OPT_AZFR1     = 22;

# hight azimuth limit #1 (deg)
const XA_SEN_OPT_AZTO1     = 23;

# low elevation limit #2 (deg)
const XA_SEN_OPT_ELFR2     = 24;

# hight elevation limit #2 (deg)
const XA_SEN_OPT_ELTO2     = 25;

# low azimuth limit #2 (deg)
const XA_SEN_OPT_AZFR2     = 26;

# hight azimuth limit #2 (deg)
const XA_SEN_OPT_AZTO2     = 27;


# optical sensor solar exclusion angle (to check for solar aspect angle limit)
const XA_SEN_OPT_SEA       = 40;

# ground site twilight offset angle
const XA_SEN_OPT_TWILGHT   = 41;

# visual pass check (sensor in dark, satellite illuminated)
const XA_SEN_OPT_VISCHK    = 42;


#*******************************************************************************
# Constant azimuth fan (VT_FAN)
# fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
const XA_SEN_FAN_AZ        = 20;

# fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
const XA_SEN_FAN_TILTANGLE = 21;

# fan's off-boresight angle (deg) [0, 90]
const XA_SEN_FAN_OBSANGLE  = 23;



#*******************************************************************************
# Orbiting sensor (VT_ORB)
# orbiting sensor's satellite number
const XA_SEN_ORB_SATNUM    = 10;


# orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
const XA_SEN_ORB_ELMIN1    = 20;

# orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
const XA_SEN_ORB_ELMAX1    = 21;

# orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
const XA_SEN_ORB_AZMIN1    = 22;

# orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
const XA_SEN_ORB_AZMAX1    = 23;

# orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
const XA_SEN_ORB_ELMIN2    = 24;

# orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
const XA_SEN_ORB_ELMAX2    = 25;

# orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
const XA_SEN_ORB_AZMIN2    = 26;

# orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
const XA_SEN_ORB_AZMAX2    = 27;


# orbiting sensor earth limb exclusion distance (km)
const XA_SEN_ORB_EARTHLIMB = 40;

# orbiting sensor solar exclusion angle (deg)
const XA_SEN_ORB_SEA       = 41;

# orbiting sensor lunar exclusion angle (deg)
const XA_SEN_ORB_LEA       = 42;

# orbiting sensor minimum illumination angle (deg)
const XA_SEN_ORB_MINILLUM  = 43;

# orbiting sensor allow earth in the back ground
const XA_SEN_ORB_EARTHBRND = 44;

# orbiting sensor planetary restriction
const XA_SEN_ORB_PLNTRYRES = 45;


#*******************************************************************************

# Space fence Field Of Regard (VT_FOR)
# Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)


#*******************************************************************************

# Space fence Field Of View (VT_FOV)
# north/south beam width (deg)
const XA_SEN_FOV_BEAMWIDTH = 20;

# fence tilt angle (deg)
const XA_SEN_FOV_TILTANGLE = 21;



#*******************************************************************************

# Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
# unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
const XA_SEN_GEN_UNIT      = 90;

# output interval (min)
const XA_SEN_GEN_INTERVAL  = 91;

# max number of points per pass
const XA_SEN_GEN_PTSPERPAS = 92;



# sensor sigmas/biases - ROTAS/BATCHDC
# azimuth sigma (deg)
const XA_SEN_GEN_AZSIGMA =  110;

# elevation sigma (deg)
const XA_SEN_GEN_ELSIGMA =  111;

# range sigma (km)
const XA_SEN_GEN_RGSIGMA =  112;

# range-rate sigma (km/sec)
const XA_SEN_GEN_RRSIGMA =  113;

# az rate sigma (deg/sec)
const XA_SEN_GEN_ARSIGMA =  114;

# el rate sigma (deg/sec)
const XA_SEN_GEN_ERSIGMA =  115;

# azimuth bias (deg)
const XA_SEN_GEN_AZBIAS  =  116;

# elevation bias (deg)
const XA_SEN_GEN_ELBIAS  =  117;

# range bias (km)
const XA_SEN_GEN_RGBIAS  =  118;

# range-rate bias (km/sec)
const XA_SEN_GEN_RRBIAS  =  119;

# time bias (sec)
const XA_SEN_GEN_TIMEBIAS=  120;



const    XA_SEN_SIZE          = 128; 

# Indexes of SENSOR text data in an array of chars
# The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
# sensor security classification (1-character length)
const XS_SEN_SECCLASS_0_1      =   0;

# sensor viewing type (1-character length)
const XS_SEN_VIEWTYPE_1_1      =   1;

# sensor observation type (1-character length)
const XS_SEN_OBSTYPE_2_1       =   2;

# sensor description/narrative/notes (24-character length)
const XS_SEN_DSCRPTN_3_24      =   3;

# orbiting sensor's boresight vector #1 (1-character length)
const XS_SEN_ORB_BSVEC1_27_1   =  27;

# orbiting sensor's boresight vector #2 (1-character length)
const XS_SEN_ORB_BSVEC2_28_1   =  28;

# for VT_FOR only, az/el table file path (256-character length)
const XS_SEN_FOR_AZFILE_255_256= 255;


const    XS_SEN_LENGTH            = 512;

# Indexes of Sensor data fields
# Sensor number
const XF_SENLOC_NUM  = 1;

# Sensor location - astronomical longitude (deg) (+=West/-=East)
const XF_SENLOC_LAT  = 2;

# Sensor location - astronomical latitude (deg)  (+=North/-=South)
const XF_SENLOC_LON  = 3;

# Sensor ECR position X (km)
const XF_SENLOC_POSX = 4;

# Sensor ECR position Y (km)
const XF_SENLOC_POSY = 5;

# Sensor ECR position Z (km)
const XF_SENLOC_POSZ = 6;

# Sensor description
const XF_SENLOC_DESC = 7;

# Orbiting sensor's number (satNum)
const XF_SENLOC_ORBSATNUM = 8;

# Sensor classification
const XF_SENLOC_SECCLASS  = 9;


# Sensor view type
const XF_SENLIM_VIEWTYPE  = 11;

# Sensor observation type
const XF_SENLIM_OBSTYPE   = 12;

# Unit on range/range rate
const XF_SENLIM_UNIT      = 13;

# Max observable range (km)
const XF_SENLIM_MAXRNG    = 14;

# Min observable range (km)
const XF_SENLIM_MINRNG    = 15;

# Output interval (min)
const XF_SENLIM_INTERVAL  = 16;

# Visual pass control flag
const XF_SENLIM_OPTVISFLG = 17;

# Range limit control flag
const XF_SENLIM_RNGLIMFLG = 18;

# Max number of points per pass
const XF_SENLIM_PTSPERPAS = 19;

# Range rate/relative velocity limit (km/sec)
const XF_SENLIM_RRLIM     = 20;


# Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
const XF_SENLIM_ELLIM1    = 31;

# Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
const XF_SENLIM_ELLIM2    = 32;

# Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
const XF_SENLIM_ELLIM3    = 33;

# Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
const XF_SENLIM_ELLIM4    = 34;

# Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
const XF_SENLIM_AZLIM1    = 35;

# Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
const XF_SENLIM_AZLIM2    = 36;

# Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
const XF_SENLIM_AZLIM3    = 37;

# Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
const XF_SENLIM_AZLIM4    = 38;



# Orbiting sensor planetary restriction
const XF_SENLIM_PLNTRYRES = 52;

# Orbiting sensor boresight vector 1
const XF_SENLIM_BOREVEC1  = 53;

# Orbiting sensor boresight vector 2
const XF_SENLIM_BOREVEC2  = 54;

# Allow orbiting sensor to view sat against earth background
const XF_SENLIM_KEARTH    = 55;

# Orbiting sensor earth limb exclusion distance (km)
const XF_SENLIM_ELIMB     = 56;

# Orbiting sensor solar exclusion angle (deg)
const XF_SENLIM_SOLEXCANG = 57;

# Orbiting sensor lunar exclusion angle (deg)
const XF_SENLIM_LUNEXCANG = 58;



# Orbiting sensor min illumination angle (deg)
const XF_SENLIM_MINIL     = 59;

# Ground site twilight offset angle (deg)
const XF_SENLIM_TWILIT    = 60;

# Is special mobil sensor flag / column 9 in 1L card
const XF_SENLIM_SMSEN     = 61;

# Number of additional segments added to sensor limits
const XF_SENLIM_NUMSEGS   = 62;

# Space fence FOR's Az/El table file name
const XF_SENLIM_FILE      = 63;

# Number of rows in space fence FOR's Az/El table
const XF_SENLIM_AZELROWS  = 64;


#*******************************************************************************

# Indexes of sensor location data
# Sensor nubmer
const XA_SENLOC_NUM     =  0;

# Sensor location - astronomical latitude (deg)  (+=North/-=South)
const XA_SENLOC_LAT     =  1;

# Sensor location - astronomical longitude (deg) (+=West/-=East)
const XA_SENLOC_LON     =  2;

# Sensor ECR position X (km)
const XA_SENLOC_POSX    =  3;

# Sensor ECR position Y (km)
const XA_SENLOC_POSY    =  4;

# Sensor ECR position Z (km)
const XA_SENLOC_POSZ    =  5;


const    XA_SENLOC_SIZE    = 16;   

#*******************************************************************************

# Indexes of Sensor's sigmas & biases data fields
# azimuth sigma (deg)
const XAF_SENBS_AZSIGMA =  0;

# elevation sigma (deg)
const XAF_SENBS_ELSIGMA =  1;

# range sigma (km)
const XAF_SENBS_RGSIGMA =  2;

# range-rate sigma (km/sec)
const XAF_SENBS_RRSIGMA =  3;

# az rate sigma (deg/sec)
const XAF_SENBS_ARSIGMA =  4;

# el rate sigma (deg/sec)
const XAF_SENBS_ERSIGMA =  5;


# azimuth bias (deg)
const XAF_SENBS_AZBIAS  =  8;

# elevation bias (deg)
const XAF_SENBS_ELBIAS  =  9;

# range bias (km)
const XAF_SENBS_RGBIAS  = 10;

# range-rate bias (km/sec)
const XAF_SENBS_RRBIAS  = 11;

# time bias (sec)
const XAF_SENBS_TIMEBIAS= 15;


const    XAF_SENBS_SIZE    = 16;

# Named constants for different obs types
# obs contains range rate only data
const OT_RRATE          =  0;

# obs contains azimuth, elevation data
const OT_AZEL           =  1;

# obs contains azimuth, elevation, and range data
const OT_AZEL_RNG       =  2;

# obs contains azimuth, elevation, range, and range rate data
const OT_AZEL_RNGRRATE  =  3;

# obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
const OT_AZEL_ALL       =  4;

# obs contains right ascention and declination data
const OT_RADEC          =  5;

# obs contains range only data
const OT_RNGONLY        =  6;

# obs contains azimuth, elevation, and sensor location data
const OT_AZEL_SENPOS    =  8;

# obs contains right ascension, declination, and sensor location data
const OT_RADEC_SENPOS   =  9;

# obs contains ECI position and velocity data
const OT_VEL            = 10;

# obs contains ECI position data
const OT_POS            = 11;

# obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
const OT_SLR            = 16;

# obs contains azimuth, elevation, sensor location, and range data
const OT_M              = 18;

# obs contains right ascension, declination, sensor location, and range data
const OT_O              = 19;

# obs contains TDOA/FDOA data
const OT_RF             = 13;

# obs contains range rate only data - for use in obs selection criteria
const OT_RRATE_SELOB    =999;




#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Sensor DLL for use in the program
# If this function returns an error, it is recommended that the users stop the program immediately. 
# The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
# in the DLL Prerequisite section, before using this DLL.
function SensorInit(apAddr)
   errCode = ccall( (:SensorInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Sensor DLL. 
# The information is placed in the string parameter passed in.
# The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
function SensorGetInfo()
   infoStr = " "^128
   ccall( (:SensorGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Loads sensor data, contained in a text file, into the set of loaded sensors
# The users can use this function repeatedly to load sensor data from different input files. 
# However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
# 
# Sensor data can be included directly in the main input file or they can be read from a separate file 
# identified with "SENFIL=[pathname\filename]".
# 
# This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
# It won't read anything else.
function SensorLoadFile(senFile)
   errCode = ccall( (:SensorLoadFile,libname) 
     , Int32
     , (Cstring,)
     , senFile)
   return errCode
end

#############################################################################
# Loads a single sensor-typed card
function SensorLoadCard(card)
   errCode = ccall( (:SensorLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Saves the currently loaded sensor data to a file
# If the users call this routine immediately after the SensorLoadFile(). 
# The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
# 
# The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
function SensorSaveFile(sensorFile, saveMode, saveForm)
   errCode = ccall( (:SensorSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , sensorFile,saveMode,saveForm)
   return errCode
end

#############################################################################
# Removes a sensor, represented by the senKey, from the set of currently loaded sensors
# If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
function SensorRemove(senKey)
   errCode = ccall( (:SensorRemove,libname) 
     , Int32
     , (Int64,)
     , senKey)
   return errCode
end

#############################################################################
# Removes all currently loaded sensors from memory
# The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
function SensorRemoveAll()
   errCode = ccall( (:SensorRemoveAll,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of sensors currently loaded
# See SensorGetLoaded for example.
# This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
function SensorGetCount()
   numSens = ccall( (:SensorGetCount,libname) 
     , Int32
     , ())
   return numSens
end

#############################################################################
# Retrieves all of the currently loaded senKeys. 
# These senKeys can be used to access the internal data for the sensors.
# It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
# The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
# 
# If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
function SensorGetLoaded(order, size_senKeys)
   senKeys = zeros(Int64, size_senKeys)
   ccall( (:SensorGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,senKeys)
   return senKeys
end

#############################################################################
# Retrieves sensor location data for a sensor
function SensorGetLocAll(senKey)
   astroLat = zeros(Float64, 1)
   astroLon = zeros(Float64, 1)
   senPos = zeros(Float64, 3)
   senDesc = " "^24
   orbSatNum = zeros(Int32, 1)
   secClass = " "
   errCode = ccall( (:SensorGetLocAll,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Cstring)
     , senKey,astroLat,astroLon,senPos,senDesc,orbSatNum,secClass)
   return errCode, astroLat[1], astroLon[1], senPos, senDesc, Int64(orbSatNum[1]), secClass
end

#############################################################################
# Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
# This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
# 
# If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
# 
# If it is an orbiting sensor, the users need to provide the associated satellite number.
function SensorSetLocAll(senKey, astroLat, astroLon, senPos, senDesc, orbSatNum, secClass)
   errCode = ccall( (:SensorSetLocAll,libname) 
     , Int32
     , (Int64
     , Float64
     , Float64
     , Ref{Float64}
     , Cstring
     , Int32
     , Cchar)
     , senKey,astroLat,astroLon,senPos,senDesc,orbSatNum,secClass[1])
   return errCode
end

#############################################################################
# Retrieves the value of an individual field of sensor location data
# 
# Make sure to use the appropriate field index for ground sensors and orbiting sensors.
# 
# The table below shows the values for the xf_SenLoc parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 1Sensor number
# 2Sensor astronomical latitude (deg)
# 3Sensor astronomical longitude (deg)
# 4Sensor position X (km)
# 5Sensor position Y (km)
# 6Sensor position Z (km)
# 7Sensor description
# 8Orbiting sensor's number (satNum)   
# 9Sensor classification    
#    
function SensorGetLocField(senKey, xf_SenLoc)
   strValue = " "^512
   errCode = ccall( (:SensorGetLocField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xf_SenLoc,strValue)
   return errCode, strValue
end

#############################################################################
# Updates the value of an individual field of sensor location data
# See SensorGetLocField for a description of the xf_SenLoc values.
# The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
# 
# Make sure to use the appropriate field index for ground sensors and orbiting sensors.
function SensorSetLocField(senKey, xf_SenLoc, strValue)
   errCode = ccall( (:SensorSetLocField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xf_SenLoc,strValue)
   return errCode
end

#############################################################################
# Retrieves sensor limits data
# This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
function SensorGet1L(senKey)
   viewType = " "
   obsType = " "
   rngUnits = zeros(Int32, 1)
   maxRngLim = zeros(Float64, 1)
   boresight1 = " "
   elLim1 = zeros(Float64, 1)
   elLim2 = zeros(Float64, 1)
   azLim1 = zeros(Float64, 1)
   azLim2 = zeros(Float64, 1)
   interval = zeros(Float64, 1)
   visFlg = zeros(Int32, 1)
   rngLimFlg = zeros(Int32, 1)
   maxPPP = zeros(Int32, 1)
   minRngLim = zeros(Float64, 1)
   plntryRes = zeros(Int32, 1)
   rrLim = zeros(Float64, 1)
   errCode = ccall( (:SensorGet1L,libname) 
     , Int32
     , (Int64
     , Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Float64}
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64})
     , senKey,viewType,obsType,rngUnits,maxRngLim,boresight1,elLim1,elLim2,azLim1,
         azLim2,interval,visFlg,rngLimFlg,maxPPP,minRngLim,plntryRes,rrLim)
   return errCode, viewType, obsType, Int64(rngUnits[1]), maxRngLim[1], boresight1, elLim1[1], elLim2[1], azLim1[1], azLim2[1], 
         interval[1], Int64(visFlg[1]), Int64(rngLimFlg[1]), Int64(maxPPP[1]), minRngLim[1], Int64(plntryRes[1]), rrLim[1]
end

#############################################################################
# Adds/updates sensor limits data (non DMA) via individually provided field values
# This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
# 
# If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
# 
# If it is an orbiting sensor, the users need to provide the associated satellite number.
function SensorSet1L(senKey, viewType, obsType, rngUnits, maxRngLim, boresight1, elLim1, elLim2, azLim1, azLim2, interval, visFlg, rngLimFlg, maxPPP, minRngLim, plntryRes, rrLim)
   errCode = ccall( (:SensorSet1L,libname) 
     , Int32
     , (Int64
     , Cchar
     , Cchar
     , Int32
     , Float64
     , Cchar
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Int32
     , Int32
     , Float64
     , Int32
     , Float64)
     , senKey,viewType[1],obsType[1],rngUnits,maxRngLim,boresight1[1],elLim1,elLim2,azLim1,
         azLim2,interval,visFlg,rngLimFlg,maxPPP,minRngLim,plntryRes,rrLim)
   return errCode
end

#############################################################################
# Retrieves additional sensor limits data
# This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
function SensorGet2L(senKey)
   boresight2 = " "
   elLim3 = zeros(Float64, 1)
   elLim4 = zeros(Float64, 1)
   azLim3 = zeros(Float64, 1)
   azLim4 = zeros(Float64, 1)
   earthBckgrnd = zeros(Int32, 1)
   earthLimb = zeros(Float64, 1)
   solarXAngle = zeros(Float64, 1)
   lunarXAngle = zeros(Float64, 1)
   minIllum = zeros(Float64, 1)
   twilit = zeros(Float64, 1)
   errCode = ccall( (:SensorGet2L,libname) 
     , Int32
     , (Int64
     , Cstring
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , senKey,boresight2,elLim3,elLim4,azLim3,azLim4,earthBckgrnd,earthLimb,solarXAngle,
         lunarXAngle,minIllum,twilit)
   return errCode, boresight2, elLim3[1], elLim4[1], azLim3[1], azLim4[1], Int64(earthBckgrnd[1]), earthLimb[1], solarXAngle[1], lunarXAngle[1], 
         minIllum[1], twilit[1]
end

#############################################################################
# Adds/updates additional sensor limits data
# This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
# 
# If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
function SensorSet2L(senKey, boresight2, elLim3, elLim4, azLim3, azLim4, earthBckgrnd, earthLimb, solarXAngle, lunarXAngle, minIllum, twilit)
   errCode = ccall( (:SensorSet2L,libname) 
     , Int32
     , (Int64
     , Cchar
     , Float64
     , Float64
     , Float64
     , Float64
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64)
     , senKey,boresight2[1],elLim3,elLim4,azLim3,azLim4,earthBckgrnd,earthLimb,solarXAngle,
         lunarXAngle,minIllum,twilit)
   return errCode
end

#############################################################################
# Retrieves an individual field of sensor limits data
# 
# Make sure to use the appropriate field index for ground sensors and orbiting sensors.
# 
# The table below shows the values for the xf_SenLim parameter:
# 
# table
# 
# Index
# Index Interpretation
# 
# 11 Sensor view type
# 12 Sensor observation type
# 13 Unit on range/range rate
# 14 Max observable range (km)
# 15 Min observable range (km)
# 16 Output interval (min)
# 17 Visual pass control flag
# 18 Range limit control flag 
# 19 Max number of points per pass
# 20 Range rate/relative velocity limit (km/sec)
# 31 Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)
# 32 
# 33 
# 34 
# 35 Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)
# 36 
# 37 
# 38 
# 52 Orbiting sensor planetary restriction
# 53 Orbiting sensor boresight vector 1
# 54 Orbiting sensor boresight vector 2
# 55 Allow orbiting sensor to view sat against earth background
# 56 Orbiting sensor earth limb exclusion distance (km)
# 57 Orbiting sensor solar exclusion angle (deg)   
# 58 Orbiting sensor lunar exclusion angle (deg)
# 59 Orbiting sensor min illumination angle (deg)
# 60 Ground site twilight offset angle (deg)    
#    
function SensorGetLimField(senKey, xf_SenLim)
   strValue = " "^512
   errCode = ccall( (:SensorGetLimField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xf_SenLim,strValue)
   return errCode, strValue
end

#############################################################################
# Updates an individual field of sensor limits data
# See SensorGetLimField for a description of the xf_SenLim parameter.
# The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
# 
# Make sure to use the appropriate field index for ground sensors and orbiting sensors.
function SensorSetLimField(senKey, xf_SenLim, strValue)
   errCode = ccall( (:SensorSetLimField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xf_SenLim,strValue)
   return errCode
end

#############################################################################
# Retrieves sensor sigma/bias data
function SensorGetBS(senKey)
   xaf_senbs = zeros(Float64, 16)
   errCode = ccall( (:SensorGetBS,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , senKey,xaf_senbs)
   return errCode, xaf_senbs
end

#############################################################################
# Adds/updates sensor sigma/bias data (non DMA)
function SensorSetBS(senKey, xaf_senbs)
   errCode = ccall( (:SensorSetBS,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , senKey,xaf_senbs)
   return errCode
end

#############################################################################
# Retrieves an individual field of sensor sigma/bias data
function SensorGetBSField(senKey, xaf_senbs)
   strValue = " "^512
   errCode = ccall( (:SensorGetBSField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xaf_senbs,strValue)
   return errCode, strValue
end

#############################################################################
# Updates an individual field of sensor sigma/bias data
function SensorSetBSField(senKey, xaf_senbs, strValue)
   errCode = ccall( (:SensorSetBSField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , senKey,xaf_senbs,strValue)
   return errCode
end

#############################################################################
# Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
function SensorGetLines(senKey)
   sCard = " "^512
   l1Card = " "^512
   l2Card = " "^512
   errCode = ccall( (:SensorGetLines,libname) 
     , Int32
     , (Int64
     , Cstring
     , Cstring
     , Cstring)
     , senKey,sCard,l1Card,l2Card)
   return errCode, sCard, l1Card, l2Card
end

#############################################################################
# Gets sensor's orbiting satellite's satKey
function SensorGetOrbSatKey(senKey)
   orbSatKey = zeros(Int64, 1)
   errCode = ccall( (:SensorGetOrbSatKey,libname) 
     , Int32
     , (Int64
     , Ref{Int64})
     , senKey,orbSatKey)
   return errCode, orbSatKey[1]
end

#############################################################################
# Sets sensor's orbiting satellite's satKey
function SensorSetOrbSatKey(senKey, orbSatKey)
   errCode = ccall( (:SensorSetOrbSatKey,libname) 
     , Int32
     , (Int64
     , Int64)
     , senKey,orbSatKey)
   return errCode
end

#############################################################################
# Loads Space Fence's detailed azimuth-elevation definition table
function SensorLoadAzElTable(senKey, azElTableFile)
   errCode = ccall( (:SensorLoadAzElTable,libname) 
     , Int32
     , (Int64
     , Cstring)
     , senKey,azElTableFile)
   return errCode
end

#############################################################################
# Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
function SensorAddSegment(senKey, segType, xa_seg)
   errCode = ccall( (:SensorAddSegment,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Float64})
     , senKey,segType,xa_seg)
   return errCode
end

#############################################################################
# Retrieves sensor segment data of the specified segment (segNum)
function SensorGetSegment(senKey, segNum)
   segType = zeros(Int32, 1)
   xa_seg = zeros(Float64, 16)
   errCode = ccall( (:SensorGetSegment,libname) 
     , Int32
     , (Int64
     , Int32
     , Ref{Int32}
     , Ref{Float64})
     , senKey,segNum,segType,xa_seg)
   return errCode, Int64(segType[1]), xa_seg
end

#############################################################################
# Sets sensor key mode
# This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
# and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
function SetSenKeyMode(sen_keyMode)
   errCode = ccall( (:SetSenKeyMode,libname) 
     , Int32
     , (Int32,)
     , sen_keyMode)
   return errCode
end

#############################################################################
# Gets current sensor key mode
function GetSenKeyMode()
   sen_keyMode = ccall( (:GetSenKeyMode,libname) 
     , Int32
     , ())
   return sen_keyMode
end

#############################################################################
# Returs the sensor number associated with the input senKey
function SenNumOf(senKey)
   senNum = ccall( (:SenNumOf,libname) 
     , Int32
     , (Int64,)
     , senKey)
   return senNum
end

#############################################################################
# Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
# A negative value will be returned if there is an error.
function SensorGetSenKey(senNum)
   senKey = ccall( (:SensorGetSenKey,libname) 
     , Int64
     , (Int32,)
     , senNum)
   return senKey
end

#############################################################################
# This function is similar to SensorGetSenKey but designed to be used in Matlab. 
# Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
# A negative value will be returned in senKey if there is an error.
function SensorGetSenKeyML(senNum)
   senKey = zeros(Int64, 1)
   ccall( (:SensorGetSenKeyML,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , senNum,senKey)
   return senKey[1]
end

#############################################################################
# Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
function SensorAddFrArray(xa_sen, xs_sen)
   senKey = ccall( (:SensorAddFrArray,libname) 
     , Int64
     , (Ref{Float64}
     , Cstring)
     , xa_sen,xs_sen)
   return senKey
end

#############################################################################
# Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
function SensorDataToArray(senKey)
   xa_sen = zeros(Float64, 128)
   xs_sen = " "^512
   errCode = ccall( (:SensorDataToArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64}
     , Cstring)
     , senKey,xa_sen,xs_sen)
   return errCode, xa_sen, xs_sen
end

#############################################################################

end #of module SensorDll
# ========================= End of auto generated code ==========================
