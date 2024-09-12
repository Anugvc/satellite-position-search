# This wrapper file was generated automatically by the GenDllWrappers program.

# Equinox indicator
# time of observation
set EQUINOX_OBSTIME 0
# time @ 0 Jan Year of Date
set EQUINOX_OBSYEAR 1
# J2000
set EQUINOX_J2K 2
# B1950
set EQUINOX_B1950 3

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
set SORT_TIMESENTYPEEL 1
# sort order is time, elevation (negative value for reverse order)
set SORT_TIMEEL 2
# sort order is time, sensor, otype, el, satno (negative value for reverse order)
set SORT_TIMESENTYPEELSAT 3
# sort order is sensor, satno, time, elev (negative value for reverse order)
set SORT_SENSATTIMEEL 4
# sort order is sensor, time, elevation (negative value for reverse order)
set SORT_SENTIMEEL 5
# sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
set SORT_SENSATTYPETIMEEL 6
# sort order is satno, time, sensor, otype, el (negative value for reverse order)
set SORT_SATTIMESENTYPEEL 7
# sort order is the order of obs when they were loaded
set SORT_ORDERASREAD 8
# sort order is satno, sensor, time (negative value for reverse order)
set SORT_SATSENTIME 10


# Indexes of different obs file format
# B3 obs format
set OBSFORM_B3 0
# Transmission obs format
set OBSFORM_TTY 1
# CSV obs format
set OBSFORM_CSV 2
# Radio Frequency (TDOA/FDOA) observations
set OBSFORM_RF 3

set BADOBSKEY -1
set DUPOBSKEY 0


# Different key mode options for obsKey
# Default - duplicate obs can not be loaded in binary tree
set OBS_KEYMODE_NODUP 0
# Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
set OBS_KEYMODE_DMA 1

# CSV sigma type indicator
set CSVSIGMATYPE 7

# Indexes of Observation data fields
# security classification
set XF_OBS_SECCLASS 1
# satellite number
set XF_OBS_SATNUM 2
# sensor number
set XF_OBS_SENNUM 3
# observation time in days since 1950 UTC
set XF_OBS_DS50UTC 4
# elevation (deg)
set XF_OBS_ELEVATION 5
# declination (deg)
set XF_OBS_DECLINATION 6
# azimuth (deg)
set XF_OBS_AZIMUTH 7
# right-ascension (deg)
set XF_OBS_RA 8
# range (km)
set XF_OBS_RANGE 9
# range rate (km/s)
set XF_OBS_RANGERATE 10
# elevation rate (deg/s)
set XF_OBS_ELRATE 11
# azimuth rate (deg/s)
set XF_OBS_AZRATE 12
# range acceleration (km/s^2)
set XF_OBS_RANGEACCEL 13
# observation type
set XF_OBS_OBSTYPE 14
# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
set XF_OBS_TRACKIND 15
# association status assigned by SPADOC
set XF_OBS_ASTAT 16
# original satellite number
set XF_OBS_SITETAG 17
# SPADOC-asssigned tag number
set XF_OBS_SPADOCTAG 18
# position X/EFG (km)
set XF_OBS_POSE 19
# position Y/EFG (km)
set XF_OBS_POSF 20
# position Z/EFG (km)
set XF_OBS_POSG 21
# position X/ECI (km)
set XF_OBS_POSX 22
# position Y/ECI (km)
set XF_OBS_POSY 23
# position Z/ECI (km)
set XF_OBS_POSZ 24

# Principal Polarization RCS
set XF_OBS_RCS_PP 25
# Orthogonal Polarization RCS
set XF_OBS_RCS_OP 26
# Principal Polarization RCS sigma
set XF_OBS_RCS_PPS 27
# Orthogonal Polarization RCS sigma
set XF_OBS_RCS_OPS 28
# Radar Signal to Noise Ratio
set XF_OBS_SNR 29
# Azimuth of Boresite
set XF_OBS_BORE_AZ 30
# Elevation of Boresite
set XF_OBS_BORE_EL 31
# Apparent Visual magnitude
set XF_OBS_VISMAG 32
# GEO Normalized Visual magnitude
set XF_OBS_VISMAG_NORM 33
# Solar Phase Angle
set XF_OBS_SOL_PHASE 34
# Frame Number
set XF_OBS_FRAME 35
# Aberration correction indicator (0=YES, 1=NO)
set XF_OBS_ABERRATION 36
# Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
set XF_OBS_ASTAT_METHOD 37

# Indexes of observation data in an array
# security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
set XA_OBS_SECCLASS 0
# satellite number
set XA_OBS_SATNUM 1
# sensor number
set XA_OBS_SENNUM 2
# observation time in days since 1950 UTC
set XA_OBS_DS50UTC 3
# observation type
set XA_OBS_OBSTYPE 11


# elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
set XA_OBS_ELORDEC 4
# azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
set XA_OBS_AZORRA 5
# range (km)
set XA_OBS_RANGE 6
# range rate (km/s) for non-optical obs type
set XA_OBS_RANGERATE 7
# elevation rate (deg/s)
set XA_OBS_ELRATE 8
# azimuth rate (deg/s)
set XA_OBS_AZRATE 9
# range acceleration (km/s^2)
set XA_OBS_RANGEACCEL 10
# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
set XA_OBS_TRACKIND 12
# association status assigned by SPADOC
set XA_OBS_ASTAT 13
# original satellite number
set XA_OBS_SITETAG 14
# SPADOC-asssigned tag number
set XA_OBS_SPADOCTAG 15
# position X/ECI or X/EFG (km)
set XA_OBS_POSX 16
# position Y/ECI or Y/EFG (km)
set XA_OBS_POSY 17
# position Z/ECI or Z/EFG (km)
set XA_OBS_POSZ 18
# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
set XA_OBS_VELX 19
# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
set XA_OBS_VELY 20
# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
set XA_OBS_VELZ 21
# year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
set XA_OBS_YROFEQNX 22
# aberration indicator, 0-not corrected, 1-corrceted
set XA_OBS_ABERRATION 23

# AZ/RA bias (deg)
set XA_OBS_AZORRABIAS 33
# EL/DEC bias (deg)
set XA_OBS_ELORDECBIAS 34
# Range bias (km)
set XA_OBS_RGBIAS 35
# Range-rate bias (km/sec)
set XA_OBS_RRBIAS 36
# Time bias (sec)
set XA_OBS_TIMEBIAS 37
# AZ/RA rate bias (deg/sec)
set XA_OBS_RAZORRABIAS 38
# EL/DEC rate bias (deg/sec)
set XA_OBS_RELORDECBIAS 39

# individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
set XA_OBS_SIGMATYPE 40
# sigma - covariance element 1 - 6 elemens - Az sigma
set XA_OBS_SIGMAEL1 41
# sigma - covariance element 2 - 6 elemens - El sigma
set XA_OBS_SIGMAEL2 42
# sigma - covariance element 3 - 6 elemens - Range sigma
set XA_OBS_SIGMAEL3 43
# sigma - covariance element 4 - 6 elemens - Range rate sigma
set XA_OBS_SIGMAEL4 44
# sigma - covariance element 5 - 6 elemens - Az rate sigma
set XA_OBS_SIGMAEL5 45
# sigma - covariance element 6 - 6 elemens - El rate sigma
set XA_OBS_SIGMAEL6 46
# sigma - covariance element 7
set XA_OBS_SIGMAEL7 47
# sigma - covariance element 8
set XA_OBS_SIGMAEL8 48
# sigma - covariance element 9
set XA_OBS_SIGMAEL9 49
# sigma - covariance element 10
set XA_OBS_SIGMAEL10 50
# sigma - covariance element 11
set XA_OBS_SIGMAEL11 51
# sigma - covariance element 12
set XA_OBS_SIGMAEL12 52
# sigma - covariance element 13
set XA_OBS_SIGMAEL13 53
# sigma - covariance element 14
set XA_OBS_SIGMAEL14 54
# sigma - covariance element 15
set XA_OBS_SIGMAEL15 55
# sigma - covariance element 16
set XA_OBS_SIGMAEL16 56
# sigma - covariance element 17
set XA_OBS_SIGMAEL17 57
# sigma - covariance element 18
set XA_OBS_SIGMAEL18 58
# sigma - covariance element 19
set XA_OBS_SIGMAEL19 59
# sigma - covariance element 20
set XA_OBS_SIGMAEL20 60
# sigma - covariance element 21
set XA_OBS_SIGMAEL21 61

set XA_OBS_SIZE 64

# Indexes of observation data in an array (Obs Type CSV specific)
# security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
set XA_OTCSV_SECCLASS 0
# satellite number
set XA_OTCSV_SATNUM 1
# sensor number
set XA_OTCSV_SENNUM 2
# observation time in days since 1950 UTC
set XA_OTCSV_DS50UTC 3
# elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
set XA_OTCSV_ELORDEC 4
# azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
set XA_OTCSV_AZORRA 5
# range (km)
set XA_OTCSV_RANGE 6
# range rate (km/s) for non-optical obs type
set XA_OTCSV_RANGERATE 7
# elevation rate (deg/s)
set XA_OTCSV_ELRATE 8
# azimuth rate (deg/s)
set XA_OTCSV_AZRATE 9
# range acceleration (km/s^2)
set XA_OTCSV_RANGEACCEL 10
# observation type
set XA_OTCSV_OBSTYPE 11
# track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
set XA_OTCSV_TRACKIND 12
# association status assigned by SPADOC
set XA_OTCSV_ASTAT 13
# original satellite number
set XA_OTCSV_SITETAG 14
# SPADOC-asssigned tag number
set XA_OTCSV_SPADOCTAG 15
# position X/ECI or X/EFG (km)
set XA_OTCSV_POSX 16
# position Y/ECI or Y/EFG (km)
set XA_OTCSV_POSY 17
# position Z/ECI or Z/EFG (km)
set XA_OTCSV_POSZ 18
# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
set XA_OTCSV_VELX 19
# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
set XA_OTCSV_VELY 20
# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
set XA_OTCSV_VELZ 21
# year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
set XA_OTCSV_YROFEQNX 22

# Principal Polarization RCS
set XA_OTCSV_RCS_PP 23
# Orthogonal Polarization RCS
set XA_OTCSV_RCS_OP 24
# Principal Polarization RCS sigma
set XA_OTCSV_RCS_PPS 25
# Orthogonal Polarization RCS sigma
set XA_OTCSV_RCS_OPS 26
# Radar Signal to Noise Ratio
set XA_OTCSV_SNR 27
# Azimuth of Boresite
set XA_OTCSV_BORE_AZ 28
# Elevation of Boresite
set XA_OTCSV_BORE_EL 29
# Apparent Visual magnitude
set XA_OTCSV_VISMAG 30
# GEO Normalized Visual magnitude
set XA_OTCSV_VISMAG_NORM 31
# Solar Phase Angle
set XA_OTCSV_SOL_PHASE 32
# Frame Number
set XA_OTCSV_FRAME 33
# Aberration correction indicator (0=YES, 1=NO)
set XA_OTCSV_ABERRATION 34
# 0 = ROTAS, 1 = TRACK
set XA_OTCSV_ASTAT_METHOD 35

# must equal to 7 to signify this is CSV format
set XA_OTCSV_SIGMATYPE 40
# sigma - covariance element 1 - Az sigma
set XA_OTCSV_SIGMAEL1 41
# sigma - covariance element 2 - El sigma
set XA_OTCSV_SIGMAEL2 42
# sigma - covariance element 3 - Range sigma
set XA_OTCSV_SIGMAEL3 43
# sigma - covariance element 4 - Range rate sigma
set XA_OTCSV_SIGMAEL4 44
# sigma - covariance element 5 - Az rate sigma
set XA_OTCSV_SIGMAEL5 45
# sigma - covariance element 6 - El rate sigma
set XA_OTCSV_SIGMAEL6 46
# sigma - covariance element 7 - Time sigma
set XA_OTCSV_SIGMAEL7 47
# AZ/RA bias
set XA_OTCSV_BIAS1 48
# EL/DEC bias
set XA_OTCSV_BIAS2 49
# Range bias
set XA_OTCSV_BIAS3 50
# Range-rate bias
set XA_OTCSV_BIAS4 51
# Time bias
set XA_OTCSV_BIAS5 52


set XA_OTCSV_SIZE 64

# Indexes of observation data in an array
# satellite number
set XA_OBSTATE_SATNUM 0
# sensor number
set XA_OBSTATE_SENNUM 1
# observation time in days since 1950 UTC
set XA_OBSTATE_DS50UTC 2

# position X/ECI (km)
set XA_OBSTATE_POSX 10
# position Y/ECI (km)
set XA_OBSTATE_POSY 11
# position Z/ECI (km)
set XA_OBSTATE_POSZ 12
# velocity X/ECI (km/s)
set XA_OBSTATE_VELX 13
# velocity Y/ECI (km/s)
set XA_OBSTATE_VELY 14
# velocity Z/ECI (km/s)
set XA_OBSTATE_VELZ 15
# geodetic latitude (deg)
set XA_OBSTATE_LAT 16
# geodetic longitude (deg)
set XA_OBSTATE_LON 17
# geodetic height (km)
set XA_OBSTATE_HGHT 18
# position X/EFG (km)
set XA_OBSTATE_POSE 19
# position Y/EFG (km)
set XA_OBSTATE_POSF 20
# position Z/EFG (km)
set XA_OBSTATE_POSG 21


set XA_OBSTATE_SIZE 64

# Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
# All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
# range rate (km/s)
set XA_OT0_RANGERATE 7

# elevation (deg)
set XA_OT1_ELEVATION 4
# azimuth (deg)
set XA_OT1_AZIMUTH 5

# elevation (deg)
set XA_OT2_ELEVATION 4
# azimuth (deg)
set XA_OT2_AZIMUTH 5
# range (km)
set XA_OT2_RANGE 6

# elevation (deg)
set XA_OT3_ELEVATION 4
# azimuth (deg)
set XA_OT3_AZIMUTH 5
# range (km)
set XA_OT3_RANGE 6
# range rate (km/s)
set XA_OT3_RANGERATE 7

# elevation (deg)
set XA_OT4_ELEVATION 4
# azimuth (deg)
set XA_OT4_AZIMUTH 5
# range (km)
set XA_OT4_RANGE 6
# range rate (km/s)
set XA_OT4_RANGERATE 7
# elevation rate (deg/s)
set XA_OT4_ELRATE 8
# azimuth rate (deg/s)
set XA_OT4_AZRATE 9
# range acceleration (km/s^2)
set XA_OT4_RANGEACCEL 10

# declination (deg)
set XA_OT5_DECL 4
# right ascesion (deg)
set XA_OT5_RIGHTASC 5
# year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
set XA_OT5_YROFEQNX 22
# ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
set XA_OT5_ABERRATION 23

# range (km)
set XA_OT6_RANGE 6

# elevation (deg)
set XA_OT8_ELEVATION 4
# azimuth (deg)
set XA_OT8_AZIMUTH 5
# optional - range (km)
set XA_OT8_RANGE 6
# orbiting sensor position X/EFG (km)
set XA_OT8_POSE 16
# orbiting sensor position Y/EFG (km)
set XA_OT8_POSF 17
# orbiting sensor position Z/EFG (km)
set XA_OT8_POSG 18

# declination (deg)
set XA_OT9_DECL 4
# right ascesion (deg)
set XA_OT9_RIGHTASC 5
# optional - range (km)
set XA_OT9_RANGE 6
# orbiting sensor position X/EFG (km)
set XA_OT9_POSE 16
# orbiting sensor position Y/EFG (km)
set XA_OT9_POSF 17
# orbiting sensor position Z/EFG (km)
set XA_OT9_POSG 18
# year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
set XA_OT9_YROFEQNX 22
# ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
set XA_OT9_ABERRATION 23

# position X/ECI or X/EFG (km)
set XA_OTP_POSX 16
# position Y/ECI or Y/EFG (km)
set XA_OTP_POSY 17
# position Z/ECI or Z/EFG (km)
set XA_OTP_POSZ 18

# position X/ECI or X/EFG (km)
set XA_OTV_POSX 16
# position Y/ECI or Y/EFG (km)
set XA_OTV_POSY 17
# position Z/ECI or Z/EFG (km)
set XA_OTV_POSZ 18
# velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
set XA_OTV_VELX 19
# velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
set XA_OTV_VELY 20
# velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
set XA_OTV_VELZ 21

set XA_OT_SIZE 64

# Obs selection criteria
# Seclection mode (unused for now)
set XA_SELOB_MODE 0

# From time
set XA_SELOB_FRTIME 1
# To time
set XA_SELOB_TOTIME 2

# From time
set XA_SELOB_FRIDX 3
# To time
set XA_SELOB_TOIDX 4

# Select any obs that match this satellite number #1
set XA_SELOB_SAT1 11
# Select any obs that match this satellite number #2
set XA_SELOB_SAT2 12
# Select any obs that match this satellite number #3
set XA_SELOB_SAT3 13
# Select any obs that match this satellite number #4
set XA_SELOB_SAT4 14
# Select any obs that match this satellite number #5
set XA_SELOB_SAT5 15
# Select any obs that match this satellite number #6
set XA_SELOB_SAT6 16
# Select any obs that match this satellite number #7
set XA_SELOB_SAT7 17
# Select any obs that match this satellite number #8
set XA_SELOB_SAT8 18
# Select any obs that match this satellite number #9
set XA_SELOB_SAT9 19
# Select any obs that match this satellite number #10
set XA_SELOB_SAT10 20

# Select any obs that are obtained by this sensor site #1
set XA_SELOB_SEN1 21
# Select any obs that are obtained by this sensor site #2
set XA_SELOB_SEN2 22
# Select any obs that are obtained by this sensor site #3
set XA_SELOB_SEN3 23
# Select any obs that are obtained by this sensor site #4
set XA_SELOB_SEN4 24
# Select any obs that are obtained by this sensor site #5
set XA_SELOB_SEN5 25
# Select any obs that are obtained by this sensor site #6
set XA_SELOB_SEN6 26
# Select any obs that are obtained by this sensor site #7
set XA_SELOB_SEN7 27
# Select any obs that are obtained by this sensor site #8
set XA_SELOB_SEN8 28
# Select any obs that are obtained by this sensor site #9
set XA_SELOB_SEN9 29
# Select any obs that are obtained by this sensor site #10
set XA_SELOB_SEN10 30

# Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
set XA_SELOB_OT1 31
# Select any obs that match this obs type #2
set XA_SELOB_OT2 32
# Select any obs that match this obs type #3
set XA_SELOB_OT3 33
# Select any obs that match this obs type #4
set XA_SELOB_OT4 34
# Select any obs that match this obs type #5
set XA_SELOB_OT5 35
# Select any obs that match this obs type #6
set XA_SELOB_OT6 36
# Select any obs that match this obs type #7
set XA_SELOB_OT7 37
# Select any obs that match this obs type #8
set XA_SELOB_OT8 38
# Select any obs that match this obs type #9
set XA_SELOB_OT9 39
# Select any obs that match this obs type #10
set XA_SELOB_OT10 40

# From azimuth
set XA_SELOB_FRAZ 41
# To azimuth
set XA_SELOB_TOAZ 42
# From elevation
set XA_SELOB_FREL 43
# To elevation
set XA_SELOB_TOEL 44
# From right ascension
set XA_SELOB_FRRA 45
# To right ascension
set XA_SELOB_TORA 46
# From declincation
set XA_SELOB_FRDEC 47
# To declination
set XA_SELOB_TODEC 48
# From range
set XA_SELOB_FRRNG 49
# To range
set XA_SELOB_TORNG 50
# From range rate
set XA_SELOB_FRRNGRT 51
# To range rate
set XA_SELOB_TORNGRT 52
# From azimuth rate
set XA_SELOB_FRAZRT 53
# To azimuth rate
set XA_SELOB_TOAZRT 54
# From elevation rate
set XA_SELOB_FRELRT 55
# To elevation rate
set XA_SELOB_TOELRT 56
# From ASTAT (0 to 4)
set XA_SELOB_FRASTAT 57
# To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
set XA_SELOB_TOASTAT 58

set XA_SELOB_SIZE 128


# ========================= End of auto generated code ==========================
