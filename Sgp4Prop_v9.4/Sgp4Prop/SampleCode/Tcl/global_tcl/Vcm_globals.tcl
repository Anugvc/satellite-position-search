# This wrapper file was generated automatically by the GenDllWrappers program.

# Maximum string length of a multi-line VCM concatenated into one big string
set VCMSTRLEN 4000


# Maximum string length of a 1-line VCM string
set VCM1LINELEN 1500


# Starting location of the VCM's text data fields
# satellite name A8
set XS_VCM_SATNAME 0
# common satellite name A25
set XS_VCM_COMMNAME 8
# geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
set XS_VCM_GEONAME 33
# drag model A12
set XS_VCM_DRAGMOD 39
# lunar solar pertubations A3 (ON, OFF)
set XS_VCM_LUNAR 51
# radiation pressure pertubations A3 (ON, OFF)
set XS_VCM_RADPRESS 54
# Earth + ocean tides pertubation A3 (ON, OFF)
set XS_VCM_EARTHTIDES 57
# intrack thrust A3 (ON, OFF)
set XS_VCM_INTRACK 60
# integration mode A6 (ASW, OSW, SPADOC, ...)
set XS_VCM_INTEGMODE 63
# coordinate system A5
set XS_VCM_COORDSYS 69
# type of partial derivatives A8
set XS_VCM_PARTIALS 74
# step mode A4 (AUTO, TIME, S)
set XS_VCM_STEPMODE 82
# fixed step size indicator A3 (ON, OFF)
set XS_VCM_FIXEDSTEP 86
# initial step size selection A6 (AUTO, MANUAL)
set XS_VCM_STEPSEL 89

set XS_VCM_SIZE 512

# VCM's text data fields - new convention (start index, string length)
# satellite name A8
set XS_VCM_SATNAME_0_8 0
# common satellite name A25
set XS_VCM_COMMNAME_8_25 8
# geopotential name A6 (WGS-72, WGS-84, EGM-96, ...)
set XS_VCM_GEONAME_33_6 33
# drag model A12
set XS_VCM_DRAGMOD_39_12 39
# lunar solar pertubations A3 (ON, OFF)
set XS_VCM_LUNAR_51_3 51
# radiation pressure pertubations A3 (ON, OFF)
set XS_VCM_RADPRESS_54_3 54
# Earth + ocean tides pertubation A3 (ON, OFF)
set XS_VCM_EARTHTIDES_57_3 57
# intrack thrust A3 (ON, OFF)
set XS_VCM_INTRACK_60_3 60
# integration mode A6 (ASW, OSW, SPADOC, ...)
set XS_VCM_INTEGMODE_63_6 63
# coordinate system A5
set XS_VCM_COORDSYS_69_5 69
# type of partial derivatives A8
set XS_VCM_PARTIALS_74_8 74
# step mode A4 (AUTO, TIME, S)
set XS_VCM_STEPMODE_82_4 82
# fixed step size indicator A3 (ON, OFF)
set XS_VCM_FIXEDSTEP_86_3 86
# initial step size selection A6 (AUTO, MANUAL)
set XS_VCM_STEPSEL_89_6 89

set XS_VCM_LENGTH 512

# Indexes to access data from an array containing VCM numerical data fields
# satellite number
set XA_VCM_SATNUM 0
# satellite's epoch time
set XA_VCM_EPOCHDS50UTC 1
# epoch revolution number
set XA_VCM_REVNUM 2
# J2K position X (km)
set XA_VCM_J2KPOSX 3
# J2K position Y (km)
set XA_VCM_J2KPOSY 4
# J2K position Z (km)
set XA_VCM_J2KPOSZ 5
# J2K velocity X (km/s)
set XA_VCM_J2KVELX 6
# J2K velocity Y (km/s)
set XA_VCM_J2KVELY 7
# J2K velocity Z (km/s)
set XA_VCM_J2KVELZ 8
# ECI position X (km)
set XA_VCM_ECIPOSX 9
# ECI position Y (km)
set XA_VCM_ECIPOSY 10
# ECI position Z (km)
set XA_VCM_ECIPOSZ 11
# ECI velocity X (km/s)
set XA_VCM_ECIVELX 12
# ECI velocity Y (km/s)
set XA_VCM_ECIVELY 13
# ECI velocity Z (km/s)
set XA_VCM_ECIVELZ 14
# EFG position X (km)
set XA_VCM_EFGPOSX 15
# EFG position Y (km)
set XA_VCM_EFGPOSY 16
# EFG position Z (km)
set XA_VCM_EFGPOSZ 17
# EFG velocity X (km/s)
set XA_VCM_EFGVELX 18
# EFG velocity Y (km/s)
set XA_VCM_EFGVELY 19
# EFG velocity Z (km/s)
set XA_VCM_EFGVELZ 20
# geopotential zonals
set XA_VCM_GEOZON 21
# geopotential tesserals
set XA_VCM_GEOTES 22
# ballistic coefficient (m^2/kg)
set XA_VCM_BTERM 23
# BDOT (m^2/kg-s)
set XA_VCM_BDOT 24
# solar radiation pressure coefficient (m^2/kg)
set XA_VCM_AGOM 25
# energy dissipation rate (w/kg)
set XA_VCM_EDR 26
# outgassing parameter/thrust acceleration (m/s^2)
set XA_VCM_OGPARM 27
# center of mass offset (m)
set XA_VCM_CMOFFSET 28
# solar flux F10
set XA_VCM_F10 29
# average F10
set XA_VCM_F10AVG 30
# average Ap
set XA_VCM_APAVG 31
# TAI - UTC (s)
set XA_VCM_TAIMUTC 32
# UT1 - UTC (s)
set XA_VCM_UT1MUTC 33
# UT1 rate (ms/day)
set XA_VCM_UT1RATE 34
# polar motion X (arcsec)
set XA_VCM_POLMOTX 35
# polar motion Y (arcsec)
set XA_VCM_POLMOTY 36
# nutation terms
set XA_VCM_NUTTERMS 37
# leap second time in days since 1950 UTC
set XA_VCM_LEAPDS50UTC 38
# initial step size
set XA_VCM_INITSTEP 39
# integrator control error
set XA_VCM_ERRCTRL 40
# position u sigma (km)
set XA_VCM_POSUSIG 41
# position v sigma (km)
set XA_VCM_POSVSIG 42
# position w sigma (km)
set XA_VCM_POSWSIG 43
# velocity u sigma (km/s)
set XA_VCM_VELUSIG 44
# velocity v sigma (km/s)
set XA_VCM_VELVSIG 45
# velocity w sigma (km/s)
set XA_VCM_VELWSIG 46
# covariance matrix size
set XA_VCM_COVMTXSIZE 47
# weighted RM of last DC on the satellite
set XA_VCM_RMS 48
# the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-144: 9x9 covmtx)
set XA_VCM_COVELEMS 100

set XA_VCM_SIZE 512

# Indexes of VCM data fields
# Satellite number I5
set XF_VCM_SATNUM 1
# Satellite international designator A8
set XF_VCM_SATNAME 2
# Epoch YYYYDDDHHMMSS.SSS A17
set XF_VCM_EPOCH 3
# Revolution number I5
set XF_VCM_REVNUM 4
# position X (km) F16.8
set XF_VCM_POSX 5
# position Y (km) F16.8
set XF_VCM_POSY 6
# position Z (km) F16.8
set XF_VCM_POSZ 7
# velocity X (km/s) F16.12
set XF_VCM_VELX 8
# velocity Y (km/s) F16.12
set XF_VCM_VELY 9
# velocity Z (km/s) F16.12
set XF_VCM_VELZ 10
# Geo Name A6
set XF_VCM_GEONAME 11
# Geo zonals I2
set XF_VCM_GEOZONALS 12
# Geo tesserals I2
set XF_VCM_GEOTESSER 13
# Drag modelel A12 (NONE, JAC70/MSIS90)
set XF_VCM_DRAGMODE 14
# Lunar solar A3 (ON/OFF)
set XF_VCM_LUNSOL 15
# Radiation pressure pertubations A3 (ON/OFF)
set XF_VCM_RADPRESS 16
# Earth + ocean tides pertubations A3 (ON/OFF)
set XF_VCM_ERTHTIDES 17
# Intrack thrust A3 (ON/OFF)
set XF_VCM_INTRACK 18
# Ballistic coefficient (m^2/kg)
set XF_VCM_BTERM 19
# Radiation pressure coefficient  (m^2/kg)
set XF_VCM_AGOM 20
# Outgassing parameter (m/s^2)
set XF_VCM_OGPARM 21
# Center of mass offset (m)
set XF_VCM_CMOFFSET 22
# Solar flux F10 I3
set XF_VCM_F10 23
# Solar flux F10 average I3
set XF_VCM_F10AVG 24
# Ap average F5.1
set XF_VCM_APAVG 25
# TAI minus UTC (s)I2
set XF_VCM_TAIMUTC 26
# UT1 minus UTC (s) F7.5
set XF_VCM_UT1MUTC 27
# UT1 rate (ms/day)  F5.3
set XF_VCM_UT1RATE 28
# Polar motion X (arcsec) F6.4
set XF_VCM_POLARX 29
# Polar motion Y (arcsec) F6.4
set XF_VCM_POLARY 30
# Nutation terms I3
set XF_VCM_NTERMS 31
# Leap second time YYYYDDDHHMMSS.SSS A17
set XF_VCM_LEAPYR 32
# Integration mode A6 (ASW, OSW, SPADOC)
set XF_VCM_INTEGMODE 33
# Type of partial derivatives A8 (Analytic, FULL NUM, FAST NUM)
set XF_VCM_PARTIALS 34
# Integration step mode A4 (AUTO/TIME, S)
set XF_VCM_STEPMODE 35
# Fixed step size indicator A3 (ON/OFF)
set XF_VCM_FIXEDSTEP 36
# Initial step size selection A6 (AUTO/MANUAL)
set XF_VCM_STEPSLCTN 37
# Initial integration step size F8.3
set XF_VCM_STEPSIZE 38
# Integrator error control E9.3
set XF_VCM_ERRCTRL 39
# Weighted rms of last DC E10.5
set XF_VCM_RMS 40
# BDOT (M2/KG-S)
set XF_VCM_BDOT 41
# EDR (W/KG)
set XF_VCM_EDR 42


#*******************************************************************************
# Different ingetration control/step mode
set STEPMODE_AUTO 0
set STEPMODE_TIME 1
set STEPMODE_S 2


# ========================= End of auto generated code ==========================
