# This wrapper file was generated automatically by the GenDllWrappers program.

# Indexes of available satellite data fields
# Satellite epoch time in days since 1950 UTC
set XF_SATFIELD_EPOCHUTC 1
# Mean anomaly (deg)
set XF_SATFIELD_MNANOM 2
# Right ascension of asending node (deg)
set XF_SATFIELD_NODE 3
# Argument of perigee (deg)
set XF_SATFIELD_OMEGA 4
# Satellite's period (min)
set XF_SATFIELD_PERIOD 5
# Eccentricity
set XF_SATFIELD_ECCEN 6
# Orbit inclination (deg)
set XF_SATFIELD_INCLI 7
# Mean motion (rev/day)
set XF_SATFIELD_MNMOTION 8
# GP B* drag term (1/er)  or SP Radiation Pressure Coefficient
set XF_SATFIELD_BFIELD 9
# Perigee height above the geoid (km)
set XF_SATFIELD_PERIGEEHT 10
# Apogee height above the geoid (km)
set XF_SATFIELD_APOGEEHT 11
# Perigee height above the center of the earth (km)
set XF_SATFIELD_PERIGEE 12
# Apogee height above the center of the earth (km)
set XF_SATFIELD_APOGEE 13
# Semimajor axis (km)
set XF_SATFIELD_A 14
# Mean motion derivative (rev/day /2)
set XF_SATFIELD_NDOT 15
# Satellite category (Synchronous, Deep space, Decaying, Routine)
set XF_SATFIELD_SATCAT 16
# Astat 3 Height multiplier
set XF_SATFIELD_HTM3 17
# Center of mass offset (m)
set XF_SATFIELD_CMOFFSET 18
# Unused
set XF_SATFIELD_N2DOT 19
# GP node dot (deg/s)
set XF_SATFIELD_NODEDOT 20
# GP only - the last time when propagation has error
set XF_SATFIELD_ERRORTIME 21
# value of mu
set XF_SATFIELD_MU 22


#*******************************************************************************

# Indexes of available deltas
# delta position (km)
set XA_DELTA_POS 0
# delta time (sec)
set XA_DELTA_TIME 1
# delta position in radial direction (km)
set XA_DELTA_PRADIAL 2
# delta position in in-track direction (km)
set XA_DELTA_PINTRCK 3
# delta position in cross-track direction (km)
set XA_DELTA_PCRSSTRCK 4
# delta velocity (km/sec)
set XA_DELTA_VEL 5
# delta velocity in radial direction (km/sec)
set XA_DELTA_VRADIAL 6
# delta velocity in in-track direction (km/sec)
set XA_DELTA_VINTRCK 7
# delta velocity in cross-track direction (km/sec)
set XA_DELTA_VCRSSTRCK 8
# delta Beta (deg)
set XA_DELTA_BETA 9
# delta height (km)
set XA_DELTA_HEIGHT 10
# delta angular momentum (deg)
set XA_DELTA_ANGMOM 11
# 3D position Mahalanobis distance in UVW Space (Bubble Covariance, only if covariance propagation is available or turned on)
set XA_DELTA_MHLNBS_UVW 12
# 3D position Mahalanobis distance in Height-Time_Beta Space (Banana Covariance, only if covariance propagation is available or turned on)
set XA_DELTA_MHLNBS_HTB 13

set XA_DELTA_SIZE 100

# Indexes of Satellite data fields
# Satellite number I5
set XF_SAT_NUM 1
# Satellite international designator A8
set XF_SAT_NAME 2
# Element type I1 (old name XF_SAT_EPHTYPE)
set XF_SAT_ELTTYPE 3
# Obsolete - should use new name XF_SAT_ELTTYPE instead
set XF_SAT_EPHTYPE 3
# Epoch revolution number I6
set XF_SAT_REVNUM 4
# Epoch time in days since 1950
set XF_SAT_EPOCH 5
# BStar drag component (GP) or Ballistic coefficient-BTerm (SP) (m^2/kg)
set XF_SAT_BFIELD 6
# Element set number
set XF_SAT_ELSETNUM 7
# Inclination (deg)
set XF_SAT_INCLI 8
# Right ascension of ascending node (deg)
set XF_SAT_NODE 9
# Eccentricity
set XF_SAT_ECCEN 10
# Argument of perigee (deg)
set XF_SAT_OMEGA 11
# Mean anomaly (deg)
set XF_SAT_MNANOM 12
# Mean motion (revs/day)
set XF_SAT_MNMOTN 13
# Satellite period (min)
set XF_SAT_PERIOD 14
# Perigee Height(km)
set XF_SAT_PERIGEEHT 15
# Apogee Height (km)
set XF_SAT_APOGEEHT 16
# Perigee(km)
set XF_SAT_PERIGEE 17
# Apogee (km)
set XF_SAT_APOGEE 18
# Semi-major axis (km)
set XF_SAT_A 19


# Indexes of SatState's load/save file task mode
# Only load/save propagator control parameters
set XF_TASK_CTRLONLY 1
# Only load/save orbital elements/external ephemeris data
set XF_TASK_SATONLY 2
# Load/Save both 1 and 2
set XF_TASK_BOTH 3


# Different external ephemeris file types
# ITC file format
set EPHFILETYPE_ITC 1
# ITC compact (without covariance matrix) file format
set EPHFILETYPE_ITC_WOCOV 2


# Gobs records
# Satellite number
set XA_GOBS_SATNUM 0
# East Longitude
set XA_GOBS_LONE 1
# Longitude Drift Rate
set XA_GOBS_DRIFT 2
# satellite's relative energy (deg^2/sec^2) - only for GOBS
set XA_GOBS_RELENERGY 3
# sin(incl)*sin(r.a. node)
set XA_GOBS_WX 4
# -sin(incl)*cos(r.a. node)
set XA_GOBS_WY 5
# cos(incl)
set XA_GOBS_WZ 6
# af
set XA_GOBS_AF 7
# ag
set XA_GOBS_AG 8
# AGOM
set XA_GOBS_AGOM 9
# Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
set XA_GOBS_TROUGH 10

set XA_GOBS_SIZE 32


# Indexes of GOBS limits
# 0 - ignore trough logic, 1 - implement trough logic
set XA_GOBS_LIM_TROUGH 0
# Primary satellite is plane changer
set XA_GOBS_LIM_PCP 1
# Secondary satellite is plane changer
set XA_GOBS_LIM_PCS 2
# Primary satellite is plane changer
set XA_GOBS_LIM_ACTIVEP 3
# Secondary satellite is plane changer
set XA_GOBS_LIM_ACTIVES 4
# Min Longitude of sat
set XA_GOBS_LIM_LONGMIN 5
# Max Longitude of sat
set XA_GOBS_LIM_LONGMAX 6
# Min Agom of sat
set XA_GOBS_LIM_AGOMMIN 7
# Max Agom of sat
set XA_GOBS_LIM_AGOMMAX 8

set XA_GOBS_LIM_SIZE 16


# Indexes of available deltas
# Primary satellite number
set XA_GOBS_DELTA_PRIMESAT 0
# Secondary satellite number
set XA_GOBS_DELTA_SECONDARYSAT 1
# GOBS correlation score
set XA_GOBS_DELTA_ASTAT 2
# delta orbital plane
set XA_GOBS_DELTA_DOP 3
# delta shape
set XA_GOBS_DELTA_DSHAPE 4
# delta Relative Energy (deg^2/day^2)
set XA_GOBS_DELTA_DRELENERGY 5
# Longitude of Primary
set XA_GOBS_DELTA_LONGP 6
# Minimum Longitude of Secondary
set XA_GOBS_DELTA_LONGMIN 7
# Maximum Longitude of Secondary
set XA_GOBS_DELTA_LONGMAX 8
# 0 - opposite throughs or drift rates, 1 - trough or drift rates match
set XA_GOBS_DELTA_TROUGH 9
# 0|1    Plane Match Flag
set XA_GOBS_DELTA_PLANE 10
# 0|1    Shape Match Flag
set XA_GOBS_DELTA_SHAPE 11
# 0|1    Energy Match Flag
set XA_GOBS_DELTA_ENERGY 12
# 0|1|2  Longitude Match Flag (2 is fuzzy match)
set XA_GOBS_DELTA_LONG 13
# 0|1    Agom Match Flag
set XA_GOBS_DELTA_AGOM 14

set XA_GOBS_DELTA_SIZE 16


#*******************************************************************************

# ========================= End of auto generated code ==========================
