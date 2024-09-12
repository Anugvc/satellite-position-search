# This wrapper file was generated automatically by the GenDllWrappers program.
# Different return values of errCode from Sgp4 propagation
# SGP4 propagates successfully
set GP_ERR_NONE 0
# Bad FK model (FK5 must be selected)
set GP_ERR_BADFK 1
# A is negative
set GP_ERR_ANEGATIVE 2
# A is to large
set GP_ERR_ATOOLARGE 3
# Eccentricity is hyperbolic
set GP_ERR_EHYPERPOLIC 4
# Eccentricity is negative
set GP_ERR_ENEGATIVE 5
# Mean anomaly is too large
set GP_ERR_MATOOLARGE 6
# e**2 is too large
set GP_ERR_E2TOOLARGE 7

# Different time types for passing to Sgp4PropAll
# propagation time is in minutes since epoch
set SGP4_TIMETYPE_MSE 0
# propagation time is in days since 1950, UTC
set SGP4_TIMETYPE_DS50UTC 1

# Sgp4 propagated output fields
# Revolution number
set XF_SGP4OUT_REVNUM 1
# Nodal period, apogee, perigee
set XF_SGP4OUT_NODAL_AP_PER 2
# Mean Keplerian
set XF_SGP4OUT_MEAN_KEP 3
# Osculating Keplerian
set XF_SGP4OUT_OSC_KEP 4

# Sgp4 propagated data
# Propagation time in days since 1950, UTC
set XA_SGP4OUT_DS50UTC 0
# Propagation time in minutes since the satellite's epoch time
set XA_SGP4OUT_MSE 1
# ECI X position (km) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_POSX 2
# ECI Y position (km) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_POSY 3
# ECI Z position (km) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_POSZ 4
# ECI X velocity (km/s) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_VELX 5
# ECI Y velocity (km/s) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_VELY 6
# ECI Z velocity (km/s) in True Equator and Mean Equinox of Epoch
set XA_SGP4OUT_VELZ 7
# Geodetic latitude (deg)
set XA_SGP4OUT_LAT 8
# Geodetic longitude (deg)
set XA_SGP4OUT_LON 9
# Height above geoid (km)
set XA_SGP4OUT_HEIGHT 10
# Revolution number
set XA_SGP4OUT_REVNUM 11
# Nodal period (min)
set XA_SGP4OUT_NODALPER 12
# Apogee (km)
set XA_SGP4OUT_APOGEE 13
# Perigee (km)
set XA_SGP4OUT_PERIGEE 14
# Mean semi-major axis (km)
set XA_SGP4OUT_MN_A 15
# Mean eccentricity (unitless)
set XA_SGP4OUT_MN_E 16
# Mean inclination (deg)
set XA_SGP4OUT_MN_INCLI 17
# Mean mean anomaly (deg)
set XA_SGP4OUT_MN_MA 18
# Mean right ascension of the asending node (deg)
set XA_SGP4OUT_MN_NODE 19
# Mean argument of perigee (deg)
set XA_SGP4OUT_MN_OMEGA 20
# Osculating semi-major axis (km)
set XA_SGP4OUT_OSC_A 21
# Osculating eccentricity (unitless)
set XA_SGP4OUT_OSC_E 22
# Osculating inclination (deg)
set XA_SGP4OUT_OSC_INCLI 23
# Osculating mean anomaly (deg)
set XA_SGP4OUT_OSC_MA 24
# Osculating right ascension of the asending node (deg)
set XA_SGP4OUT_OSC_NODE 25
# Osculating argument of perigee (deg)
set XA_SGP4OUT_OSC_OMEGA 26

set XA_SGP4OUT_SIZE 64

# Different options for generating ephemerides from SGP4
# ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
set SGP4_EPHEM_ECI 1
# MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
set SGP4_EPHEM_J2K 2


# Different dynamic step size options
# Use a simple algorithm to determine step size based on satellite's current position
set DYN_SS_BASIC -1

#*******************************************************************************

# ========================= End of auto generated code ==========================
