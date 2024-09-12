# This wrapper file was generated automatically by the GenDllWrappers program.

# Combo control parameters in input array xa_cb_parms that is used in ComboCompPriSec_MT()
# input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
set XA_CB_PARMS_TIMEFLG 1
# begin time
set XA_CB_PARMS_STARTTIME 2
# end time
set XA_CB_PARMS_STOPTIME 3
# maximum separation for relative minima (km) - for reporting times when relative minima is less than this specified value
set XA_CB_PARMS_MAXSEP 4
# close proximity limit (km) - for reporting entry/exit times when pri/sec separation distance equals this specified value
set XA_CB_PARMS_PROXLIM 5
set XA_CB_PARMS_SIZE 16

# Constants represent combo failed cases
# Primary satellite's epoch too far from time span
set FAILED_PRITOOFAR 101
# Secondary satellite's epoch too far from time span
set FAILED_SECTOOFAR 102
# Primary/secondary satellites are identical
set FAILED_SAMESAT 103
# Secondary satellite failed perigee/apogee test
set FAILED_ALTITUDE 104
# Secondary satellite is considered a brief span
set WARN_BRIEFSPAN 105
# Secondary satellite is in sustained relative geometry
set WARN_SUSRELGEO 106

# Indexes of LAMOD 7P-card fields
# Input time format : 0: Minutes since epoch, 1: UTC
set XF_7P_TIMEFLAG 1
# Begin time
set XF_7P_BEGTIME 2
# End time
set XF_7P_ENDTIME 3
# Control flag for computing relative minima
set XF_7P_RELMINFLG 4
# Control flag for computing absolute minimum
set XF_7P_ABSMINFLG 5
# Control flag for computing periods of close proximity
set XF_7P_EETIMES 6
# Control flag for computing relative ephemeris
set XF_7P_RELEPHFLG 7
# Control flag for computing probability of collision
set XF_7P_POCSIGMA 8
# Maximum separation for relative minima
set XF_7P_RELMINLIM 9
# Close proximity limit
set XF_7P_ABSMINLIM 10
# Relative ephemeris sampling interval
set XF_7P_RELEPHINT 11
# Print options
set XF_7P_PRTOPT 12
# Primary satellite effective radius (m)
set XF_7P_PRADIUS 13
# Secondary satellite effective radius (m)
set XF_7P_SRADIUS 14

# Different input of covariance matrix to compute POC
# ECI pos, vel, and ECI covariance
set XF_COVTYPE_ECI 1
# EFG pos, vel, and UVW covariance
set XF_COVTYPE_UVW 2

# Indexes of Combo's POC data
# Normalized distance (n-sigma) to circumscribing square
set XA_CB_POC_NORMSQR 0
# POC of square
set XA_CB_POC_SQR 1
# Normalized distance (n-sigma) to circle
set XA_CB_POC_NORMCIR 2
# POC of circle
set XA_CB_POC_CIR 3

set XA_CB_POC_SIZE 4


# ========================= End of auto generated code ==========================
