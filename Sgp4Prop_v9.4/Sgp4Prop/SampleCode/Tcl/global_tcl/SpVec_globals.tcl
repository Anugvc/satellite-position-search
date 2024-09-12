# This wrapper file was generated automatically by the GenDllWrappers program.

# Indexes of SPVEC data fields
# X component of satellite's position (km)
set XF_SPVEC_POS1 1
# Y component of satellite's position (km)
set XF_SPVEC_POS2 2
# Z component of satellite's position (km)
set XF_SPVEC_POS3 3
# X component of satellite's velocity (m/s)
set XF_SPVEC_VEL1 4
# Y component of satellite's velocity (m/s)
set XF_SPVEC_VEL2 5
# Z component of satellite's velocity (m/s)
set XF_SPVEC_VEL3 6
# Security classification
set XF_SPVEC_SECCLASS 7
# Satellite number
set XF_SPVEC_SATNUM 9
# Satellite common name
set XF_SPVEC_SATNAME 10
# Epoch date
set XF_SPVEC_EPOCH 11
# Epoch revolution number
set XF_SPVEC_REVNUM 12
# Elset number
set XF_SPVEC_ELSETNUM 13
# Ballistic coefficient (m^2/kg)
set XF_SPVEC_BTERM 14
# Radiation pressure coefficient (m^2/kg)
set XF_SPVEC_AGOM 15
# Outgassing parameter (km/s^2)
set XF_SPVEC_OGPARM 16
# Inpute coordinate system
set XF_SPVEC_INPCOORD 17


# Indexes of SPVEC numerical data in an array
# Satellite number
set XA_SPVEC_SATNUM 0
# Epoch date in days since 1950 UTC
set XA_SPVEC_EPOCH 1
# Epoch revolution number
set XA_SPVEC_REVNUM 2
# Elset number
set XA_SPVEC_ELSETNUM 3
# Ballistic coefficient (m^2/kg)
set XA_SPVEC_BTERM 4
# Radiation pressure coefficient (m^2/kg)
set XA_SPVEC_AGOM 5
# Outgassing parameter (km/s^2)
set XA_SPVEC_OGPARM 6
# Inpute coordinate systemm; see SPVEC_INPCOORD_? for available options
set XA_SPVEC_INPCOORD 7

# X component of satellite's position (km)
set XA_SPVEC_POS1 20
# Y component of satellite's position (km)
set XA_SPVEC_POS2 21
# Z component of satellite's position (km)
set XA_SPVEC_POS3 22
# X component of satellite's velocity (m/s)
set XA_SPVEC_VEL1 23
# Y component of satellite's velocity (m/s)
set XA_SPVEC_VEL2 24
# Z component of satellite's velocity (m/s)
set XA_SPVEC_VEL3 25

# Flag to indicate SP vec has its own numerical integration control (vs global 4P settings)
set XA_SPVEC_HASOWNCRL 70
# Geopotential model to use
set XA_SPVEC_GEOIDX 71
# Earth gravity pertubations flag
set XA_SPVEC_BULGEFLG 72
# Drag pertubations flag
set XA_SPVEC_DRAGFLG 73
# Radiation pressure pertubations flag
set XA_SPVEC_RADFLG 74
# Lunar/Solar pertubations flag
set XA_SPVEC_LUNSOLFLG 75
# F10 value
set XA_SPVEC_F10 76
# F10 average value
set XA_SPVEC_F10AVG 77
# Ap value
set XA_SPVEC_AP 78
# Geopotential truncation order/degree/zonals
set XA_SPVEC_TRUNC 79
# Corrector step convergence criterion; exponent of 1/10; default = 10
set XA_SPVEC_CONVERG 80
# Outgassing pertubations flag
set XA_SPVEC_OGFLG 81
# Solid earth and ocean tide pertubations flag
set XA_SPVEC_TIDESFLG 82
# Nutation terms
set XA_SPVEC_NTERMS 84
# Recompute pertubations at each corrector step
set XA_SPVEC_REEVAL 85
# Variable of intergration control
set XA_SPVEC_INTEGCTRL 86
# Variable step size control
set XA_SPVEC_VARSTEP 87
# Initial step size
set XA_SPVEC_INITSTEP 88

# weighted RM of last DC on the satellite
set XA_SPVEC_RMS 99
# the lower triangle portion of the full cov matrix (100-120: 6x6 covmtx, ..., 100-154: 10x10 covmtx)
set XA_SPVEC_COVELEMS 100

set XA_SPVEC_SIZE 512


# Indexes of SPVEC text data in an array of chars
# Security classification
set XS_SPVEC_SECCLASS_1 0
# Satellite common name
set XS_SPVEC_SATNAME_8 1

set XS_SPVEC_SIZE 512

# SPVEC's text data fields - new convention (start index, string length)
# Security classification
set XS_SPVEC_SECCLASS_0_1 0
# Satellite common name
set XS_SPVEC_SATNAME_1_8 1

set XS_SPVEC_LENGTH 512


# Different input coordinate for SpVec
# Use input coordinate specified in 4P-card
set SPVEC_INPCOORD_4P 0
# Input coordinate systems is coordinates of epoch
set SPVEC_INPCOORD_TMDAT 1
# Input coordinate systems is coordinates of J2000
set SPVEC_INPCOORD_MMJ2K 2

# ========================= End of auto generated code ==========================
