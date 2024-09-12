# This wrapper file was generated automatically by the GenDllWrappers program.

# Fov run parameters
# Maximum number of passes (entry/minimum/exit times) that FOV returns in one start/stop time
set XA_FOVRUN_MAXPASSES 0
# FOV start time in days since 1950, UTC
set XA_FOVRUN_START 1
# FOV stop time in days since 1950, UTC
set XA_FOVRUN_STOP 2
# Cone half angle (deg) (0=auto) (0-45)
set XA_FOVRUN_HALFCONE 3
# Search interval (min)
set XA_FOVRUN_INTERVAL 4

set XA_FOVRUN_SIZE 8

# FOV source types
# Source is sensor
set FOV_SRCTYPE_SEN 1
# Source is lat lon height
set FOV_SRCTYPE_LLH 2
# Source is EFG
set FOV_SRCTYPE_EFG 3
# Source is XYZ
set FOV_SRCTYPE_XYZ 4

# FOV source types
# Target is elset
set FOV_TGTTYPE_ELSET 1
# Target is constant Az/El
set FOV_TGTTYPE_AZEL 2
# Target is RA/Dec (STAR)
set FOV_TGTTYPE_RADEC 3

# FOV source specification
# 1=SEN   | 2=LLH       | 3=EFG      | 4=XYZ
set XA_FOVSRC_TYPE 0
# Sensor# | Source ID   | Source ID  | Source ID
set XA_FOVSRC_ID 1
# | N lat (deg) | EFG: E (m) | X (m)
set XA_FOVSRC_ELEM1 2
# | E lon (deg) | EFG: F (m) | Y (m)
set XA_FOVSRC_ELEM2 3
# | height (m)  | EFG: G (m) | Z (m)
set XA_FOVSRC_ELEM3 4
# |             |            | time of position in Ds50UTC
set XA_FOVSRC_ELEM4 5

set XA_FOVSRC_SIZE 8


# FOV target specification
# 1=ELSET | 2=AZEL    | 3=RADEC
set XA_FOVTGT_TYPE 0
# Elset#  | Target ID | Target ID
set XA_FOVTGT_ID 1
# | az (deg)  | RA (deg)
set XA_FOVTGT_ELEM1 2
# | el (deg)  | Dec (deg)
set XA_FOVTGT_ELEM2 3
# |           | equinox indicator
set XA_FOVTGT_ELEM3 4

set XA_FOVTGT_SIZE 8

# entry/minimum/exit time data
# entry time (ds50UTC)
set XA_EMEDAT_ENTRY 0
# minimum time (ds50UTC)
set XA_EMEDAT_MIN 1
# exit time (ds50UTC)
set XA_EMEDAT_EXIT 2

set XA_EMEDAT_SIZE 3

# FOV parameters
# Cone half angle (deg) (0=auto) (0-45)
set XA_FOVCTRL_HALFCONE 0
# Search interval (min)
set XA_FOVCTRL_INTERVAL 1
# Print option
set XA_FOVCTRL_PRTOPT 2

set XA_FOVCTRL_SIZE 8


# maximum number of windows/potential, victims/sources/targets allowed to be entered via an input file
set FOVMAXNUM 128

# ========================= End of auto generated code ==========================
