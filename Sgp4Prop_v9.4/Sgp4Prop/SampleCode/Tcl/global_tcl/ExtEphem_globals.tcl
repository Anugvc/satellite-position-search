# This wrapper file was generated automatically by the GenDllWrappers program.

# Indexes of coordinate systems
# ECI TEME of DATE
set COORD_ECI 1
# MEME of J2K
set COORD_J2K 2
# Earth Fixed Greenwich (EFG)
set COORD_EFG 3
# Earch Centered Rotation (ECR)
set COORD_ECR 4
# Lat Lon Height and a vector offset (range, azimuth, elevation)
set COORD_LLH 5
# Sensor site (ECR) and a vector offset (range, azimuth, elevation)
set COORD_SEN 6

# ECI TEME of DATE, fixed point
set COORD_ECIFP 11
# MEME of J2K, fixed point
set COORD_J2KFP 12
# Earth Fixed Greenwich (EFG), fixed point
set COORD_EFGFP 13
# Earch Centered Rotation (ECR), fixed point
set COORD_ECRFP 14
# Lat Lon Height and an offset vector (range, azimuth, elevation)
set COORD_LLHOV 15
# Sensor site (ECR) and an offset vector (range, azimuth, elevation)
set COORD_SENOV 16
# Current position (LLH), heading (azimuth), and constant speed of an mobile object that travels in a rhumb line course
set COORD_HCSRL 17
# List of waypoints (LLH) that describes the movement of an object that travels in a rhumb line course
set COORD_WPTRL 18
# Current position (LLH), initial heading (azimuth), and constant speed of an mobile object that travels in a great circle course
set COORD_HCSGC 19
# List of waypoints (LLH) that describes the movement of an object that travels in a great circle course
set COORD_WPTGC 20


# Invalid coordinate system
set COORD_INVALID 100

# UVW convariance matrix - TEME of DATE
set COVMTX_UVW_DATE 0
# Cartesian covariance matrix - TEME of DATE
set COVMTX_XYZ_DATE 10
# Equinoctial covariance matrix - TEME of DATE
set COVMTX_EQNX_DATE 20
# UVW convariance matrix - MEME of J2K
set COVMTX_UVW_J2K 30
# Cartesian covariance matrix - MEME of J2K
set COVMTX_XYZ_J2K 40
# Equinoctial covariance matrix - MEME of J2K
set COVMTX_EQNX_J2K 50


# Get ephemeris data using time in minutes since epoch
set XF_GETEPH_MSE 1
# Get ephemeris data using time in days since 1950 UTC
set XF_GETEPH_UTC 2
# Get ephemeris data using index of the element in the array
set XF_GETEPH_IDX 3

# Indexes of EXTEPH data fields
# Satellite number I5
set XF_EXTEPH_SATNUM 1
# Epoch YYDDDHHMMSS.SSS
set XF_EXTEPH_EPOCH 2
# Earth radius (km)
set XF_EXTEPH_AE 3
# Ke
set XF_EXTEPH_KE 4
# position X (km) F16.8
set XF_EXTEPH_POSX 5
# position Y (km) F16.8
set XF_EXTEPH_POSY 6
# position Z (km) F16.8
set XF_EXTEPH_POSZ 7
# velocity X (km/s) F16.12
set XF_EXTEPH_VELX 8
# velocity Y (km/s) F16.12
set XF_EXTEPH_VELY 9
# velocity Z (km/s) F16.12
set XF_EXTEPH_VELZ 10
# Input coordinate systems
set XF_EXTEPH_COORD 11
# Num of ephemeris points
set XF_EXTEPH_NUMOFPTS 12
# Ephemeris file path
set XF_EXTEPH_FILEPATH 13
# International Designator
set XF_EXTEPH_SATNAME 14
# Record name
set XF_EXTEPH_RECNAME 15

# ========================= End of auto generated code ==========================
