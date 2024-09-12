# This wrapper file was generated automatically by the GenDllWrappers program.

# AOF parameters
# input start/stop time type: 1=minutes since epoch (MSE), 0=date time (DTG)
set XA_AOFCTRL_TIMEFLG 0
# start time of interest (either MSE or DTG)
set XA_AOFCTRL_START 1
# stop time of interest (either MSE or DTG)
set XA_AOFCTRL_STOP 2
# search interval (min)
set XA_AOFCTRL_INTERVAL 3
# print output control flag; 0=print penetrations only, 1=print penetrations and data description
set XA_AOFCTRL_PRTOPT 4
# search method: 0=use brute force method, 1=use analytical method
set XA_AOFCTRL_SRCHMET 5
# output sort type: S=sort each area by sat#, then time, T=sort each area by time, then sat#
set XA_AOFCTRL_SRTTYPE 6

set XA_AOFCTRL_SIZE 16


# Defended area types
# area box type
set AREATYPE_I_BOX 1
# area circle type
set AREATYPE_I_CIRCLE 2
# area point type
set AREATYPE_I_POINT 3
# area polygon type
set AREATYPE_I_POLYGON 4


# AOF satellite/mission (satellite/sensor) data
# satellite number of sensor-bearing satellite
set XA_AOFSEN_SATNUM 0
# reserved for future use
set XA_AOFSEN_TYPE 1
# off nadir minimum look angle (deg) (=0 for Cone)
set XA_AOFSEN_MINEL 2
# off nadir maximum look angle (deg)
set XA_AOFSEN_MAXEL 3
# minimum azimuth of first azimuth range (deg)
set XA_AOFSEN_MINAZ1 4
# maximum azimuth of first azimuth range (deg)
set XA_AOFSEN_MAXAZ1 5
# minimum azimuth of second azimuth range (deg)
set XA_AOFSEN_MINAZ2 6
# maximum azimuth of second azimuth range (deg)
set XA_AOFSEN_MAXAZ2 7
# reserved for future use
set XA_AOFSEN_ELEM7 8
# reserved for future use
set XA_AOFSEN_ELEM8 9
# reserved for future use
set XA_AOFSEN_ELEM9 10
# reserved for future use
set XA_AOFSEN_ELEM10 11

set XA_AOFSEN_SIZE 16


# AOF satellite/sensor types
# circle (specify only off-nadir maximum look angle)
set AOFSENTYPE_CIRCLE 0


# AOF run parameters
# Maximum number of passes that AOF returns in one start/stop time
set XA_AOFRUN_MAXPASSES 0
# AOF start time in days since 1950, UTC
set XA_AOFRUN_START 1
# AOF stop time in days since 1950, UTC
set XA_AOFRUN_STOP 2
# Search interval (min)
set XA_AOFRUN_INTERVAL 3

set XA_AOFRUN_SIZE 8


# AOF defended area types
# Defended area is a box
set AOF_AREATYPE_BOX 1
# Defended area is a circle
set AOF_AREATYPE_CIRCLE 2
# Defended area is a point
set AOF_AREATYPE_POINT 3
# Defended area is a polygon
set AOF_AREATYPE_POLYGON 4



# AOF defended area data
# Area number
set XA_AOFAREA_NUM 0
# | 1 = BOX                       | 2 = CIRCLE              | 3 = POINT
set XA_AOFAREA_TYPE 1
# | N lat (deg) upper left corner | N lat (deg) center point| N lat (deg) center point
set XA_AOFAREA_ELEM1 2
# | E lon (deg) upper left corner | E lon (deg) center point| E lon (deg) center point
set XA_AOFAREA_ELEM2 3
# | N lat (deg) lower right corner| circle radius (km)      | height (km, above reference geoid)
set XA_AOFAREA_ELEM3 4
# | E lon (deg) lower right corner|                         |
set XA_AOFAREA_ELEM4 5

set XA_AOFAREA_SIZE 16


# Penetration-level darkness status
# lit throughout penetration
set DARKLEVEL_ALLLIT 0
# dark throughout penetration
set DARKLEVEL_ALLDARK 1
# partly-lit during penetration
set DARKLEVEL_PARTLIT 2

# View angle from overfly satellite to a llh point
# Azimuth (deg)
set XA_AOFVIEW_AZIM 0
# Elevation (deg)
set XA_AOFVIEW_ELEV 1
# Has line of sight to the point (1=Yes, 0=No-earth obstructs the view)
set XA_AOFVIEW_HASLOS 2

set XA_AOFVIEW_SIZE 8

# maximum of number of lat-lon-height points that can be used to describe a defended area
set MAX_LLHPOINTS 120




# ========================= End of auto generated code ==========================
