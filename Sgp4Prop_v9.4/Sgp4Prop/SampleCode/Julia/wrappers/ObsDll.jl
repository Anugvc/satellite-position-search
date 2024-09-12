# This wrapper file was generated automatically by the GenDllWrappers program.
module ObsDll

if Sys.iswindows()
  libname="Obs"
else
  libname="libobs"
end

# Export Constant Variables
export EQUINOX_OBSTIME
export EQUINOX_OBSYEAR
export EQUINOX_J2K
export EQUINOX_B1950
export SORT_TIMESENTYPEEL
export SORT_TIMEEL
export SORT_TIMESENTYPEELSAT
export SORT_SENSATTIMEEL
export SORT_SENTIMEEL
export SORT_SENSATTYPETIMEEL
export SORT_SATTIMESENTYPEEL
export SORT_ORDERASREAD
export SORT_SATSENTIME
export OBSFORM_B3
export OBSFORM_TTY
export OBSFORM_CSV
export OBSFORM_RF
export BADOBSKEY
export DUPOBSKEY
export OBS_KEYMODE_NODUP
export OBS_KEYMODE_DMA
export CSVSIGMATYPE
export XF_OBS_SECCLASS
export XF_OBS_SATNUM
export XF_OBS_SENNUM
export XF_OBS_DS50UTC
export XF_OBS_ELEVATION
export XF_OBS_DECLINATION
export XF_OBS_AZIMUTH
export XF_OBS_RA
export XF_OBS_RANGE
export XF_OBS_RANGERATE
export XF_OBS_ELRATE
export XF_OBS_AZRATE
export XF_OBS_RANGEACCEL
export XF_OBS_OBSTYPE
export XF_OBS_TRACKIND
export XF_OBS_ASTAT
export XF_OBS_SITETAG
export XF_OBS_SPADOCTAG
export XF_OBS_POSE
export XF_OBS_POSF
export XF_OBS_POSG
export XF_OBS_POSX
export XF_OBS_POSY
export XF_OBS_POSZ
export XF_OBS_RCS_PP
export XF_OBS_RCS_OP
export XF_OBS_RCS_PPS
export XF_OBS_RCS_OPS
export XF_OBS_SNR
export XF_OBS_BORE_AZ
export XF_OBS_BORE_EL
export XF_OBS_VISMAG
export XF_OBS_VISMAG_NORM
export XF_OBS_SOL_PHASE
export XF_OBS_FRAME
export XF_OBS_ABERRATION
export XF_OBS_ASTAT_METHOD
export XA_OBS_SECCLASS
export XA_OBS_SATNUM
export XA_OBS_SENNUM
export XA_OBS_DS50UTC
export XA_OBS_OBSTYPE
export XA_OBS_ELORDEC
export XA_OBS_AZORRA
export XA_OBS_RANGE
export XA_OBS_RANGERATE
export XA_OBS_ELRATE
export XA_OBS_AZRATE
export XA_OBS_RANGEACCEL
export XA_OBS_TRACKIND
export XA_OBS_ASTAT
export XA_OBS_SITETAG
export XA_OBS_SPADOCTAG
export XA_OBS_POSX
export XA_OBS_POSY
export XA_OBS_POSZ
export XA_OBS_VELX
export XA_OBS_VELY
export XA_OBS_VELZ
export XA_OBS_YROFEQNX
export XA_OBS_ABERRATION
export XA_OBS_AZORRABIAS
export XA_OBS_ELORDECBIAS
export XA_OBS_RGBIAS
export XA_OBS_RRBIAS
export XA_OBS_TIMEBIAS
export XA_OBS_RAZORRABIAS
export XA_OBS_RELORDECBIAS
export XA_OBS_SIGMATYPE
export XA_OBS_SIGMAEL1
export XA_OBS_SIGMAEL2
export XA_OBS_SIGMAEL3
export XA_OBS_SIGMAEL4
export XA_OBS_SIGMAEL5
export XA_OBS_SIGMAEL6
export XA_OBS_SIGMAEL7
export XA_OBS_SIGMAEL8
export XA_OBS_SIGMAEL9
export XA_OBS_SIGMAEL10
export XA_OBS_SIGMAEL11
export XA_OBS_SIGMAEL12
export XA_OBS_SIGMAEL13
export XA_OBS_SIGMAEL14
export XA_OBS_SIGMAEL15
export XA_OBS_SIGMAEL16
export XA_OBS_SIGMAEL17
export XA_OBS_SIGMAEL18
export XA_OBS_SIGMAEL19
export XA_OBS_SIGMAEL20
export XA_OBS_SIGMAEL21
export XA_OBS_SIZE
export XA_OTCSV_SECCLASS
export XA_OTCSV_SATNUM
export XA_OTCSV_SENNUM
export XA_OTCSV_DS50UTC
export XA_OTCSV_ELORDEC
export XA_OTCSV_AZORRA
export XA_OTCSV_RANGE
export XA_OTCSV_RANGERATE
export XA_OTCSV_ELRATE
export XA_OTCSV_AZRATE
export XA_OTCSV_RANGEACCEL
export XA_OTCSV_OBSTYPE
export XA_OTCSV_TRACKIND
export XA_OTCSV_ASTAT
export XA_OTCSV_SITETAG
export XA_OTCSV_SPADOCTAG
export XA_OTCSV_POSX
export XA_OTCSV_POSY
export XA_OTCSV_POSZ
export XA_OTCSV_VELX
export XA_OTCSV_VELY
export XA_OTCSV_VELZ
export XA_OTCSV_YROFEQNX
export XA_OTCSV_RCS_PP
export XA_OTCSV_RCS_OP
export XA_OTCSV_RCS_PPS
export XA_OTCSV_RCS_OPS
export XA_OTCSV_SNR
export XA_OTCSV_BORE_AZ
export XA_OTCSV_BORE_EL
export XA_OTCSV_VISMAG
export XA_OTCSV_VISMAG_NORM
export XA_OTCSV_SOL_PHASE
export XA_OTCSV_FRAME
export XA_OTCSV_ABERRATION
export XA_OTCSV_ASTAT_METHOD
export XA_OTCSV_SIGMATYPE
export XA_OTCSV_SIGMAEL1
export XA_OTCSV_SIGMAEL2
export XA_OTCSV_SIGMAEL3
export XA_OTCSV_SIGMAEL4
export XA_OTCSV_SIGMAEL5
export XA_OTCSV_SIGMAEL6
export XA_OTCSV_SIGMAEL7
export XA_OTCSV_BIAS1
export XA_OTCSV_BIAS2
export XA_OTCSV_BIAS3
export XA_OTCSV_BIAS4
export XA_OTCSV_BIAS5
export XA_OTCSV_SIZE
export XA_OBSTATE_SATNUM
export XA_OBSTATE_SENNUM
export XA_OBSTATE_DS50UTC
export XA_OBSTATE_POSX
export XA_OBSTATE_POSY
export XA_OBSTATE_POSZ
export XA_OBSTATE_VELX
export XA_OBSTATE_VELY
export XA_OBSTATE_VELZ
export XA_OBSTATE_LAT
export XA_OBSTATE_LON
export XA_OBSTATE_HGHT
export XA_OBSTATE_POSE
export XA_OBSTATE_POSF
export XA_OBSTATE_POSG
export XA_OBSTATE_SIZE
export XA_OT0_RANGERATE
export XA_OT1_ELEVATION
export XA_OT1_AZIMUTH
export XA_OT2_ELEVATION
export XA_OT2_AZIMUTH
export XA_OT2_RANGE
export XA_OT3_ELEVATION
export XA_OT3_AZIMUTH
export XA_OT3_RANGE
export XA_OT3_RANGERATE
export XA_OT4_ELEVATION
export XA_OT4_AZIMUTH
export XA_OT4_RANGE
export XA_OT4_RANGERATE
export XA_OT4_ELRATE
export XA_OT4_AZRATE
export XA_OT4_RANGEACCEL
export XA_OT5_DECL
export XA_OT5_RIGHTASC
export XA_OT5_YROFEQNX
export XA_OT5_ABERRATION
export XA_OT6_RANGE
export XA_OT8_ELEVATION
export XA_OT8_AZIMUTH
export XA_OT8_RANGE
export XA_OT8_POSE
export XA_OT8_POSF
export XA_OT8_POSG
export XA_OT9_DECL
export XA_OT9_RIGHTASC
export XA_OT9_RANGE
export XA_OT9_POSE
export XA_OT9_POSF
export XA_OT9_POSG
export XA_OT9_YROFEQNX
export XA_OT9_ABERRATION
export XA_OTP_POSX
export XA_OTP_POSY
export XA_OTP_POSZ
export XA_OTV_POSX
export XA_OTV_POSY
export XA_OTV_POSZ
export XA_OTV_VELX
export XA_OTV_VELY
export XA_OTV_VELZ
export XA_OT_SIZE
export XA_SELOB_MODE
export XA_SELOB_FRTIME
export XA_SELOB_TOTIME
export XA_SELOB_FRIDX
export XA_SELOB_TOIDX
export XA_SELOB_SAT1
export XA_SELOB_SAT2
export XA_SELOB_SAT3
export XA_SELOB_SAT4
export XA_SELOB_SAT5
export XA_SELOB_SAT6
export XA_SELOB_SAT7
export XA_SELOB_SAT8
export XA_SELOB_SAT9
export XA_SELOB_SAT10
export XA_SELOB_SEN1
export XA_SELOB_SEN2
export XA_SELOB_SEN3
export XA_SELOB_SEN4
export XA_SELOB_SEN5
export XA_SELOB_SEN6
export XA_SELOB_SEN7
export XA_SELOB_SEN8
export XA_SELOB_SEN9
export XA_SELOB_SEN10
export XA_SELOB_OT1
export XA_SELOB_OT2
export XA_SELOB_OT3
export XA_SELOB_OT4
export XA_SELOB_OT5
export XA_SELOB_OT6
export XA_SELOB_OT7
export XA_SELOB_OT8
export XA_SELOB_OT9
export XA_SELOB_OT10
export XA_SELOB_FRAZ
export XA_SELOB_TOAZ
export XA_SELOB_FREL
export XA_SELOB_TOEL
export XA_SELOB_FRRA
export XA_SELOB_TORA
export XA_SELOB_FRDEC
export XA_SELOB_TODEC
export XA_SELOB_FRRNG
export XA_SELOB_TORNG
export XA_SELOB_FRRNGRT
export XA_SELOB_TORNGRT
export XA_SELOB_FRAZRT
export XA_SELOB_TOAZRT
export XA_SELOB_FRELRT
export XA_SELOB_TOELRT
export XA_SELOB_FRASTAT
export XA_SELOB_TOASTAT
export XA_SELOB_SIZE

# Export Functions
export ObsInit
export ObsGetInfo
export ObsSetTTYYear
export ObsLoadFile
export ObsSaveFile
export ObsRemove
export ObsRemoveAll
export ObsGetCount
export ObsGetLoaded
export ObsLoadCard
export ObsLoadTwoCards
export ObsAddFrB3Card
export ObsAddFrB3CardML
export ObsB3ToCsv
export ObsCsvToB3
export ObsAddFrTTYCards
export ObsAddFrTTYCardsML
export ObsTTYToCsv
export ObsCsvToTTY
export ObsAddFrCsv
export ObsAddFrCsvML
export ObsAddFrFields
export ObsAddFrFieldsML
export ObsAddFrArray
export ObsAddFrArrayML
export ObsGetAllFields
export ObsDataToArray
export ObsUpdateFrFields
export ObsGetField
export ObsSetField
export ObsGetB3Card
export ObsGetTTYCard
export ObsGetCsv
export ObsFieldsToB3Card
export ObsFieldsToCsv
export ObsFieldsToTTYCard
export ObsFieldsToObsKey
export ObsFieldsToObsKeyML
export ObsB3Parse
export ObsParse
export ObsLoadFileGID
export ObsSaveFileGID
export ObsRemoveGID
export ObsGetCountGID
export ObsGetLoadedGID
export ObsTypeCToI
export ObsTypeIToC
export ObsResetSelObs
export ObsGetStates
export ObsDataToStates
export ObsArrToLines
export SetObsKeyMode
export GetObsKeyMode
export SatNumFrObsKey
export SenNumFrObsKey
export ObsGetSelected

# Equinox indicator
# time of observation
const EQUINOX_OBSTIME = 0;

# time @ 0 Jan Year of Date
const EQUINOX_OBSYEAR = 1;

# J2000
const EQUINOX_J2K     = 2;

# B1950
const EQUINOX_B1950   = 3;


# Indexes for sorting ob
# Sort options:
# (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
# (+/-) 2 = (descending/ascending) time, elevation
# (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
# (+/-) 4 = (descending/ascending) sensor, satno, time, elev
# (+/-) 5 = (descending/ascending) sensor, time, elevation
# (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
# (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
# (+/-)10 = (descending/ascending) satno, sensor, time

# sort order is time, sensor, obsType, elev (negative value for reverse order)
const SORT_TIMESENTYPEEL      =  1;

# sort order is time, elevation (negative value for reverse order)
const SORT_TIMEEL             =  2;

# sort order is time, sensor, otype, el, satno (negative value for reverse order)
const SORT_TIMESENTYPEELSAT   =  3;

# sort order is sensor, satno, time, elev (negative value for reverse order)
const SORT_SENSATTIMEEL       =  4;

# sort order is sensor, time, elevation (negative value for reverse order)
const SORT_SENTIMEEL          =  5;

# sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
const SORT_SENSATTYPETIMEEL   =  6;

# sort order is satno, time, sensor, otype, el (negative value for reverse order)
const SORT_SATTIMESENTYPEEL   =  7;

# sort order is the order of obs when they were loaded
const SORT_ORDERASREAD        =  8;

# sort order is satno, sensor, time (negative value for reverse order)
const SORT_SATSENTIME         = 10;



# Indexes of different obs file format
# B3 obs format
const OBSFORM_B3   = 0;

# Transmission obs format
const OBSFORM_TTY  = 1;

# CSV obs format
const OBSFORM_CSV  = 2;

# Radio Frequency (TDOA/FDOA) observations
const OBSFORM_RF   = 3;


const  BADOBSKEY = -1;
const  DUPOBSKEY = 0;


# Different key mode options for obsKey
# Default - duplicate obs can not be loaded in binary tree
const OBS_KEYMODE_NODUP  = 0;

# Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
const OBS_KEYMODE_DMA    = 1;


# CSV sigma type indicator
const  CSVSIGMATYPE = 7;

# Indexes of Observation data fields
# security classification
const XF_OBS_SECCLASS     =  1;

# satellite number
const XF_OBS_SATNUM       =  2;

# sensor number
const XF_OBS_SENNUM       =  3;

# observation time in days since 1950 UTC
const XF_OBS_DS50UTC      =  4;

# elevation (deg)
const XF_OBS_ELEVATION    =  5;

# declination (deg)
const XF_OBS_DECLINATION  =  6;

# azimuth (deg)
const XF_OBS_AZIMUTH      =  7;

# right-ascension (deg)
const XF_OBS_RA           =  8;

# range (km)
const XF_OBS_RANGE        =  9;

# range rate (km/s)
const XF_OBS_RANGERATE    = 10;

# elevation rate (deg/s)
const XF_OBS_ELRATE       = 11;

# azimuth rate (deg/s)
const XF_OBS_AZRATE       = 12;

# range acceleration (km/s^2)
const XF_OBS_RANGEACCEL   = 13;

# observation type
const XF_OBS_OBSTYPE      = 14;

# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
const XF_OBS_TRACKIND     = 15;

# association status assigned by SPADOC
const XF_OBS_ASTAT        = 16;

# original satellite number
const XF_OBS_SITETAG      = 17;

# SPADOC-asssigned tag number
const XF_OBS_SPADOCTAG    = 18;

# position X/EFG (km)
const XF_OBS_POSE         = 19;

# position Y/EFG (km)
const XF_OBS_POSF         = 20;

# position Z/EFG (km)
const XF_OBS_POSG         = 21;

# position X/ECI (km)
const XF_OBS_POSX         = 22;

# position Y/ECI (km)
const XF_OBS_POSY         = 23;

# position Z/ECI (km)
const XF_OBS_POSZ         = 24;


# Principal Polarization RCS
const XF_OBS_RCS_PP       = 25;

# Orthogonal Polarization RCS
const XF_OBS_RCS_OP       = 26;

# Principal Polarization RCS sigma
const XF_OBS_RCS_PPS      = 27;

# Orthogonal Polarization RCS sigma
const XF_OBS_RCS_OPS      = 28;

# Radar Signal to Noise Ratio
const XF_OBS_SNR          = 29;

# Azimuth of Boresite
const XF_OBS_BORE_AZ      = 30;

# Elevation of Boresite
const XF_OBS_BORE_EL      = 31;

# Apparent Visual magnitude
const XF_OBS_VISMAG       = 32;

# GEO Normalized Visual magnitude
const XF_OBS_VISMAG_NORM  = 33;

# Solar Phase Angle
const XF_OBS_SOL_PHASE    = 34;

# Frame Number
const XF_OBS_FRAME        = 35;

# Aberration correction indicator (0=YES, 1=NO)
const XF_OBS_ABERRATION   = 36;

# Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
const XF_OBS_ASTAT_METHOD = 37;


# Indexes of observation data in an array
# security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
const XA_OBS_SECCLASS     =  0;

# satellite number
const XA_OBS_SATNUM       =  1;

# sensor number
const XA_OBS_SENNUM       =  2;

# observation time in days since 1950 UTC
const XA_OBS_DS50UTC      =  3;

# observation type
const XA_OBS_OBSTYPE      = 11;



# elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
const XA_OBS_ELORDEC      =  4;

# azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
const XA_OBS_AZORRA       =  5;

# range (km)
const XA_OBS_RANGE        =  6;

# range rate (km/s) for non-optical obs type
const XA_OBS_RANGERATE    =  7;

# elevation rate (deg/s)
const XA_OBS_ELRATE       =  8;

# azimuth rate (deg/s)
const XA_OBS_AZRATE       =  9;

# range acceleration (km/s^2)
const XA_OBS_RANGEACCEL   = 10;

# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
const XA_OBS_TRACKIND     = 12;

# association status assigned by SPADOC
const XA_OBS_ASTAT        = 13;

# original satellite number
const XA_OBS_SITETAG      = 14;

# SPADOC-asssigned tag number
const XA_OBS_SPADOCTAG    = 15;

# position X/ECI or X/EFG (km)
const XA_OBS_POSX         = 16;

# position Y/ECI or Y/EFG (km)
const XA_OBS_POSY         = 17;

# position Z/ECI or Z/EFG (km)
const XA_OBS_POSZ         = 18;

# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
const XA_OBS_VELX         = 19;

# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
const XA_OBS_VELY         = 20;

# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
const XA_OBS_VELZ         = 21;

# year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
const XA_OBS_YROFEQNX     = 22;

# aberration indicator, 0-not corrected, 1-corrceted
const XA_OBS_ABERRATION   = 23;


# AZ/RA bias (deg)
const XA_OBS_AZORRABIAS   = 33;

# EL/DEC bias (deg)
const XA_OBS_ELORDECBIAS  = 34;

# Range bias (km)
const XA_OBS_RGBIAS       = 35;

# Range-rate bias (km/sec)
const XA_OBS_RRBIAS       = 36;

# Time bias (sec)
const XA_OBS_TIMEBIAS     = 37;

# AZ/RA rate bias (deg/sec)
const XA_OBS_RAZORRABIAS  = 38;

# EL/DEC rate bias (deg/sec)
const XA_OBS_RELORDECBIAS = 39;


# individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
const XA_OBS_SIGMATYPE    = 40;

# sigma - covariance element 1 - 6 elemens - Az sigma
const XA_OBS_SIGMAEL1     = 41;

# sigma - covariance element 2 - 6 elemens - El sigma
const XA_OBS_SIGMAEL2     = 42;

# sigma - covariance element 3 - 6 elemens - Range sigma
const XA_OBS_SIGMAEL3     = 43;

# sigma - covariance element 4 - 6 elemens - Range rate sigma
const XA_OBS_SIGMAEL4     = 44;

# sigma - covariance element 5 - 6 elemens - Az rate sigma
const XA_OBS_SIGMAEL5     = 45;

# sigma - covariance element 6 - 6 elemens - El rate sigma
const XA_OBS_SIGMAEL6     = 46;

# sigma - covariance element 7
const XA_OBS_SIGMAEL7     = 47;

# sigma - covariance element 8
const XA_OBS_SIGMAEL8     = 48;

# sigma - covariance element 9
const XA_OBS_SIGMAEL9     = 49;

# sigma - covariance element 10
const XA_OBS_SIGMAEL10    = 50;

# sigma - covariance element 11
const XA_OBS_SIGMAEL11    = 51;

# sigma - covariance element 12
const XA_OBS_SIGMAEL12    = 52;

# sigma - covariance element 13
const XA_OBS_SIGMAEL13    = 53;

# sigma - covariance element 14
const XA_OBS_SIGMAEL14    = 54;

# sigma - covariance element 15
const XA_OBS_SIGMAEL15    = 55;

# sigma - covariance element 16
const XA_OBS_SIGMAEL16    = 56;

# sigma - covariance element 17
const XA_OBS_SIGMAEL17    = 57;

# sigma - covariance element 18
const XA_OBS_SIGMAEL18    = 58;

# sigma - covariance element 19
const XA_OBS_SIGMAEL19    = 59;

# sigma - covariance element 20
const XA_OBS_SIGMAEL20    = 60;

# sigma - covariance element 21
const XA_OBS_SIGMAEL21    = 61;


const    XA_OBS_SIZE         = 64;

# Indexes of observation data in an array (Obs Type CSV specific)
# security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
const XA_OTCSV_SECCLASS     =  0;

# satellite number
const XA_OTCSV_SATNUM       =  1;

# sensor number
const XA_OTCSV_SENNUM       =  2;

# observation time in days since 1950 UTC
const XA_OTCSV_DS50UTC      =  3;

# elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
const XA_OTCSV_ELORDEC      =  4;

# azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
const XA_OTCSV_AZORRA       =  5;

# range (km)
const XA_OTCSV_RANGE        =  6;

# range rate (km/s) for non-optical obs type
const XA_OTCSV_RANGERATE    =  7;

# elevation rate (deg/s)
const XA_OTCSV_ELRATE       =  8;

# azimuth rate (deg/s)
const XA_OTCSV_AZRATE       =  9;

# range acceleration (km/s^2)
const XA_OTCSV_RANGEACCEL   = 10;

# observation type
const XA_OTCSV_OBSTYPE      = 11;

# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
const XA_OTCSV_TRACKIND     = 12;

# association status assigned by SPADOC
const XA_OTCSV_ASTAT        = 13;

# original satellite number
const XA_OTCSV_SITETAG      = 14;

# SPADOC-asssigned tag number
const XA_OTCSV_SPADOCTAG    = 15;

# position X/ECI or X/EFG (km)
const XA_OTCSV_POSX         = 16;

# position Y/ECI or Y/EFG (km)
const XA_OTCSV_POSY         = 17;

# position Z/ECI or Z/EFG (km)
const XA_OTCSV_POSZ         = 18;

# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
const XA_OTCSV_VELX         = 19;

# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
const XA_OTCSV_VELY         = 20;

# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
const XA_OTCSV_VELZ         = 21;

# year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
const XA_OTCSV_YROFEQNX     = 22;


# Principal Polarization RCS
const XA_OTCSV_RCS_PP       = 23;

# Orthogonal Polarization RCS
const XA_OTCSV_RCS_OP       = 24;

# Principal Polarization RCS sigma
const XA_OTCSV_RCS_PPS      = 25;

# Orthogonal Polarization RCS sigma
const XA_OTCSV_RCS_OPS      = 26;

# Radar Signal to Noise Ratio
const XA_OTCSV_SNR          = 27;

# Azimuth of Boresite
const XA_OTCSV_BORE_AZ      = 28;

# Elevation of Boresite
const XA_OTCSV_BORE_EL      = 29;

# Apparent Visual magnitude
const XA_OTCSV_VISMAG       = 30;

# GEO Normalized Visual magnitude
const XA_OTCSV_VISMAG_NORM  = 31;

# Solar Phase Angle
const XA_OTCSV_SOL_PHASE    = 32;

# Frame Number
const XA_OTCSV_FRAME        = 33;

# Aberration correction indicator (0=YES, 1=NO)
const XA_OTCSV_ABERRATION   = 34;

# 0 = ROTAS, 1 = TRACK
const XA_OTCSV_ASTAT_METHOD = 35;


# must equal to 7 to signify this is CSV format
const XA_OTCSV_SIGMATYPE    = 40;

# sigma - covariance element 1 - Az sigma
const XA_OTCSV_SIGMAEL1     = 41;

# sigma - covariance element 2 - El sigma
const XA_OTCSV_SIGMAEL2     = 42;

# sigma - covariance element 3 - Range sigma
const XA_OTCSV_SIGMAEL3     = 43;

# sigma - covariance element 4 - Range rate sigma
const XA_OTCSV_SIGMAEL4     = 44;

# sigma - covariance element 5 - Az rate sigma
const XA_OTCSV_SIGMAEL5     = 45;

# sigma - covariance element 6 - El rate sigma
const XA_OTCSV_SIGMAEL6     = 46;

# sigma - covariance element 7 - Time sigma
const XA_OTCSV_SIGMAEL7     = 47;

# AZ/RA bias
const XA_OTCSV_BIAS1        = 48;

# EL/DEC bias
const XA_OTCSV_BIAS2        = 49;

# Range bias
const XA_OTCSV_BIAS3        = 50;

# Range-rate bias
const XA_OTCSV_BIAS4        = 51;

# Time bias
const XA_OTCSV_BIAS5        = 52;



const    XA_OTCSV_SIZE         = 64;   

# Indexes of observation data in an array
# satellite number
const XA_OBSTATE_SATNUM       =  0;

# sensor number
const XA_OBSTATE_SENNUM       =  1;

# observation time in days since 1950 UTC
const XA_OBSTATE_DS50UTC      =  2;


# position X/ECI (km)
const XA_OBSTATE_POSX         = 10;

# position Y/ECI (km)
const XA_OBSTATE_POSY         = 11;

# position Z/ECI (km)
const XA_OBSTATE_POSZ         = 12;

# velocity X/ECI (km/s)
const XA_OBSTATE_VELX         = 13;

# velocity Y/ECI (km/s)
const XA_OBSTATE_VELY         = 14;

# velocity Z/ECI (km/s)
const XA_OBSTATE_VELZ         = 15;

# geodetic latitude (deg)
const XA_OBSTATE_LAT          = 16;

# geodetic longitude (deg)
const XA_OBSTATE_LON          = 17;

# geodetic height (km)
const XA_OBSTATE_HGHT         = 18;

# position X/EFG (km)
const XA_OBSTATE_POSE         = 19;

# position Y/EFG (km)
const XA_OBSTATE_POSF         = 20;

# position Z/EFG (km)
const XA_OBSTATE_POSG         = 21;



const    XA_OBSTATE_SIZE         = 64;   

# Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
# All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
# range rate (km/s)
const XA_OT0_RANGERATE =  7;


# elevation (deg)
const XA_OT1_ELEVATION =  4;

# azimuth (deg)
const XA_OT1_AZIMUTH   =  5;


# elevation (deg)
const XA_OT2_ELEVATION =  4;

# azimuth (deg)
const XA_OT2_AZIMUTH   =  5;

# range (km)
const XA_OT2_RANGE     =  6;


# elevation (deg)
const XA_OT3_ELEVATION =  4;

# azimuth (deg)
const XA_OT3_AZIMUTH   =  5;

# range (km)
const XA_OT3_RANGE     =  6;

# range rate (km/s)
const XA_OT3_RANGERATE =  7;


# elevation (deg)
const XA_OT4_ELEVATION =  4;

# azimuth (deg)
const XA_OT4_AZIMUTH   =  5;

# range (km)
const XA_OT4_RANGE     =  6;

# range rate (km/s)
const XA_OT4_RANGERATE =  7;

# elevation rate (deg/s)
const XA_OT4_ELRATE    =  8;

# azimuth rate (deg/s)
const XA_OT4_AZRATE    =  9;

# range acceleration (km/s^2)
const XA_OT4_RANGEACCEL= 10;


# declination (deg)
const XA_OT5_DECL      =  4;

# right ascesion (deg)
const XA_OT5_RIGHTASC  =  5;

# year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
const XA_OT5_YROFEQNX  = 22;

# ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
const XA_OT5_ABERRATION= 23;


# range (km)
const XA_OT6_RANGE     =  6;


# elevation (deg)
const XA_OT8_ELEVATION =  4;

# azimuth (deg)
const XA_OT8_AZIMUTH   =  5;

# optional - range (km)
const XA_OT8_RANGE     =  6;

# orbiting sensor position X/EFG (km)
const XA_OT8_POSE      = 16;

# orbiting sensor position Y/EFG (km)
const XA_OT8_POSF      = 17;

# orbiting sensor position Z/EFG (km)
const XA_OT8_POSG      = 18;


# declination (deg)
const XA_OT9_DECL      =  4;

# right ascesion (deg)
const XA_OT9_RIGHTASC  =  5;

# optional - range (km)
const XA_OT9_RANGE     =  6;

# orbiting sensor position X/EFG (km)
const XA_OT9_POSE      = 16;

# orbiting sensor position Y/EFG (km)
const XA_OT9_POSF      = 17;

# orbiting sensor position Z/EFG (km)
const XA_OT9_POSG      = 18;

# year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
const XA_OT9_YROFEQNX  = 22;

# ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
const XA_OT9_ABERRATION= 23;


# position X/ECI or X/EFG (km)
const XA_OTP_POSX      = 16;

# position Y/ECI or Y/EFG (km)
const XA_OTP_POSY      = 17;

# position Z/ECI or Z/EFG (km)
const XA_OTP_POSZ      = 18;


# position X/ECI or X/EFG (km)
const XA_OTV_POSX      = 16;

# position Y/ECI or Y/EFG (km)
const XA_OTV_POSY      = 17;

# position Z/ECI or Z/EFG (km)
const XA_OTV_POSZ      = 18;

# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
const XA_OTV_VELX      = 19;

# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
const XA_OTV_VELY      = 20;

# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
const XA_OTV_VELZ      = 21;


const    XA_OT_SIZE         = 64;   

# Obs selection criteria
# Seclection mode (unused for now)
const XA_SELOB_MODE        =  0;


# From time
const XA_SELOB_FRTIME      =  1;

# To time
const XA_SELOB_TOTIME      =  2;


# From time
const XA_SELOB_FRIDX       =  3;

# To time
const XA_SELOB_TOIDX       =  4;


# Select any obs that match this satellite number #1
const XA_SELOB_SAT1        = 11;

# Select any obs that match this satellite number #2
const XA_SELOB_SAT2        = 12;

# Select any obs that match this satellite number #3
const XA_SELOB_SAT3        = 13;

# Select any obs that match this satellite number #4
const XA_SELOB_SAT4        = 14;

# Select any obs that match this satellite number #5
const XA_SELOB_SAT5        = 15;

# Select any obs that match this satellite number #6
const XA_SELOB_SAT6        = 16;

# Select any obs that match this satellite number #7
const XA_SELOB_SAT7        = 17;

# Select any obs that match this satellite number #8
const XA_SELOB_SAT8        = 18;

# Select any obs that match this satellite number #9
const XA_SELOB_SAT9        = 19;

# Select any obs that match this satellite number #10
const XA_SELOB_SAT10       = 20;


# Select any obs that are obtained by this sensor site #1
const XA_SELOB_SEN1        = 21;

# Select any obs that are obtained by this sensor site #2
const XA_SELOB_SEN2        = 22;

# Select any obs that are obtained by this sensor site #3
const XA_SELOB_SEN3        = 23;

# Select any obs that are obtained by this sensor site #4
const XA_SELOB_SEN4        = 24;

# Select any obs that are obtained by this sensor site #5
const XA_SELOB_SEN5        = 25;

# Select any obs that are obtained by this sensor site #6
const XA_SELOB_SEN6        = 26;

# Select any obs that are obtained by this sensor site #7
const XA_SELOB_SEN7        = 27;

# Select any obs that are obtained by this sensor site #8
const XA_SELOB_SEN8        = 28;

# Select any obs that are obtained by this sensor site #9
const XA_SELOB_SEN9        = 29;

# Select any obs that are obtained by this sensor site #10
const XA_SELOB_SEN10       = 30;


# Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
const XA_SELOB_OT1         = 31;

# Select any obs that match this obs type #2
const XA_SELOB_OT2         = 32;

# Select any obs that match this obs type #3
const XA_SELOB_OT3         = 33;

# Select any obs that match this obs type #4
const XA_SELOB_OT4         = 34;

# Select any obs that match this obs type #5
const XA_SELOB_OT5         = 35;

# Select any obs that match this obs type #6
const XA_SELOB_OT6         = 36;

# Select any obs that match this obs type #7
const XA_SELOB_OT7         = 37;

# Select any obs that match this obs type #8
const XA_SELOB_OT8         = 38;

# Select any obs that match this obs type #9
const XA_SELOB_OT9         = 39;

# Select any obs that match this obs type #10
const XA_SELOB_OT10        = 40;


# From azimuth
const XA_SELOB_FRAZ        = 41;

# To azimuth
const XA_SELOB_TOAZ        = 42;

# From elevation
const XA_SELOB_FREL        = 43;

# To elevation
const XA_SELOB_TOEL        = 44;

# From right ascension
const XA_SELOB_FRRA        = 45;

# To right ascension
const XA_SELOB_TORA        = 46;

# From declincation
const XA_SELOB_FRDEC       = 47;

# To declination
const XA_SELOB_TODEC       = 48;

# From range
const XA_SELOB_FRRNG       = 49;

# To range
const XA_SELOB_TORNG       = 50;

# From range rate
const XA_SELOB_FRRNGRT     = 51;

# To range rate
const XA_SELOB_TORNGRT     = 52;

# From azimuth rate
const XA_SELOB_FRAZRT      = 53;

# To azimuth rate
const XA_SELOB_TOAZRT      = 54;

# From elevation rate
const XA_SELOB_FRELRT      = 55;

# To elevation rate
const XA_SELOB_TOELRT      = 56;

# From ASTAT (0 to 4)
const XA_SELOB_FRASTAT     = 57;

# To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
const XA_SELOB_TOASTAT     = 58;


const    XA_SELOB_SIZE        = 128;



#Interface for the functions

# Notes: This function has been deprecated since v9.0. 
# Initializes Obs DLL for use in the program
function ObsInit(apAddr)
   errCode = ccall( (:ObsInit,libname) 
     , Int32
     , (Int64,)
     , apAddr)
   return errCode
end

#############################################################################
# Returns information about the current version of Obs DLL. 
# The information is placed in the string parameter passed in.
function ObsGetInfo()
   infoStr = " "^128
   ccall( (:ObsGetInfo,libname) 
     , Nothing
     , (Cstring,)
     , infoStr)
   return infoStr
end

#############################################################################
# Sets the year for transmission observation format (TTY) input files
function ObsSetTTYYear(ttyYear)
   ccall( (:ObsSetTTYYear,libname) 
     , Nothing
     , (Int32,)
     , ttyYear)
end

#############################################################################
# Loads observation data from an input text file
function ObsLoadFile(obsFile)
   errCode = ccall( (:ObsLoadFile,libname) 
     , Int32
     , (Cstring,)
     , obsFile)
   return errCode
end

#############################################################################
# Saves the currently loaded obs data to a file
function ObsSaveFile(obsFile, saveMode, obsForm)
   errCode = ccall( (:ObsSaveFile,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32)
     , obsFile,saveMode,obsForm)
   return errCode
end

#############################################################################
# Removes an obs, represented by the obsKey, from the set of currently loaded observations
function ObsRemove(obsKey)
   errCode = ccall( (:ObsRemove,libname) 
     , Int32
     , (Int64,)
     , obsKey)
   return errCode
end

#############################################################################
# Removes all currently loaded observations from memory
function ObsRemoveAll()
   errCode = ccall( (:ObsRemoveAll,libname) 
     , Int32
     , ())
   return errCode
end

#############################################################################
# Returns the number of observations currently loaded
function ObsGetCount()
   numObss = ccall( (:ObsGetCount,libname) 
     , Int32
     , ())
   return numObss
end

#############################################################################
# Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
# Sort options (order):
# (+/-)1 = (descending/ascending) time, sensor, obsType, elev
# (+/-)2 = (descending/ascending) time, elevation
# (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
# (+/-)4 = (descending/ascending) sensor, satno, time, elev
# (+/-)5 = (descending/ascending) sensor, time, elevation
# (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
# (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
# (+/-)8 = (reversed/same)        order as obs were read
# 9 : as is in the tree
function ObsGetLoaded(order, size_obsKeys)
   obsKeys = zeros(Int64, size_obsKeys)
   ccall( (:ObsGetLoaded,libname) 
     , Nothing
     , (Int32
     , Ref{Int64})
     , order,obsKeys)
   return obsKeys
end

#############################################################################
# Loads a single observation-typed card
function ObsLoadCard(card)
   errCode = ccall( (:ObsLoadCard,libname) 
     , Int32
     , (Cstring,)
     , card)
   return errCode
end

#############################################################################
# Loads a one-line or two-line observation 
function ObsLoadTwoCards(card1, card2)
   errCode = ccall( (:ObsLoadTwoCards,libname) 
     , Int32
     , (Cstring
     , Cstring)
     , card1,card2)
   return errCode
end

#############################################################################
# Adds an observation from a string in B3 observation format
function ObsAddFrB3Card(card)
   obsKey = ccall( (:ObsAddFrB3Card,libname) 
     , Int64
     , (Cstring,)
     , card)
   return obsKey
end

#############################################################################
# Works like ObsAddFrB3Card but designed for Matlab
function ObsAddFrB3CardML(card)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsAddFrB3CardML,libname) 
     , Nothing
     , (Cstring
     , Ref{Int64})
     , card,obsKey)
   return obsKey[1]
end

#############################################################################
# Converts B3 format to csv format without loading B3 obs into memory
function ObsB3ToCsv(card)
   csvLine = " "^512
   errCode = ccall( (:ObsB3ToCsv,libname) 
     , Int32
     , (Cstring
     , Cstring)
     , card,csvLine)
   return errCode, csvLine
end

#############################################################################
# Converts CSV format to B3 format without loading CSV obs into memory
function ObsCsvToB3(csvLine, newSatno)
   card = " "^512
   errCode = ccall( (:ObsCsvToB3,libname) 
     , Int32
     , (Cstring
     , Int32
     , Cstring)
     , csvLine,newSatno,card)
   return errCode, card
end

#############################################################################
# Adds an observation from a TTY (1 line or 2 lines) observation format
function ObsAddFrTTYCards(card1, card2)
   obsKey = ccall( (:ObsAddFrTTYCards,libname) 
     , Int64
     , (Cstring
     , Cstring)
     , card1,card2)
   return obsKey
end

#############################################################################
# Works like ObsAddFrTTYCards but designed for Matlab
function ObsAddFrTTYCardsML(card1, card2)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsAddFrTTYCardsML,libname) 
     , Nothing
     , (Cstring
     , Cstring
     , Ref{Int64})
     , card1,card2,obsKey)
   return obsKey[1]
end

#############################################################################
# Converts TTY format to CSV format without loading TTY obs into memory
function ObsTTYToCsv(card1, card2)
   csvLine = " "^512
   errCode = ccall( (:ObsTTYToCsv,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Cstring)
     , card1,card2,csvLine)
   return errCode, csvLine
end

#############################################################################
# Converts CSV format to TTY format without loading CSV obs into memory
function ObsCsvToTTY(csvLine, newSatno)
   card1 = " "^512
   card2 = " "^512
   errCode = ccall( (:ObsCsvToTTY,libname) 
     , Int32
     , (Cstring
     , Int32
     , Cstring
     , Cstring)
     , csvLine,newSatno,card1,card2)
   return errCode, card1, card2
end

#############################################################################
# Adds one observation using csv obs string 
function ObsAddFrCsv(csvLine)
   obsKey = ccall( (:ObsAddFrCsv,libname) 
     , Int64
     , (Cstring,)
     , csvLine)
   return obsKey
end

#############################################################################
# Adds one observation using csv obs string - for MatLab
function ObsAddFrCsvML(csvLine)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsAddFrCsvML,libname) 
     , Nothing
     , (Cstring
     , Ref{Int64})
     , csvLine,obsKey)
   return obsKey[1]
end

#############################################################################
# Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
function ObsAddFrFields(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr)
   obsKey = ccall( (:ObsAddFrFields,libname) 
     , Int64
     , (Cchar
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , secClass[1],satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,elRate,
         azRate,rangeAccel,obsType[1],trackInd,astat,siteTag,spadocTag,pos,vel,extArr)
   return obsKey
end

#############################################################################
# Works like ObsAddFrFields but designed for Matlab
function ObsAddFrFieldsML(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsAddFrFieldsML,libname) 
     , Nothing
     , (Cchar
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Int64})
     , secClass[1],satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,elRate,
         azRate,rangeAccel,obsType[1],trackInd,astat,siteTag,spadocTag,pos,vel,extArr,
         obsKey)
   return obsKey[1]
end

#############################################################################
# Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
function ObsAddFrArray(xa_obs)
   obsKey = ccall( (:ObsAddFrArray,libname) 
     , Int64
     , (Ref{Float64},)
     , xa_obs)
   return obsKey
end

#############################################################################
# Works like ObsAddFrArray but designed for Matlab
function ObsAddFrArrayML(xa_obs)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsAddFrArrayML,libname) 
     , Nothing
     , (Ref{Float64}
     , Ref{Int64})
     , xa_obs,obsKey)
   return obsKey[1]
end

#############################################################################
# Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
function ObsGetAllFields(obsKey)
   secClass = " "
   satNum = zeros(Int32, 1)
   senNum = zeros(Int32, 1)
   obsTimeDs50utc = zeros(Float64, 1)
   elOrDec = zeros(Float64, 1)
   azOrRA = zeros(Float64, 1)
   range = zeros(Float64, 1)
   rangeRate = zeros(Float64, 1)
   elRate = zeros(Float64, 1)
   azRate = zeros(Float64, 1)
   rangeAccel = zeros(Float64, 1)
   obsType = " "
   trackInd = zeros(Int32, 1)
   astat = zeros(Int32, 1)
   siteTag = zeros(Int32, 1)
   spadocTag = zeros(Int32, 1)
   pos = zeros(Float64, 3)
   vel = zeros(Float64, 3)
   extArr = zeros(Float64, 128)
   errCode = ccall( (:ObsGetAllFields,libname) 
     , Int32
     , (Int64
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , obsKey,secClass,satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,
         elRate,azRate,rangeAccel,obsType,trackInd,astat,siteTag,spadocTag,pos,vel,
         extArr)
   return errCode, secClass, Int64(satNum[1]), Int64(senNum[1]), obsTimeDs50utc[1], elOrDec[1], azOrRA[1], range[1], rangeRate[1], elRate[1], 
         azRate[1], rangeAccel[1], obsType, Int64(trackInd[1]), Int64(astat[1]), Int64(siteTag[1]), Int64(spadocTag[1]), pos, vel, extArr
end

#############################################################################
# Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
# See ObsGetField for description of xa_obs elements
function ObsDataToArray(obsKey)
   xa_obs = zeros(Float64, 64)
   errCode = ccall( (:ObsDataToArray,libname) 
     , Int32
     , (Int64
     , Ref{Float64})
     , obsKey,xa_obs)
   return errCode, xa_obs
end

#############################################################################
# Updates existing observation data with the provided new data
function ObsUpdateFrFields(obsKey, secClass, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos, vel, extArr)
   errCode = ccall( (:ObsUpdateFrFields,libname) 
     , Int32
     , (Int64
     , Cchar
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64})
     , obsKey,secClass[1],elOrDec,azOrRA,range,rangeRate,elRate,azRate,rangeAccel,
         obsType[1],trackInd,astat,siteTag,spadocTag,pos,vel,extArr)
   return errCode
end

#############################################################################
# Retrieves the value of a specific field of an observation
function ObsGetField(obsKey, xf_Obs)
   strValue = " "^512
   errCode = ccall( (:ObsGetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , obsKey,xf_Obs,strValue)
   return errCode, strValue
end

#############################################################################
# Updates the value of a field of an observation
# See ObsGetField for a description of the xf_Obs parameter.
# Satellite number, sensor number, and observation time are not allowed to be updated.
function ObsSetField(obsKey, xf_Obs, strValue)
   errCode = ccall( (:ObsSetField,libname) 
     , Int32
     , (Int64
     , Int32
     , Cstring)
     , obsKey,xf_Obs,strValue)
   return errCode
end

#############################################################################
# Returns observation in B3-card string
function ObsGetB3Card(obsKey)
   b3Card = " "^512
   errCode = ccall( (:ObsGetB3Card,libname) 
     , Int32
     , (Int64
     , Cstring)
     , obsKey,b3Card)
   return errCode, b3Card
end

#############################################################################
# Returns observation in TTY-card string
function ObsGetTTYCard(obsKey)
   ttyCard1 = " "^512
   ttyCard2 = " "^512
   errCode = ccall( (:ObsGetTTYCard,libname) 
     , Int32
     , (Int64
     , Cstring
     , Cstring)
     , obsKey,ttyCard1,ttyCard2)
   return errCode, ttyCard1, ttyCard2
end

#############################################################################
# Returns observation in CSV-format string
function ObsGetCsv(obsKey)
   csvline = " "^512
   errCode = ccall( (:ObsGetCsv,libname) 
     , Int32
     , (Int64
     , Cstring)
     , obsKey,csvline)
   return errCode, csvline
end

#############################################################################
# Constructs a B3-card string from the input observation data fields
function ObsFieldsToB3Card(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos)
   b3Card = " "^512
   ccall( (:ObsFieldsToB3Card,libname) 
     , Nothing
     , (Cchar
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Cstring)
     , secClass[1],satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,elRate,
         azRate,rangeAccel,obsType[1],trackInd,astat,siteTag,spadocTag,pos,b3Card)
   return b3Card
end

#############################################################################
# Constructs a csv string from the input observation data fields
function ObsFieldsToCsv(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, trackInd, astat, siteTag, spadocTag, pos)
   csvLine = " "^512
   ccall( (:ObsFieldsToCsv,libname) 
     , Nothing
     , (Cchar
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Int32
     , Int32
     , Int32
     , Int32
     , Ref{Float64}
     , Cstring)
     , secClass[1],satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,elRate,
         azRate,rangeAccel,obsType[1],trackInd,astat,siteTag,spadocTag,pos,csvLine)
   return csvLine
end

#############################################################################
# Constructs a TTY-card string from the input observation data fields
function ObsFieldsToTTYCard(secClass, satNum, senNum, obsTimeDs50utc, elOrDec, azOrRA, range, rangeRate, elRate, azRate, rangeAccel, obsType, pos)
   ttyCard1 = " "^512
   ttyCard2 = " "^512
   ccall( (:ObsFieldsToTTYCard,libname) 
     , Nothing
     , (Cchar
     , Int32
     , Int32
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Float64
     , Cchar
     , Ref{Float64}
     , Cstring
     , Cstring)
     , secClass[1],satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,elRate,
         azRate,rangeAccel,obsType[1],pos,ttyCard1,ttyCard2)
   return ttyCard1, ttyCard2
end

#############################################################################
# Computes an obsKey from individually provided fields
function ObsFieldsToObsKey(satNum, senNum, obsTimeDs50utc)
   obsKey = ccall( (:ObsFieldsToObsKey,libname) 
     , Int64
     , (Int32
     , Int32
     , Float64)
     , satNum,senNum,obsTimeDs50utc)
   return obsKey
end

#############################################################################
# Works like ObsFieldsToObsKey but designed for Matlab
function ObsFieldsToObsKeyML(satNum, senNum, obsTimeDs50utc)
   obsKey = zeros(Int64, 1)
   ccall( (:ObsFieldsToObsKeyML,libname) 
     , Nothing
     , (Int32
     , Int32
     , Float64
     , Ref{Int64})
     , satNum,senNum,obsTimeDs50utc,obsKey)
   return obsKey[1]
end

#############################################################################
# Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
function ObsB3Parse(b3ObsCard)
   secClass = " "
   satNum = zeros(Int32, 1)
   senNum = zeros(Int32, 1)
   obsTimeDs50utc = zeros(Float64, 1)
   elOrDec = zeros(Float64, 1)
   azOrRA = zeros(Float64, 1)
   range = zeros(Float64, 1)
   rangeRate = zeros(Float64, 1)
   elRate = zeros(Float64, 1)
   azRate = zeros(Float64, 1)
   rangeAccel = zeros(Float64, 1)
   obsType = " "
   trackInd = zeros(Int32, 1)
   astat = zeros(Int32, 1)
   siteTag = zeros(Int32, 1)
   spadocTag = zeros(Int32, 1)
   pos = zeros(Float64, 3)
   errCode = ccall( (:ObsB3Parse,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Ref{Float64}
     , Cstring
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Int32}
     , Ref{Float64})
     , b3ObsCard,secClass,satNum,senNum,obsTimeDs50utc,elOrDec,azOrRA,range,rangeRate,
         elRate,azRate,rangeAccel,obsType,trackInd,astat,siteTag,spadocTag,pos)
   return errCode, secClass, Int64(satNum[1]), Int64(senNum[1]), obsTimeDs50utc[1], elOrDec[1], azOrRA[1], range[1], rangeRate[1], elRate[1], 
         azRate[1], rangeAccel[1], obsType, Int64(trackInd[1]), Int64(astat[1]), Int64(siteTag[1]), Int64(spadocTag[1]), pos
end

#############################################################################
# Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
function ObsParse(line1, line2)
   xa_obs = zeros(Float64, 64)
   errCode = ccall( (:ObsParse,libname) 
     , Int32
     , (Cstring
     , Cstring
     , Ref{Float64})
     , line1,line2,xa_obs)
   return errCode, xa_obs
end

#############################################################################
# Loads observation data from an input text file and group them together in the specified groupd id (gid).
# This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
function ObsLoadFileGID(obsFile, gid)
   errCode = ccall( (:ObsLoadFileGID,libname) 
     , Int32
     , (Cstring
     , Int32)
     , obsFile,gid)
   return errCode
end

#############################################################################
# Saves the currently loaded obs data belong to the specified group id (gid) to a file 
function ObsSaveFileGID(obsFile, gid, saveMode, obsForm)
   errCode = ccall( (:ObsSaveFileGID,libname) 
     , Int32
     , (Cstring
     , Int32
     , Int32
     , Int32)
     , obsFile,gid,saveMode,obsForm)
   return errCode
end

#############################################################################
# Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
function ObsRemoveGID(gid)
   errCode = ccall( (:ObsRemoveGID,libname) 
     , Int32
     , (Int32,)
     , gid)
   return errCode
end

#############################################################################
# Returns the number of observations currently loaded that have the same gid
function ObsGetCountGID(gid)
   numObss = ccall( (:ObsGetCountGID,libname) 
     , Int32
     , (Int32,)
     , gid)
   return numObss
end

#############################################################################
# Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
# Sort options (order):
# (+/-)1 = (descending/ascending) time, sensor, obsType, elev
# (+/-)2 = (descending/ascending) time, elevation
# (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
# (+/-)4 = (descending/ascending) sensor, satno, time, elev
# (+/-)5 = (descending/ascending) sensor, time, elevation
# (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
# (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
# (+/-)8 = (reversed/same)        order as obs were read
# 9 : as is in the tree
function ObsGetLoadedGID(gid, order, size_obsKeys)
   obsKeys = zeros(Int64, size_obsKeys)
   ccall( (:ObsGetLoadedGID,libname) 
     , Nothing
     , (Int32
     , Int32
     , Ref{Int64})
     , gid,order,obsKeys)
   return obsKeys
end

#############################################################################
# Converts obs type from character to integer
function ObsTypeCToI(obsTypeChar)
   obsTypeInt = ccall( (:ObsTypeCToI,libname) 
     , Int32
     , (Cchar,)
     , obsTypeChar[1])
   return obsTypeInt
end

#############################################################################
# Converts obs type from integer to character
function ObsTypeIToC(obsTypeInt)
   obsTypeChar = ccall( (:ObsTypeIToC,libname) 
     , Cstring
     , (Int32,)
     , obsTypeInt)
   return obsTypeChar
end

#############################################################################
# Resets obs selection settings
function ObsResetSelObs()
   ccall( (:ObsResetSelObs,libname) 
     , Nothing
     , ())
end

#############################################################################
# Computes other states of the input observation
# 
# The table below indicates which index values correspond to which fields in the xa_obState array.
# 
# table
# 
# Index
# Index Interpretation
# 
# 0Satellite number
# 1Sensor number
# 2Observation time in DS50UTC
# 10Position X/ECI (km)
# 11Position Y/ECI (km)
# 12Position Z/ECI (km)
# 13Velocity X/ECI (km/s)
# 14Velocity Y/ECI (km/s)
# 15Velocity Z/ECI (km/s)
# 16Geodetic latitude (deg)
# 17Geodetic longitude (deg)
# 18Geodetic height (km)
# 19Position X/EFG (km)
# 20Position Y/EFG (km)
# 21Position Z/EFG (km)
# 
function ObsGetStates(obsKey, range_km)
   xa_obState = zeros(Float64, 64)
   errCode = ccall( (:ObsGetStates,libname) 
     , Int32
     , (Int64
     , Float64
     , Ref{Float64})
     , obsKey,range_km,xa_obState)
   return errCode, xa_obState
end

#############################################################################
# Computes observation states from the observation data
# See ObsGetStates for a list of the values for the xa_obState parameter.
function ObsDataToStates(xa_obs)
   xa_obState = zeros(Float64, 64)
   errCode = ccall( (:ObsDataToStates,libname) 
     , Int32
     , (Ref{Float64}
     , Ref{Float64})
     , xa_obs,xa_obState)
   return errCode, xa_obState
end

#############################################################################
# Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
function ObsArrToLines(xa_obs, obsForm)
   line1 = " "^512
   line2 = " "^512
   errCode = ccall( (:ObsArrToLines,libname) 
     , Int32
     , (Ref{Float64}
     , Int32
     , Cstring
     , Cstring)
     , xa_obs,obsForm,line1,line2)
   return errCode, line1, line2
end

#############################################################################
# Sets OBS key mode
# This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
# and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
function SetObsKeyMode(obs_keyMode)
   errCode = ccall( (:SetObsKeyMode,libname) 
     , Int32
     , (Int32,)
     , obs_keyMode)
   return errCode
end

#############################################################################
# Gets current OBS key mode
function GetObsKeyMode()
   obs_keyMode = ccall( (:GetObsKeyMode,libname) 
     , Int32
     , ())
   return obs_keyMode
end

#############################################################################
# Returs the satellite number associated with the input obsKey
function SatNumFrObsKey(obsKey)
   satNum = ccall( (:SatNumFrObsKey,libname) 
     , Int32
     , (Int64,)
     , obsKey)
   return satNum
end

#############################################################################
# Returs the sensor number associated with the input obsKey
function SenNumFrObsKey(obsKey)
   senNum = ccall( (:SenNumFrObsKey,libname) 
     , Int32
     , (Int64,)
     , obsKey)
   return senNum
end

#############################################################################
# Retrieves only obs that match the selection criteria
function ObsGetSelected(xa_selob, order, size_obsKeys)
   numMatchedObss = zeros(Int32, 1)
   obsKeys = zeros(Int64, size_obsKeys)
   ccall( (:ObsGetSelected,libname) 
     , Nothing
     , (Ref{Float64}
     , Int32
     , Ref{Int32}
     , Ref{Int64})
     , xa_selob,order,numMatchedObss,obsKeys)
   return Int64(numMatchedObss[1]), obsKeys
end

#############################################################################

end #of module ObsDll
# ========================= End of auto generated code ==========================
