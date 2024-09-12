# This wrapper file was generated automatically by the GenDllWrappers program.

# Different light-time correction (LTC) options
# Don't apply LTC
set LTC_DONTAPPLY 0
# Apply LTC analytically
set LTC_ANALYTIC 1
# Apply LTC exactly
set LTC_EXACT 2

# Residual computation methods
# Delta/427M method
set RESCOMPMETH_DELTA427M 1
# Spadoc 4 method
set RESCOMPMETH_SPADOC4 2

# PV Ob data
# ob ECI position X (km) in TEME of Date
set XA_OBPV_POSX 0
# ob ECI position Y (km) in TEME of Date
set XA_OBPV_POSY 1
# ob ECI position Z (km) in TEME of Date
set XA_OBPV_POSZ 2
# ob ECI velocity X (km/sec) in TEME of Date
set XA_OBPV_VELX 3
# ob ECI velocity Y (km/sec) in TEME of Date
set XA_OBPV_VELY 4
# ob ECI velocity Z (km/sec) in TEME of Date
set XA_OBPV_VELZ 5
# ob time in days since 1950, UTC
set XA_OBPV_TIME 6

# the last available index
set XA_OBPV_END 15
set XA_OBPV_SIZE 16

# Satellite state data
# satellite ECI position X (km) in TEME of Date
set XA_SATPV_POSX 0
# satellite ECI position Y (km) in TEME of Date
set XA_SATPV_POSY 1
# satellite ECI position Z (km) in TEME of Date
set XA_SATPV_POSZ 2
# satellite ECI velocity X (km/sec) in TEME of Date
set XA_SATPV_VELX 3
# satellite ECI velocity Y (km/sec) in TEME of Date
set XA_SATPV_VELY 4
# satellite ECI velocity Z (km/sec) in TEME of Date
set XA_SATPV_VELZ 5

# the last available index
set XA_SATPV_END 15
set XA_SATPV_SIZE 16


# Obs residual data field indexes
# Azimuth residual (deg)
set XA_OBSRES_AZ 0
# Elevation residual (deg)
set XA_OBSRES_EL 1
# Range residual (km)
set XA_OBSRES_RANGE 2
# Height residual (deg)
set XA_OBSRES_HEIGHT 3
# Beta residual (deg). asin(dot(priU, secW))
set XA_OBSRES_BETA 4
# Delta T residual (min)
set XA_OBSRES_DELTAT 5
# Vector magnitude (km)
set XA_OBSRES_VMAG 6
# Time since epoch (days)
set XA_OBSRES_AGE 7
# True argument of latitude (deg)
set XA_OBSRES_SU 8
# Revolution number
set XA_OBSRES_REVNUM 9
# Range rate residual (km/sec)
set XA_OBSRES_RNGRATE 10
# Observation ASTAT
set XA_OBSRES_ASTAT 11
# Observation type
set XA_OBSRES_OBSTYPE 12
# Satellite true anomaly (deg)
set XA_OBSRES_SATANOM 13
# Satellite elevation (deg)
set XA_OBSRES_SATELEV 14
# Satellite maintenance category
set XA_OBSRES_SATCAT 15
# Obs time in ds50UTC
set XA_OBSRES_OBSTIME 16
# Obs azimuth (deg)
set XA_OBSRES_OBSAZ 17
# Obs elevation (deg)
set XA_OBSRES_OBSEL 18
# Velocity angle residual (deg)
set XA_OBSRES_VELANG 19
# Angular momentum residual (deg).  acos(dot(priW, secW))
set XA_OBSRES_ANGMOM 20
# Right ascension residual (deg) (for ob types 5, 9, 19)
set XA_OBSRES_RA 21
# Declination residual (deg) (for ob types 5, 9, 19)
set XA_OBSRES_DEC 22
# Delta X position (km)
set XA_OBSRES_POSX 23
# Delta Y position (km)
set XA_OBSRES_POSY 24
# Delta Z position (km)
set XA_OBSRES_POSZ 25
# Delta X velocity (km/sec)
set XA_OBSRES_VELX 26
# Delta Y velocity (km/sec)
set XA_OBSRES_VELY 27
# Delta Z velocity (km/sec)
set XA_OBSRES_VELZ 28
# Angle only - Obs computed range (km)
set XA_OBSRES_OBSRNG 29

# Obs right ascension (deg)
set XA_OBSRES_OBSRA 30
# Obs declination (deg)
set XA_OBSRES_OBSDEC 31
# Delta east longitude (deg)
set XA_OBSRES_LON 32

# Delta U position (km)
set XA_OBSRES_POSU 33
# Delta V position (km)
set XA_OBSRES_POSV 34
# Delta W position (km)
set XA_OBSRES_POSW 35
# 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
set XA_OBSRES_CHI 36

# Angular Separation between Obs and State (Deg)
set XA_OBSRES_ANGSEP 38
# TDOA Time Difference of Arrival residual (nano-second)
set XA_OBSRES_TDOA 39
# FDOA Frequency Differecnce of Arrival (Hz)
set XA_OBSRES_FDOA 40

set XA_OBSRES_SIZE 100

# Indexes of Rotas Control parameter fields (Rotas P-Card)
# Rotas processing mode
set XF_RP_MODE 1
# Gross Beta limit (deg)
set XF_RP_GROSSBETA 2
# ASTAT 0 Beta limit (deg)
set XF_RP_BETALIM 3
# ASTAT 0 delta-t limit (min)
set XF_RP_DELTATLIM 4
# ASTAT 0 delta-height limit (km)
set XF_RP_DELTAHLIM 5
# ASTAT 2 multiplier
set XF_RP_ASTAT2MULT 6
# Residual print flag
set XF_RP_PRTFLAG 7
# Retag ASTAT 1 ob flag
set XF_RP_RETAGFLAG 8
# Light-time correction flag
set XF_RP_LTC 9
# Maximum number of ALLEL assoc's to compute
set XF_RP_NUMASSOC 10
# Diagnostic print flag
set XF_RP_DIAGNOSTIC 11
# Covariance print flag
set XF_RP_PRTCOV 12
# Perform track processing
set XF_RP_TRACKFLAG 13
# Retagged ob are removed from further association
set XF_RP_REMRETAG 14
# Debias ob flag
set XF_RP_DEBIAS 15
# Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
set XF_RP_RESCOMPMETH 16

# ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
# Gross Beta limit (deg)
set XA_RT_PARMS_GROSSBETA 1
# ASTAT 0 Beta limit (deg)
set XA_RT_PARMS_BETALIM 2
# ASTAT 0 delta-t limit (min)
set XA_RT_PARMS_DELTATLIM 3
# ASTAT 0 delta-height limit (km)
set XA_RT_PARMS_DELTAHLIM 4
# ASTAT 2 multiplier
set XA_RT_PARMS_ASTAT2MULT 5
# Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
set XA_RT_PARMS_LTC 6
# debias ob flag: 0= do not debias, 1= debias ob
set XA_RT_PARMS_DEBIAS 7
# Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
set XA_RT_PARMS_RESCOMPMETH 8
# Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
set XA_RT_PARMS_ANNUALAB	 9
# Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
set XA_RT_PARMS_DIURNALAB 10
set XA_RT_PARMS_SIZE 16

# ROTAS Association Multipliers
# ASTAT 1 Beta multiplier for Synchronous
set XA_ASSOCMULTP_BETA_SYN 0
# ASTAT 1 Delta-t multiplier for Synchronous
set XA_ASSOCMULTP_DELTAT_SYN 1
# ASTAT 1 Delta-height multiplier for Synchronous
set XA_ASSOCMULTP_DELTAH_SYN 2
# ASTAT 1 Beta multiplier for Deep-space
set XA_ASSOCMULTP_BETA_DS 3
# ASTAT 1 Delta-t multiplier for Deep-space
set XA_ASSOCMULTP_DELTAT_DS 4
# ASTAT 1 Delta-height multiplier for Deep-space
set XA_ASSOCMULTP_DELTAH_DS 5
# ASTAT 1 Beta multiplier for Decaying
set XA_ASSOCMULTP_BETA_DCY 6
# ASTAT 1 Delta-t multiplier for Decaying
set XA_ASSOCMULTP_DELTAT_DCY 7
# ASTAT 1 Delta-height multiplier for Decaying
set XA_ASSOCMULTP_DELTAH_DCY 8
# ASTAT 1 Beta multiplier for Routine
set XA_ASSOCMULTP_BETA_RTN 9
# ASTAT 1 Delta-t multiplier for Routine
set XA_ASSOCMULTP_DELTAT_RTN 10
# ASTAT 1 Delta-height multiplier for Routine
set XA_ASSOCMULTP_DELTAH_RTN 11

set XA_ASSOCMULTP_SIZE 12

# ========================= End of auto generated code ==========================
