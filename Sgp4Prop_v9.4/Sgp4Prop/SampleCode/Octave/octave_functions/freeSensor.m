% This wrapper file was generated automatically by the GenDllWrappers program.
function freeSensor()   
   % Sensor segment types
   % bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
   global SEG_BCONE;
   % dome-typed limit: Min/Max Az/El/Range
   global SEG_DOME;
   
   
   
   % Indexes of dome segment parameters
   % start azimuth (deg)
   global XA_SEG_DOME_AZFR;
   % end azimuth (deg)
   global XA_SEG_DOME_AZTO;
   % lower-bound elevation (deg)
   global XA_SEG_DOME_ELFR;
   % higher-bound elevation (deg)
   global XA_SEG_DOME_ELTO;
   % minimum range (km)
   global XA_SEG_DOME_MINRNG;
   % maximum range (km)
   global XA_SEG_DOME_MAXRNG;
   
   global XA_SEG_DOME_SIZE;
   
   
   % Indexes of bounded-cone segment parameters
   % boresight azimuth (deg)
   global XA_SEG_BCONE_BSAZ;
   % boresight elevation (deg)
   global XA_SEG_BCONE_BSEL;
   % offboresight lower angle (deg)
   global XA_SEG_BCONE_ANGFR;
   % offboresight higher angle (deg)
   global XA_SEG_BCONE_ANGTO;
   % minimum range (km)
   global XA_SEG_BCONE_MINRNG;
   % maximum range (km)
   global XA_SEG_BCONE_MAXRNG;
   % minimum cut-off elevation (deg)
   global XA_SEG_BCONE_MINEL;
   
   global XA_SEG_BCONE_SIZE;
   
   
   % Different key mode options for senKey
   % Default - duplicate sensor can not be loaded in binary tree
   global SEN_KEYMODE_NODUP;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global SEN_KEYMODE_DMA;
   
   % sensor key possible errors
   % Bad sensor key
   global BADSENKEY;
   % Duplicate sensor key
   global DUPSENKEY;
   
   % Different sensor types
   % bounded-cone tracker
   global VT_BCT;
   % conventional tracker
   global VT_CON;
   % optical tracker
   global VT_OPT;
   % constant azimuth fan sweeping vertical plane
   global VT_FAN;
   % orbiting sensor (same as 'M' or 'O')
   global VT_ORB;
   % space fence's field of regard FOR ('R' = 86)
   global VT_FOR;
   % space fence's surveillance fan FOV ('V' = 82)
   global VT_FOV;
   
   % Different sensor location types
   % Sensor location is in ECR
   global SENLOC_TYPE_ECR;
   % Sensor location is in EFG
   global SENLOC_TYPE_EFG;
   % Sensor location is in LLH
   global SENLOC_TYPE_LLH;
   
   
   % Sensor Data -
   %*******************************************************************************
   % generic data for all sensor types
   %*******************************************************************************
   % sensor number
   global XA_SEN_GEN_SENNUM;
   % sensor minimum range (km) (=0 no minimum range check)
   global XA_SEN_GEN_MINRNG;
   % sensor maxinmum range (km) (=0 no maximum range check)
   global XA_SEN_GEN_MAXRNG;
   % range rate/relative velocity limit (km/sec) (=0 no range rate check)
   global XA_SEN_GEN_RRLIM;
   % min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
   global XA_SEN_GEN_RNGLIMFLG;
   % is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
   global XA_SEN_GEN_SMSEN;
   
   
   %*******************************************************************************
   
   % sensor location - for all ground-based sensor types (non-orbiting)
   % location type (see SENLOC_TYPE_? for available types)
   global XA_SEN_GRN_LOCTYPE;
   % sensor location ECR/EFG X component (km) or LLH/Lat (deg)
   global XA_SEN_GRN_POS1;
   % sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
   global XA_SEN_GRN_POS2;
   % sensor location ECR/EFG Z component (km) or LLH/Height (km)
   global XA_SEN_GRN_POS3;
   % astronomical latitude (deg) (+: North, -: South)
   global XA_SEN_GRN_ASTROLAT;
   % astronomical longitude (deg) (+: West, -: East)
   global XA_SEN_GRN_ASTROLON;
   
   
   %*******************************************************************************
   % sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
   %*******************************************************************************
   % Bounded cone tracker (conical sensor) (VT_BCT)
   % conical sensor boresight azimuth angle (deg)
   global XA_SEN_BCT_BRSGHTAZ;
   % conical sensor boresight elevation angle (deg)
   global XA_SEN_BCT_BRSGHTEL;
   % coninal sensor off-boresight angle/half cone angle (deg)
   global XA_SEN_BCT_HALFANG;
   % conical sensor minimum elevation angle (deg)
   global XA_SEN_BCT_MINEL;
   
   %*******************************************************************************
   % Conventinoal tracker (VT_CON)
   % low elevation limit #1 (deg)
   global XA_SEN_CON_ELFR1;
   % hight elevation limit #1 (deg)
   global XA_SEN_CON_ELTO1;
   % low azimuth limit #1 (deg)
   global XA_SEN_CON_AZFR1;
   % hight azimuth limit #1 (deg)
   global XA_SEN_CON_AZTO1;
   % low elevation limit #2 (deg)
   global XA_SEN_CON_ELFR2;
   % hight elevation limit #2 (deg)
   global XA_SEN_CON_ELTO2;
   % low azimuth limit #2 (deg)
   global XA_SEN_CON_AZFR2;
   % hight azimuth limit #2 (deg)
   global XA_SEN_CON_AZTO2;
   
   %*******************************************************************************
   % Optical tracker (VT_OPT)
   % low elevation limit #1 (deg)
   global XA_SEN_OPT_ELFR1;
   % hight elevation limit #1 (deg)
   global XA_SEN_OPT_ELTO1;
   % low azimuth limit #1 (deg)
   global XA_SEN_OPT_AZFR1;
   % hight azimuth limit #1 (deg)
   global XA_SEN_OPT_AZTO1;
   % low elevation limit #2 (deg)
   global XA_SEN_OPT_ELFR2;
   % hight elevation limit #2 (deg)
   global XA_SEN_OPT_ELTO2;
   % low azimuth limit #2 (deg)
   global XA_SEN_OPT_AZFR2;
   % hight azimuth limit #2 (deg)
   global XA_SEN_OPT_AZTO2;
   
   % optical sensor solar exclusion angle (to check for solar aspect angle limit)
   global XA_SEN_OPT_SEA;
   % ground site twilight offset angle
   global XA_SEN_OPT_TWILGHT;
   % visual pass check (sensor in dark, satellite illuminated)
   global XA_SEN_OPT_VISCHK;
   
   %*******************************************************************************
   % Constant azimuth fan (VT_FAN)
   % fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
   global XA_SEN_FAN_AZ;
   % fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
   global XA_SEN_FAN_TILTANGLE;
   % fan's off-boresight angle (deg) [0, 90]
   global XA_SEN_FAN_OBSANGLE;
   
   
   %*******************************************************************************
   % Orbiting sensor (VT_ORB)
   % orbiting sensor's satellite number
   global XA_SEN_ORB_SATNUM;
   
   % orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
   global XA_SEN_ORB_ELMIN1;
   % orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
   global XA_SEN_ORB_ELMAX1;
   % orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
   global XA_SEN_ORB_AZMIN1;
   % orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
   global XA_SEN_ORB_AZMAX1;
   % orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
   global XA_SEN_ORB_ELMIN2;
   % orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
   global XA_SEN_ORB_ELMAX2;
   % orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
   global XA_SEN_ORB_AZMIN2;
   % orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
   global XA_SEN_ORB_AZMAX2;
   
   % orbiting sensor earth limb exclusion distance (km)
   global XA_SEN_ORB_EARTHLIMB;
   % orbiting sensor solar exclusion angle (deg)
   global XA_SEN_ORB_SEA;
   % orbiting sensor lunar exclusion angle (deg)
   global XA_SEN_ORB_LEA;
   % orbiting sensor minimum illumination angle (deg)
   global XA_SEN_ORB_MINILLUM;
   % orbiting sensor allow earth in the back ground
   global XA_SEN_ORB_EARTHBRND;
   % orbiting sensor planetary restriction
   global XA_SEN_ORB_PLNTRYRES;
   
   %*******************************************************************************
   
   % Space fence Field Of Regard (VT_FOR)
   % Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)
   
   
   %*******************************************************************************
   
   % Space fence Field Of View (VT_FOV)
   % north/south beam width (deg)
   global XA_SEN_FOV_BEAMWIDTH;
   % fence tilt angle (deg)
   global XA_SEN_FOV_TILTANGLE;
   
   
   %*******************************************************************************
   
   % Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
   % unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
   global XA_SEN_GEN_UNIT;
   % output interval (min)
   global XA_SEN_GEN_INTERVAL;
   % max number of points per pass
   global XA_SEN_GEN_PTSPERPAS;
   
   
   % sensor sigmas/biases - ROTAS/BATCHDC
   % azimuth sigma (deg)
   global XA_SEN_GEN_AZSIGMA;
   % elevation sigma (deg)
   global XA_SEN_GEN_ELSIGMA;
   % range sigma (km)
   global XA_SEN_GEN_RGSIGMA;
   % range-rate sigma (km/sec)
   global XA_SEN_GEN_RRSIGMA;
   % az rate sigma (deg/sec)
   global XA_SEN_GEN_ARSIGMA;
   % el rate sigma (deg/sec)
   global XA_SEN_GEN_ERSIGMA;
   % azimuth bias (deg)
   global XA_SEN_GEN_AZBIAS;
   % elevation bias (deg)
   global XA_SEN_GEN_ELBIAS;
   % range bias (km)
   global XA_SEN_GEN_RGBIAS;
   % range-rate bias (km/sec)
   global XA_SEN_GEN_RRBIAS;
   % time bias (sec)
   global XA_SEN_GEN_TIMEBIAS;
   
   
   global XA_SEN_SIZE;
   
   % Indexes of SENSOR text data in an array of chars
   % The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
   % sensor security classification (1-character length)
   global XS_SEN_SECCLASS_0_1;
   % sensor viewing type (1-character length)
   global XS_SEN_VIEWTYPE_1_1;
   % sensor observation type (1-character length)
   global XS_SEN_OBSTYPE_2_1;
   % sensor description/narrative/notes (24-character length)
   global XS_SEN_DSCRPTN_3_24;
   % orbiting sensor's boresight vector #1 (1-character length)
   global XS_SEN_ORB_BSVEC1_27_1;
   % orbiting sensor's boresight vector #2 (1-character length)
   global XS_SEN_ORB_BSVEC2_28_1;
   % for VT_FOR only, az/el table file path (256-character length)
   global XS_SEN_FOR_AZFILE_255_256;
   
   global XS_SEN_LENGTH;
   
   % Indexes of Sensor data fields
   % Sensor number
   global XF_SENLOC_NUM;
   % Sensor location - astronomical longitude (deg) (+=West/-=East)
   global XF_SENLOC_LAT;
   % Sensor location - astronomical latitude (deg)  (+=North/-=South)
   global XF_SENLOC_LON;
   % Sensor ECR position X (km)
   global XF_SENLOC_POSX;
   % Sensor ECR position Y (km)
   global XF_SENLOC_POSY;
   % Sensor ECR position Z (km)
   global XF_SENLOC_POSZ;
   % Sensor description
   global XF_SENLOC_DESC;
   % Orbiting sensor's number (satNum)
   global XF_SENLOC_ORBSATNUM;
   % Sensor classification
   global XF_SENLOC_SECCLASS;
   
   % Sensor view type
   global XF_SENLIM_VIEWTYPE;
   % Sensor observation type
   global XF_SENLIM_OBSTYPE;
   % Unit on range/range rate
   global XF_SENLIM_UNIT;
   % Max observable range (km)
   global XF_SENLIM_MAXRNG;
   % Min observable range (km)
   global XF_SENLIM_MINRNG;
   % Output interval (min)
   global XF_SENLIM_INTERVAL;
   % Visual pass control flag
   global XF_SENLIM_OPTVISFLG;
   % Range limit control flag
   global XF_SENLIM_RNGLIMFLG;
   % Max number of points per pass
   global XF_SENLIM_PTSPERPAS;
   % Range rate/relative velocity limit (km/sec)
   global XF_SENLIM_RRLIM;
   
   % Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
   global XF_SENLIM_ELLIM1;
   % Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
   global XF_SENLIM_ELLIM2;
   % Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
   global XF_SENLIM_ELLIM3;
   % Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
   global XF_SENLIM_ELLIM4;
   % Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
   global XF_SENLIM_AZLIM1;
   % Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
   global XF_SENLIM_AZLIM2;
   % Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
   global XF_SENLIM_AZLIM3;
   % Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
   global XF_SENLIM_AZLIM4;
   
   
   % Orbiting sensor planetary restriction
   global XF_SENLIM_PLNTRYRES;
   % Orbiting sensor boresight vector 1
   global XF_SENLIM_BOREVEC1;
   % Orbiting sensor boresight vector 2
   global XF_SENLIM_BOREVEC2;
   % Allow orbiting sensor to view sat against earth background
   global XF_SENLIM_KEARTH;
   % Orbiting sensor earth limb exclusion distance (km)
   global XF_SENLIM_ELIMB;
   % Orbiting sensor solar exclusion angle (deg)
   global XF_SENLIM_SOLEXCANG;
   % Orbiting sensor lunar exclusion angle (deg)
   global XF_SENLIM_LUNEXCANG;
   
   
   % Orbiting sensor min illumination angle (deg)
   global XF_SENLIM_MINIL;
   % Ground site twilight offset angle (deg)
   global XF_SENLIM_TWILIT;
   % Is special mobil sensor flag / column 9 in 1L card
   global XF_SENLIM_SMSEN;
   % Number of additional segments added to sensor limits
   global XF_SENLIM_NUMSEGS;
   % Space fence FOR's Az/El table file name
   global XF_SENLIM_FILE;
   % Number of rows in space fence FOR's Az/El table
   global XF_SENLIM_AZELROWS;
   
   %*******************************************************************************
   
   % Indexes of sensor location data
   % Sensor nubmer
   global XA_SENLOC_NUM;
   % Sensor location - astronomical latitude (deg)  (+=North/-=South)
   global XA_SENLOC_LAT;
   % Sensor location - astronomical longitude (deg) (+=West/-=East)
   global XA_SENLOC_LON;
   % Sensor ECR position X (km)
   global XA_SENLOC_POSX;
   % Sensor ECR position Y (km)
   global XA_SENLOC_POSY;
   % Sensor ECR position Z (km)
   global XA_SENLOC_POSZ;
   
   global XA_SENLOC_SIZE;
   
   %*******************************************************************************
   
   % Indexes of Sensor's sigmas & biases data fields
   % azimuth sigma (deg)
   global XAF_SENBS_AZSIGMA;
   % elevation sigma (deg)
   global XAF_SENBS_ELSIGMA;
   % range sigma (km)
   global XAF_SENBS_RGSIGMA;
   % range-rate sigma (km/sec)
   global XAF_SENBS_RRSIGMA;
   % az rate sigma (deg/sec)
   global XAF_SENBS_ARSIGMA;
   % el rate sigma (deg/sec)
   global XAF_SENBS_ERSIGMA;
   
   % azimuth bias (deg)
   global XAF_SENBS_AZBIAS;
   % elevation bias (deg)
   global XAF_SENBS_ELBIAS;
   % range bias (km)
   global XAF_SENBS_RGBIAS;
   % range-rate bias (km/sec)
   global XAF_SENBS_RRBIAS;
   % time bias (sec)
   global XAF_SENBS_TIMEBIAS;
   
   global XAF_SENBS_SIZE;
   
   % Named constants for different obs types
   % obs contains range rate only data
   global OT_RRATE;
   % obs contains azimuth, elevation data
   global OT_AZEL;
   % obs contains azimuth, elevation, and range data
   global OT_AZEL_RNG;
   % obs contains azimuth, elevation, range, and range rate data
   global OT_AZEL_RNGRRATE;
   % obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
   global OT_AZEL_ALL;
   % obs contains right ascention and declination data
   global OT_RADEC;
   % obs contains range only data
   global OT_RNGONLY;
   % obs contains azimuth, elevation, and sensor location data
   global OT_AZEL_SENPOS;
   % obs contains right ascension, declination, and sensor location data
   global OT_RADEC_SENPOS;
   % obs contains ECI position and velocity data
   global OT_VEL;
   % obs contains ECI position data
   global OT_POS;
   % obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
   global OT_SLR;
   % obs contains azimuth, elevation, sensor location, and range data
   global OT_M;
   % obs contains right ascension, declination, sensor location, and range data
   global OT_O;
   % obs contains TDOA/FDOA data
   global OT_RF;
   % obs contains range rate only data - for use in obs selection criteria
   global OT_RRATE_SELOB;
   
   
   
   % Sensor segment types
   % bounded-cone-typed limit: Boresight Az/El, Min/Max halfcone angle/Range, minimum cut-off elevation
   clear SEG_BCONE;
   % dome-typed limit: Min/Max Az/El/Range
   clear SEG_DOME;
   
   
   
   % Indexes of dome segment parameters
   % start azimuth (deg)
   clear XA_SEG_DOME_AZFR;
   % end azimuth (deg)
   clear XA_SEG_DOME_AZTO;
   % lower-bound elevation (deg)
   clear XA_SEG_DOME_ELFR;
   % higher-bound elevation (deg)
   clear XA_SEG_DOME_ELTO;
   % minimum range (km)
   clear XA_SEG_DOME_MINRNG;
   % maximum range (km)
   clear XA_SEG_DOME_MAXRNG;
   
   clear XA_SEG_DOME_SIZE;
   
   
   % Indexes of bounded-cone segment parameters
   % boresight azimuth (deg)
   clear XA_SEG_BCONE_BSAZ;
   % boresight elevation (deg)
   clear XA_SEG_BCONE_BSEL;
   % offboresight lower angle (deg)
   clear XA_SEG_BCONE_ANGFR;
   % offboresight higher angle (deg)
   clear XA_SEG_BCONE_ANGTO;
   % minimum range (km)
   clear XA_SEG_BCONE_MINRNG;
   % maximum range (km)
   clear XA_SEG_BCONE_MAXRNG;
   % minimum cut-off elevation (deg)
   clear XA_SEG_BCONE_MINEL;
   
   clear XA_SEG_BCONE_SIZE;
   
   
   % Different key mode options for senKey
   % Default - duplicate sensor can not be loaded in binary tree
   clear SEN_KEYMODE_NODUP;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   clear SEN_KEYMODE_DMA;
   
   % sensor key possible errors
   % Bad sensor key
   clear BADSENKEY;
   % Duplicate sensor key
   clear DUPSENKEY;
   
   % Different sensor types
   % bounded-cone tracker
   clear VT_BCT;
   % conventional tracker
   clear VT_CON;
   % optical tracker
   clear VT_OPT;
   % constant azimuth fan sweeping vertical plane
   clear VT_FAN;
   % orbiting sensor (same as 'M' or 'O')
   clear VT_ORB;
   % space fence's field of regard FOR ('R' = 86)
   clear VT_FOR;
   % space fence's surveillance fan FOV ('V' = 82)
   clear VT_FOV;
   
   % Different sensor location types
   % Sensor location is in ECR
   clear SENLOC_TYPE_ECR;
   % Sensor location is in EFG
   clear SENLOC_TYPE_EFG;
   % Sensor location is in LLH
   clear SENLOC_TYPE_LLH;
   
   
   % Sensor Data -
   %*******************************************************************************
   % generic data for all sensor types
   %*******************************************************************************
   % sensor number
   clear XA_SEN_GEN_SENNUM;
   % sensor minimum range (km) (=0 no minimum range check)
   clear XA_SEN_GEN_MINRNG;
   % sensor maxinmum range (km) (=0 no maximum range check)
   clear XA_SEN_GEN_MAXRNG;
   % range rate/relative velocity limit (km/sec) (=0 no range rate check)
   clear XA_SEN_GEN_RRLIM;
   % min/max range check (=0 apply min/max range limits, =1 accept all passes regardless of range)
   clear XA_SEN_GEN_RNGLIMFLG;
   % is special mobil sensor flag / column 9 in 1L card (=0 non mobile sensor, =1 mobile sensor)
   clear XA_SEN_GEN_SMSEN;
   
   
   %*******************************************************************************
   
   % sensor location - for all ground-based sensor types (non-orbiting)
   % location type (see SENLOC_TYPE_? for available types)
   clear XA_SEN_GRN_LOCTYPE;
   % sensor location ECR/EFG X component (km) or LLH/Lat (deg)
   clear XA_SEN_GRN_POS1;
   % sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg)
   clear XA_SEN_GRN_POS2;
   % sensor location ECR/EFG Z component (km) or LLH/Height (km)
   clear XA_SEN_GRN_POS3;
   % astronomical latitude (deg) (+: North, -: South)
   clear XA_SEN_GRN_ASTROLAT;
   % astronomical longitude (deg) (+: West, -: East)
   clear XA_SEN_GRN_ASTROLON;
   
   
   %*******************************************************************************
   % sensor limits - for LAMOD only (not needed by Rotas/BatchDC)
   %*******************************************************************************
   % Bounded cone tracker (conical sensor) (VT_BCT)
   % conical sensor boresight azimuth angle (deg)
   clear XA_SEN_BCT_BRSGHTAZ;
   % conical sensor boresight elevation angle (deg)
   clear XA_SEN_BCT_BRSGHTEL;
   % coninal sensor off-boresight angle/half cone angle (deg)
   clear XA_SEN_BCT_HALFANG;
   % conical sensor minimum elevation angle (deg)
   clear XA_SEN_BCT_MINEL;
   
   %*******************************************************************************
   % Conventinoal tracker (VT_CON)
   % low elevation limit #1 (deg)
   clear XA_SEN_CON_ELFR1;
   % hight elevation limit #1 (deg)
   clear XA_SEN_CON_ELTO1;
   % low azimuth limit #1 (deg)
   clear XA_SEN_CON_AZFR1;
   % hight azimuth limit #1 (deg)
   clear XA_SEN_CON_AZTO1;
   % low elevation limit #2 (deg)
   clear XA_SEN_CON_ELFR2;
   % hight elevation limit #2 (deg)
   clear XA_SEN_CON_ELTO2;
   % low azimuth limit #2 (deg)
   clear XA_SEN_CON_AZFR2;
   % hight azimuth limit #2 (deg)
   clear XA_SEN_CON_AZTO2;
   
   %*******************************************************************************
   % Optical tracker (VT_OPT)
   % low elevation limit #1 (deg)
   clear XA_SEN_OPT_ELFR1;
   % hight elevation limit #1 (deg)
   clear XA_SEN_OPT_ELTO1;
   % low azimuth limit #1 (deg)
   clear XA_SEN_OPT_AZFR1;
   % hight azimuth limit #1 (deg)
   clear XA_SEN_OPT_AZTO1;
   % low elevation limit #2 (deg)
   clear XA_SEN_OPT_ELFR2;
   % hight elevation limit #2 (deg)
   clear XA_SEN_OPT_ELTO2;
   % low azimuth limit #2 (deg)
   clear XA_SEN_OPT_AZFR2;
   % hight azimuth limit #2 (deg)
   clear XA_SEN_OPT_AZTO2;
   
   % optical sensor solar exclusion angle (to check for solar aspect angle limit)
   clear XA_SEN_OPT_SEA;
   % ground site twilight offset angle
   clear XA_SEN_OPT_TWILGHT;
   % visual pass check (sensor in dark, satellite illuminated)
   clear XA_SEN_OPT_VISCHK;
   
   %*******************************************************************************
   % Constant azimuth fan (VT_FAN)
   % fan's constant azimuth (deg) - fan sweeps a vertical plane  [0, 180)
   clear XA_SEN_FAN_AZ;
   % fan's tilt angle (deg)  (-: North/West tilt, +: South/East tilt) [-90, 90]
   clear XA_SEN_FAN_TILTANGLE;
   % fan's off-boresight angle (deg) [0, 90]
   clear XA_SEN_FAN_OBSANGLE;
   
   
   %*******************************************************************************
   % Orbiting sensor (VT_ORB)
   % orbiting sensor's satellite number
   clear XA_SEN_ORB_SATNUM;
   
   % orbiting sensor's off-boresight angle - low elevation limit #1 (deg)
   clear XA_SEN_ORB_ELMIN1;
   % orbiting sensor's off-boresight angle - hight elevation limit #1 (deg)
   clear XA_SEN_ORB_ELMAX1;
   % orbiting sensor's off-boresight clock angle - low azimuth limit #1 (deg)
   clear XA_SEN_ORB_AZMIN1;
   % orbiting sensor's off-boresight clock angle - hight azimuth limit #1 (deg)
   clear XA_SEN_ORB_AZMAX1;
   % orbiting sensor's off-boresight angle - low elevation limit #2 (deg)
   clear XA_SEN_ORB_ELMIN2;
   % orbiting sensor's off-boresight angle - hight elevation limit #2 (deg)
   clear XA_SEN_ORB_ELMAX2;
   % orbiting sensor's off-boresight clock angle - low azimuth limit #2 (deg)
   clear XA_SEN_ORB_AZMIN2;
   % orbiting sensor's off-boresight clock angle - hight azimuth limit #2 (deg)
   clear XA_SEN_ORB_AZMAX2;
   
   % orbiting sensor earth limb exclusion distance (km)
   clear XA_SEN_ORB_EARTHLIMB;
   % orbiting sensor solar exclusion angle (deg)
   clear XA_SEN_ORB_SEA;
   % orbiting sensor lunar exclusion angle (deg)
   clear XA_SEN_ORB_LEA;
   % orbiting sensor minimum illumination angle (deg)
   clear XA_SEN_ORB_MINILLUM;
   % orbiting sensor allow earth in the back ground
   clear XA_SEN_ORB_EARTHBRND;
   % orbiting sensor planetary restriction
   clear XA_SEN_ORB_PLNTRYRES;
   
   %*******************************************************************************
   
   % Space fence Field Of Regard (VT_FOR)
   % Sensor limits are defined in the az/el table file (using XS_SEN_FOR_AZFILE_255_256)
   
   
   %*******************************************************************************
   
   % Space fence Field Of View (VT_FOV)
   % north/south beam width (deg)
   clear XA_SEN_FOV_BEAMWIDTH;
   % fence tilt angle (deg)
   clear XA_SEN_FOV_TILTANGLE;
   
   
   %*******************************************************************************
   
   % Output control parameters (shouldn't be part of sensor data - just for backward compatibility)
   % unit on range/range rate (0= km, km/sec; 1=nm, nm/sec)
   clear XA_SEN_GEN_UNIT;
   % output interval (min)
   clear XA_SEN_GEN_INTERVAL;
   % max number of points per pass
   clear XA_SEN_GEN_PTSPERPAS;
   
   
   % sensor sigmas/biases - ROTAS/BATCHDC
   % azimuth sigma (deg)
   clear XA_SEN_GEN_AZSIGMA;
   % elevation sigma (deg)
   clear XA_SEN_GEN_ELSIGMA;
   % range sigma (km)
   clear XA_SEN_GEN_RGSIGMA;
   % range-rate sigma (km/sec)
   clear XA_SEN_GEN_RRSIGMA;
   % az rate sigma (deg/sec)
   clear XA_SEN_GEN_ARSIGMA;
   % el rate sigma (deg/sec)
   clear XA_SEN_GEN_ERSIGMA;
   % azimuth bias (deg)
   clear XA_SEN_GEN_AZBIAS;
   % elevation bias (deg)
   clear XA_SEN_GEN_ELBIAS;
   % range bias (km)
   clear XA_SEN_GEN_RGBIAS;
   % range-rate bias (km/sec)
   clear XA_SEN_GEN_RRBIAS;
   % time bias (sec)
   clear XA_SEN_GEN_TIMEBIAS;
   
   
   clear XA_SEN_SIZE;
   
   % Indexes of SENSOR text data in an array of chars
   % The last two numbers in the field name are the zero-based starting character position and the number of characters in the text field
   % sensor security classification (1-character length)
   clear XS_SEN_SECCLASS_0_1;
   % sensor viewing type (1-character length)
   clear XS_SEN_VIEWTYPE_1_1;
   % sensor observation type (1-character length)
   clear XS_SEN_OBSTYPE_2_1;
   % sensor description/narrative/notes (24-character length)
   clear XS_SEN_DSCRPTN_3_24;
   % orbiting sensor's boresight vector #1 (1-character length)
   clear XS_SEN_ORB_BSVEC1_27_1;
   % orbiting sensor's boresight vector #2 (1-character length)
   clear XS_SEN_ORB_BSVEC2_28_1;
   % for VT_FOR only, az/el table file path (256-character length)
   clear XS_SEN_FOR_AZFILE_255_256;
   
   clear XS_SEN_LENGTH;
   
   % Indexes of Sensor data fields
   % Sensor number
   clear XF_SENLOC_NUM;
   % Sensor location - astronomical longitude (deg) (+=West/-=East)
   clear XF_SENLOC_LAT;
   % Sensor location - astronomical latitude (deg)  (+=North/-=South)
   clear XF_SENLOC_LON;
   % Sensor ECR position X (km)
   clear XF_SENLOC_POSX;
   % Sensor ECR position Y (km)
   clear XF_SENLOC_POSY;
   % Sensor ECR position Z (km)
   clear XF_SENLOC_POSZ;
   % Sensor description
   clear XF_SENLOC_DESC;
   % Orbiting sensor's number (satNum)
   clear XF_SENLOC_ORBSATNUM;
   % Sensor classification
   clear XF_SENLOC_SECCLASS;
   
   % Sensor view type
   clear XF_SENLIM_VIEWTYPE;
   % Sensor observation type
   clear XF_SENLIM_OBSTYPE;
   % Unit on range/range rate
   clear XF_SENLIM_UNIT;
   % Max observable range (km)
   clear XF_SENLIM_MAXRNG;
   % Min observable range (km)
   clear XF_SENLIM_MINRNG;
   % Output interval (min)
   clear XF_SENLIM_INTERVAL;
   % Visual pass control flag
   clear XF_SENLIM_OPTVISFLG;
   % Range limit control flag
   clear XF_SENLIM_RNGLIMFLG;
   % Max number of points per pass
   clear XF_SENLIM_PTSPERPAS;
   % Range rate/relative velocity limit (km/sec)
   clear XF_SENLIM_RRLIM;
   
   % Elevation limits #1 (low, deg) or orbiting sensor off-boresight angle (low, deg) or conical sensor boresight elvation (deg)
   clear XF_SENLIM_ELLIM1;
   % Elevation limits #2 (high, deg) or orbiting sensor off-boresight angle (high, deg) or conical sensor boresight minimum angle (deg)
   clear XF_SENLIM_ELLIM2;
   % Elevation limits #3 (low, deg) or orbiting sensor off-boresight angle (low, deg) or
   clear XF_SENLIM_ELLIM3;
   % Elevation limits #4 (high, deg) or orbiting sensor off-boresight angle (high, deg)
   clear XF_SENLIM_ELLIM4;
   % Azimuth limits #1 (low, deg) or orbiting sensor clock angle (from, deg) or conical sensor boresight azimuth (deg)
   clear XF_SENLIM_AZLIM1;
   % Azimuth limits #2 (high, deg) or orbiting sensor clock angle (to, deg) or conical sensor off-boresight azimuth angle (deg)
   clear XF_SENLIM_AZLIM2;
   % Azimuth limits #3 (low, deg) or orbiting sensor clock angle (from, deg)
   clear XF_SENLIM_AZLIM3;
   % Azimuth limits #4 (high, deg) or orbiting sensor clock angle (to, deg)
   clear XF_SENLIM_AZLIM4;
   
   
   % Orbiting sensor planetary restriction
   clear XF_SENLIM_PLNTRYRES;
   % Orbiting sensor boresight vector 1
   clear XF_SENLIM_BOREVEC1;
   % Orbiting sensor boresight vector 2
   clear XF_SENLIM_BOREVEC2;
   % Allow orbiting sensor to view sat against earth background
   clear XF_SENLIM_KEARTH;
   % Orbiting sensor earth limb exclusion distance (km)
   clear XF_SENLIM_ELIMB;
   % Orbiting sensor solar exclusion angle (deg)
   clear XF_SENLIM_SOLEXCANG;
   % Orbiting sensor lunar exclusion angle (deg)
   clear XF_SENLIM_LUNEXCANG;
   
   
   % Orbiting sensor min illumination angle (deg)
   clear XF_SENLIM_MINIL;
   % Ground site twilight offset angle (deg)
   clear XF_SENLIM_TWILIT;
   % Is special mobil sensor flag / column 9 in 1L card
   clear XF_SENLIM_SMSEN;
   % Number of additional segments added to sensor limits
   clear XF_SENLIM_NUMSEGS;
   % Space fence FOR's Az/El table file name
   clear XF_SENLIM_FILE;
   % Number of rows in space fence FOR's Az/El table
   clear XF_SENLIM_AZELROWS;
   
   %*******************************************************************************
   
   % Indexes of sensor location data
   % Sensor nubmer
   clear XA_SENLOC_NUM;
   % Sensor location - astronomical latitude (deg)  (+=North/-=South)
   clear XA_SENLOC_LAT;
   % Sensor location - astronomical longitude (deg) (+=West/-=East)
   clear XA_SENLOC_LON;
   % Sensor ECR position X (km)
   clear XA_SENLOC_POSX;
   % Sensor ECR position Y (km)
   clear XA_SENLOC_POSY;
   % Sensor ECR position Z (km)
   clear XA_SENLOC_POSZ;
   
   clear XA_SENLOC_SIZE;
   
   %*******************************************************************************
   
   % Indexes of Sensor's sigmas & biases data fields
   % azimuth sigma (deg)
   clear XAF_SENBS_AZSIGMA;
   % elevation sigma (deg)
   clear XAF_SENBS_ELSIGMA;
   % range sigma (km)
   clear XAF_SENBS_RGSIGMA;
   % range-rate sigma (km/sec)
   clear XAF_SENBS_RRSIGMA;
   % az rate sigma (deg/sec)
   clear XAF_SENBS_ARSIGMA;
   % el rate sigma (deg/sec)
   clear XAF_SENBS_ERSIGMA;
   
   % azimuth bias (deg)
   clear XAF_SENBS_AZBIAS;
   % elevation bias (deg)
   clear XAF_SENBS_ELBIAS;
   % range bias (km)
   clear XAF_SENBS_RGBIAS;
   % range-rate bias (km/sec)
   clear XAF_SENBS_RRBIAS;
   % time bias (sec)
   clear XAF_SENBS_TIMEBIAS;
   
   clear XAF_SENBS_SIZE;
   
   % Named constants for different obs types
   % obs contains range rate only data
   clear OT_RRATE;
   % obs contains azimuth, elevation data
   clear OT_AZEL;
   % obs contains azimuth, elevation, and range data
   clear OT_AZEL_RNG;
   % obs contains azimuth, elevation, range, and range rate data
   clear OT_AZEL_RNGRRATE;
   % obs contains azimuth, elevation, range, range rate, azimuth rate, elevation rate, and range acceleration data
   clear OT_AZEL_ALL;
   % obs contains right ascention and declination data
   clear OT_RADEC;
   % obs contains range only data
   clear OT_RNGONLY;
   % obs contains azimuth, elevation, and sensor location data
   clear OT_AZEL_SENPOS;
   % obs contains right ascension, declination, and sensor location data
   clear OT_RADEC_SENPOS;
   % obs contains ECI position and velocity data
   clear OT_VEL;
   % obs contains ECI position data
   clear OT_POS;
   % obs contains Satellite Laser Ranging (SLR) - range only, with tropospheric refraction term data
   clear OT_SLR;
   % obs contains azimuth, elevation, sensor location, and range data
   clear OT_M;
   % obs contains right ascension, declination, sensor location, and range data
   clear OT_O;
   % obs contains TDOA/FDOA data
   clear OT_RF;
   % obs contains range rate only data - for use in obs selection criteria
   clear OT_RRATE_SELOB;
   
   
   FreeSensorDll;
   clear LoadSensorDll;
   clear FreeSensorDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Sensor DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. 
   %  The error occurs if the users forget to load and initialize all the prerequisite dlls, as listed 
   %  in the DLL Prerequisite section, before using this DLL.
   clear SensorInit
   
   %  Returns information about the current version of Sensor DLL. 
   %  The information is placed in the string parameter passed in.
   %  The returned string provides information about the version number, build date, and the platform of the Sensor DLL.
   clear SensorGetInfo
   
   %  Loads sensor data, contained in a text file, into the set of loaded sensors
   %  The users can use this function repeatedly to load sensor data from different input files. 
   %  However, only unique senKeys are stored in the binary tree.  New sensor data will overwrite the existing data. 
   %  
   %  Sensor data can be included directly in the main input file or they can be read from a separate file 
   %  identified with "SENFIL=[pathname\filename]".
   %  
   %  This function only reads sensor data from the main input file or the file identified with SENFIL in the input file. 
   %  It won't read anything else.
   clear SensorLoadFile
   
   %  Loads a single sensor-typed card
   clear SensorLoadCard
   
   %  Saves the currently loaded sensor data to a file
   %  If the users call this routine immediately after the SensorLoadFile(). 
   %  The sensor data contents in the two file should be the same (minus duplicated sensors or bad sensors).
   %  
   %  The purpose of this function is to save the current state of the loaded sensors, usually used in GUI applications, for future use.
   clear SensorSaveFile
   
   %  Removes a sensor, represented by the senKey, from the set of currently loaded sensors
   %  If the users enter an invalid senKey - a non-existing senKey, the function will return a non-zero value indicating an error.
   clear SensorRemove
   
   %  Removes all currently loaded sensors from memory
   %  The function returns zero if all the loaded sensors are removed successfully from the SENSOR DLL's binary tree. Other values indicate an error.
   clear SensorRemoveAll
   
   %  Returns the number of sensors currently loaded
   %  See SensorGetLoaded for example.
   %  This function is useful for dynamically allocating memory for the array that is passed to the function SensorGetLoaded().
   clear SensorGetCount
   
   %  Retrieves all of the currently loaded senKeys. 
   %  These senKeys can be used to access the internal data for the sensors.
   %  It is recommended that SensorGetCount() is used to count how many sensors are currently loaded in the SENSOR DLL's binary tree. 
   %  The user can then use this number to dynamically allocate the senKeys array and pass it to this function. 
   %  
   %  If the users prefer to pass a static array to the function, make sure it is big enough to store all the senKeys in memory.
   clear SensorGetLoaded
   
   %  Retrieves sensor location data for a sensor
   clear SensorGetLocAll
   
   %  Adds/updates sensor location data (non DMA) for a sensor using individually provided field values
   %  This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   %  
   %  If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
   %  
   %  If it is an orbiting sensor, the users need to provide the associated satellite number.
   clear SensorSetLocAll
   
   %  Retrieves the value of an individual field of sensor location data
   %  <br>
   %  Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   %  <br>
   %  The table below shows the values for the xf_SenLoc parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>1</td><td>Sensor number</td></tr>
   %  <tr><td>2</td><td>Sensor astronomical latitude (deg)</td></tr>
   %  <tr><td>3</td><td>Sensor astronomical longitude (deg)</td></tr>
   %  <tr><td>4</td><td>Sensor position X (km)</td></tr>
   %  <tr><td>5</td><td>Sensor position Y (km)</td></tr>
   %  <tr><td>6</td><td>Sensor position Z (km)</td></tr>
   %  <tr><td>7</td><td>Sensor description</td></tr>
   %  <tr><td>8</td><td>Orbiting sensor's number (satNum)   </td></tr>
   %  <tr><td>9</td><td>Sensor classification </td></tr>   
   %  </table>   
   clear SensorGetLocField
   
   %  Updates the value of an individual field of sensor location data
   %  See SensorGetLocField for a description of the xf_SenLoc values.
   %  The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   %  
   %  Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   clear SensorSetLocField
   
   %  Retrieves sensor limits data
   %  This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
   clear SensorGet1L
   
   %  Adds/updates sensor limits data (non DMA) via individually provided field values
   %  This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   %  
   %  If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.
   %  
   %  If it is an orbiting sensor, the users need to provide the associated satellite number.
   clear SensorSet1L
   
   %  Retrieves additional sensor limits data
   %  This function is shared between ground sensors and orbiting sensors. Make sure to interpret the data correctly.
   clear SensorGet2L
   
   %  Adds/updates additional sensor limits data
   %  This function is shared between ground sensors and orbiting sensors. The users need to provide the proper data fields for each sensor type.
   %  
   %  If the function is invoked with a senKey that already exists in the SENSOR DLL's binary tree, the senKey's associated data will be updated with the provided data.	
   clear SensorSet2L
   
   %  Retrieves an individual field of sensor limits data
   %  <br>
   %  Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   %  <br>
   %  The table below shows the values for the xf_SenLim parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>11</td><td> Sensor view type</td></tr>
   %  <tr><td>12</td><td> Sensor observation type</td></tr>
   %  <tr><td>13</td><td> Unit on range/range rate</td></tr>
   %  <tr><td>14</td><td> Max observable range (km)</td></tr>
   %  <tr><td>15</td><td> Min observable range (km)</td></tr>
   %  <tr><td>16</td><td> Output interval (min)</td></tr>
   %  <tr><td>17</td><td> Visual pass control flag</td></tr>
   %  <tr><td>18</td><td> Range limit control flag </td></tr>
   %  <tr><td>19</td><td> Max number of points per pass</td></tr>
   %  <tr><td>20</td><td> Range rate/relative velocity limit (km/sec)</td></tr>
   %  <tr><td>31</td><td> Elevation limits (deg) 1, 2, 3, 4 or Sensor off-boresight angle (deg)</td></tr>
   %  <tr><td>32</td><td> </td></tr>
   %  <tr><td>33</td><td> </td></tr>
   %  <tr><td>34</td><td> </td></tr>
   %  <tr><td>35</td><td> Azimuth limits (deg) 1, 2,3, 4 or Sensor clock angle (deg)</td></tr>
   %  <tr><td>36</td><td> </td></tr>
   %  <tr><td>37</td><td> </td></tr>
   %  <tr><td>38</td><td> </td></tr>
   %  <tr><td>52</td><td> Orbiting sensor planetary restriction</td></tr>
   %  <tr><td>53</td><td> Orbiting sensor boresight vector 1</td></tr>
   %  <tr><td>54</td><td> Orbiting sensor boresight vector 2</td></tr>
   %  <tr><td>55</td><td> Allow orbiting sensor to view sat against earth background</td></tr>
   %  <tr><td>56</td><td> Orbiting sensor earth limb exclusion distance (km)</td></tr>
   %  <tr><td>57</td><td> Orbiting sensor solar exclusion angle (deg)   </td></tr>
   %  <tr><td>58</td><td> Orbiting sensor lunar exclusion angle (deg)</td></tr>
   %  <tr><td>59</td><td> Orbiting sensor min illumination angle (deg)</td></tr>
   %  <tr><td>60</td><td> Ground site twilight offset angle (deg)</td></tr>    
   %  </table>   
   clear SensorGetLimField
   
   %  Updates an individual field of sensor limits data
   %  See SensorGetLimField for a description of the xf_SenLim parameter.
   %  The set value type was intentionally chosen as a character string because it allows the users to set value for different data types.
   %  
   %  Make sure to use the appropriate field index for ground sensors and orbiting sensors.
   clear SensorSetLimField
   
   %  Retrieves sensor sigma/bias data
   clear SensorGetBS
   
   %  Adds/updates sensor sigma/bias data (non DMA)
   clear SensorSetBS
   
   %  Retrieves an individual field of sensor sigma/bias data
   clear SensorGetBSField
   
   %  Updates an individual field of sensor sigma/bias data
   clear SensorSetBSField
   
   %  Retrieves the sensor data in form of S-Card, L1-Card, and L2-Card of the sensor
   clear SensorGetLines
   
   %  Gets sensor's orbiting satellite's satKey
   clear SensorGetOrbSatKey
   
   %  Sets sensor's orbiting satellite's satKey
   clear SensorSetOrbSatKey
   
   %  Loads Space Fence's detailed azimuth-elevation definition table
   clear SensorLoadAzElTable
   
   %  Adds a new sensor segment whose limits defined by the input parameters - a cone or a dome portion 
   clear SensorAddSegment
   
   %  Retrieves sensor segment data of the specified segment (segNum)
   clear SensorGetSegment
   
   %  Sets sensor key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_SEN_ON" -
   %  and is currently calling any of these methods: DllMainLoadFile(), or SenLoadFile()
   clear SetSenKeyMode
   
   %  Gets current sensor key mode
   clear GetSenKeyMode
   
   %  Returs the sensor number associated with the input senKey
   clear SenNumOf
   
   %  Returns the first senKey from the currently loaded set of sensors that contains the specified sensor number.
   %  A negative value will be returned if there is an error.
   clear SensorGetSenKey
   
   %  This function is similar to SensorGetSenKey but designed to be used in Matlab. 
   %  Matlab doesn't correctly return the 19-digit satellite key using SensorGetSenKey. This method is an alternative way to return the senKey output.
   %  A negative value will be returned in senKey if there is an error.
   clear SensorGetSenKeyML
   
   %  Adds a sensor (location, limits, sigmas/biases), using its data stored in the input arrays.
   clear SensorAddFrArray
   
   %  Retrieves sensor data (location, limits, sigmas/biases) and stores it in the passing arrays.
   clear SensorDataToArray
endfunction
% ========================= End of auto generated code ==========================
