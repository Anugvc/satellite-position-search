# This wrapper file was generated automatically by the GenDllWrappers program.

# TLE types (TLE ephemeris types) - They are different than ELTTYPE
# TLE SGP elset (Kozai mean motion)
set TLETYPE_SGP 0
# TLE SGP4 elset (Brouwer mean motion)
set TLETYPE_SGP4 2
# TLE SGP4-XP elset (Brouwer mean motion)
set TLETYPE_XP 4
# TLE SP elset (osculating elements)
set TLETYPE_SP 6

# Indexes of TLE data fields
# Satellite number
set XF_TLE_SATNUM 1
# Security classification U: unclass, C: confidential, S: Secret
set XF_TLE_CLASS 2
# Satellite name A8
set XF_TLE_SATNAME 3
# Satellite's epoch time "YYYYJJJ.jjjjjjjj"
set XF_TLE_EPOCH 4
# GP B* drag term (1/er)  (not the same as XF_TLE_BTERM)
set XF_TLE_BSTAR 5
# Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
set XF_TLE_EPHTYPE 6
# Element set number
set XF_TLE_ELSETNUM 7
# Orbit inclination (deg)
set XF_TLE_INCLI 8
# Right ascension of asending node (deg)
set XF_TLE_NODE 9
# Eccentricity
set XF_TLE_ECCEN 10
# Argument of perigee (deg)
set XF_TLE_OMEGA 11
# Mean anomaly (deg)
set XF_TLE_MNANOM 12
# Mean motion (rev/day) (ephType=0: Kozai, ephType=2: Brouwer)
set XF_TLE_MNMOTN 13
# Revolution number at epoch
set XF_TLE_REVNUM 14

# GP Mean motion derivative (rev/day /2)
set XF_TLE_NDOT 15
# GP Mean motion second derivative (rev/day**2 /6)
set XF_TLE_NDOTDOT 16
# Solar radiation pressure GP (m2/kg)
set XF_TLE_AGOMGP 16

# SP Radiation Pressure Coefficient
set XF_TLE_SP_AGOM 5
# SP ballistic coefficient (m2/kg)
set XF_TLE_SP_BTERM 15
# SP outgassing parameter (km/s2)
set XF_TLE_SP_OGPARM 16

# Original satellite number
set XF_TLE_ORGSATNUM 17
# GP ballistic coefficient (m2/kg) (not the same as XF_TLE_BSTAR)
set XF_TLE_BTERM 18
# Time of last observation relative to epoch +/- fractional days
set XF_TLE_OBSTIME 19
# Last calculated error growth rate (km/day)
set XF_TLE_EGR 20
# Last calculated energy dissipation rate (w/kg)
set XF_TLE_EDR 21
# Median Vismag
set XF_TLE_VISMAG 22
# Median RCS - diameter in centimeters (cm)
set XF_TLE_RCS 23
# Object Type (Payload, Rocket Body, Platform, Debris, Unknown)
set XF_TLE_OBJTYPE 24
# Satellite name A12 (upto 12 character long)
set XF_TLE_SATNAME_12 25


# Indexes of TLE numerical data in an array
# Line 1
# Satellite number
set XA_TLE_SATNUM 0
# Satellite's epoch time in DS50UTC
set XA_TLE_EPOCH 1
# GP Mean motion derivative (rev/day /2)
set XA_TLE_NDOT 2
# GP Mean motion second derivative (rev/day**2 /6)
set XA_TLE_NDOTDOT 3
# GP B* drag term (1/er)
set XA_TLE_BSTAR 4
# Satellite ephemeris type: 0=SGP, 2=SGP4, 4=SGP4-XP, 6=SP
set XA_TLE_EPHTYPE 5

# Line 2
# Orbit inclination (deg)
set XA_TLE_INCLI 20
# Right ascension of asending node (deg)
set XA_TLE_NODE 21
# Eccentricity
set XA_TLE_ECCEN 22
# Argument of perigee (deg)
set XA_TLE_OMEGA 23
# Mean anomaly (deg)
set XA_TLE_MNANOM 24
# Mean motion (rev/day) (ephType=0, 4: Kozai, ephType=2: Brouwer)
set XA_TLE_MNMOTN 25
# Revolution number at epoch
set XA_TLE_REVNUM 26
# Element set number
set XA_TLE_ELSETNUM 30

# CSV (or TLE-XP, ephemType=4) specific fields
# Original satellite number
set XA_TLE_ORGSATNUM 31
# SP/SGP4-XP ballistic coefficient (m2/kg)
set XA_TLE_BTERM 32
# Time of last observation relative to epoch +/- fractional days
set XA_TLE_OBSTIME 33
# Last calculated error growth rate (km/day)
set XA_TLE_EGR 34
# Last calculated energy dissipation rate (w/kg)
set XA_TLE_EDR 35
# Median Vismag
set XA_TLE_VISMAG 36
# Median RCS - diameter in centimeters (cm)
set XA_TLE_RCS 37

# CSV (or TLE-XP, ephemType=4)
# Solar Radiation Pressure Coefficient GP (m2/kg)
set XA_TLE_AGOMGP 38


# SP specific fields
# SP ballistic coefficient (m2/kg)
set XA_TLE_SP_BTERM 2
# SP outgassing parameter (km/s2)
set XA_TLE_SP_OGPARM 3
# SP Radiation Pressure Coefficient
set XA_TLE_SP_AGOM 4

set XA_TLE_SIZE 64

# Indexes of TLE text data in an array of chars
# Security classification of line 1 and line 2
set XS_TLE_SECCLASS_1 0
# Satellite name
set XS_TLE_SATNAME_12 1
# Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
set XS_TLE_OBJTYPE_11 13

set XS_TLE_SIZE 512

# TLE's text data fields - new convention (start index, string length)
# Security classification of line 1 and line 2
set XS_TLE_SECCLASS_0_1 0
# Satellite name
set XS_TLE_SATNAME_1_12 1
# Object Type (Payload, Rocket Body, Platform, Debris, Unknown) - csv only
set XS_TLE_OBJTYPE_13_1 13

set XS_TLE_LENGTH 512

# Indexes of different TLE file's formats
# Original TLE format
set XF_TLEFORM_ORG 0
# CSV format
set XF_TLEFORM_CSV 1


# ========================= End of auto generated code ==========================
