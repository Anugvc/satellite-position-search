% This wrapper file was generated automatically by the GenDllWrappers program.
function freeRotas()   
   % Different light-time correction (LTC) options
   % Don't apply LTC
   global LTC_DONTAPPLY;
   % Apply LTC analytically
   global LTC_ANALYTIC;
   % Apply LTC exactly
   global LTC_EXACT;
   
   % Residual computation methods
   % Delta/427M method
   global RESCOMPMETH_DELTA427M;
   % Spadoc 4 method
   global RESCOMPMETH_SPADOC4;
   
   % PV Ob data
   % ob ECI position X (km) in TEME of Date
   global XA_OBPV_POSX;
   % ob ECI position Y (km) in TEME of Date
   global XA_OBPV_POSY;
   % ob ECI position Z (km) in TEME of Date
   global XA_OBPV_POSZ;
   % ob ECI velocity X (km/sec) in TEME of Date
   global XA_OBPV_VELX;
   % ob ECI velocity Y (km/sec) in TEME of Date
   global XA_OBPV_VELY;
   % ob ECI velocity Z (km/sec) in TEME of Date
   global XA_OBPV_VELZ;
   % ob time in days since 1950, UTC
   global XA_OBPV_TIME;
   
   % the last available index
   global XA_OBPV_END;
   global XA_OBPV_SIZE;
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   global XA_SATPV_POSX;
   % satellite ECI position Y (km) in TEME of Date
   global XA_SATPV_POSY;
   % satellite ECI position Z (km) in TEME of Date
   global XA_SATPV_POSZ;
   % satellite ECI velocity X (km/sec) in TEME of Date
   global XA_SATPV_VELX;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   global XA_SATPV_VELY;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   global XA_SATPV_VELZ;
   
   % the last available index
   global XA_SATPV_END;
   global XA_SATPV_SIZE;
   
   
   % Obs residual data field indexes
   % Azimuth residual (deg)
   global XA_OBSRES_AZ;
   % Elevation residual (deg)
   global XA_OBSRES_EL;
   % Range residual (km)
   global XA_OBSRES_RANGE;
   % Height residual (deg)
   global XA_OBSRES_HEIGHT;
   % Beta residual (deg). asin(dot(priU, secW))
   global XA_OBSRES_BETA;
   % Delta T residual (min)
   global XA_OBSRES_DELTAT;
   % Vector magnitude (km)
   global XA_OBSRES_VMAG;
   % Time since epoch (days)
   global XA_OBSRES_AGE;
   % True argument of latitude (deg)
   global XA_OBSRES_SU;
   % Revolution number
   global XA_OBSRES_REVNUM;
   % Range rate residual (km/sec)
   global XA_OBSRES_RNGRATE;
   % Observation ASTAT
   global XA_OBSRES_ASTAT;
   % Observation type
   global XA_OBSRES_OBSTYPE;
   % Satellite true anomaly (deg)
   global XA_OBSRES_SATANOM;
   % Satellite elevation (deg)
   global XA_OBSRES_SATELEV;
   % Satellite maintenance category
   global XA_OBSRES_SATCAT;
   % Obs time in ds50UTC
   global XA_OBSRES_OBSTIME;
   % Obs azimuth (deg)
   global XA_OBSRES_OBSAZ;
   % Obs elevation (deg)
   global XA_OBSRES_OBSEL;
   % Velocity angle residual (deg)
   global XA_OBSRES_VELANG;
   % Angular momentum residual (deg).  acos(dot(priW, secW))
   global XA_OBSRES_ANGMOM;
   % Right ascension residual (deg) (for ob types 5, 9, 19)
   global XA_OBSRES_RA;
   % Declination residual (deg) (for ob types 5, 9, 19)
   global XA_OBSRES_DEC;
   % Delta X position (km)
   global XA_OBSRES_POSX;
   % Delta Y position (km)
   global XA_OBSRES_POSY;
   % Delta Z position (km)
   global XA_OBSRES_POSZ;
   % Delta X velocity (km/sec)
   global XA_OBSRES_VELX;
   % Delta Y velocity (km/sec)
   global XA_OBSRES_VELY;
   % Delta Z velocity (km/sec)
   global XA_OBSRES_VELZ;
   % Angle only - Obs computed range (km)
   global XA_OBSRES_OBSRNG;
   
   % Obs right ascension (deg)
   global XA_OBSRES_OBSRA;
   % Obs declination (deg)
   global XA_OBSRES_OBSDEC;
   % Delta east longitude (deg)
   global XA_OBSRES_LON;
   
   % Delta U position (km)
   global XA_OBSRES_POSU;
   % Delta V position (km)
   global XA_OBSRES_POSV;
   % Delta W position (km)
   global XA_OBSRES_POSW;
   % 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   global XA_OBSRES_CHI;
   
   % Angular Separation between Obs and State (Deg)
   global XA_OBSRES_ANGSEP;
   % TDOA Time Difference of Arrival residual (nano-second)
   global XA_OBSRES_TDOA;
   % FDOA Frequency Differecnce of Arrival (Hz)
   global XA_OBSRES_FDOA;
   
   global XA_OBSRES_SIZE;
   
   % Indexes of Rotas Control parameter fields (Rotas P-Card)
   % Rotas processing mode
   global XF_RP_MODE;
   % Gross Beta limit (deg)
   global XF_RP_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   global XF_RP_BETALIM;
   % ASTAT 0 delta-t limit (min)
   global XF_RP_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   global XF_RP_DELTAHLIM;
   % ASTAT 2 multiplier
   global XF_RP_ASTAT2MULT;
   % Residual print flag
   global XF_RP_PRTFLAG;
   % Retag ASTAT 1 ob flag
   global XF_RP_RETAGFLAG;
   % Light-time correction flag
   global XF_RP_LTC;
   % Maximum number of ALLEL assoc's to compute
   global XF_RP_NUMASSOC;
   % Diagnostic print flag
   global XF_RP_DIAGNOSTIC;
   % Covariance print flag
   global XF_RP_PRTCOV;
   % Perform track processing
   global XF_RP_TRACKFLAG;
   % Retagged ob are removed from further association
   global XF_RP_REMRETAG;
   % Debias ob flag
   global XF_RP_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   global XF_RP_RESCOMPMETH;
   
   % ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   % Gross Beta limit (deg)
   global XA_RT_PARMS_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   global XA_RT_PARMS_BETALIM;
   % ASTAT 0 delta-t limit (min)
   global XA_RT_PARMS_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   global XA_RT_PARMS_DELTAHLIM;
   % ASTAT 2 multiplier
   global XA_RT_PARMS_ASTAT2MULT;
   % Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
   global XA_RT_PARMS_LTC;
   % debias ob flag: 0= do not debias, 1= debias ob
   global XA_RT_PARMS_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   global XA_RT_PARMS_RESCOMPMETH;
   % Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
   global XA_RT_PARMS_ANNUALAB;
   % Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
   global XA_RT_PARMS_DIURNALAB;
   global XA_RT_PARMS_SIZE;
   
   % ROTAS Association Multipliers
   % ASTAT 1 Beta multiplier for Synchronous
   global XA_ASSOCMULTP_BETA_SYN;
   % ASTAT 1 Delta-t multiplier for Synchronous
   global XA_ASSOCMULTP_DELTAT_SYN;
   % ASTAT 1 Delta-height multiplier for Synchronous
   global XA_ASSOCMULTP_DELTAH_SYN;
   % ASTAT 1 Beta multiplier for Deep-space
   global XA_ASSOCMULTP_BETA_DS;
   % ASTAT 1 Delta-t multiplier for Deep-space
   global XA_ASSOCMULTP_DELTAT_DS;
   % ASTAT 1 Delta-height multiplier for Deep-space
   global XA_ASSOCMULTP_DELTAH_DS;
   % ASTAT 1 Beta multiplier for Decaying
   global XA_ASSOCMULTP_BETA_DCY;
   % ASTAT 1 Delta-t multiplier for Decaying
   global XA_ASSOCMULTP_DELTAT_DCY;
   % ASTAT 1 Delta-height multiplier for Decaying
   global XA_ASSOCMULTP_DELTAH_DCY;
   % ASTAT 1 Beta multiplier for Routine
   global XA_ASSOCMULTP_BETA_RTN;
   % ASTAT 1 Delta-t multiplier for Routine
   global XA_ASSOCMULTP_DELTAT_RTN;
   % ASTAT 1 Delta-height multiplier for Routine
   global XA_ASSOCMULTP_DELTAH_RTN;
   
   global XA_ASSOCMULTP_SIZE;
   
   
   % Different light-time correction (LTC) options
   % Don't apply LTC
   clear LTC_DONTAPPLY;
   % Apply LTC analytically
   clear LTC_ANALYTIC;
   % Apply LTC exactly
   clear LTC_EXACT;
   
   % Residual computation methods
   % Delta/427M method
   clear RESCOMPMETH_DELTA427M;
   % Spadoc 4 method
   clear RESCOMPMETH_SPADOC4;
   
   % PV Ob data
   % ob ECI position X (km) in TEME of Date
   clear XA_OBPV_POSX;
   % ob ECI position Y (km) in TEME of Date
   clear XA_OBPV_POSY;
   % ob ECI position Z (km) in TEME of Date
   clear XA_OBPV_POSZ;
   % ob ECI velocity X (km/sec) in TEME of Date
   clear XA_OBPV_VELX;
   % ob ECI velocity Y (km/sec) in TEME of Date
   clear XA_OBPV_VELY;
   % ob ECI velocity Z (km/sec) in TEME of Date
   clear XA_OBPV_VELZ;
   % ob time in days since 1950, UTC
   clear XA_OBPV_TIME;
   
   % the last available index
   clear XA_OBPV_END;
   clear XA_OBPV_SIZE;
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   clear XA_SATPV_POSX;
   % satellite ECI position Y (km) in TEME of Date
   clear XA_SATPV_POSY;
   % satellite ECI position Z (km) in TEME of Date
   clear XA_SATPV_POSZ;
   % satellite ECI velocity X (km/sec) in TEME of Date
   clear XA_SATPV_VELX;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   clear XA_SATPV_VELY;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   clear XA_SATPV_VELZ;
   
   % the last available index
   clear XA_SATPV_END;
   clear XA_SATPV_SIZE;
   
   
   % Obs residual data field indexes
   % Azimuth residual (deg)
   clear XA_OBSRES_AZ;
   % Elevation residual (deg)
   clear XA_OBSRES_EL;
   % Range residual (km)
   clear XA_OBSRES_RANGE;
   % Height residual (deg)
   clear XA_OBSRES_HEIGHT;
   % Beta residual (deg). asin(dot(priU, secW))
   clear XA_OBSRES_BETA;
   % Delta T residual (min)
   clear XA_OBSRES_DELTAT;
   % Vector magnitude (km)
   clear XA_OBSRES_VMAG;
   % Time since epoch (days)
   clear XA_OBSRES_AGE;
   % True argument of latitude (deg)
   clear XA_OBSRES_SU;
   % Revolution number
   clear XA_OBSRES_REVNUM;
   % Range rate residual (km/sec)
   clear XA_OBSRES_RNGRATE;
   % Observation ASTAT
   clear XA_OBSRES_ASTAT;
   % Observation type
   clear XA_OBSRES_OBSTYPE;
   % Satellite true anomaly (deg)
   clear XA_OBSRES_SATANOM;
   % Satellite elevation (deg)
   clear XA_OBSRES_SATELEV;
   % Satellite maintenance category
   clear XA_OBSRES_SATCAT;
   % Obs time in ds50UTC
   clear XA_OBSRES_OBSTIME;
   % Obs azimuth (deg)
   clear XA_OBSRES_OBSAZ;
   % Obs elevation (deg)
   clear XA_OBSRES_OBSEL;
   % Velocity angle residual (deg)
   clear XA_OBSRES_VELANG;
   % Angular momentum residual (deg).  acos(dot(priW, secW))
   clear XA_OBSRES_ANGMOM;
   % Right ascension residual (deg) (for ob types 5, 9, 19)
   clear XA_OBSRES_RA;
   % Declination residual (deg) (for ob types 5, 9, 19)
   clear XA_OBSRES_DEC;
   % Delta X position (km)
   clear XA_OBSRES_POSX;
   % Delta Y position (km)
   clear XA_OBSRES_POSY;
   % Delta Z position (km)
   clear XA_OBSRES_POSZ;
   % Delta X velocity (km/sec)
   clear XA_OBSRES_VELX;
   % Delta Y velocity (km/sec)
   clear XA_OBSRES_VELY;
   % Delta Z velocity (km/sec)
   clear XA_OBSRES_VELZ;
   % Angle only - Obs computed range (km)
   clear XA_OBSRES_OBSRNG;
   
   % Obs right ascension (deg)
   clear XA_OBSRES_OBSRA;
   % Obs declination (deg)
   clear XA_OBSRES_OBSDEC;
   % Delta east longitude (deg)
   clear XA_OBSRES_LON;
   
   % Delta U position (km)
   clear XA_OBSRES_POSU;
   % Delta V position (km)
   clear XA_OBSRES_POSV;
   % Delta W position (km)
   clear XA_OBSRES_POSW;
   % 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   clear XA_OBSRES_CHI;
   
   % Angular Separation between Obs and State (Deg)
   clear XA_OBSRES_ANGSEP;
   % TDOA Time Difference of Arrival residual (nano-second)
   clear XA_OBSRES_TDOA;
   % FDOA Frequency Differecnce of Arrival (Hz)
   clear XA_OBSRES_FDOA;
   
   clear XA_OBSRES_SIZE;
   
   % Indexes of Rotas Control parameter fields (Rotas P-Card)
   % Rotas processing mode
   clear XF_RP_MODE;
   % Gross Beta limit (deg)
   clear XF_RP_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   clear XF_RP_BETALIM;
   % ASTAT 0 delta-t limit (min)
   clear XF_RP_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   clear XF_RP_DELTAHLIM;
   % ASTAT 2 multiplier
   clear XF_RP_ASTAT2MULT;
   % Residual print flag
   clear XF_RP_PRTFLAG;
   % Retag ASTAT 1 ob flag
   clear XF_RP_RETAGFLAG;
   % Light-time correction flag
   clear XF_RP_LTC;
   % Maximum number of ALLEL assoc's to compute
   clear XF_RP_NUMASSOC;
   % Diagnostic print flag
   clear XF_RP_DIAGNOSTIC;
   % Covariance print flag
   clear XF_RP_PRTCOV;
   % Perform track processing
   clear XF_RP_TRACKFLAG;
   % Retagged ob are removed from further association
   clear XF_RP_REMRETAG;
   % Debias ob flag
   clear XF_RP_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   clear XF_RP_RESCOMPMETH;
   
   % ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   % Gross Beta limit (deg)
   clear XA_RT_PARMS_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   clear XA_RT_PARMS_BETALIM;
   % ASTAT 0 delta-t limit (min)
   clear XA_RT_PARMS_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   clear XA_RT_PARMS_DELTAHLIM;
   % ASTAT 2 multiplier
   clear XA_RT_PARMS_ASTAT2MULT;
   % Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
   clear XA_RT_PARMS_LTC;
   % debias ob flag: 0= do not debias, 1= debias ob
   clear XA_RT_PARMS_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   clear XA_RT_PARMS_RESCOMPMETH;
   % Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
   clear XA_RT_PARMS_ANNUALAB;
   % Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
   clear XA_RT_PARMS_DIURNALAB;
   clear XA_RT_PARMS_SIZE;
   
   % ROTAS Association Multipliers
   % ASTAT 1 Beta multiplier for Synchronous
   clear XA_ASSOCMULTP_BETA_SYN;
   % ASTAT 1 Delta-t multiplier for Synchronous
   clear XA_ASSOCMULTP_DELTAT_SYN;
   % ASTAT 1 Delta-height multiplier for Synchronous
   clear XA_ASSOCMULTP_DELTAH_SYN;
   % ASTAT 1 Beta multiplier for Deep-space
   clear XA_ASSOCMULTP_BETA_DS;
   % ASTAT 1 Delta-t multiplier for Deep-space
   clear XA_ASSOCMULTP_DELTAT_DS;
   % ASTAT 1 Delta-height multiplier for Deep-space
   clear XA_ASSOCMULTP_DELTAH_DS;
   % ASTAT 1 Beta multiplier for Decaying
   clear XA_ASSOCMULTP_BETA_DCY;
   % ASTAT 1 Delta-t multiplier for Decaying
   clear XA_ASSOCMULTP_DELTAT_DCY;
   % ASTAT 1 Delta-height multiplier for Decaying
   clear XA_ASSOCMULTP_DELTAH_DCY;
   % ASTAT 1 Beta multiplier for Routine
   clear XA_ASSOCMULTP_BETA_RTN;
   % ASTAT 1 Delta-t multiplier for Routine
   clear XA_ASSOCMULTP_DELTAT_RTN;
   % ASTAT 1 Delta-height multiplier for Routine
   clear XA_ASSOCMULTP_DELTAH_RTN;
   
   clear XA_ASSOCMULTP_SIZE;
   
   FreeRotasDll;
   clear LoadRotasDll;
   clear FreeRotasDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Rotas DLL for use in the program
   clear RotasInit
   
   %  Returns information about the current version of Rotas DLL. 
   %  The information is placed in the string parameter passed in.
   clear RotasGetInfo
   
   %  Loads Rotas-related parameters from an input text file
   clear RotasLoadFile
   
   %  Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
   clear RotasLoadFileAll
   
   %  Loads a single Rotas-typed card
   clear RotasLoadCard
   
   %  Saves current Rotas settings to a file
   clear RotasSaveFile
   
   %  Builds and returns the Rotas P-Card from the current Rotas settings
   clear RotasGetPCard
   
   %  Retrieves all Rotas control parameters with a single function call
   clear RotasGetPAll
   
   %  Sets all Rotas control parameters with a single function call
   clear RotasSetPAll
   
   %  Retrieves the value of a specified Rotas control parameter (P-card field)
   %  <br>
   %  The table below shows the values for the xf_RP parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td> 1 </td><td> Rotas processing mode</td></tr>
   %  <tr><td> 2 </td><td> Gross Beta limit (deg)</td></tr>
   %  <tr><td> 3 </td><td> ASTAT 0 Beta limit (deg)</td></tr>
   %  <tr><td> 4 </td><td> ASTAT 0 delta-t limit (min)</td></tr>
   %  <tr><td> 5 </td><td> ASTAT 0 delta-height limit (km)</td></tr>
   %  <tr><td> 6 </td><td> ASTAT 2 multiplier</td></tr>
   %  <tr><td> 7 </td><td> Residual print flag</td></tr>
   %  <tr><td> 8 </td><td> Retag ASTAT 1 ob flag</td></tr>
   %  <tr><td> 9 </td><td> Light-time correction flag</td></tr>
   %  <tr><td>10 </td><td> Maximum number of ALLEL assoc's to compute</td></tr>
   %  <tr><td>11 </td><td> Diagnostic print flag</td></tr>
   %  <tr><td>12 </td><td> Covariance print flag</td></tr>
   %  <tr><td>13 </td><td> Perform track processing</td></tr>
   %  <tr><td>14 </td><td> Retagged ob are removed from further association</td></tr>
   %  <tr><td>15 </td><td> Debias ob flag</td></tr>
   %  </table>
   clear RotasGetPField
   
   %   Sets the value of a specified Rotas control parameter (P-card field)
   %  See RotasGetPField for values for the xf_RP parameter.
   clear RotasSetPField
   
   %  Gets ASTAT 1 association multipliers
   clear RotasGetAssocMultipliers
   
   %  Sets ASTAT 1 association multipliers
   clear RotasSetAssocMultipliers
   
   %  Resets all Rotas control parameters back to their default values
   clear RotasResetAll
   
   %  Determines if the observation/satellite pair can possibly have an association
   clear RotasHasASTAT
   
   %  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
   clear RotasHasASTAT_MT
   
   %  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
   clear RotasHasASTATMultp_MT
   
   %  Computes residuals for one observation against one satellite
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   clear RotasComputeObsResiduals
   
   %  Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   clear RotasComputeObsResiduals_MT
   
   %  Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   clear RotasComputeObsResidualsMultp_MT
   
   %  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
   clear RotasComputeTrackResiduals
   
   %  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
   clear RotasComputeTrackResiduals_MT
   
   %  Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
   clear RotasCompObResDirect
   
   %  Returns the name of the retag obs file
   clear RotasGetRetagObsFile
   
   %  Sets the file name of the retag obs file
   clear RotasSetRetagObsFile
endfunction
% ========================= End of auto generated code ==========================
