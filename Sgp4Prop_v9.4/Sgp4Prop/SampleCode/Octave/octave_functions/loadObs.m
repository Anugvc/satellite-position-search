% This wrapper file was generated automatically by the GenDllWrappers program.
function loadObs(OctFilePath)   
   % Equinox indicator
   % time of observation
   global  EQUINOX_OBSTIME;
   % time @ 0 Jan Year of Date
   global  EQUINOX_OBSYEAR;
   % J2000
   global  EQUINOX_J2K;
   % B1950
   global  EQUINOX_B1950;
   
   % Indexes for sorting ob
   % Sort options:
   % (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
   % (+/-) 2 = (descending/ascending) time, elevation
   % (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
   % (+/-) 4 = (descending/ascending) sensor, satno, time, elev
   % (+/-) 5 = (descending/ascending) sensor, time, elevation
   % (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
   % (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
   % (+/-)10 = (descending/ascending) satno, sensor, time
   
   % sort order is time, sensor, obsType, elev (negative value for reverse order)
   global  SORT_TIMESENTYPEEL;
   % sort order is time, elevation (negative value for reverse order)
   global  SORT_TIMEEL;
   % sort order is time, sensor, otype, el, satno (negative value for reverse order)
   global  SORT_TIMESENTYPEELSAT;
   % sort order is sensor, satno, time, elev (negative value for reverse order)
   global  SORT_SENSATTIMEEL;
   % sort order is sensor, time, elevation (negative value for reverse order)
   global  SORT_SENTIMEEL;
   % sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
   global  SORT_SENSATTYPETIMEEL;
   % sort order is satno, time, sensor, otype, el (negative value for reverse order)
   global  SORT_SATTIMESENTYPEEL;
   % sort order is the order of obs when they were loaded
   global  SORT_ORDERASREAD;
   % sort order is satno, sensor, time (negative value for reverse order)
   global  SORT_SATSENTIME;
   
   
   % Indexes of different obs file format
   % B3 obs format
   global  OBSFORM_B3;
   % Transmission obs format
   global  OBSFORM_TTY;
   % CSV obs format
   global  OBSFORM_CSV;
   % Radio Frequency (TDOA/FDOA) observations
   global  OBSFORM_RF;
   
   global  BADOBSKEY
   global  DUPOBSKEY
   
   
   % Different key mode options for obsKey
   % Default - duplicate obs can not be loaded in binary tree
   global  OBS_KEYMODE_NODUP;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global  OBS_KEYMODE_DMA;
   
   % CSV sigma type indicator
   global  CSVSIGMATYPE
   
   % Indexes of Observation data fields
   % security classification
   global  XF_OBS_SECCLASS;
   % satellite number
   global  XF_OBS_SATNUM;
   % sensor number
   global  XF_OBS_SENNUM;
   % observation time in days since 1950 UTC
   global  XF_OBS_DS50UTC;
   % elevation (deg)
   global  XF_OBS_ELEVATION;
   % declination (deg)
   global  XF_OBS_DECLINATION;
   % azimuth (deg)
   global  XF_OBS_AZIMUTH;
   % right-ascension (deg)
   global  XF_OBS_RA;
   % range (km)
   global  XF_OBS_RANGE;
   % range rate (km/s)
   global  XF_OBS_RANGERATE;
   % elevation rate (deg/s)
   global  XF_OBS_ELRATE;
   % azimuth rate (deg/s)
   global  XF_OBS_AZRATE;
   % range acceleration (km/s^2)
   global  XF_OBS_RANGEACCEL;
   % observation type
   global  XF_OBS_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global  XF_OBS_TRACKIND;
   % association status assigned by SPADOC
   global  XF_OBS_ASTAT;
   % original satellite number
   global  XF_OBS_SITETAG;
   % SPADOC-asssigned tag number
   global  XF_OBS_SPADOCTAG;
   % position X/EFG (km)
   global  XF_OBS_POSE;
   % position Y/EFG (km)
   global  XF_OBS_POSF;
   % position Z/EFG (km)
   global  XF_OBS_POSG;
   % position X/ECI (km)
   global  XF_OBS_POSX;
   % position Y/ECI (km)
   global  XF_OBS_POSY;
   % position Z/ECI (km)
   global  XF_OBS_POSZ;
   
   % Principal Polarization RCS
   global  XF_OBS_RCS_PP;
   % Orthogonal Polarization RCS
   global  XF_OBS_RCS_OP;
   % Principal Polarization RCS sigma
   global  XF_OBS_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   global  XF_OBS_RCS_OPS;
   % Radar Signal to Noise Ratio
   global  XF_OBS_SNR;
   % Azimuth of Boresite
   global  XF_OBS_BORE_AZ;
   % Elevation of Boresite
   global  XF_OBS_BORE_EL;
   % Apparent Visual magnitude
   global  XF_OBS_VISMAG;
   % GEO Normalized Visual magnitude
   global  XF_OBS_VISMAG_NORM;
   % Solar Phase Angle
   global  XF_OBS_SOL_PHASE;
   % Frame Number
   global  XF_OBS_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   global  XF_OBS_ABERRATION;
   % Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   global  XF_OBS_ASTAT_METHOD;
   
   % Indexes of observation data in an array
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   global  XA_OBS_SECCLASS;
   % satellite number
   global  XA_OBS_SATNUM;
   % sensor number
   global  XA_OBS_SENNUM;
   % observation time in days since 1950 UTC
   global  XA_OBS_DS50UTC;
   % observation type
   global  XA_OBS_OBSTYPE;
   
   
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   global  XA_OBS_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   global  XA_OBS_AZORRA;
   % range (km)
   global  XA_OBS_RANGE;
   % range rate (km/s) for non-optical obs type
   global  XA_OBS_RANGERATE;
   % elevation rate (deg/s)
   global  XA_OBS_ELRATE;
   % azimuth rate (deg/s)
   global  XA_OBS_AZRATE;
   % range acceleration (km/s^2)
   global  XA_OBS_RANGEACCEL;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global  XA_OBS_TRACKIND;
   % association status assigned by SPADOC
   global  XA_OBS_ASTAT;
   % original satellite number
   global  XA_OBS_SITETAG;
   % SPADOC-asssigned tag number
   global  XA_OBS_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   global  XA_OBS_POSX;
   % position Y/ECI or Y/EFG (km)
   global  XA_OBS_POSY;
   % position Z/ECI or Z/EFG (km)
   global  XA_OBS_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global  XA_OBS_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global  XA_OBS_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global  XA_OBS_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global  XA_OBS_YROFEQNX;
   % aberration indicator, 0-not corrected, 1-corrceted
   global  XA_OBS_ABERRATION;
   
   % AZ/RA bias (deg)
   global  XA_OBS_AZORRABIAS;
   % EL/DEC bias (deg)
   global  XA_OBS_ELORDECBIAS;
   % Range bias (km)
   global  XA_OBS_RGBIAS;
   % Range-rate bias (km/sec)
   global  XA_OBS_RRBIAS;
   % Time bias (sec)
   global  XA_OBS_TIMEBIAS;
   % AZ/RA rate bias (deg/sec)
   global  XA_OBS_RAZORRABIAS;
   % EL/DEC rate bias (deg/sec)
   global  XA_OBS_RELORDECBIAS;
   
   % individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
   global  XA_OBS_SIGMATYPE;
   % sigma - covariance element 1 - 6 elemens - Az sigma
   global  XA_OBS_SIGMAEL1;
   % sigma - covariance element 2 - 6 elemens - El sigma
   global  XA_OBS_SIGMAEL2;
   % sigma - covariance element 3 - 6 elemens - Range sigma
   global  XA_OBS_SIGMAEL3;
   % sigma - covariance element 4 - 6 elemens - Range rate sigma
   global  XA_OBS_SIGMAEL4;
   % sigma - covariance element 5 - 6 elemens - Az rate sigma
   global  XA_OBS_SIGMAEL5;
   % sigma - covariance element 6 - 6 elemens - El rate sigma
   global  XA_OBS_SIGMAEL6;
   % sigma - covariance element 7
   global  XA_OBS_SIGMAEL7;
   % sigma - covariance element 8
   global  XA_OBS_SIGMAEL8;
   % sigma - covariance element 9
   global  XA_OBS_SIGMAEL9;
   % sigma - covariance element 10
   global  XA_OBS_SIGMAEL10;
   % sigma - covariance element 11
   global  XA_OBS_SIGMAEL11;
   % sigma - covariance element 12
   global  XA_OBS_SIGMAEL12;
   % sigma - covariance element 13
   global  XA_OBS_SIGMAEL13;
   % sigma - covariance element 14
   global  XA_OBS_SIGMAEL14;
   % sigma - covariance element 15
   global  XA_OBS_SIGMAEL15;
   % sigma - covariance element 16
   global  XA_OBS_SIGMAEL16;
   % sigma - covariance element 17
   global  XA_OBS_SIGMAEL17;
   % sigma - covariance element 18
   global  XA_OBS_SIGMAEL18;
   % sigma - covariance element 19
   global  XA_OBS_SIGMAEL19;
   % sigma - covariance element 20
   global  XA_OBS_SIGMAEL20;
   % sigma - covariance element 21
   global  XA_OBS_SIGMAEL21;
   
   global  XA_OBS_SIZE
   
   % Indexes of observation data in an array (Obs Type CSV specific)
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   global  XA_OTCSV_SECCLASS;
   % satellite number
   global  XA_OTCSV_SATNUM;
   % sensor number
   global  XA_OTCSV_SENNUM;
   % observation time in days since 1950 UTC
   global  XA_OTCSV_DS50UTC;
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   global  XA_OTCSV_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   global  XA_OTCSV_AZORRA;
   % range (km)
   global  XA_OTCSV_RANGE;
   % range rate (km/s) for non-optical obs type
   global  XA_OTCSV_RANGERATE;
   % elevation rate (deg/s)
   global  XA_OTCSV_ELRATE;
   % azimuth rate (deg/s)
   global  XA_OTCSV_AZRATE;
   % range acceleration (km/s^2)
   global  XA_OTCSV_RANGEACCEL;
   % observation type
   global  XA_OTCSV_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global  XA_OTCSV_TRACKIND;
   % association status assigned by SPADOC
   global  XA_OTCSV_ASTAT;
   % original satellite number
   global  XA_OTCSV_SITETAG;
   % SPADOC-asssigned tag number
   global  XA_OTCSV_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   global  XA_OTCSV_POSX;
   % position Y/ECI or Y/EFG (km)
   global  XA_OTCSV_POSY;
   % position Z/ECI or Z/EFG (km)
   global  XA_OTCSV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global  XA_OTCSV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global  XA_OTCSV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global  XA_OTCSV_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global  XA_OTCSV_YROFEQNX;
   
   % Principal Polarization RCS
   global  XA_OTCSV_RCS_PP;
   % Orthogonal Polarization RCS
   global  XA_OTCSV_RCS_OP;
   % Principal Polarization RCS sigma
   global  XA_OTCSV_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   global  XA_OTCSV_RCS_OPS;
   % Radar Signal to Noise Ratio
   global  XA_OTCSV_SNR;
   % Azimuth of Boresite
   global  XA_OTCSV_BORE_AZ;
   % Elevation of Boresite
   global  XA_OTCSV_BORE_EL;
   % Apparent Visual magnitude
   global  XA_OTCSV_VISMAG;
   % GEO Normalized Visual magnitude
   global  XA_OTCSV_VISMAG_NORM;
   % Solar Phase Angle
   global  XA_OTCSV_SOL_PHASE;
   % Frame Number
   global  XA_OTCSV_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   global  XA_OTCSV_ABERRATION;
   % 0 = ROTAS, 1 = TRACK
   global  XA_OTCSV_ASTAT_METHOD;
   
   % must equal to 7 to signify this is CSV format
   global  XA_OTCSV_SIGMATYPE;
   % sigma - covariance element 1 - Az sigma
   global  XA_OTCSV_SIGMAEL1;
   % sigma - covariance element 2 - El sigma
   global  XA_OTCSV_SIGMAEL2;
   % sigma - covariance element 3 - Range sigma
   global  XA_OTCSV_SIGMAEL3;
   % sigma - covariance element 4 - Range rate sigma
   global  XA_OTCSV_SIGMAEL4;
   % sigma - covariance element 5 - Az rate sigma
   global  XA_OTCSV_SIGMAEL5;
   % sigma - covariance element 6 - El rate sigma
   global  XA_OTCSV_SIGMAEL6;
   % sigma - covariance element 7 - Time sigma
   global  XA_OTCSV_SIGMAEL7;
   % AZ/RA bias
   global  XA_OTCSV_BIAS1;
   % EL/DEC bias
   global  XA_OTCSV_BIAS2;
   % Range bias
   global  XA_OTCSV_BIAS3;
   % Range-rate bias
   global  XA_OTCSV_BIAS4;
   % Time bias
   global  XA_OTCSV_BIAS5;
   
   
   global  XA_OTCSV_SIZE
   
   % Indexes of observation data in an array
   % satellite number
   global  XA_OBSTATE_SATNUM;
   % sensor number
   global  XA_OBSTATE_SENNUM;
   % observation time in days since 1950 UTC
   global  XA_OBSTATE_DS50UTC;
   
   % position X/ECI (km)
   global  XA_OBSTATE_POSX;
   % position Y/ECI (km)
   global  XA_OBSTATE_POSY;
   % position Z/ECI (km)
   global  XA_OBSTATE_POSZ;
   % velocity X/ECI (km/s)
   global  XA_OBSTATE_VELX;
   % velocity Y/ECI (km/s)
   global  XA_OBSTATE_VELY;
   % velocity Z/ECI (km/s)
   global  XA_OBSTATE_VELZ;
   % geodetic latitude (deg)
   global  XA_OBSTATE_LAT;
   % geodetic longitude (deg)
   global  XA_OBSTATE_LON;
   % geodetic height (km)
   global  XA_OBSTATE_HGHT;
   % position X/EFG (km)
   global  XA_OBSTATE_POSE;
   % position Y/EFG (km)
   global  XA_OBSTATE_POSF;
   % position Z/EFG (km)
   global  XA_OBSTATE_POSG;
   
   
   global  XA_OBSTATE_SIZE
   
   % Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   % All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   % range rate (km/s)
   global  XA_OT0_RANGERATE;
   
   % elevation (deg)
   global  XA_OT1_ELEVATION;
   % azimuth (deg)
   global  XA_OT1_AZIMUTH;
   
   % elevation (deg)
   global  XA_OT2_ELEVATION;
   % azimuth (deg)
   global  XA_OT2_AZIMUTH;
   % range (km)
   global  XA_OT2_RANGE;
   
   % elevation (deg)
   global  XA_OT3_ELEVATION;
   % azimuth (deg)
   global  XA_OT3_AZIMUTH;
   % range (km)
   global  XA_OT3_RANGE;
   % range rate (km/s)
   global  XA_OT3_RANGERATE;
   
   % elevation (deg)
   global  XA_OT4_ELEVATION;
   % azimuth (deg)
   global  XA_OT4_AZIMUTH;
   % range (km)
   global  XA_OT4_RANGE;
   % range rate (km/s)
   global  XA_OT4_RANGERATE;
   % elevation rate (deg/s)
   global  XA_OT4_ELRATE;
   % azimuth rate (deg/s)
   global  XA_OT4_AZRATE;
   % range acceleration (km/s^2)
   global  XA_OT4_RANGEACCEL;
   
   % declination (deg)
   global  XA_OT5_DECL;
   % right ascesion (deg)
   global  XA_OT5_RIGHTASC;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global  XA_OT5_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   global  XA_OT5_ABERRATION;
   
   % range (km)
   global  XA_OT6_RANGE;
   
   % elevation (deg)
   global  XA_OT8_ELEVATION;
   % azimuth (deg)
   global  XA_OT8_AZIMUTH;
   % optional - range (km)
   global  XA_OT8_RANGE;
   % orbiting sensor position X/EFG (km)
   global  XA_OT8_POSE;
   % orbiting sensor position Y/EFG (km)
   global  XA_OT8_POSF;
   % orbiting sensor position Z/EFG (km)
   global  XA_OT8_POSG;
   
   % declination (deg)
   global  XA_OT9_DECL;
   % right ascesion (deg)
   global  XA_OT9_RIGHTASC;
   % optional - range (km)
   global  XA_OT9_RANGE;
   % orbiting sensor position X/EFG (km)
   global  XA_OT9_POSE;
   % orbiting sensor position Y/EFG (km)
   global  XA_OT9_POSF;
   % orbiting sensor position Z/EFG (km)
   global  XA_OT9_POSG;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global  XA_OT9_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   global  XA_OT9_ABERRATION;
   
   % position X/ECI or X/EFG (km)
   global  XA_OTP_POSX;
   % position Y/ECI or Y/EFG (km)
   global  XA_OTP_POSY;
   % position Z/ECI or Z/EFG (km)
   global  XA_OTP_POSZ;
   
   % position X/ECI or X/EFG (km)
   global  XA_OTV_POSX;
   % position Y/ECI or Y/EFG (km)
   global  XA_OTV_POSY;
   % position Z/ECI or Z/EFG (km)
   global  XA_OTV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global  XA_OTV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global  XA_OTV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global  XA_OTV_VELZ;
   
   global  XA_OT_SIZE
   
   % Obs selection criteria
   % Seclection mode (unused for now)
   global  XA_SELOB_MODE;
   
   % From time
   global  XA_SELOB_FRTIME;
   % To time
   global  XA_SELOB_TOTIME;
   
   % From time
   global  XA_SELOB_FRIDX;
   % To time
   global  XA_SELOB_TOIDX;
   
   % Select any obs that match this satellite number #1
   global  XA_SELOB_SAT1;
   % Select any obs that match this satellite number #2
   global  XA_SELOB_SAT2;
   % Select any obs that match this satellite number #3
   global  XA_SELOB_SAT3;
   % Select any obs that match this satellite number #4
   global  XA_SELOB_SAT4;
   % Select any obs that match this satellite number #5
   global  XA_SELOB_SAT5;
   % Select any obs that match this satellite number #6
   global  XA_SELOB_SAT6;
   % Select any obs that match this satellite number #7
   global  XA_SELOB_SAT7;
   % Select any obs that match this satellite number #8
   global  XA_SELOB_SAT8;
   % Select any obs that match this satellite number #9
   global  XA_SELOB_SAT9;
   % Select any obs that match this satellite number #10
   global  XA_SELOB_SAT10;
   
   % Select any obs that are obtained by this sensor site #1
   global  XA_SELOB_SEN1;
   % Select any obs that are obtained by this sensor site #2
   global  XA_SELOB_SEN2;
   % Select any obs that are obtained by this sensor site #3
   global  XA_SELOB_SEN3;
   % Select any obs that are obtained by this sensor site #4
   global  XA_SELOB_SEN4;
   % Select any obs that are obtained by this sensor site #5
   global  XA_SELOB_SEN5;
   % Select any obs that are obtained by this sensor site #6
   global  XA_SELOB_SEN6;
   % Select any obs that are obtained by this sensor site #7
   global  XA_SELOB_SEN7;
   % Select any obs that are obtained by this sensor site #8
   global  XA_SELOB_SEN8;
   % Select any obs that are obtained by this sensor site #9
   global  XA_SELOB_SEN9;
   % Select any obs that are obtained by this sensor site #10
   global  XA_SELOB_SEN10;
   
   % Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
   global  XA_SELOB_OT1;
   % Select any obs that match this obs type #2
   global  XA_SELOB_OT2;
   % Select any obs that match this obs type #3
   global  XA_SELOB_OT3;
   % Select any obs that match this obs type #4
   global  XA_SELOB_OT4;
   % Select any obs that match this obs type #5
   global  XA_SELOB_OT5;
   % Select any obs that match this obs type #6
   global  XA_SELOB_OT6;
   % Select any obs that match this obs type #7
   global  XA_SELOB_OT7;
   % Select any obs that match this obs type #8
   global  XA_SELOB_OT8;
   % Select any obs that match this obs type #9
   global  XA_SELOB_OT9;
   % Select any obs that match this obs type #10
   global  XA_SELOB_OT10;
   
   % From azimuth
   global  XA_SELOB_FRAZ;
   % To azimuth
   global  XA_SELOB_TOAZ;
   % From elevation
   global  XA_SELOB_FREL;
   % To elevation
   global  XA_SELOB_TOEL;
   % From right ascension
   global  XA_SELOB_FRRA;
   % To right ascension
   global  XA_SELOB_TORA;
   % From declincation
   global  XA_SELOB_FRDEC;
   % To declination
   global  XA_SELOB_TODEC;
   % From range
   global  XA_SELOB_FRRNG;
   % To range
   global  XA_SELOB_TORNG;
   % From range rate
   global  XA_SELOB_FRRNGRT;
   % To range rate
   global  XA_SELOB_TORNGRT;
   % From azimuth rate
   global  XA_SELOB_FRAZRT;
   % To azimuth rate
   global  XA_SELOB_TOAZRT;
   % From elevation rate
   global  XA_SELOB_FRELRT;
   % To elevation rate
   global  XA_SELOB_TOELRT;
   % From ASTAT (0 to 4)
   global  XA_SELOB_FRASTAT;
   % To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   global  XA_SELOB_TOASTAT;
   
   global  XA_SELOB_SIZE
   
   
   
   % Equinox indicator
   % time of observation
   EQUINOX_OBSTIME = 0;
   % time @ 0 Jan Year of Date
   EQUINOX_OBSYEAR = 1;
   % J2000
   EQUINOX_J2K     = 2;
   % B1950
   EQUINOX_B1950   = 3;
   
   % Indexes for sorting ob
   % Sort options:
   % (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
   % (+/-) 2 = (descending/ascending) time, elevation
   % (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
   % (+/-) 4 = (descending/ascending) sensor, satno, time, elev
   % (+/-) 5 = (descending/ascending) sensor, time, elevation
   % (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
   % (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
   % (+/-)10 = (descending/ascending) satno, sensor, time
   
   % sort order is time, sensor, obsType, elev (negative value for reverse order)
   SORT_TIMESENTYPEEL      =  1;
   % sort order is time, elevation (negative value for reverse order)
   SORT_TIMEEL             =  2;
   % sort order is time, sensor, otype, el, satno (negative value for reverse order)
   SORT_TIMESENTYPEELSAT   =  3;
   % sort order is sensor, satno, time, elev (negative value for reverse order)
   SORT_SENSATTIMEEL       =  4;
   % sort order is sensor, time, elevation (negative value for reverse order)
   SORT_SENTIMEEL          =  5;
   % sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
   SORT_SENSATTYPETIMEEL   =  6;
   % sort order is satno, time, sensor, otype, el (negative value for reverse order)
   SORT_SATTIMESENTYPEEL   =  7;
   % sort order is the order of obs when they were loaded
   SORT_ORDERASREAD        =  8;
   % sort order is satno, sensor, time (negative value for reverse order)
   SORT_SATSENTIME         = 10;
   
   
   % Indexes of different obs file format
   % B3 obs format
   OBSFORM_B3   = 0;
   % Transmission obs format
   OBSFORM_TTY  = 1;
   % CSV obs format
   OBSFORM_CSV  = 2;
   % Radio Frequency (TDOA/FDOA) observations
   OBSFORM_RF   = 3;
   
   BADOBSKEY = -1;
   DUPOBSKEY = 0;
   
   
   % Different key mode options for obsKey
   % Default - duplicate obs can not be loaded in binary tree
   OBS_KEYMODE_NODUP  = 0;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   OBS_KEYMODE_DMA    = 1;
   
   % CSV sigma type indicator
   CSVSIGMATYPE = 7;
   
   % Indexes of Observation data fields
   % security classification
   XF_OBS_SECCLASS     =  1;
   % satellite number
   XF_OBS_SATNUM       =  2;
   % sensor number
   XF_OBS_SENNUM       =  3;
   % observation time in days since 1950 UTC
   XF_OBS_DS50UTC      =  4;
   % elevation (deg)
   XF_OBS_ELEVATION    =  5;
   % declination (deg)
   XF_OBS_DECLINATION  =  6;
   % azimuth (deg)
   XF_OBS_AZIMUTH      =  7;
   % right-ascension (deg)
   XF_OBS_RA           =  8;
   % range (km)
   XF_OBS_RANGE        =  9;
   % range rate (km/s)
   XF_OBS_RANGERATE    = 10;
   % elevation rate (deg/s)
   XF_OBS_ELRATE       = 11;
   % azimuth rate (deg/s)
   XF_OBS_AZRATE       = 12;
   % range acceleration (km/s^2)
   XF_OBS_RANGEACCEL   = 13;
   % observation type
   XF_OBS_OBSTYPE      = 14;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   XF_OBS_TRACKIND     = 15;
   % association status assigned by SPADOC
   XF_OBS_ASTAT        = 16;
   % original satellite number
   XF_OBS_SITETAG      = 17;
   % SPADOC-asssigned tag number
   XF_OBS_SPADOCTAG    = 18;
   % position X/EFG (km)
   XF_OBS_POSE         = 19;
   % position Y/EFG (km)
   XF_OBS_POSF         = 20;
   % position Z/EFG (km)
   XF_OBS_POSG         = 21;
   % position X/ECI (km)
   XF_OBS_POSX         = 22;
   % position Y/ECI (km)
   XF_OBS_POSY         = 23;
   % position Z/ECI (km)
   XF_OBS_POSZ         = 24;
   
   % Principal Polarization RCS
   XF_OBS_RCS_PP       = 25;
   % Orthogonal Polarization RCS
   XF_OBS_RCS_OP       = 26;
   % Principal Polarization RCS sigma
   XF_OBS_RCS_PPS      = 27;
   % Orthogonal Polarization RCS sigma
   XF_OBS_RCS_OPS      = 28;
   % Radar Signal to Noise Ratio
   XF_OBS_SNR          = 29;
   % Azimuth of Boresite
   XF_OBS_BORE_AZ      = 30;
   % Elevation of Boresite
   XF_OBS_BORE_EL      = 31;
   % Apparent Visual magnitude
   XF_OBS_VISMAG       = 32;
   % GEO Normalized Visual magnitude
   XF_OBS_VISMAG_NORM  = 33;
   % Solar Phase Angle
   XF_OBS_SOL_PHASE    = 34;
   % Frame Number
   XF_OBS_FRAME        = 35;
   % Aberration correction indicator (0=YES, 1=NO)
   XF_OBS_ABERRATION   = 36;
   % Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   XF_OBS_ASTAT_METHOD = 37;
   
   % Indexes of observation data in an array
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   XA_OBS_SECCLASS     =  0;
   % satellite number
   XA_OBS_SATNUM       =  1;
   % sensor number
   XA_OBS_SENNUM       =  2;
   % observation time in days since 1950 UTC
   XA_OBS_DS50UTC      =  3;
   % observation type
   XA_OBS_OBSTYPE      = 11;
   
   
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   XA_OBS_ELORDEC      =  4;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   XA_OBS_AZORRA       =  5;
   % range (km)
   XA_OBS_RANGE        =  6;
   % range rate (km/s) for non-optical obs type
   XA_OBS_RANGERATE    =  7;
   % elevation rate (deg/s)
   XA_OBS_ELRATE       =  8;
   % azimuth rate (deg/s)
   XA_OBS_AZRATE       =  9;
   % range acceleration (km/s^2)
   XA_OBS_RANGEACCEL   = 10;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   XA_OBS_TRACKIND     = 12;
   % association status assigned by SPADOC
   XA_OBS_ASTAT        = 13;
   % original satellite number
   XA_OBS_SITETAG      = 14;
   % SPADOC-asssigned tag number
   XA_OBS_SPADOCTAG    = 15;
   % position X/ECI or X/EFG (km)
   XA_OBS_POSX         = 16;
   % position Y/ECI or Y/EFG (km)
   XA_OBS_POSY         = 17;
   % position Z/ECI or Z/EFG (km)
   XA_OBS_POSZ         = 18;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   XA_OBS_VELX         = 19;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   XA_OBS_VELY         = 20;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   XA_OBS_VELZ         = 21;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   XA_OBS_YROFEQNX     = 22;
   % aberration indicator, 0-not corrected, 1-corrceted
   XA_OBS_ABERRATION   = 23;
   
   % AZ/RA bias (deg)
   XA_OBS_AZORRABIAS   = 33;
   % EL/DEC bias (deg)
   XA_OBS_ELORDECBIAS  = 34;
   % Range bias (km)
   XA_OBS_RGBIAS       = 35;
   % Range-rate bias (km/sec)
   XA_OBS_RRBIAS       = 36;
   % Time bias (sec)
   XA_OBS_TIMEBIAS     = 37;
   % AZ/RA rate bias (deg/sec)
   XA_OBS_RAZORRABIAS  = 38;
   % EL/DEC rate bias (deg/sec)
   XA_OBS_RELORDECBIAS = 39;
   
   % individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
   XA_OBS_SIGMATYPE    = 40;
   % sigma - covariance element 1 - 6 elemens - Az sigma
   XA_OBS_SIGMAEL1     = 41;
   % sigma - covariance element 2 - 6 elemens - El sigma
   XA_OBS_SIGMAEL2     = 42;
   % sigma - covariance element 3 - 6 elemens - Range sigma
   XA_OBS_SIGMAEL3     = 43;
   % sigma - covariance element 4 - 6 elemens - Range rate sigma
   XA_OBS_SIGMAEL4     = 44;
   % sigma - covariance element 5 - 6 elemens - Az rate sigma
   XA_OBS_SIGMAEL5     = 45;
   % sigma - covariance element 6 - 6 elemens - El rate sigma
   XA_OBS_SIGMAEL6     = 46;
   % sigma - covariance element 7
   XA_OBS_SIGMAEL7     = 47;
   % sigma - covariance element 8
   XA_OBS_SIGMAEL8     = 48;
   % sigma - covariance element 9
   XA_OBS_SIGMAEL9     = 49;
   % sigma - covariance element 10
   XA_OBS_SIGMAEL10    = 50;
   % sigma - covariance element 11
   XA_OBS_SIGMAEL11    = 51;
   % sigma - covariance element 12
   XA_OBS_SIGMAEL12    = 52;
   % sigma - covariance element 13
   XA_OBS_SIGMAEL13    = 53;
   % sigma - covariance element 14
   XA_OBS_SIGMAEL14    = 54;
   % sigma - covariance element 15
   XA_OBS_SIGMAEL15    = 55;
   % sigma - covariance element 16
   XA_OBS_SIGMAEL16    = 56;
   % sigma - covariance element 17
   XA_OBS_SIGMAEL17    = 57;
   % sigma - covariance element 18
   XA_OBS_SIGMAEL18    = 58;
   % sigma - covariance element 19
   XA_OBS_SIGMAEL19    = 59;
   % sigma - covariance element 20
   XA_OBS_SIGMAEL20    = 60;
   % sigma - covariance element 21
   XA_OBS_SIGMAEL21    = 61;
   
   XA_OBS_SIZE         = 64;
   
   % Indexes of observation data in an array (Obs Type CSV specific)
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   XA_OTCSV_SECCLASS     =  0;
   % satellite number
   XA_OTCSV_SATNUM       =  1;
   % sensor number
   XA_OTCSV_SENNUM       =  2;
   % observation time in days since 1950 UTC
   XA_OTCSV_DS50UTC      =  3;
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   XA_OTCSV_ELORDEC      =  4;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   XA_OTCSV_AZORRA       =  5;
   % range (km)
   XA_OTCSV_RANGE        =  6;
   % range rate (km/s) for non-optical obs type
   XA_OTCSV_RANGERATE    =  7;
   % elevation rate (deg/s)
   XA_OTCSV_ELRATE       =  8;
   % azimuth rate (deg/s)
   XA_OTCSV_AZRATE       =  9;
   % range acceleration (km/s^2)
   XA_OTCSV_RANGEACCEL   = 10;
   % observation type
   XA_OTCSV_OBSTYPE      = 11;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   XA_OTCSV_TRACKIND     = 12;
   % association status assigned by SPADOC
   XA_OTCSV_ASTAT        = 13;
   % original satellite number
   XA_OTCSV_SITETAG      = 14;
   % SPADOC-asssigned tag number
   XA_OTCSV_SPADOCTAG    = 15;
   % position X/ECI or X/EFG (km)
   XA_OTCSV_POSX         = 16;
   % position Y/ECI or Y/EFG (km)
   XA_OTCSV_POSY         = 17;
   % position Z/ECI or Z/EFG (km)
   XA_OTCSV_POSZ         = 18;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   XA_OTCSV_VELX         = 19;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   XA_OTCSV_VELY         = 20;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   XA_OTCSV_VELZ         = 21;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   XA_OTCSV_YROFEQNX     = 22;
   
   % Principal Polarization RCS
   XA_OTCSV_RCS_PP       = 23;
   % Orthogonal Polarization RCS
   XA_OTCSV_RCS_OP       = 24;
   % Principal Polarization RCS sigma
   XA_OTCSV_RCS_PPS      = 25;
   % Orthogonal Polarization RCS sigma
   XA_OTCSV_RCS_OPS      = 26;
   % Radar Signal to Noise Ratio
   XA_OTCSV_SNR          = 27;
   % Azimuth of Boresite
   XA_OTCSV_BORE_AZ      = 28;
   % Elevation of Boresite
   XA_OTCSV_BORE_EL      = 29;
   % Apparent Visual magnitude
   XA_OTCSV_VISMAG       = 30;
   % GEO Normalized Visual magnitude
   XA_OTCSV_VISMAG_NORM  = 31;
   % Solar Phase Angle
   XA_OTCSV_SOL_PHASE    = 32;
   % Frame Number
   XA_OTCSV_FRAME        = 33;
   % Aberration correction indicator (0=YES, 1=NO)
   XA_OTCSV_ABERRATION   = 34;
   % 0 = ROTAS, 1 = TRACK
   XA_OTCSV_ASTAT_METHOD = 35;
   
   % must equal to 7 to signify this is CSV format
   XA_OTCSV_SIGMATYPE    = 40;
   % sigma - covariance element 1 - Az sigma
   XA_OTCSV_SIGMAEL1     = 41;
   % sigma - covariance element 2 - El sigma
   XA_OTCSV_SIGMAEL2     = 42;
   % sigma - covariance element 3 - Range sigma
   XA_OTCSV_SIGMAEL3     = 43;
   % sigma - covariance element 4 - Range rate sigma
   XA_OTCSV_SIGMAEL4     = 44;
   % sigma - covariance element 5 - Az rate sigma
   XA_OTCSV_SIGMAEL5     = 45;
   % sigma - covariance element 6 - El rate sigma
   XA_OTCSV_SIGMAEL6     = 46;
   % sigma - covariance element 7 - Time sigma
   XA_OTCSV_SIGMAEL7     = 47;
   % AZ/RA bias
   XA_OTCSV_BIAS1        = 48;
   % EL/DEC bias
   XA_OTCSV_BIAS2        = 49;
   % Range bias
   XA_OTCSV_BIAS3        = 50;
   % Range-rate bias
   XA_OTCSV_BIAS4        = 51;
   % Time bias
   XA_OTCSV_BIAS5        = 52;
   
   
   XA_OTCSV_SIZE         = 64;
   
   % Indexes of observation data in an array
   % satellite number
   XA_OBSTATE_SATNUM       =  0;
   % sensor number
   XA_OBSTATE_SENNUM       =  1;
   % observation time in days since 1950 UTC
   XA_OBSTATE_DS50UTC      =  2;
   
   % position X/ECI (km)
   XA_OBSTATE_POSX         = 10;
   % position Y/ECI (km)
   XA_OBSTATE_POSY         = 11;
   % position Z/ECI (km)
   XA_OBSTATE_POSZ         = 12;
   % velocity X/ECI (km/s)
   XA_OBSTATE_VELX         = 13;
   % velocity Y/ECI (km/s)
   XA_OBSTATE_VELY         = 14;
   % velocity Z/ECI (km/s)
   XA_OBSTATE_VELZ         = 15;
   % geodetic latitude (deg)
   XA_OBSTATE_LAT          = 16;
   % geodetic longitude (deg)
   XA_OBSTATE_LON          = 17;
   % geodetic height (km)
   XA_OBSTATE_HGHT         = 18;
   % position X/EFG (km)
   XA_OBSTATE_POSE         = 19;
   % position Y/EFG (km)
   XA_OBSTATE_POSF         = 20;
   % position Z/EFG (km)
   XA_OBSTATE_POSG         = 21;
   
   
   XA_OBSTATE_SIZE         = 64;
   
   % Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   % All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   % range rate (km/s)
   XA_OT0_RANGERATE =  7;
   
   % elevation (deg)
   XA_OT1_ELEVATION =  4;
   % azimuth (deg)
   XA_OT1_AZIMUTH   =  5;
   
   % elevation (deg)
   XA_OT2_ELEVATION =  4;
   % azimuth (deg)
   XA_OT2_AZIMUTH   =  5;
   % range (km)
   XA_OT2_RANGE     =  6;
   
   % elevation (deg)
   XA_OT3_ELEVATION =  4;
   % azimuth (deg)
   XA_OT3_AZIMUTH   =  5;
   % range (km)
   XA_OT3_RANGE     =  6;
   % range rate (km/s)
   XA_OT3_RANGERATE =  7;
   
   % elevation (deg)
   XA_OT4_ELEVATION =  4;
   % azimuth (deg)
   XA_OT4_AZIMUTH   =  5;
   % range (km)
   XA_OT4_RANGE     =  6;
   % range rate (km/s)
   XA_OT4_RANGERATE =  7;
   % elevation rate (deg/s)
   XA_OT4_ELRATE    =  8;
   % azimuth rate (deg/s)
   XA_OT4_AZRATE    =  9;
   % range acceleration (km/s^2)
   XA_OT4_RANGEACCEL= 10;
   
   % declination (deg)
   XA_OT5_DECL      =  4;
   % right ascesion (deg)
   XA_OT5_RIGHTASC  =  5;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   XA_OT5_YROFEQNX  = 22;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   XA_OT5_ABERRATION= 23;
   
   % range (km)
   XA_OT6_RANGE     =  6;
   
   % elevation (deg)
   XA_OT8_ELEVATION =  4;
   % azimuth (deg)
   XA_OT8_AZIMUTH   =  5;
   % optional - range (km)
   XA_OT8_RANGE     =  6;
   % orbiting sensor position X/EFG (km)
   XA_OT8_POSE      = 16;
   % orbiting sensor position Y/EFG (km)
   XA_OT8_POSF      = 17;
   % orbiting sensor position Z/EFG (km)
   XA_OT8_POSG      = 18;
   
   % declination (deg)
   XA_OT9_DECL      =  4;
   % right ascesion (deg)
   XA_OT9_RIGHTASC  =  5;
   % optional - range (km)
   XA_OT9_RANGE     =  6;
   % orbiting sensor position X/EFG (km)
   XA_OT9_POSE      = 16;
   % orbiting sensor position Y/EFG (km)
   XA_OT9_POSF      = 17;
   % orbiting sensor position Z/EFG (km)
   XA_OT9_POSG      = 18;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   XA_OT9_YROFEQNX  = 22;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   XA_OT9_ABERRATION= 23;
   
   % position X/ECI or X/EFG (km)
   XA_OTP_POSX      = 16;
   % position Y/ECI or Y/EFG (km)
   XA_OTP_POSY      = 17;
   % position Z/ECI or Z/EFG (km)
   XA_OTP_POSZ      = 18;
   
   % position X/ECI or X/EFG (km)
   XA_OTV_POSX      = 16;
   % position Y/ECI or Y/EFG (km)
   XA_OTV_POSY      = 17;
   % position Z/ECI or Z/EFG (km)
   XA_OTV_POSZ      = 18;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   XA_OTV_VELX      = 19;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   XA_OTV_VELY      = 20;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   XA_OTV_VELZ      = 21;
   
   XA_OT_SIZE         = 64;
   
   % Obs selection criteria
   % Seclection mode (unused for now)
   XA_SELOB_MODE        =  0;
   
   % From time
   XA_SELOB_FRTIME      =  1;
   % To time
   XA_SELOB_TOTIME      =  2;
   
   % From time
   XA_SELOB_FRIDX       =  3;
   % To time
   XA_SELOB_TOIDX       =  4;
   
   % Select any obs that match this satellite number #1
   XA_SELOB_SAT1        = 11;
   % Select any obs that match this satellite number #2
   XA_SELOB_SAT2        = 12;
   % Select any obs that match this satellite number #3
   XA_SELOB_SAT3        = 13;
   % Select any obs that match this satellite number #4
   XA_SELOB_SAT4        = 14;
   % Select any obs that match this satellite number #5
   XA_SELOB_SAT5        = 15;
   % Select any obs that match this satellite number #6
   XA_SELOB_SAT6        = 16;
   % Select any obs that match this satellite number #7
   XA_SELOB_SAT7        = 17;
   % Select any obs that match this satellite number #8
   XA_SELOB_SAT8        = 18;
   % Select any obs that match this satellite number #9
   XA_SELOB_SAT9        = 19;
   % Select any obs that match this satellite number #10
   XA_SELOB_SAT10       = 20;
   
   % Select any obs that are obtained by this sensor site #1
   XA_SELOB_SEN1        = 21;
   % Select any obs that are obtained by this sensor site #2
   XA_SELOB_SEN2        = 22;
   % Select any obs that are obtained by this sensor site #3
   XA_SELOB_SEN3        = 23;
   % Select any obs that are obtained by this sensor site #4
   XA_SELOB_SEN4        = 24;
   % Select any obs that are obtained by this sensor site #5
   XA_SELOB_SEN5        = 25;
   % Select any obs that are obtained by this sensor site #6
   XA_SELOB_SEN6        = 26;
   % Select any obs that are obtained by this sensor site #7
   XA_SELOB_SEN7        = 27;
   % Select any obs that are obtained by this sensor site #8
   XA_SELOB_SEN8        = 28;
   % Select any obs that are obtained by this sensor site #9
   XA_SELOB_SEN9        = 29;
   % Select any obs that are obtained by this sensor site #10
   XA_SELOB_SEN10       = 30;
   
   % Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
   XA_SELOB_OT1         = 31;
   % Select any obs that match this obs type #2
   XA_SELOB_OT2         = 32;
   % Select any obs that match this obs type #3
   XA_SELOB_OT3         = 33;
   % Select any obs that match this obs type #4
   XA_SELOB_OT4         = 34;
   % Select any obs that match this obs type #5
   XA_SELOB_OT5         = 35;
   % Select any obs that match this obs type #6
   XA_SELOB_OT6         = 36;
   % Select any obs that match this obs type #7
   XA_SELOB_OT7         = 37;
   % Select any obs that match this obs type #8
   XA_SELOB_OT8         = 38;
   % Select any obs that match this obs type #9
   XA_SELOB_OT9         = 39;
   % Select any obs that match this obs type #10
   XA_SELOB_OT10        = 40;
   
   % From azimuth
   XA_SELOB_FRAZ        = 41;
   % To azimuth
   XA_SELOB_TOAZ        = 42;
   % From elevation
   XA_SELOB_FREL        = 43;
   % To elevation
   XA_SELOB_TOEL        = 44;
   % From right ascension
   XA_SELOB_FRRA        = 45;
   % To right ascension
   XA_SELOB_TORA        = 46;
   % From declincation
   XA_SELOB_FRDEC       = 47;
   % To declination
   XA_SELOB_TODEC       = 48;
   % From range
   XA_SELOB_FRRNG       = 49;
   % To range
   XA_SELOB_TORNG       = 50;
   % From range rate
   XA_SELOB_FRRNGRT     = 51;
   % To range rate
   XA_SELOB_TORNGRT     = 52;
   % From azimuth rate
   XA_SELOB_FRAZRT      = 53;
   % To azimuth rate
   XA_SELOB_TOAZRT      = 54;
   % From elevation rate
   XA_SELOB_FRELRT      = 55;
   % To elevation rate
   XA_SELOB_TOELRT      = 56;
   % From ASTAT (0 to 4)
   XA_SELOB_FRASTAT     = 57;
   % To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   XA_SELOB_TOASTAT     = 58;
   
   XA_SELOB_SIZE        = 128;
   
   
   autoload("LoadObsDll",strcat(OctFilePath,"Obs.oct"));
   autoload("FreeObsDll",strcat(OctFilePath,"Obs.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Obs DLL for use in the program
   autoload("ObsInit",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns information about the current version of Obs DLL. 
   %  The information is placed in the string parameter passed in.
   autoload("ObsGetInfo",strcat(OctFilePath,"Obs.oct"));
   
   %  Sets the year for transmission observation format (TTY) input files
   autoload("ObsSetTTYYear",strcat(OctFilePath,"Obs.oct"));
   
   %  Loads observation data from an input text file
   autoload("ObsLoadFile",strcat(OctFilePath,"Obs.oct"));
   
   %  Saves the currently loaded obs data to a file
   autoload("ObsSaveFile",strcat(OctFilePath,"Obs.oct"));
   
   %  Removes an obs, represented by the obsKey, from the set of currently loaded observations
   autoload("ObsRemove",strcat(OctFilePath,"Obs.oct"));
   
   %  Removes all currently loaded observations from memory
   autoload("ObsRemoveAll",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns the number of observations currently loaded
   autoload("ObsGetCount",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
   %  Sort options (order):
   %  (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   %  (+/-)2 = (descending/ascending) time, elevation
   %  (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   %  (+/-)4 = (descending/ascending) sensor, satno, time, elev
   %  (+/-)5 = (descending/ascending) sensor, time, elevation
   %  (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   %  (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   %  (+/-)8 = (reversed/same)        order as obs were read
   %  9 : as is in the tree
   autoload("ObsGetLoaded",strcat(OctFilePath,"Obs.oct"));
   
   %  Loads a single observation-typed card
   autoload("ObsLoadCard",strcat(OctFilePath,"Obs.oct"));
   
   %  Loads a one-line or two-line observation 
   autoload("ObsLoadTwoCards",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds an observation from a string in B3 observation format
   autoload("ObsAddFrB3Card",strcat(OctFilePath,"Obs.oct"));
   
   %  Works like ObsAddFrB3Card but designed for Matlab
   autoload("ObsAddFrB3CardML",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts B3 format to csv format without loading B3 obs into memory
   autoload("ObsB3ToCsv",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts CSV format to B3 format without loading CSV obs into memory
   autoload("ObsCsvToB3",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds an observation from a TTY (1 line or 2 lines) observation format
   autoload("ObsAddFrTTYCards",strcat(OctFilePath,"Obs.oct"));
   
   %  Works like ObsAddFrTTYCards but designed for Matlab
   autoload("ObsAddFrTTYCardsML",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts TTY format to CSV format without loading TTY obs into memory
   autoload("ObsTTYToCsv",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts CSV format to TTY format without loading CSV obs into memory
   autoload("ObsCsvToTTY",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds one observation using csv obs string 
   autoload("ObsAddFrCsv",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds one observation using csv obs string - for MatLab
   autoload("ObsAddFrCsvML",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
   autoload("ObsAddFrFields",strcat(OctFilePath,"Obs.oct"));
   
   %  Works like ObsAddFrFields but designed for Matlab
   autoload("ObsAddFrFieldsML",strcat(OctFilePath,"Obs.oct"));
   
   %  Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
   autoload("ObsAddFrArray",strcat(OctFilePath,"Obs.oct"));
   
   %  Works like ObsAddFrArray but designed for Matlab
   autoload("ObsAddFrArrayML",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
   autoload("ObsGetAllFields",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
   %  See ObsGetField for description of xa_obs elements
   autoload("ObsDataToArray",strcat(OctFilePath,"Obs.oct"));
   
   %  Updates existing observation data with the provided new data
   autoload("ObsUpdateFrFields",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves the value of a specific field of an observation
   autoload("ObsGetField",strcat(OctFilePath,"Obs.oct"));
   
   %  Updates the value of a field of an observation
   %  See ObsGetField for a description of the xf_Obs parameter.
   %  Satellite number, sensor number, and observation time are not allowed to be updated.
   autoload("ObsSetField",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns observation in B3-card string
   autoload("ObsGetB3Card",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns observation in TTY-card string
   autoload("ObsGetTTYCard",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns observation in CSV-format string
   autoload("ObsGetCsv",strcat(OctFilePath,"Obs.oct"));
   
   %  Constructs a B3-card string from the input observation data fields
   autoload("ObsFieldsToB3Card",strcat(OctFilePath,"Obs.oct"));
   
   %  Constructs a csv string from the input observation data fields
   autoload("ObsFieldsToCsv",strcat(OctFilePath,"Obs.oct"));
   
   %  Constructs a TTY-card string from the input observation data fields
   autoload("ObsFieldsToTTYCard",strcat(OctFilePath,"Obs.oct"));
   
   %  Computes an obsKey from individually provided fields
   autoload("ObsFieldsToObsKey",strcat(OctFilePath,"Obs.oct"));
   
   %  Works like ObsFieldsToObsKey but designed for Matlab
   autoload("ObsFieldsToObsKeyML",strcat(OctFilePath,"Obs.oct"));
   
   %  Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
   autoload("ObsB3Parse",strcat(OctFilePath,"Obs.oct"));
   
   %  Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
   autoload("ObsParse",strcat(OctFilePath,"Obs.oct"));
   
   %  Loads observation data from an input text file and group them together in the specified groupd id (gid).
   %  This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
   autoload("ObsLoadFileGID",strcat(OctFilePath,"Obs.oct"));
   
   %  Saves the currently loaded obs data belong to the specified group id (gid) to a file 
   autoload("ObsSaveFileGID",strcat(OctFilePath,"Obs.oct"));
   
   %  Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
   autoload("ObsRemoveGID",strcat(OctFilePath,"Obs.oct"));
   
   %  Returns the number of observations currently loaded that have the same gid
   autoload("ObsGetCountGID",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
   %  Sort options (order):
   %  (+/-)1 = (descending/ascending) time, sensor, obsType, elev
   %  (+/-)2 = (descending/ascending) time, elevation
   %  (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
   %  (+/-)4 = (descending/ascending) sensor, satno, time, elev
   %  (+/-)5 = (descending/ascending) sensor, time, elevation
   %  (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
   %  (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
   %  (+/-)8 = (reversed/same)        order as obs were read
   %  9 : as is in the tree
   autoload("ObsGetLoadedGID",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts obs type from character to integer
   autoload("ObsTypeCToI",strcat(OctFilePath,"Obs.oct"));
   
   %  Converts obs type from integer to character
   autoload("ObsTypeIToC",strcat(OctFilePath,"Obs.oct"));
   
   %  Resets obs selection settings
   autoload("ObsResetSelObs",strcat(OctFilePath,"Obs.oct"));
   
   %  Computes other states of the input observation
   %  <br>
   %  The table below indicates which index values correspond to which fields in the xa_obState array.
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>0</td><td>Satellite number</td></tr>
   %  <tr><td>1</td><td>Sensor number</td></tr>
   %  <tr><td>2</td><td>Observation time in DS50UTC</td></tr>
   %  <tr><td>10</td><td>Position X/ECI (km)</td></tr>
   %  <tr><td>11</td><td>Position Y/ECI (km)</td></tr>
   %  <tr><td>12</td><td>Position Z/ECI (km)</td></tr>
   %  <tr><td>13</td><td>Velocity X/ECI (km/s)</td></tr>
   %  <tr><td>14</td><td>Velocity Y/ECI (km/s)</td></tr>
   %  <tr><td>15</td><td>Velocity Z/ECI (km/s)</td></tr>
   %  <tr><td>16</td><td>Geodetic latitude (deg)</td></tr>
   %  <tr><td>17</td><td>Geodetic longitude (deg)</td></tr>
   %  <tr><td>18</td><td>Geodetic height (km)</td></tr>
   %  <tr><td>19</td><td>Position X/EFG (km)</td></tr>
   %  <tr><td>20</td><td>Position Y/EFG (km)</td></tr>
   %  <tr><td>21</td><td>Position Z/EFG (km)</td></tr>
   %  </table>
   autoload("ObsGetStates",strcat(OctFilePath,"Obs.oct"));
   
   %  Computes observation states from the observation data
   %  See ObsGetStates for a list of the values for the xa_obState parameter.
   autoload("ObsDataToStates",strcat(OctFilePath,"Obs.oct"));
   
   %  Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
   autoload("ObsArrToLines",strcat(OctFilePath,"Obs.oct"));
   
   %  Sets OBS key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
   %  and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
   autoload("SetObsKeyMode",strcat(OctFilePath,"Obs.oct"));
   
   %  Gets current OBS key mode
   autoload("GetObsKeyMode",strcat(OctFilePath,"Obs.oct"));
   
   %  Returs the satellite number associated with the input obsKey
   autoload("SatNumFrObsKey",strcat(OctFilePath,"Obs.oct"));
   
   %  Returs the sensor number associated with the input obsKey
   autoload("SenNumFrObsKey",strcat(OctFilePath,"Obs.oct"));
   
   %  Retrieves only obs that match the selection criteria
   autoload("ObsGetSelected",strcat(OctFilePath,"Obs.oct"));
   LoadObsDll;
endfunction
% ========================= End of auto generated code ==========================
