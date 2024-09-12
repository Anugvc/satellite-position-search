# This wrapper file was generated automatically by the GenDllWrappers program.

# Different obs selection options
# auto select 3 obs among the loaded/selected obs
set OBSSELMODE_AUTO 0
# use the first 3 obs in list of loaded/selected obs
set OBSSELMODE_1ST3OBS 1


# Indexes for accessing Iomod control parameters
# control flag for IOHG advisory prints: 0=do not print IOHG information, 1=print IOHG
set XF_IP_PRINTIOHG 1
# use first 3 obs flag
set XF_IP_USE1ST3OBS 2
# satelite number
set XF_IP_SATNUM 3
# obs sorting order
set XF_IP_SORTORDER 4
# international designator
set XF_IP_SATNAME 5
# run DC flag: 1=yes, 0=no
set XF_IP_RUNDC 6
# run ROTAS flag: 1=yes, 0=no
set XF_IP_RUNROTAS 7

# Indexes of TRI configuration parameters
# I - Flag to specify whether or not to use triangulation's default parameters: =[1]: use them and ignore the rest; =0: not to use them
set XA_TRI_USEDEFAULT 0
# I - Output obs type (valid values are 0, 2, 3, 4, 6, 8 and 9)
set XA_TRI_OBSTYPEOUT 1
# I - Flag to specify whether or not to apply sensor bias: =[1]: apply bias, =0: not apply bias
set XA_TRI_APPLYBIAS 2
# I - apply light time correction (applyLTC) flag: 0=do no apply LTC, [1]=apply LTC
set XA_TRI_LTC 3
# I - number of obs created for each overlap track
set XA_TRI_CREATEOBSSIZE 4
# I - default order of the Polyfit for angle RA/DEC
set XA_TRI_DEFANGLEORDER 5
# I - default order of the Polyfit for range
set XA_TRI_DEFRANGEORDER 6
# I - default order of the Polyfit for EFG components
set XA_TRI_DEFEFGORDER 7
# I - whether or not to use auto mode for angle (increase order if needed when doing Polyfit)
set XA_TRI_AUTOFITANGLE 8
# I - whether or not to use auto for range (increase order if needed when doing Polyfit)
set XA_TRI_AUTOFITRANGE 9
# I - anchor order of RA/DEC
set XA_TRI_ANCHORRADEC 10
# I - check to see satellite number is different
set XA_TRI_SEPSATNO 11
# D - limit RMS for RA (arcsec)
set XA_TRI_RARMSLIM 12
# D - limit RMS for Dec (arcsec)
set XA_TRI_DECRMSLIM 13
# D - limit RMS for Range (km)
set XA_TRI_RANGERMSLIM 14
# D - track separation criteria (minutes)
set XA_TRI_TRKSEPARATION 15
# D - minimum stereoscopic angle (deg)
set XA_TRI_MINSTEREOANGLE 16

set XA_TRI_SIZE 32

# Indexes of overlap track data
# I - Satellite number
set XA_OVLP_SATNUM 0
# I - Sensor number of track 1
set XA_OVLP_SENNUM1 1
# I - Sensor number of track 2
set XA_OVLP_SENNUM2 2
# D - Overlap track's start time (in DS50UTC)
set XA_OVLP_STARTTIME 3
# D - Overlap track's end time (in DS50UTC)
set XA_OVLP_ENDTIME 4

# 
set XA_OVLP_SIZE 8

# Indexes of polyfitting track data
# I - Satellite number
set XA_FIT_SATNUM 0
# I - Sensor number of track 1
set XA_FIT_SENNUM1 1
# I - Sensor number of track 2
set XA_FIT_SENNUM2 2

# I - Right ascension polyfit order of track 1
set XA_FIT_RAORDER1 3
# I - Right ascension polyfit order of track 2
set XA_FIT_RAORDER2 4
# D - Right ascension RMS of track 1
set XA_FIT_RARMS1 5
# D - Right ascension RMS of track 2
set XA_FIT_RARMS2 6

# I - Declination polyfit order of track 1
set XA_FIT_DECORDER1 7
# I - Declination polyfit order of track 2
set XA_FIT_DECORDER2 8
# D - Declination RMS of track 1
set XA_FIT_DECMS1 9
# D - Declination RMS of track 2
set XA_FIT_DECRMS2 10

# I - Declination polyfit order of track 1
set XA_FIT_RANGEORDER1 11
# I - Declination polyfit order of track 2
set XA_FIT_RANGEORDER2 12
# D - Declination RMS of track 1
set XA_FIT_RANGERMS1 13
# D - Declination RMS of track 2
set XA_FIT_RANGERMS2 14

# D - First stereoscopic angle (deg)
set XA_FIT_THETA1 15
# D - Second stereoscopic angle (deg)
set XA_FIT_THETA2 16
# D - Third stereoscopic angle (deg)
set XA_FIT_THETA3 17

# 
set XA_FIT_SIZE 32


# ========================= End of auto generated code ==========================
