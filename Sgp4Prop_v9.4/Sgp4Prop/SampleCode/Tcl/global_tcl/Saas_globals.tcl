# This wrapper file was generated automatically by the GenDllWrappers program.

#*******************************************************************************

# Missile Profile
# missile profile's minimum height limit (km)
set XA_MSL_MINHGT 0
# missile profile's maximum height limit (km)
set XA_MSL_MAXHGT 1
# maximum allowed solar aspect angle (deg)
set XA_MSL_MAXSA 2
# maximum allowed missile attack angle (deg)
set XA_MSL_ANGMAX 3
# rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos)
set XA_MSL_REJFLG 4
# missile trajectory time coefficient for the *X**2 term [sec]
set XA_MSL_TIMCOE1 5
# missile trajectory time coefficient for the *X term [sec]
set XA_MSL_TIMCOE2 6
# missile trajectory time constant for the C term [sec]
set XA_MSL_TIMCOE3 7
# missile trajectory range coefficient *X**2 term [km]
set XA_MSL_RNGCOE1 8
# missile trajectory range coefficient *X term [km]
set XA_MSL_RNGCOE2 9
# missile trajectory range constant for the C term [km]
set XA_MSL_RNGCOE3 10

set XA_MSL_SIZE 32

#*******************************************************************************

# Launch site location
# launch site's latitude (deg)  (+N) (-S)
set XA_LS_LAT 0
# launch site's longitude (deg) (+E) (-W)
set XA_LS_LON 1
# launch site's height(m)
set XA_LS_HEIGHT 2

set XA_LS_SIZE 8

#*******************************************************************************

# Saas run parameters
# Maximum number of penetration points that are allowed
set XA_SAASRUN_MAXPENS 0
# SAAS start time in days since 1950, UTC
set XA_SAASRUN_START 1
# SAAS stop time in days since 1950, UTC
set XA_SAASRUN_STOP 2
# Half angle of attack cone (0=auto)
set XA_SAASRUN_HALFCONE 3

set XA_SAASRUN_SIZE 8

#*******************************************************************************

# Satellite penetration data
# impact time in days since 1950, UTC
set XA_SATPEN_IMPTIME 0
# msl launch time in days since 1950, UTC
set XA_SATPEN_LAUTIME 1
# azimuth (deg)
set XA_SATPEN_AZ 2
# elevation (deg)
set XA_SATPEN_EL 3
# range (km)
set XA_SATPEN_RANGE 4
# range rate (km/s)
set XA_SATPEN_RNGRATE 5
# solar aspect angle (deg)
set XA_SATPEN_SOLANG 6
# attack angle (deg)
set XA_SATPEN_ATTCKANG 7
# satellite's height (km)
set XA_SATPEN_SATHGHT 8
# ring penetration entry or exit time (0=entry, 1=exit)
set XA_SATPEN_EN0EX1 9

set XA_SATPEN_SIZE 16

#*******************************************************************************

# SAAS ouput data
# number of actual satellite penetrations
set XA_SAASRET_NUMOFPENS 0
# satellite apogee height (km)
set XA_SAASRET_SATAHT 1
# satellite perigee height (km)
set XA_SAASRET_SATPHT 2
# autocone minimum cone half angle (deg)
set XA_SAASRET_MINCONE 3
# autocone maximum cone half angle (deg)
set XA_SAASRET_MAXCONE 4




set XA_SAASRET_SIZE 16

#*******************************************************************************

# predefined values for different orbit types used in planer program
# orbit type LEO
set ORBTYPE_LEO 1
# orbit type MEO
set ORBTYPE_MEO 2
# orbit type GEO
set ORBTYPE_GEO 3

#*******************************************************************************

# indexes of fields specifying parameters for planer intersection program
# launch site latitude (deg)
set XA_LNCH_LAT 0
# launch site longitude (deg)
set XA_LNCH_LON 1
# injection azimuth (deg)
set XA_LNCH_INJAZ 2
# launch time in days since 1950 UTC
set XA_LNCH_DS50UTC 3

set XA_LNCH_SIZE 8

#*******************************************************************************

# indexes of fields specifying parameters for planer intersection program
# orbital type (LEO = 1, MEO = 2, GEO = 3)
set XA_PLNR_ORBTYPE 0
# launch site latitude (deg)
set XA_PLNR_LSLAT 1
# launch site longitude (deg)
set XA_PLNR_LSLON 2
# launch time in days since 1950 UTC
set XA_PLNR_DS50UTC 4
# time of flight start (min)
set XA_PLNR_TOFFR 5
# time of flight end (min)
set XA_PLNR_TOFTO 6
# planer's inclination (deg)
set XA_PLNR_INCLI 7
# planer's node (deg)
set XA_PLNR_NODE 8

set XA_PLNR_SIZE 16

#*******************************************************************************

# indexes of output data returned by planer intersection program
# time of intersection in days since 1950 UTC
set XA_INTXN_DS50UTC 0
# satellite inclination (deg)
set XA_INTXN_INCLI 1
# satellite latitude (deg) at the time of the intersection
set XA_INTXN_LAT 2
# satellite longitude (deg) at the time of the intersection
set XA_INTXN_LON 3
# satellite height (km) at the time of the intersection
set XA_INTXN_HEIGHT 4
# time of flight (min) since launch time
set XA_INTXN_TOF 5
# coplaner angle (deg)
set XA_INTXN_COPLANG 6

set XA_INTXN_SIZE 16

#*******************************************************************************

# ========================= End of auto generated code ==========================
