# This wrapper file was generated automatically by the GenDllWrappers program.

# Sensor segment types
# bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
set SEG_BCONE 1
# dome-typed limit: Min/Max Az/El/Range
set SEG_DOME 2



# Indexes of dome segment parameters
# start azimuth (deg)
set XA_SEG_DOME_AZFR 0
# end azimuth (deg)
set XA_SEG_DOME_AZTO 1
# lower-bound elevation (deg)
set XA_SEG_DOME_ELFR 2
# higher-bound elevation (deg)
set XA_SEG_DOME_ELTO 3
# minimum range (km)
set XA_SEG_DOME_MINRNG 4
# maximum range (km)
set XA_SEG_DOME_MAXRNG 5

set XA_SEG_DOME_SIZE 16


# Indexes of bounded-cone segment parameters
# boresight azimuth (deg)
set XA_SEG_BCONE_BSAZ 0
# boresight elevation (deg)
set XA_SEG_BCONE_BSEL 1
# offboresight lower angle (deg)
set XA_SEG_BCONE_ANGFR 2
# offboresight higher angle (deg)
set XA_SEG_BCONE_ANGTO 3
# minimum range (km)
set XA_SEG_BCONE_MINRNG 4
# maximum range (km)
set XA_SEG_BCONE_MAXRNG 5
# minimum cut-off elevation (deg)
set XA_SEG_BCONE_MINEL 6

set XA_SEG_BCONE_SIZE 16


# Different key mode options for senKey
# Default - duplicate sensor can not be loaded in binary tree
set SEN_KEYMODE_NODUP 0
# Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
set SEN_KEYMODE_DMA 1

# sensor key possible errors
# Bad sensor key
set BADSENKEY -1
# Duplicate sensor key
set DUPSENKEY 0

# Different sensor types
# bounded-cone tracker
set VT_BCT 2
# conventional tracker
set VT_CON 3
# optical tracker
set VT_OPT 4
# constant azimuth fan sweeping vertical plane
set VT_FAN 7
# orbiting sensor (same as 'M' or 'O')
set VT_ORB 9
# space fence's field of regard FOR ('R' = 86)
set VT_FOR 82
# space fence's surveillance fan FOV ('V' = 82)
set VT_FOV 86

# Different sensor location types
# Sensor location is in ECR
set SENLOC_TYPE_ECR 1
# Sensor location is in EFG
set SENLOC_TYPE_EFG 2
# Sensor location is in LLH
set SENLOC_TYPE_LLH 3


# Sensor Data -
#*******************************************************************************
# generic data for all sensor types
#*******************************************************************************
# sensor number
set XA_SEN_GEN_SENNUM 0
# sensor minimum range (km) (=0 no minimum range check)
set XA_SEN_GEN_MINRNG 3
# sensor maxinmum range (km) (=0 no maximum range check)
set XA_SEN_GEN_MAXRNG 4
# range rate/relative velocity limit (km/sec) (=0 no range rate check)
set XA_SEN_GEN_RRLIM 5
# min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
set XA_SEN_GEN_RNGLIMFLG 6
# is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
set XA_SEN_GEN_SMSEN 7


#*******************************************************************************

# sensor location - for all ground-based sensor types (non-orbiting)
# location type (see SENLOC_TYPE_? for available types)
set XA_SEN_GRN_LOCTYPE 10
# sensor location ECR/EFG X component (km) or LLH/Lat (deg)
set XA_SEN_GRN_POS1 11
# sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
set XA_SEN_GRN_POS2 12
# sensor location ECR/EFG Z component (km) or LLH/Height (km)
set XA_SEN_GRN_POS3 13
# astronomical latitude (deg) (+: North, -: South)
set XA_SEN_GRN_ASTROLAT 14
# astronomical longitude (deg) (+: West, -: East)
set XA_SEN_GRN_ASTROLON 15


#*******************************************************************************
# sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
#*******************************************************************************
# Bounded cone tracker (conical sensor) (VT_BCT)
# conical sensor boresight azimuth angle (deg)
set XA_SEN_BCT_BRSGHTAZ 20
# conical sensor boresight elevation angle (deg)
set XA_SEN_BCT_BRSGHTEL 21
# coninal sensor off-boresight angle/half cone angle (deg)
set XA_SEN_BCT_HALFANG 22
# conical sensor minimum elevation angle (deg)
set XA_SEN_BCT_MINEL 23

#*******************************************************************************
# Conventinoal tracker (VT_CON)
# low elevation limit #1 (deg)
set XA_SEN_CON_ELFR1 20
# hight elevation limit #1 (deg)
set XA_SEN_CON_ELTO1 21
# low azimuth limit #1 (deg)
set XA_SEN_CON_AZFR1 22
# hight azimuth limit #1 (deg)
set XA_SEN_CON_AZTO1 23
# low elevation limit #2 (deg)
set XA_SEN_CON_ELFR2 24
# hight elevation limit #2 (deg)
set XA_SEN_CON_ELTO2 25
# low azimuth limit #2 (deg)
set XA_SEN_CON_AZFR2 26
# hight azimuth limit #2 (deg)
set XA_SEN_CON_AZTO2 27

#*******************************************************************************
# Optical tracker (VT_OPT)
# low elevation limit #1 (deg)
set XA_SEN_OPT_ELFR1 20
# hight elevation limit #1 (deg)
set XA_SEN_OPT_ELTO1 21
# low azimuth limit #1 (deg)
set XA_SEN_OPT_AZFR1 22
# hight azimuth limit #1 (deg)
set XA_SEN_OPT_AZTO1 23
# low elevation limit #2 (deg)
set XA_SEN_OPT_ELFR2 24
# hight elevation limit #2 (deg)
set XA_SEN_OPT_ELTO2 25
# low azimuth limit #2 (deg)
set XA_SEN_OPT_AZFR2 26
# hight azimuth limit #2 (deg)
set XA_SEN_OPT_AZTO2 27

# optical sensor solar exclusion angle (to check for solar aspect angle limit)
set XA_SEN_OPT_SEA 40
# ground site twilight offset angle
set XA_SEN_OPT_TWILGHT 41
# visual pass check (sensor in dark, satellite illuminated)
set XA_SEN_OPT_VISCHK 42

#*******************************************************************************
# Constant azimuth fan (VT_FAN)
# fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
set XA_SEN_FAN_AZ 20
# fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
set XA_SEN_FAN_TILTANGLE 21
# fan's off-boresight angle (deg) [0, 90]
set XA_SEN_FAN_OBSANGLE 23


#*******************************************************************************
# Orbiting sensor (VT_ORB)
# orbiting sensor's satellite number
set XA_SEN_ORB_SATNUM 10

# orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
set XA_SEN_ORB_ELMIN1 20
# orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
set XA_SEN_ORB_ELMAX1 21
# orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
set XA_SEN_ORB_AZMIN1 22
# orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
set XA_SEN_ORB_AZMAX1 23
# orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
set XA_SEN_ORB_ELMIN2 24
# orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
set XA_SEN_ORB_ELMAX2 25
# orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
set XA_SEN_ORB_AZMIN2 26
# orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
set XA_SEN_ORB_AZMAX2 27

# orbiting sensor earth limb exclusion distance (km)
set XA_SEN_ORB_EARTHLIMB 40
# orbiting sensor solar exclusion angle (deg)
set XA_SEN_ORB_SEA 41
# orbiting sensor lunar exclusion angle (deg)
set XA_SEN_ORB_LEA 42
# orbiting sensor minimum illumination angle (deg)
set XA_SEN_ORB_MINILLUM 43
# orbiting sensor allow earth in the back ground
set XA_SEN_ORB_EARTHBRND 44
# orbiting sensor planetary restriction
set XA_SEN_ORB_PLNTRYRES 45

#*******************************************************************************

# Space fence Field Of Regard (VT_FOR)
# Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)


#*******************************************************************************

# Space fence Field Of View (VT_FOV)
# north/south beam width (deg)
set XA_SEN_FOV_BEAMWIDTH 20
# fence tilt angle (deg)
set XA_SEN_FOV_TILTANGLE 21


#*******************************************************************************

# Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
# unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
set XA_SEN_GEN_UNIT 90
# output interval (min)
set XA_SEN_GEN_INTERVAL 91
# max number of points per pass
set XA_SEN_GEN_PTSPERPAS 92


# sensor sigmas/biases - ROTAS/BATCHDC
# azimuth sigma (deg)
set XA_SEN_GEN_AZSIGMA 110
# elevation sigma (deg)
set XA_SEN_GEN_ELSIGMA 111
# range sigma (km)
set XA_SEN_GEN_RGSIGMA 112
# range-rate sigma (km/sec)
set XA_SEN_GEN_RRSIGMA 113
# az rate sigma (deg/sec)
set XA_SEN_GEN_ARSIGMA 114
# el rate sigma (deg/sec)
set XA_SEN_GEN_ERSIGMA 115
# azimuth bias (deg)
set XA_SEN_GEN_AZBIAS 116
# elevation bias (deg)
set XA_SEN_GEN_ELBIAS 117
# range bias (km)
set XA_SEN_GEN_RGBIAS 118
# range-rate bias (km/sec)
set XA_SEN_GEN_RRBIAS 119
# time bias (sec)
set XA_SEN_GEN_TIMEBIAS 120


set XA_SEN_SIZE 128

# Indexes of SENSOR text data in an array of chars
# The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
# sensor security classification (1-character length)
set XS_SEN_SECCLASS_0_1 0
# sensor viewing type (1-character length)
set XS_SEN_VIEWTYPE_1_1 1
# sensor observation type (1-character length)
set XS_SEN_OBSTYPE_2_1 2
# sensor description/narrative/notes (24-character length)
set XS_SEN_DSCRPTN_3_24 3
# orbiting sensor's boresight vector #1 (1-character length)
set XS_SEN_ORB_BSVEC1_27_1 27
# orbiting sensor's boresight vector #2 (1-character length)
set XS_SEN_ORB_BSVEC2_28_1 28
# for VT_FOR only, az/el table file path (256-character length)
set XS_SEN_FOR_AZFILE_255_256 255

set XS_SEN_LENGTH 512

# Indexes of Sensor data fields
# Sensor number
set XF_SENLOC_NUM 1
# Sensor location - astronomical longitude (deg) (+=West/-=East)
set XF_SENLOC_LAT 2
# Sensor location - astronomical latitude (deg)  (+=North/-=South)
set XF_SENLOC_LON 3
# Sensor ECR position X (km)
set XF_SENLOC_POSX 4
# Sensor ECR position Y (km)
set XF_SENLOC_POSY 5
# Sensor ECR position Z (km)
set XF_SENLOC_POSZ 6
# Sensor description
set XF_SENLOC_DESC 7
# Orbiting sensor's number (satNum)
set XF_SENLOC_ORBSATNUM 8
# Sensor classification
set XF_SENLOC_SECCLASS 9

# Sensor view type
set XF_SENLIM_VIEWTYPE 11
# Sensor observation type
set XF_SENLIM_OBSTYPE 12
# Unit on range/range rate
set XF_SENLIM_UNIT 13
# Max observable range (km)
set XF_SENLIM_MAXRNG 14
# Min observable range (km)
set XF_SENLIM_MINRNG 15
# Output interval (min)
set XF_SENLIM_INTERVAL 16
# Visual pass control flag
set XF_SENLIM_OPTVISFLG 17
# Range limit control flag
set XF_SENLIM_RNGLIMFLG 18
# Max number of points per pass
set XF_SENLIM_PTSPERPAS 19
# Range rate/relative velocity limit (km/sec)
set XF_SENLIM_RRLIM 20

# Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
set XF_SENLIM_ELLIM1 31
# Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
set XF_SENLIM_ELLIM2 32
# Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
set XF_SENLIM_ELLIM3 33
# Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
set XF_SENLIM_ELLIM4 34
# Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
set XF_SENLIM_AZLIM1 35
# Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
set XF_SENLIM_AZLIM2 36
# Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
set XF_SENLIM_AZLIM3 37
# Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
set XF_SENLIM_AZLIM4 38


# Orbiting sensor planetary restriction
set XF_SENLIM_PLNTRYRES 52
# Orbiting sensor boresight vector 1
set XF_SENLIM_BOREVEC1 53
# Orbiting sensor boresight vector 2
set XF_SENLIM_BOREVEC2 54
# Allow orbiting sensor to view sat against earth background
set XF_SENLIM_KEARTH 55
# Orbiting sensor earth limb exclusion distance (km)
set XF_SENLIM_ELIMB 56
# Orbiting sensor solar exclusion angle (deg)
set XF_SENLIM_SOLEXCANG 57
# Orbiting sensor lunar exclusion angle (deg)
set XF_SENLIM_LUNEXCANG 58


# Orbiting sensor min illumination angle (deg)
set XF_SENLIM_MINIL 59
# Ground site twilight offset angle (deg)
set XF_SENLIM_TWILIT 60
# Is special mobil sensor flag / column 9 in 1L card
set XF_SENLIM_SMSEN 61
# Number of additional segments added to sensor limits
set XF_SENLIM_NUMSEGS 62
# Space fence FOR's Az/El table file name
set XF_SENLIM_FILE 63
# Number of rows in space fence FOR's Az/El table
set XF_SENLIM_AZELROWS 64

#*******************************************************************************

# Indexes of sensor location data
# Sensor nubmer
set XA_SENLOC_NUM 0
# Sensor location - astronomical latitude (deg)  (+=North/-=South)
set XA_SENLOC_LAT 1
# Sensor location - astronomical longitude (deg) (+=West/-=East)
set XA_SENLOC_LON 2
# Sensor ECR position X (km)
set XA_SENLOC_POSX 3
# Sensor ECR position Y (km)
set XA_SENLOC_POSY 4
# Sensor ECR position Z (km)
set XA_SENLOC_POSZ 5

set XA_SENLOC_SIZE 16

#*******************************************************************************

# Indexes of Sensor's sigmas & biases data fields
# azimuth sigma (deg)
set XAF_SENBS_AZSIGMA 0
# elevation sigma (deg)
set XAF_SENBS_ELSIGMA 1
# range sigma (km)
set XAF_SENBS_RGSIGMA 2
# range-rate sigma (km/sec)
set XAF_SENBS_RRSIGMA 3
# az rate sigma (deg/sec)
set XAF_SENBS_ARSIGMA 4
# el rate sigma (deg/sec)
set XAF_SENBS_ERSIGMA 5

# azimuth bias (deg)
set XAF_SENBS_AZBIAS 8
# elevation bias (deg)
set XAF_SENBS_ELBIAS 9
# range bias (km)
set XAF_SENBS_RGBIAS 10
# range-rate bias (km/sec)
set XAF_SENBS_RRBIAS 11
# time bias (sec)
set XAF_SENBS_TIMEBIAS 15

set XAF_SENBS_SIZE 16

# Named constants for different obs types
# obs contains range rate only data
set OT_RRATE 0
# obs contains azimuth, elevation data
set OT_AZEL 1
# obs contains azimuth, elevation, and range data
set OT_AZEL_RNG 2
# obs contains azimuth, elevation, range, and range rate data
set OT_AZEL_RNGRRATE 3
# obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
set OT_AZEL_ALL 4
# obs contains right ascention and declination data
set OT_RADEC 5
# obs contains range only data
set OT_RNGONLY 6
# obs contains azimuth, elevation, and sensor location data
set OT_AZEL_SENPOS 8
# obs contains right ascension, declination, and sensor location data
set OT_RADEC_SENPOS 9
# obs contains ECI position and velocity data
set OT_VEL 10
# obs contains ECI position data
set OT_POS 11
# obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
set OT_SLR 16
# obs contains azimuth, elevation, sensor location, and range data
set OT_M 18
# obs contains right ascension, declination, sensor location, and range data
set OT_O 19
# obs contains TDOA/FDOA data
set OT_RF 13
# obs contains range rate only data - for use in obs selection criteria
set OT_RRATE_SELOB 999


# ========================= End of auto generated code ==========================
