# This wrapper file was generated automatically by the GenDllWrappers program.

# Indexes of SenSatData fields
# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
set XF_SENSAT_STEPMODE 1
# Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
set XF_SENSAT_OPTVISFLAG 2
# Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
set XF_SENSAT_VISPASSONLY 2
# Begin time in ds50TAI
set XF_SENSAT_BEGDS50TAI 3
# End time in ds50TAI
set XF_SENSAT_ENDDS50TAI 4
# Print interval
set XF_SENSAT_INTERVAL 5
# Satellite's period
set XF_SENSAT_PERIOD 6


#*******************************************************************************
# Indexes of lookCode
# Valid look
set LOOK_VALID 0
# Failed horizon break test
set LOOK_HTEST 1
# Failed limit tests
set LOOK_SENLIMS 2

#*******************************************************************************

# Indexes of look angle data output
# Look time in ds50UTC
set XA_LOOK_DS50UTC 0
# Look time in minutes since epoch
set XA_LOOK_MSE 1
# Elevation (deg)
set XA_LOOK_ELEV 2
# Azimuth (deg)
set XA_LOOK_AZIM 3
# Range (km) or ? for optical sensor
set XA_LOOK_RNG 4
# Range rate (km/sec) or ? for optical sensor
set XA_LOOK_RNGRT 5
set XA_LOOK_SIZE 6

#*******************************************************************************

# Indexes of viewing data output
# computed U-vector to object
set XF_VIEW_UVEC 1
# range unit vector
set XF_VIEW_RUVEC 2
# topocentric L unit vector
set XF_VIEW_LVEC 3
# station zenith vector
set XF_VIEW_ZVEC 4
# computed range vector (km)
set XF_VIEW_RNGVEC 5
# computed range-rate vector/relative velocity vector (km/sec)
set XF_VIEW_RRTVEC 6
# unit vector of sun
set XF_VIEW_SUNVEC 7
# unit vector of moon
set XF_VIEW_MOONVEC 8
# angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
set XF_VIEW_ANGARR 9
# illumination result
set XF_VIEW_CVIS 10
# Relative velocity (km/sec)
set XF_VIEW_RELVEL 11
# sensor position EFG
set XF_VIEW_SENEFG 12
# limit check flags
set XF_VIEW_LIMFLGS 13
# azimuth and elevation rates (deg/sec)
set XF_VIEW_AZELRATES 14
# moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
set XF_VIEW_MOONANGLES 15


#*******************************************************************************

# Indexes of angle array
# moon/sen/sat angle (deg)
set XA_ANGLE_MOONSENSAT 0
# sun/earth/sat angle (deg)
set XA_ANGLE_SUNEARTHSAT 1
# sun/earth/sen angle (deg)
set XA_ANGLE_SUNEARTHSEN 2
# sun/sen/sat angle (deg) - solar exclusion angle
set XA_ANGLE_SUNSENSAT 3
# earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
set XA_ANGLE_SOLARASPECT 4
set XA_ANGLE_SIZE 5

# Indexes of moon angle array
# DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
# moon/earth/sat angle (deg)
set XA_ANGLE_MOONEARTHSAT 0
# moon/earth/sen angle (deg)
set XA_ANGLE_MOONEARTHSEN 1


#*******************************************************************************

# Indexes of orbiting sensor's off-boresight/clock  array
# off-boresight angle 1
set XA_OFFBORE_EL1 0
# off-boresight clock 1
set XA_OFFBORE_AZ1 1
# off-boresight angle 2
set XA_OFFBORE_EL2 2
# off-boresight clock 2
set XA_OFFBORE_AZ2 3
set XA_OFFBORE_SIZE 4

#*******************************************************************************

# Indexes of LAMOD 1P-card data
# Input time format: 0=Minutes since epoch, 1=UTC
set XF_1P_TIMEFRM 1
# Begin time
set XF_1P_BEGTIME 2
# End time
set XF_1P_ENDTIME 3
# Ouput interval
set XF_1P_INTERVAL 4
# Print options: 0: print look angles, 1: print look angle and initial conditions
set XF_1P_PRTOPT 5
# Generate obs from look angles flag
set XF_1P_GENOBS 6
# Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
set XF_1P_VISFLG 7
# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
set XF_1P_STEPMODE 8
# Processing mode: 'O': obsched mode; 'P': P ASCHED mode
set XF_1P_PROCMODE 9
# Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
set XF_1P_DIAGNOST 10
# Max solar aspect for optical sites
set XF_1P_MAXSAA 11

#*******************************************************************************

# Indexes of limit test flags in the returned array
# az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
set XA_LIMFLG_AZLIM 0
# el limits test flag (0=failed, 1=passed)
set XA_LIMFLG_ELLIM 1
# earth in background flag (0=failed, 1=passed)
set XA_LIMFLG_EARTHBK 2
# earth obstructed flag (0=failed, 1=passed)
set XA_LIMFLG_EARTHOB 3
# lunar exclusion angle flag (0=failed, 1=passed)
set XA_LIMFLG_LUNEXCL 4
# max range test flag (0=failed, 1=passed)
set XA_LIMFLG_MAXRANGE 5
# min range test flag (0=failed, 1=passed)
set XA_LIMFLG_MINRANGE 6
# penumb eclipse test flag (0=failed, 1=passed)
set XA_LIMFLG_PENECLIP 7
# relative velocity test flag (0=failed, 1=passed)
set XA_LIMFLG_RVELLIM 8
# solar aspect angle test flag (0=failed, 1=passed)
set XA_LIMFLG_SAALIM 9
# solar exclusion angle flag (0=failed, 1=passed)
set XA_LIMFLG_SOLEXCL 10
# umbral eclipse test flag (0=failed, 1=passed)
set XA_LIMFLG_UMBECLIP 11
set XA_LIMFLG_SIZE 12


# Generate obs options
# Don't generate obs
set GENOBS_NONE 0
# Generate B3 obs
set GENOBS_B3 1
# Generate TYY obs
set GENOBS_TTY 2
# Generate SP TASKER V obsType
set GENOBS_SPTASKER 3
# Generate CSV obs
set GENOBS_CSV 4


# indexes of look and view data in an array
# look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
set XA_LV_LOOKCODE 0
# time in ds50UTC when the look angle is computed
set XA_LV_DS50UTC 1
# time mse when the look angle is computed
set XA_LV_MSE 2
# elevation (deg)
set XA_LV_ELEV 3
# azimuth (deg)
set XA_LV_AZIM 4
# range (km)
set XA_LV_RNG 5
# range rate (km/s)
set XA_LV_RNGRT 6
# right ascension (deg)
set XA_LV_RA 7
# declination (deg)
set XA_LV_DEC 8
# azimuth rate (deg/s)
set XA_LV_AZRATE 9
# elevation rate (deg/s)
set XA_LV_ELRATE 10

# sensor ECI position (X) (km)
set XA_LV_SENPOSX 11
# sensor ECI position (Y) (km)
set XA_LV_SENPOSY 12
# sensor ECI position (Z) (km)
set XA_LV_SENPOSZ 13
# sensor ECI velocity (X) (km/s)
set XA_LV_SENVELX 14
# sensor ECI velocity (Y) (km/s)
set XA_LV_SENVELY 15
# sensor ECI velocity (Z) (km/s)
set XA_LV_SENVELZ 16
# sensor latitude (deg)
set XA_LV_SENLAT 17
# sensor longitude (deg)
set XA_LV_SENLON 18
# sensor height (km)
set XA_LV_SENHEIGHT 19

# satellite ECI position (X) (km)
set XA_LV_SATPOSX 20
# satellite ECI position (Y) (km)
set XA_LV_SATPOSY 21
# satellite ECI position (Z) (km)
set XA_LV_SATPOSZ 22
# satellite ECI velocity (X) (km/s)
set XA_LV_SATVELX 23
# satellite ECI velocity (Y) (km/s)
set XA_LV_SATVELY 24
# satellite ECI velocity (Z) (km/s)
set XA_LV_SATVELZ 25
# satellite latitude (deg)
set XA_LV_SATLAT 26
# satellite longitude (deg)
set XA_LV_SATLON 27
# satellite height (km)
set XA_LV_SATHEIGHT 28

# computed U-vector to object (X)
set XA_LV_UVECX 31
# computed U-vector to object (Y)
set XA_LV_UVECY 32
# computed U-vector to object (Z)
set XA_LV_UVECZ 33
# slant range unit vector (X)- vector from the sensor to the satellite
set XA_LV_RUVECX 34
# slant range unit vector (Y)- vector from the sensor to the satellite
set XA_LV_RUVECY 35
# slant range unit vector (Z)- vector from the sensor to the satellite
set XA_LV_RUVECZ 36
# station unit vector (X) - vector directed from the center of the earth to the sensor
set XA_LV_LVECX 37
# station unit vector (Y) - vector directed from the center of the earth to the sensor
set XA_LV_LVECY 38
# station unit vector (Z) - vector directed from the center of the earth to the sensor
set XA_LV_LVECZ 39
# station zenith vector (X)
set XA_LV_ZVECX 40
# station zenith vector (Y)
set XA_LV_ZVECY 41
# station zenith vector (Z)
set XA_LV_ZVECZ 42
# slant range vector (X) (km) - vector from the sensor to the satellite
set XA_LV_RNGVECX 43
# slant range vector (Y) (km) - vector from the sensor to the satellite
set XA_LV_RNGVECY 44
# slant range vector (Z) (km) - vector from the sensor to the satellite
set XA_LV_RNGVECZ 45
# range-rate vector - relative velocity vector (X) (km/s)
set XA_LV_RRTVECX 46
# range-rate vector - relative velocity vector (Y) (km/s)
set XA_LV_RRTVECY 47
# range-rate vector - relative velocity vector (Z) (km/s)
set XA_LV_RRTVECZ 48
# unit vector to sun (X)
set XA_LV_USUNX 49
# unit vector to sun (Y)
set XA_LV_USUNY 50
# unit vector to sun (Z)
set XA_LV_USUNZ 51
# unit vector to moon (X)
set XA_LV_UMOONX 52
# unit vector to moon (Y)
set XA_LV_UMOONY 53
# unit vector to moon (Z)
set XA_LV_UMOONZ 54
# moon/sensor/satellite angle (deg)
set XA_LV_MOSESA 55
# moon/earth/satellite angle (deg)
set XA_LV_MOEASA 56
# moon/earth/sensor angle (deg)
set XA_LV_MOEASE 57
# sun/sensor/satellite angle (deg)
set XA_LV_SUSESA 58
# sun/earth/satellite angle (deg)
set XA_LV_SUEASA 59
# sun/earth/sensor angle (deg)
set XA_LV_SUEASE 60
# solar aspect angle (deg)
set XA_LV_SOLAA 61
# illumination result
set XA_LV_VIS 62
# relative velocity (km/s)
set XA_LV_RELVEL 63
# off-boresight angle (deg) - constant azimuth fan only
set XA_LV_OBSANGLE 64
# angle to fan (deg) - constant azimuth fan only
set XA_LV_ANG2FAN 65

# pass azimuth check (0=failed, 1=passed)
set XA_LV_AZLIM 70
# pass elevation check (0=failed, 1=passed)
set XA_LV_ELLIM 71
# pass earth in background check (0=failed, 1=passed)
set XA_LV_EARTHBK 72
# pass earth obstruction check (0=failed, 1=passed)
set XA_LV_EARTHOB 73
# pass lunar exclusion check (0=failed, 1=passed)
set XA_LV_LUNEXCL 74
# pass maximum range check (0=failed, 1=passed)
set XA_LV_MAXRANGE 75
# pass minimum range check (0=failed, 1=passed)
set XA_LV_MINRANGE 76
# pass penum eclipse check (0=failed, 1=passed)
set XA_LV_PENECLIP 77
# pass relative velocity check (0=failed, 1=passed)
set XA_LV_RVELLIM 78
# pass solar aspect angle check (0=failed, 1=passed)
set XA_LV_SAALIM 79
# pass solar exclusion angle check (0=failed, 1=passed)
set XA_LV_SOLEXCL 80
# pass umbral eclipse check (0=failed, 1=passed)
set XA_LV_UMBECLIP 81
# pass visibility check for optical sensor (0=failed, 1=passed)
set XA_LV_OPTVIS 82

# orbiting sensor EFG position (X) (km)
set XA_LV_SENPOSE 90
# orbiting sensor EFG position (Y) (km)
set XA_LV_SENPOSF 91
# orbiting sensor EFG position (Z) (km)
set XA_LV_SENPOSG 92
# orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
set XA_LV_NBORE1 93
# orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
set XA_LV_NBORE2 94
# orbiting sensor off boresight elevation #1 (deg)
set XA_LV_OBEL1 95
# orbiting sensor off boresight azimuth #1 (deg)
set XA_LV_OBAZ1 96
# orbiting sensor off boresight elevation #2 (deg)
set XA_LV_OBAZ2 97
# orbiting sensor off boresight azimuth #2 (deg)
set XA_LV_OBEL2 98

set XA_LV_SIZE 128


# indexes of sensor/satellite data in an array
# Sensor number
set XA_SENSAT_SENNUM 0
# Satellite number
set XA_SENSAT_SATNUM 1
# Sensor view type
set XA_SENSAT_VIEWTYPE 2
# Sensor observation type
set XA_SENSAT_OBSTYPE 3
# Max number of points per pass
set XA_SENSAT_PTSPERPAS 4
# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
set XA_SENSAT_STEPMODE 5
# Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
set XA_SENSAT_OPTVISFLAG 6
# Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
set XA_SENSAT_VISPASSONLY 6
# Start time in ds50TAI
set XA_SENSAT_STARTAI 7
# Stop time in ds50TAI
set XA_SENSAT_STOPTAI 8
# Output interval (min)
set XA_SENSAT_INTERVAL 9
# Satellite's period (min)
set XA_SENSAT_PERIOD 10
# Sensor number
set XA_SENSAT_SENKEY 11

set XA_SENSAT_SIZE 32


# LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
# input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
set XA_LA_PARMS_TIMEFLG 1
# begin time
set XA_LA_PARMS_STARTTIME 2
# end time
set XA_LA_PARMS_STOPTIME 3
# Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
set XA_LA_PARMS_STEPMODE 4
# optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
set XA_LA_PARMS_VISFLG 5
# max solar aspect angle (deg) for optical sites
set XA_LA_PARMS_XMSAA 6

set XA_LA_PARMS_SIZE 16

# Different sensor location types
# Sensor location is in ECI - specific to LAMOD
set SENLOC_TYPE_ECI 4

# Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
# location type (see SENLOC_TYPE_? for available types)
set XA_LOCSEN_LOCTYPE 0
# sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
set XA_LOCSEN_POS1 1
# sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
set XA_LOCSEN_POS2 2
# sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
set XA_LOCSEN_POS3 3

# for ground sensor
# astronomical latitude (deg) (+: North, -: South)
set XA_LOCSEN_ASTROLAT 4
# astronomical longitude (deg) (+: West, -: East)
set XA_LOCSEN_ASTROLON 5

# for orbiting sensor
# orbiting sensor velocity in ECI/X component (km/s)
set XA_LOCSEN_VEL1 4
# orbiting sensor velocity in ECI/Y component (km/s)
set XA_LOCSEN_VEL2 5
# orbiting sensor velocity in ECI/Z component (km/s)
set XA_LOCSEN_VEL3 6

set XA_LOCSEN_SIZE 16


# Satellite state data
# satellite ECI position X (km) in TEME of Date
set XA_PVSAT_POSX 0
# satellite ECI position Y (km) in TEME of Date
set XA_PVSAT_POSY 1
# satellite ECI position Z (km) in TEME of Date
set XA_PVSAT_POSZ 2
# satellite ECI velocity X (km/sec) in TEME of Date
set XA_PVSAT_VELX 3
# satellite ECI velocity Y (km/sec) in TEME of Date
set XA_PVSAT_VELY 4
# satellite ECI velocity Z (km/sec) in TEME of Date
set XA_PVSAT_VELZ 5

set XA_PVSAT_SIZE 6

# ========================= End of auto generated code ==========================
