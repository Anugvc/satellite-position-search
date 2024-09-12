# This wrapper file was generated automatically by the GenDllWrappers program.

# Satellite maintenance category
# Synchronous
set SATCAT_SYNCHRONOUS 1
# Deep space (not synchronous)
set SATCAT_DEEPSPACE 2
# Decaying (perigee height below 575 km)
set SATCAT_DECAYING 3
# Routine (everything else)
set SATCAT_ROUTINE 4

# Indexes of available satellite data fields
# epoch in days since 1950, UTC
set XF_ELFIELD_EPOCHUTC 1
# mean anomaly (deg)
set XF_ELFIELD_MNANOM 2
# right ascension of the asending node (deg)
set XF_ELFIELD_NODE 3
# argument of perigee (deg)
set XF_ELFIELD_OMEGA 4
# period (min)
set XF_ELFIELD_PERIOD 5
# eccentricity (unitless)
set XF_ELFIELD_ECCEN 6
# inclination (deg)
set XF_ELFIELD_INCLI 7
# mean motion (revs/day)
set XF_ELFIELD_MNMOTION 8
# either SGP4 bStar (1/er) or SP bTerm (m2/kg)
set XF_ELFIELD_BFIELD 9
# perigee height (km)
set XF_ELFIELD_PERIGEEHT 10
# apogee height (km)
set XF_ELFIELD_APOGEEHT 11
# perigee (km)
set XF_ELFIELD_PERIGEE 12
# apogee (km)
set XF_ELFIELD_APOGEE 13
# semi major axis (km)
set XF_ELFIELD_A 14
# Satellite category (Synchronous, Deep space, Decaying, Routine)
set XF_ELFIELD_SATCAT 15
# Astat 3 Height multiplier
set XF_ELFIELD_HTM3 16
# Center of mass offset (m)
set XF_ELFIELD_CMOFFSET 17
# n-double-dot/6  (for SGP, eph-type = 0)
set XF_ELFIELD_N2DOT 18


# Indexes of available satellite parameters
# satellite's epoch in days since 1950, UTC
set XA_SATPARM_EPOCHUTC 0
# satellite's mean anomaly (deg)
set XA_SATPARM_MNANOM 1
# satellite's right ascension of the asending node (deg)
set XA_SATPARM_NODE 2
# satellite's argument of perigee (deg)
set XA_SATPARM_OMEGA 3
# satellite's period (min)
set XA_SATPARM_PERIOD 4
# satellite's eccentricity (unitless)
set XA_SATPARM_ECCEN 5
# satellite's inclination (deg)
set XA_SATPARM_INCLI 6
# satellite's mean motion (revs/day)
set XA_SATPARM_MNMOTION 7
# satellite's either SGP4 bStar (1/er) or SP bTerm (m2/kg)
set XA_SATPARM_BFIELD 8
# satellite's perigee height (km)
set XA_SATPARM_PERIGEEHT 9
# satellite's apogee height (km)
set XA_SATPARM_APOGEEHT 10
# satellite's perigee (km)
set XA_SATPARM_PERIGEE 11
# satellite's apogee (km)
set XA_SATPARM_APOGEE 12
# satellite's semi major axis (km)
set XA_SATPARM_A 13
# satellite's category (1=Synchronous, 2=Deep space, 3=Decaying, 4=Routine)
set XA_SATPARM_SATCAT 14
# satellite's center of mass offset (m)
set XA_SATPARM_CMOFFSET 15
# satellite's east longitude east subpoint (deg) - only for synchronous orbits
set XA_SATPARM_LONE 16
# satellite's longitude drift rate (deg East/day) - only for synchronous orbits
set XA_SATPARM_DRIFT 17
# satellite's omega rate of change (deg/day)
set XA_SATPARM_OMEGADOT 18
# satellite's nodal precession rate (deg/day)
set XA_SATPARM_RADOT 19
# satellite's nodal period (min)
set XA_SATPARM_NODALPRD 20
# satellite's nodal crossing time prior to its epoch (ds50UTC)
set XA_SATPARM_NODALX 21
# satellite is GEO: 0=no, 1=yes
set XA_SATPARM_ISGEO 22
# satellite's relative energy - only for GOBS
set XA_SATPARM_RELENERGY 23
# satellite's number
set XA_SATPARM_SATNUM 24
# satellite's orbital elset type - see ELTTYPE_? for list of available values (old name XA_SATPARM_OET)
set XA_SATPARM_ELTTYPE 25
# obsolete - should use new name XA_SATPARM_ELTTYPE intead
set XA_SATPARM_OET 25
# satellite's propagation type - see PROPTYPE_? for list of available values
set XA_SATPARM_PROPTYPE 26
# satellite's element number
set XA_SATPARM_ELSETNUM 27
# sin(incl)*sin(r.a. node)
set XA_SATPARM_WX 28
# -sin(incl)*cos(r.a. node)
set XA_SATPARM_WY 29
# cos(incl)
set XA_SATPARM_WZ 30
# Trough/Drift Flag, 0 - 75 deg trough, 1 - 255 deg trough, 2 - both troughs, 3 - unstable point, 4 - East drift, 5 - West drift
set XA_SATPARM_TROUGH 31

set XA_SATPARM_SIZE 32

# Different input time options of VP card
# VP's input time is in days since 1950 UTC
set VP_TIME_DS50UTC 0
# VP's input time is in minutes since epoch
set VP_TIME_MSE 1

# VP record arrangement in array format
# VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
set XA_VP_TIMETYPE 0
# VP's input time types (VP_TIME_DS50UTC or VP_TIME_MSE)
set XA_VP_TIMEVAL 1
# impulse U-component of delta-velocity (km/sec)
set XA_VP_IMPULSE_U 2
# impulse V-component of delta-velocity (km/sec)
set XA_VP_IMPULSE_V 3
# impulse W-component of delta-velocity (km/sec)
set XA_VP_IMPULSE_W 4
# apply above delta-v this number of times at the interval specified below
set XA_VP_REPETITIONS 5
# time interval in minutes between repetitions specified above
set XA_VP_INTERVAL 6

set XA_VP_SIZE 16



#*******************************************************************************

# ========================= End of auto generated code ==========================
