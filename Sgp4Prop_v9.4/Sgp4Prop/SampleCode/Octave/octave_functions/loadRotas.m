% This wrapper file was generated automatically by the GenDllWrappers program.
function loadRotas(OctFilePath)   
   % Different light-time correction (LTC) options
   % Don't apply LTC
   global  LTC_DONTAPPLY;
   % Apply LTC analytically
   global  LTC_ANALYTIC;
   % Apply LTC exactly
   global  LTC_EXACT;
   
   % Residual computation methods
   % Delta/427M method
   global  RESCOMPMETH_DELTA427M;
   % Spadoc 4 method
   global  RESCOMPMETH_SPADOC4;
   
   % PV Ob data
   % ob ECI position X (km) in TEME of Date
   global  XA_OBPV_POSX;
   % ob ECI position Y (km) in TEME of Date
   global  XA_OBPV_POSY;
   % ob ECI position Z (km) in TEME of Date
   global  XA_OBPV_POSZ;
   % ob ECI velocity X (km/sec) in TEME of Date
   global  XA_OBPV_VELX;
   % ob ECI velocity Y (km/sec) in TEME of Date
   global  XA_OBPV_VELY;
   % ob ECI velocity Z (km/sec) in TEME of Date
   global  XA_OBPV_VELZ;
   % ob time in days since 1950, UTC
   global  XA_OBPV_TIME;
   
   % the last available index
   global  XA_OBPV_END;
   global  XA_OBPV_SIZE
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   global  XA_SATPV_POSX;
   % satellite ECI position Y (km) in TEME of Date
   global  XA_SATPV_POSY;
   % satellite ECI position Z (km) in TEME of Date
   global  XA_SATPV_POSZ;
   % satellite ECI velocity X (km/sec) in TEME of Date
   global  XA_SATPV_VELX;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   global  XA_SATPV_VELY;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   global  XA_SATPV_VELZ;
   
   % the last available index
   global  XA_SATPV_END;
   global  XA_SATPV_SIZE
   
   
   % Obs residual data field indexes
   % Azimuth residual (deg)
   global  XA_OBSRES_AZ;
   % Elevation residual (deg)
   global  XA_OBSRES_EL;
   % Range residual (km)
   global  XA_OBSRES_RANGE;
   % Height residual (deg)
   global  XA_OBSRES_HEIGHT;
   % Beta residual (deg). asin(dot(priU, secW))
   global  XA_OBSRES_BETA;
   % Delta T residual (min)
   global  XA_OBSRES_DELTAT;
   % Vector magnitude (km)
   global  XA_OBSRES_VMAG;
   % Time since epoch (days)
   global  XA_OBSRES_AGE;
   % True argument of latitude (deg)
   global  XA_OBSRES_SU;
   % Revolution number
   global  XA_OBSRES_REVNUM;
   % Range rate residual (km/sec)
   global  XA_OBSRES_RNGRATE;
   % Observation ASTAT
   global  XA_OBSRES_ASTAT;
   % Observation type
   global  XA_OBSRES_OBSTYPE;
   % Satellite true anomaly (deg)
   global  XA_OBSRES_SATANOM;
   % Satellite elevation (deg)
   global  XA_OBSRES_SATELEV;
   % Satellite maintenance category
   global  XA_OBSRES_SATCAT;
   % Obs time in ds50UTC
   global  XA_OBSRES_OBSTIME;
   % Obs azimuth (deg)
   global  XA_OBSRES_OBSAZ;
   % Obs elevation (deg)
   global  XA_OBSRES_OBSEL;
   % Velocity angle residual (deg)
   global  XA_OBSRES_VELANG;
   % Angular momentum residual (deg).  acos(dot(priW, secW))
   global  XA_OBSRES_ANGMOM;
   % Right ascension residual (deg) (for ob types 5, 9, 19)
   global  XA_OBSRES_RA;
   % Declination residual (deg) (for ob types 5, 9, 19)
   global  XA_OBSRES_DEC;
   % Delta X position (km)
   global  XA_OBSRES_POSX;
   % Delta Y position (km)
   global  XA_OBSRES_POSY;
   % Delta Z position (km)
   global  XA_OBSRES_POSZ;
   % Delta X velocity (km/sec)
   global  XA_OBSRES_VELX;
   % Delta Y velocity (km/sec)
   global  XA_OBSRES_VELY;
   % Delta Z velocity (km/sec)
   global  XA_OBSRES_VELZ;
   % Angle only - Obs computed range (km)
   global  XA_OBSRES_OBSRNG;
   
   % Obs right ascension (deg)
   global  XA_OBSRES_OBSRA;
   % Obs declination (deg)
   global  XA_OBSRES_OBSDEC;
   % Delta east longitude (deg)
   global  XA_OBSRES_LON;
   
   % Delta U position (km)
   global  XA_OBSRES_POSU;
   % Delta V position (km)
   global  XA_OBSRES_POSV;
   % Delta W position (km)
   global  XA_OBSRES_POSW;
   % 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   global  XA_OBSRES_CHI;
   
   % Angular Separation between Obs and State (Deg)
   global  XA_OBSRES_ANGSEP;
   % TDOA Time Difference of Arrival residual (nano-second)
   global  XA_OBSRES_TDOA;
   % FDOA Frequency Differecnce of Arrival (Hz)
   global  XA_OBSRES_FDOA;
   
   global  XA_OBSRES_SIZE
   
   % Indexes of Rotas Control parameter fields (Rotas P-Card)
   % Rotas processing mode
   global  XF_RP_MODE;
   % Gross Beta limit (deg)
   global  XF_RP_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   global  XF_RP_BETALIM;
   % ASTAT 0 delta-t limit (min)
   global  XF_RP_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   global  XF_RP_DELTAHLIM;
   % ASTAT 2 multiplier
   global  XF_RP_ASTAT2MULT;
   % Residual print flag
   global  XF_RP_PRTFLAG;
   % Retag ASTAT 1 ob flag
   global  XF_RP_RETAGFLAG;
   % Light-time correction flag
   global  XF_RP_LTC;
   % Maximum number of ALLEL assoc's to compute
   global  XF_RP_NUMASSOC;
   % Diagnostic print flag
   global  XF_RP_DIAGNOSTIC;
   % Covariance print flag
   global  XF_RP_PRTCOV;
   % Perform track processing
   global  XF_RP_TRACKFLAG;
   % Retagged ob are removed from further association
   global  XF_RP_REMRETAG;
   % Debias ob flag
   global  XF_RP_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   global  XF_RP_RESCOMPMETH;
   
   % ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   % Gross Beta limit (deg)
   global  XA_RT_PARMS_GROSSBETA;
   % ASTAT 0 Beta limit (deg)
   global  XA_RT_PARMS_BETALIM;
   % ASTAT 0 delta-t limit (min)
   global  XA_RT_PARMS_DELTATLIM;
   % ASTAT 0 delta-height limit (km)
   global  XA_RT_PARMS_DELTAHLIM;
   % ASTAT 2 multiplier
   global  XA_RT_PARMS_ASTAT2MULT;
   % Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
   global  XA_RT_PARMS_LTC;
   % debias ob flag: 0= do not debias, 1= debias ob
   global  XA_RT_PARMS_DEBIAS;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   global  XA_RT_PARMS_RESCOMPMETH;
   % Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
   global  XA_RT_PARMS_ANNUALAB;
   % Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
   global  XA_RT_PARMS_DIURNALAB;
   global  XA_RT_PARMS_SIZE
   
   % ROTAS Association Multipliers
   % ASTAT 1 Beta multiplier for Synchronous
   global  XA_ASSOCMULTP_BETA_SYN;
   % ASTAT 1 Delta-t multiplier for Synchronous
   global  XA_ASSOCMULTP_DELTAT_SYN;
   % ASTAT 1 Delta-height multiplier for Synchronous
   global  XA_ASSOCMULTP_DELTAH_SYN;
   % ASTAT 1 Beta multiplier for Deep-space
   global  XA_ASSOCMULTP_BETA_DS;
   % ASTAT 1 Delta-t multiplier for Deep-space
   global  XA_ASSOCMULTP_DELTAT_DS;
   % ASTAT 1 Delta-height multiplier for Deep-space
   global  XA_ASSOCMULTP_DELTAH_DS;
   % ASTAT 1 Beta multiplier for Decaying
   global  XA_ASSOCMULTP_BETA_DCY;
   % ASTAT 1 Delta-t multiplier for Decaying
   global  XA_ASSOCMULTP_DELTAT_DCY;
   % ASTAT 1 Delta-height multiplier for Decaying
   global  XA_ASSOCMULTP_DELTAH_DCY;
   % ASTAT 1 Beta multiplier for Routine
   global  XA_ASSOCMULTP_BETA_RTN;
   % ASTAT 1 Delta-t multiplier for Routine
   global  XA_ASSOCMULTP_DELTAT_RTN;
   % ASTAT 1 Delta-height multiplier for Routine
   global  XA_ASSOCMULTP_DELTAH_RTN;
   
   global  XA_ASSOCMULTP_SIZE
   
   
   % Different light-time correction (LTC) options
   % Don't apply LTC
   LTC_DONTAPPLY  = 0;
   % Apply LTC analytically
   LTC_ANALYTIC   = 1;
   % Apply LTC exactly
   LTC_EXACT      = 2;
   
   % Residual computation methods
   % Delta/427M method
   RESCOMPMETH_DELTA427M = 1;
   % Spadoc 4 method
   RESCOMPMETH_SPADOC4   = 2;
   
   % PV Ob data
   % ob ECI position X (km) in TEME of Date
   XA_OBPV_POSX     =  0;
   % ob ECI position Y (km) in TEME of Date
   XA_OBPV_POSY     =  1;
   % ob ECI position Z (km) in TEME of Date
   XA_OBPV_POSZ     =  2;
   % ob ECI velocity X (km/sec) in TEME of Date
   XA_OBPV_VELX     =  3;
   % ob ECI velocity Y (km/sec) in TEME of Date
   XA_OBPV_VELY     =  4;
   % ob ECI velocity Z (km/sec) in TEME of Date
   XA_OBPV_VELZ     =  5;
   % ob time in days since 1950, UTC
   XA_OBPV_TIME     =  6;
   
   % the last available index
   XA_OBPV_END      = 15;
   XA_OBPV_SIZE     = 16;
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   XA_SATPV_POSX    =  0;
   % satellite ECI position Y (km) in TEME of Date
   XA_SATPV_POSY    =  1;
   % satellite ECI position Z (km) in TEME of Date
   XA_SATPV_POSZ    =  2;
   % satellite ECI velocity X (km/sec) in TEME of Date
   XA_SATPV_VELX    =  3;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   XA_SATPV_VELY    =  4;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   XA_SATPV_VELZ    =  5;
   
   % the last available index
   XA_SATPV_END     = 15;
   XA_SATPV_SIZE    = 16;
   
   
   % Obs residual data field indexes
   % Azimuth residual (deg)
   XA_OBSRES_AZ     =  0;
   % Elevation residual (deg)
   XA_OBSRES_EL     =  1;
   % Range residual (km)
   XA_OBSRES_RANGE  =  2;
   % Height residual (deg)
   XA_OBSRES_HEIGHT =  3;
   % Beta residual (deg). asin(dot(priU, secW))
   XA_OBSRES_BETA   =  4;
   % Delta T residual (min)
   XA_OBSRES_DELTAT =  5;
   % Vector magnitude (km)
   XA_OBSRES_VMAG   =  6;
   % Time since epoch (days)
   XA_OBSRES_AGE    =  7;
   % True argument of latitude (deg)
   XA_OBSRES_SU     =  8;
   % Revolution number
   XA_OBSRES_REVNUM =  9;
   % Range rate residual (km/sec)
   XA_OBSRES_RNGRATE= 10;
   % Observation ASTAT
   XA_OBSRES_ASTAT  = 11;
   % Observation type
   XA_OBSRES_OBSTYPE= 12;
   % Satellite true anomaly (deg)
   XA_OBSRES_SATANOM= 13;
   % Satellite elevation (deg)
   XA_OBSRES_SATELEV= 14;
   % Satellite maintenance category
   XA_OBSRES_SATCAT = 15;
   % Obs time in ds50UTC
   XA_OBSRES_OBSTIME= 16;
   % Obs azimuth (deg)
   XA_OBSRES_OBSAZ  = 17;
   % Obs elevation (deg)
   XA_OBSRES_OBSEL  = 18;
   % Velocity angle residual (deg)
   XA_OBSRES_VELANG = 19;
   % Angular momentum residual (deg).  acos(dot(priW, secW))
   XA_OBSRES_ANGMOM = 20;
   % Right ascension residual (deg) (for ob types 5, 9, 19)
   XA_OBSRES_RA     = 21;
   % Declination residual (deg) (for ob types 5, 9, 19)
   XA_OBSRES_DEC    = 22;
   % Delta X position (km)
   XA_OBSRES_POSX   = 23;
   % Delta Y position (km)
   XA_OBSRES_POSY   = 24;
   % Delta Z position (km)
   XA_OBSRES_POSZ   = 25;
   % Delta X velocity (km/sec)
   XA_OBSRES_VELX   = 26;
   % Delta Y velocity (km/sec)
   XA_OBSRES_VELY   = 27;
   % Delta Z velocity (km/sec)
   XA_OBSRES_VELZ   = 28;
   % Angle only - Obs computed range (km)
   XA_OBSRES_OBSRNG = 29;
   
   % Obs right ascension (deg)
   XA_OBSRES_OBSRA  = 30;
   % Obs declination (deg)
   XA_OBSRES_OBSDEC = 31;
   % Delta east longitude (deg)
   XA_OBSRES_LON    = 32;
   
   % Delta U position (km)
   XA_OBSRES_POSU   = 33;
   % Delta V position (km)
   XA_OBSRES_POSV   = 34;
   % Delta W position (km)
   XA_OBSRES_POSW   = 35;
   % 3D position chi-squared residual (km) (Light Time Correction flag must be set to 0 or 2, will not work with 1)
   XA_OBSRES_CHI    = 36;
   
   % Angular Separation between Obs and State (Deg)
   XA_OBSRES_ANGSEP = 38;
   % TDOA Time Difference of Arrival residual (nano-second)
   XA_OBSRES_TDOA   = 39;
   % FDOA Frequency Differecnce of Arrival (Hz)
   XA_OBSRES_FDOA   = 40;
   
   XA_OBSRES_SIZE   =100;
   
   % Indexes of Rotas Control parameter fields (Rotas P-Card)
   % Rotas processing mode
   XF_RP_MODE       =  1;
   % Gross Beta limit (deg)
   XF_RP_GROSSBETA  =  2;
   % ASTAT 0 Beta limit (deg)
   XF_RP_BETALIM    =  3;
   % ASTAT 0 delta-t limit (min)
   XF_RP_DELTATLIM  =  4;
   % ASTAT 0 delta-height limit (km)
   XF_RP_DELTAHLIM  =  5;
   % ASTAT 2 multiplier
   XF_RP_ASTAT2MULT =  6;
   % Residual print flag
   XF_RP_PRTFLAG    =  7;
   % Retag ASTAT 1 ob flag
   XF_RP_RETAGFLAG  =  8;
   % Light-time correction flag
   XF_RP_LTC        =  9;
   % Maximum number of ALLEL assoc's to compute
   XF_RP_NUMASSOC   = 10;
   % Diagnostic print flag
   XF_RP_DIAGNOSTIC = 11;
   % Covariance print flag
   XF_RP_PRTCOV     = 12;
   % Perform track processing
   XF_RP_TRACKFLAG  = 13;
   % Retagged ob are removed from further association
   XF_RP_REMRETAG   = 14;
   % Debias ob flag
   XF_RP_DEBIAS     = 15;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   XF_RP_RESCOMPMETH= 16;
   
   % ROTAS control parameters in input array xa_rt_parms that is used in RotasHasASTAT_MT() and
   % Gross Beta limit (deg)
   XA_RT_PARMS_GROSSBETA   =  1;
   % ASTAT 0 Beta limit (deg)
   XA_RT_PARMS_BETALIM     =  2;
   % ASTAT 0 delta-t limit (min)
   XA_RT_PARMS_DELTATLIM   =  3;
   % ASTAT 0 delta-height limit (km)
   XA_RT_PARMS_DELTAHLIM   =  4;
   % ASTAT 2 multiplier
   XA_RT_PARMS_ASTAT2MULT  =  5;
   % Light-time correction (LTC) flag: 0= don't apply LTC, 1= apply LTC analytically, 2= apply LTC exactly
   XA_RT_PARMS_LTC         =  6;
   % debias ob flag: 0= do not debias, 1= debias ob
   XA_RT_PARMS_DEBIAS      =  7;
   % Residual computation method: 1=DELTA/427M, 2=SPADOC-4(default)
   XA_RT_PARMS_RESCOMPMETH =  8;
   % Flag for Annual Aberration 0 = do not apply, 1 = apply aberration correction
   XA_RT_PARMS_ANNUALAB	   =  9;
   % Flag for Diurnal Aberration 0 = do not apply, 1 = apply aberration correction
   XA_RT_PARMS_DIURNALAB   = 10;
   XA_RT_PARMS_SIZE        = 16;
   
   % ROTAS Association Multipliers
   % ASTAT 1 Beta multiplier for Synchronous
   XA_ASSOCMULTP_BETA_SYN   =  0;
   % ASTAT 1 Delta-t multiplier for Synchronous
   XA_ASSOCMULTP_DELTAT_SYN =  1;
   % ASTAT 1 Delta-height multiplier for Synchronous
   XA_ASSOCMULTP_DELTAH_SYN =  2;
   % ASTAT 1 Beta multiplier for Deep-space
   XA_ASSOCMULTP_BETA_DS    =  3;
   % ASTAT 1 Delta-t multiplier for Deep-space
   XA_ASSOCMULTP_DELTAT_DS  =  4;
   % ASTAT 1 Delta-height multiplier for Deep-space
   XA_ASSOCMULTP_DELTAH_DS  =  5;
   % ASTAT 1 Beta multiplier for Decaying
   XA_ASSOCMULTP_BETA_DCY   =  6;
   % ASTAT 1 Delta-t multiplier for Decaying
   XA_ASSOCMULTP_DELTAT_DCY =  7;
   % ASTAT 1 Delta-height multiplier for Decaying
   XA_ASSOCMULTP_DELTAH_DCY =  8;
   % ASTAT 1 Beta multiplier for Routine
   XA_ASSOCMULTP_BETA_RTN   =  9;
   % ASTAT 1 Delta-t multiplier for Routine
   XA_ASSOCMULTP_DELTAT_RTN = 10;
   % ASTAT 1 Delta-height multiplier for Routine
   XA_ASSOCMULTP_DELTAH_RTN = 11;
   
   XA_ASSOCMULTP_SIZE       = 12;
   
   autoload("LoadRotasDll",strcat(OctFilePath,"Rotas.oct"));
   autoload("FreeRotasDll",strcat(OctFilePath,"Rotas.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Rotas DLL for use in the program
   autoload("RotasInit",strcat(OctFilePath,"Rotas.oct"));
   
   %  Returns information about the current version of Rotas DLL. 
   %  The information is placed in the string parameter passed in.
   autoload("RotasGetInfo",strcat(OctFilePath,"Rotas.oct"));
   
   %  Loads Rotas-related parameters from an input text file
   autoload("RotasLoadFile",strcat(OctFilePath,"Rotas.oct"));
   
   %  Loads Rotas control parameters and all Rotas related data (environment, time, elsets, sensors, obs) from an input text file
   autoload("RotasLoadFileAll",strcat(OctFilePath,"Rotas.oct"));
   
   %  Loads a single Rotas-typed card
   autoload("RotasLoadCard",strcat(OctFilePath,"Rotas.oct"));
   
   %  Saves current Rotas settings to a file
   autoload("RotasSaveFile",strcat(OctFilePath,"Rotas.oct"));
   
   %  Builds and returns the Rotas P-Card from the current Rotas settings
   autoload("RotasGetPCard",strcat(OctFilePath,"Rotas.oct"));
   
   %  Retrieves all Rotas control parameters with a single function call
   autoload("RotasGetPAll",strcat(OctFilePath,"Rotas.oct"));
   
   %  Sets all Rotas control parameters with a single function call
   autoload("RotasSetPAll",strcat(OctFilePath,"Rotas.oct"));
   
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
   autoload("RotasGetPField",strcat(OctFilePath,"Rotas.oct"));
   
   %   Sets the value of a specified Rotas control parameter (P-card field)
   %  See RotasGetPField for values for the xf_RP parameter.
   autoload("RotasSetPField",strcat(OctFilePath,"Rotas.oct"));
   
   %  Gets ASTAT 1 association multipliers
   autoload("RotasGetAssocMultipliers",strcat(OctFilePath,"Rotas.oct"));
   
   %  Sets ASTAT 1 association multipliers
   autoload("RotasSetAssocMultipliers",strcat(OctFilePath,"Rotas.oct"));
   
   %  Resets all Rotas control parameters back to their default values
   autoload("RotasResetAll",strcat(OctFilePath,"Rotas.oct"));
   
   %  Determines if the observation/satellite pair can possibly have an association
   autoload("RotasHasASTAT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using global Multipliers)
   autoload("RotasHasASTAT_MT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Determines if the observation/satellite pair can possibly have an association - suitable for multithread application (using provided Multipliers)
   autoload("RotasHasASTATMultp_MT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for one observation against one satellite
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   autoload("RotasComputeObsResiduals",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for one observation against one satellite - suitable for multithread application (using global Multipliers)
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   autoload("RotasComputeObsResiduals_MT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for one observation against one satellite - suitable for multithread application (using provided Multipliers)
   %  Obs type 0 (range rate only) cannot be used to compute residuals.
   autoload("RotasComputeObsResidualsMultp_MT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using global parameters)
   autoload("RotasComputeTrackResiduals",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for a track of observations against one satellite. Each track is treated as a single entity (using provided parameters)
   autoload("RotasComputeTrackResiduals_MT",strcat(OctFilePath,"Rotas.oct"));
   
   %  Computes residuals for one observation against one satellite directly (no need to load ob and propagate satellite)
   autoload("RotasCompObResDirect",strcat(OctFilePath,"Rotas.oct"));
   
   %  Returns the name of the retag obs file
   autoload("RotasGetRetagObsFile",strcat(OctFilePath,"Rotas.oct"));
   
   %  Sets the file name of the retag obs file
   autoload("RotasSetRetagObsFile",strcat(OctFilePath,"Rotas.oct"));
   LoadRotasDll;
endfunction
% ========================= End of auto generated code ==========================
