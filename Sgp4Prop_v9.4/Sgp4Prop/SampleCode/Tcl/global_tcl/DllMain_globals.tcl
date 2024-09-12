# This wrapper file was generated automatically by the GenDllWrappers program.

# log message string length
set LOGMSGLEN 128

# DHN 06Feb12 - Increase file path length to 512 characters from 128 characters to handle longer file path
set FILEPATHLEN 512

# DHN 10Feb12 - Uniformally using 512 characters to passing/receiving string in all Get/Set Field functions
set GETSETSTRLEN 512

set INFOSTRLEN 128

# DHN 10Feb12 - All input card types' (elsets, ob, sensors, ...) can now have maximum of 512 characters
set INPUTCARDLEN 512

# Different orbital element types
# Element type - SGP Tle type 0
set ELTTYPE_TLE_SGP 1
# Element type - SGP4 Tle type 2
set ELTTYPE_TLE_SGP4 2
# Element type - SP Tle type 6
set ELTTYPE_TLE_SP 3
# Element type - SP Vector
set ELTTYPE_SPVEC_B1P 4
# Element type - VCM
set ELTTYPE_VCM 5
# Element type - External ephemeris
set ELTTYPE_EXTEPH 6
# Element type - SGP Tle type 4 - XP
set ELTTYPE_TLE_XP 7

#*******************************************************************************

# Propagation types
# GP/SGP4/SGP4-XP propagator
set PROPTYPE_GP 1
# SP propagator
set PROPTYPE_SP 2
# External ephemeris
set PROPTYPE_X 3
# Unknown
set PROPTYPE_UK 4
#*******************************************************************************

# Add sat error
# Bad satellite key
set BADSATKEY -1
# Duplicate satellite key
set DUPSATKEY 0

#*******************************************************************************

# satellite/observation/sensor key possible errors
# Bad (satellite/observation/sensor) key
set BADKEY -1
# Duplicate (satellite/observation/sensor) key
set DUPKEY 0

#*******************************************************************************

# Options used in GetLoaded()
# ascending order
set IDX_ORDER_ASC 0
# descending order
set IDX_ORDER_DES 1
# order as read
set IDX_ORDER_READ 2
# tree traversal order
set IDX_ORDER_QUICK 9

#*******************************************************************************

# Different key mode options for all elset-satKey/obs-obsKey/sensor-senKey
# Default - duplicate elsets/observations/sensors can not be loaded in their binary trees
set ALL_KEYMODE_NODUP 0
# Allow duplicate elsets/obs/sensor to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
set ALL_KEYMODE_DMA 1

#*******************************************************************************


# Different key mode options for elset satKey
# Default - duplicate elsets can not be loaded in binary tree
set ELSET_KEYMODE_NODUP 0
# Allow duplicate elsets to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
set ELSET_KEYMODE_DMA 1

#*******************************************************************************

# Different duplication key mode options (apply to non DMA mode only)
# Returning (satellite/sensor/obs) key is zero to signify the existing data/key was already in memory
set DUPKEY_ZERO 0
# Return actual (satellite/sensor/obs) key regardless of the key/data duplication
set DUPKEY_ACTUAL 1

#*******************************************************************************


# Input time is in minutes since epoch
set TIME_IS_MSE 1
# Input time is in days since 1950 TAI
set TIME_IS_TAI 2
# Input time is in days since 1950 UTC
set TIME_IS_UTC 3

#*******************************************************************************

# ========================= End of auto generated code ==========================
