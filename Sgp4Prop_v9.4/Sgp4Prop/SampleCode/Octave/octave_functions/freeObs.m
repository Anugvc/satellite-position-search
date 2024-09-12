% This wrapper file was generated automatically by the GenDllWrappers program.
function freeObs()   
   % Equinox indicator
   % time of observation
   global EQUINOX_OBSTIME;
   % time @ 0 Jan Year of Date
   global EQUINOX_OBSYEAR;
   % J2000
   global EQUINOX_J2K;
   % B1950
   global EQUINOX_B1950;
   
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
   global SORT_TIMESENTYPEEL;
   % sort order is time, elevation (negative value for reverse order)
   global SORT_TIMEEL;
   % sort order is time, sensor, otype, el, satno (negative value for reverse order)
   global SORT_TIMESENTYPEELSAT;
   % sort order is sensor, satno, time, elev (negative value for reverse order)
   global SORT_SENSATTIMEEL;
   % sort order is sensor, time, elevation (negative value for reverse order)
   global SORT_SENTIMEEL;
   % sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
   global SORT_SENSATTYPETIMEEL;
   % sort order is satno, time, sensor, otype, el (negative value for reverse order)
   global SORT_SATTIMESENTYPEEL;
   % sort order is the order of obs when they were loaded
   global SORT_ORDERASREAD;
   % sort order is satno, sensor, time (negative value for reverse order)
   global SORT_SATSENTIME;
   
   
   % Indexes of different obs file format
   % B3 obs format
   global OBSFORM_B3;
   % Transmission obs format
   global OBSFORM_TTY;
   % CSV obs format
   global OBSFORM_CSV;
   % Radio Frequency (TDOA/FDOA) observations
   global OBSFORM_RF;
   
   global BADOBSKEY;
   global DUPOBSKEY;
   
   
   % Different key mode options for obsKey
   % Default - duplicate obs can not be loaded in binary tree
   global OBS_KEYMODE_NODUP;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   global OBS_KEYMODE_DMA;
   
   % CSV sigma type indicator
   global CSVSIGMATYPE;
   
   % Indexes of Observation data fields
   % security classification
   global XF_OBS_SECCLASS;
   % satellite number
   global XF_OBS_SATNUM;
   % sensor number
   global XF_OBS_SENNUM;
   % observation time in days since 1950 UTC
   global XF_OBS_DS50UTC;
   % elevation (deg)
   global XF_OBS_ELEVATION;
   % declination (deg)
   global XF_OBS_DECLINATION;
   % azimuth (deg)
   global XF_OBS_AZIMUTH;
   % right-ascension (deg)
   global XF_OBS_RA;
   % range (km)
   global XF_OBS_RANGE;
   % range rate (km/s)
   global XF_OBS_RANGERATE;
   % elevation rate (deg/s)
   global XF_OBS_ELRATE;
   % azimuth rate (deg/s)
   global XF_OBS_AZRATE;
   % range acceleration (km/s^2)
   global XF_OBS_RANGEACCEL;
   % observation type
   global XF_OBS_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global XF_OBS_TRACKIND;
   % association status assigned by SPADOC
   global XF_OBS_ASTAT;
   % original satellite number
   global XF_OBS_SITETAG;
   % SPADOC-asssigned tag number
   global XF_OBS_SPADOCTAG;
   % position X/EFG (km)
   global XF_OBS_POSE;
   % position Y/EFG (km)
   global XF_OBS_POSF;
   % position Z/EFG (km)
   global XF_OBS_POSG;
   % position X/ECI (km)
   global XF_OBS_POSX;
   % position Y/ECI (km)
   global XF_OBS_POSY;
   % position Z/ECI (km)
   global XF_OBS_POSZ;
   
   % Principal Polarization RCS
   global XF_OBS_RCS_PP;
   % Orthogonal Polarization RCS
   global XF_OBS_RCS_OP;
   % Principal Polarization RCS sigma
   global XF_OBS_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   global XF_OBS_RCS_OPS;
   % Radar Signal to Noise Ratio
   global XF_OBS_SNR;
   % Azimuth of Boresite
   global XF_OBS_BORE_AZ;
   % Elevation of Boresite
   global XF_OBS_BORE_EL;
   % Apparent Visual magnitude
   global XF_OBS_VISMAG;
   % GEO Normalized Visual magnitude
   global XF_OBS_VISMAG_NORM;
   % Solar Phase Angle
   global XF_OBS_SOL_PHASE;
   % Frame Number
   global XF_OBS_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   global XF_OBS_ABERRATION;
   % Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   global XF_OBS_ASTAT_METHOD;
   
   % Indexes of observation data in an array
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   global XA_OBS_SECCLASS;
   % satellite number
   global XA_OBS_SATNUM;
   % sensor number
   global XA_OBS_SENNUM;
   % observation time in days since 1950 UTC
   global XA_OBS_DS50UTC;
   % observation type
   global XA_OBS_OBSTYPE;
   
   
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   global XA_OBS_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   global XA_OBS_AZORRA;
   % range (km)
   global XA_OBS_RANGE;
   % range rate (km/s) for non-optical obs type
   global XA_OBS_RANGERATE;
   % elevation rate (deg/s)
   global XA_OBS_ELRATE;
   % azimuth rate (deg/s)
   global XA_OBS_AZRATE;
   % range acceleration (km/s^2)
   global XA_OBS_RANGEACCEL;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global XA_OBS_TRACKIND;
   % association status assigned by SPADOC
   global XA_OBS_ASTAT;
   % original satellite number
   global XA_OBS_SITETAG;
   % SPADOC-asssigned tag number
   global XA_OBS_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   global XA_OBS_POSX;
   % position Y/ECI or Y/EFG (km)
   global XA_OBS_POSY;
   % position Z/ECI or Z/EFG (km)
   global XA_OBS_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global XA_OBS_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global XA_OBS_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global XA_OBS_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global XA_OBS_YROFEQNX;
   % aberration indicator, 0-not corrected, 1-corrceted
   global XA_OBS_ABERRATION;
   
   % AZ/RA bias (deg)
   global XA_OBS_AZORRABIAS;
   % EL/DEC bias (deg)
   global XA_OBS_ELORDECBIAS;
   % Range bias (km)
   global XA_OBS_RGBIAS;
   % Range-rate bias (km/sec)
   global XA_OBS_RRBIAS;
   % Time bias (sec)
   global XA_OBS_TIMEBIAS;
   % AZ/RA rate bias (deg/sec)
   global XA_OBS_RAZORRABIAS;
   % EL/DEC rate bias (deg/sec)
   global XA_OBS_RELORDECBIAS;
   
   % individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
   global XA_OBS_SIGMATYPE;
   % sigma - covariance element 1 - 6 elemens - Az sigma
   global XA_OBS_SIGMAEL1;
   % sigma - covariance element 2 - 6 elemens - El sigma
   global XA_OBS_SIGMAEL2;
   % sigma - covariance element 3 - 6 elemens - Range sigma
   global XA_OBS_SIGMAEL3;
   % sigma - covariance element 4 - 6 elemens - Range rate sigma
   global XA_OBS_SIGMAEL4;
   % sigma - covariance element 5 - 6 elemens - Az rate sigma
   global XA_OBS_SIGMAEL5;
   % sigma - covariance element 6 - 6 elemens - El rate sigma
   global XA_OBS_SIGMAEL6;
   % sigma - covariance element 7
   global XA_OBS_SIGMAEL7;
   % sigma - covariance element 8
   global XA_OBS_SIGMAEL8;
   % sigma - covariance element 9
   global XA_OBS_SIGMAEL9;
   % sigma - covariance element 10
   global XA_OBS_SIGMAEL10;
   % sigma - covariance element 11
   global XA_OBS_SIGMAEL11;
   % sigma - covariance element 12
   global XA_OBS_SIGMAEL12;
   % sigma - covariance element 13
   global XA_OBS_SIGMAEL13;
   % sigma - covariance element 14
   global XA_OBS_SIGMAEL14;
   % sigma - covariance element 15
   global XA_OBS_SIGMAEL15;
   % sigma - covariance element 16
   global XA_OBS_SIGMAEL16;
   % sigma - covariance element 17
   global XA_OBS_SIGMAEL17;
   % sigma - covariance element 18
   global XA_OBS_SIGMAEL18;
   % sigma - covariance element 19
   global XA_OBS_SIGMAEL19;
   % sigma - covariance element 20
   global XA_OBS_SIGMAEL20;
   % sigma - covariance element 21
   global XA_OBS_SIGMAEL21;
   
   global XA_OBS_SIZE;
   
   % Indexes of observation data in an array (Obs Type CSV specific)
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   global XA_OTCSV_SECCLASS;
   % satellite number
   global XA_OTCSV_SATNUM;
   % sensor number
   global XA_OTCSV_SENNUM;
   % observation time in days since 1950 UTC
   global XA_OTCSV_DS50UTC;
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   global XA_OTCSV_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   global XA_OTCSV_AZORRA;
   % range (km)
   global XA_OTCSV_RANGE;
   % range rate (km/s) for non-optical obs type
   global XA_OTCSV_RANGERATE;
   % elevation rate (deg/s)
   global XA_OTCSV_ELRATE;
   % azimuth rate (deg/s)
   global XA_OTCSV_AZRATE;
   % range acceleration (km/s^2)
   global XA_OTCSV_RANGEACCEL;
   % observation type
   global XA_OTCSV_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   global XA_OTCSV_TRACKIND;
   % association status assigned by SPADOC
   global XA_OTCSV_ASTAT;
   % original satellite number
   global XA_OTCSV_SITETAG;
   % SPADOC-asssigned tag number
   global XA_OTCSV_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   global XA_OTCSV_POSX;
   % position Y/ECI or Y/EFG (km)
   global XA_OTCSV_POSY;
   % position Z/ECI or Z/EFG (km)
   global XA_OTCSV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global XA_OTCSV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global XA_OTCSV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global XA_OTCSV_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global XA_OTCSV_YROFEQNX;
   
   % Principal Polarization RCS
   global XA_OTCSV_RCS_PP;
   % Orthogonal Polarization RCS
   global XA_OTCSV_RCS_OP;
   % Principal Polarization RCS sigma
   global XA_OTCSV_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   global XA_OTCSV_RCS_OPS;
   % Radar Signal to Noise Ratio
   global XA_OTCSV_SNR;
   % Azimuth of Boresite
   global XA_OTCSV_BORE_AZ;
   % Elevation of Boresite
   global XA_OTCSV_BORE_EL;
   % Apparent Visual magnitude
   global XA_OTCSV_VISMAG;
   % GEO Normalized Visual magnitude
   global XA_OTCSV_VISMAG_NORM;
   % Solar Phase Angle
   global XA_OTCSV_SOL_PHASE;
   % Frame Number
   global XA_OTCSV_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   global XA_OTCSV_ABERRATION;
   % 0 = ROTAS, 1 = TRACK
   global XA_OTCSV_ASTAT_METHOD;
   
   % must equal to 7 to signify this is CSV format
   global XA_OTCSV_SIGMATYPE;
   % sigma - covariance element 1 - Az sigma
   global XA_OTCSV_SIGMAEL1;
   % sigma - covariance element 2 - El sigma
   global XA_OTCSV_SIGMAEL2;
   % sigma - covariance element 3 - Range sigma
   global XA_OTCSV_SIGMAEL3;
   % sigma - covariance element 4 - Range rate sigma
   global XA_OTCSV_SIGMAEL4;
   % sigma - covariance element 5 - Az rate sigma
   global XA_OTCSV_SIGMAEL5;
   % sigma - covariance element 6 - El rate sigma
   global XA_OTCSV_SIGMAEL6;
   % sigma - covariance element 7 - Time sigma
   global XA_OTCSV_SIGMAEL7;
   % AZ/RA bias
   global XA_OTCSV_BIAS1;
   % EL/DEC bias
   global XA_OTCSV_BIAS2;
   % Range bias
   global XA_OTCSV_BIAS3;
   % Range-rate bias
   global XA_OTCSV_BIAS4;
   % Time bias
   global XA_OTCSV_BIAS5;
   
   
   global XA_OTCSV_SIZE;
   
   % Indexes of observation data in an array
   % satellite number
   global XA_OBSTATE_SATNUM;
   % sensor number
   global XA_OBSTATE_SENNUM;
   % observation time in days since 1950 UTC
   global XA_OBSTATE_DS50UTC;
   
   % position X/ECI (km)
   global XA_OBSTATE_POSX;
   % position Y/ECI (km)
   global XA_OBSTATE_POSY;
   % position Z/ECI (km)
   global XA_OBSTATE_POSZ;
   % velocity X/ECI (km/s)
   global XA_OBSTATE_VELX;
   % velocity Y/ECI (km/s)
   global XA_OBSTATE_VELY;
   % velocity Z/ECI (km/s)
   global XA_OBSTATE_VELZ;
   % geodetic latitude (deg)
   global XA_OBSTATE_LAT;
   % geodetic longitude (deg)
   global XA_OBSTATE_LON;
   % geodetic height (km)
   global XA_OBSTATE_HGHT;
   % position X/EFG (km)
   global XA_OBSTATE_POSE;
   % position Y/EFG (km)
   global XA_OBSTATE_POSF;
   % position Z/EFG (km)
   global XA_OBSTATE_POSG;
   
   
   global XA_OBSTATE_SIZE;
   
   % Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   % All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   % range rate (km/s)
   global XA_OT0_RANGERATE;
   
   % elevation (deg)
   global XA_OT1_ELEVATION;
   % azimuth (deg)
   global XA_OT1_AZIMUTH;
   
   % elevation (deg)
   global XA_OT2_ELEVATION;
   % azimuth (deg)
   global XA_OT2_AZIMUTH;
   % range (km)
   global XA_OT2_RANGE;
   
   % elevation (deg)
   global XA_OT3_ELEVATION;
   % azimuth (deg)
   global XA_OT3_AZIMUTH;
   % range (km)
   global XA_OT3_RANGE;
   % range rate (km/s)
   global XA_OT3_RANGERATE;
   
   % elevation (deg)
   global XA_OT4_ELEVATION;
   % azimuth (deg)
   global XA_OT4_AZIMUTH;
   % range (km)
   global XA_OT4_RANGE;
   % range rate (km/s)
   global XA_OT4_RANGERATE;
   % elevation rate (deg/s)
   global XA_OT4_ELRATE;
   % azimuth rate (deg/s)
   global XA_OT4_AZRATE;
   % range acceleration (km/s^2)
   global XA_OT4_RANGEACCEL;
   
   % declination (deg)
   global XA_OT5_DECL;
   % right ascesion (deg)
   global XA_OT5_RIGHTASC;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global XA_OT5_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   global XA_OT5_ABERRATION;
   
   % range (km)
   global XA_OT6_RANGE;
   
   % elevation (deg)
   global XA_OT8_ELEVATION;
   % azimuth (deg)
   global XA_OT8_AZIMUTH;
   % optional - range (km)
   global XA_OT8_RANGE;
   % orbiting sensor position X/EFG (km)
   global XA_OT8_POSE;
   % orbiting sensor position Y/EFG (km)
   global XA_OT8_POSF;
   % orbiting sensor position Z/EFG (km)
   global XA_OT8_POSG;
   
   % declination (deg)
   global XA_OT9_DECL;
   % right ascesion (deg)
   global XA_OT9_RIGHTASC;
   % optional - range (km)
   global XA_OT9_RANGE;
   % orbiting sensor position X/EFG (km)
   global XA_OT9_POSE;
   % orbiting sensor position Y/EFG (km)
   global XA_OT9_POSF;
   % orbiting sensor position Z/EFG (km)
   global XA_OT9_POSG;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   global XA_OT9_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   global XA_OT9_ABERRATION;
   
   % position X/ECI or X/EFG (km)
   global XA_OTP_POSX;
   % position Y/ECI or Y/EFG (km)
   global XA_OTP_POSY;
   % position Z/ECI or Z/EFG (km)
   global XA_OTP_POSZ;
   
   % position X/ECI or X/EFG (km)
   global XA_OTV_POSX;
   % position Y/ECI or Y/EFG (km)
   global XA_OTV_POSY;
   % position Z/ECI or Z/EFG (km)
   global XA_OTV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   global XA_OTV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   global XA_OTV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   global XA_OTV_VELZ;
   
   global XA_OT_SIZE;
   
   % Obs selection criteria
   % Seclection mode (unused for now)
   global XA_SELOB_MODE;
   
   % From time
   global XA_SELOB_FRTIME;
   % To time
   global XA_SELOB_TOTIME;
   
   % From time
   global XA_SELOB_FRIDX;
   % To time
   global XA_SELOB_TOIDX;
   
   % Select any obs that match this satellite number #1
   global XA_SELOB_SAT1;
   % Select any obs that match this satellite number #2
   global XA_SELOB_SAT2;
   % Select any obs that match this satellite number #3
   global XA_SELOB_SAT3;
   % Select any obs that match this satellite number #4
   global XA_SELOB_SAT4;
   % Select any obs that match this satellite number #5
   global XA_SELOB_SAT5;
   % Select any obs that match this satellite number #6
   global XA_SELOB_SAT6;
   % Select any obs that match this satellite number #7
   global XA_SELOB_SAT7;
   % Select any obs that match this satellite number #8
   global XA_SELOB_SAT8;
   % Select any obs that match this satellite number #9
   global XA_SELOB_SAT9;
   % Select any obs that match this satellite number #10
   global XA_SELOB_SAT10;
   
   % Select any obs that are obtained by this sensor site #1
   global XA_SELOB_SEN1;
   % Select any obs that are obtained by this sensor site #2
   global XA_SELOB_SEN2;
   % Select any obs that are obtained by this sensor site #3
   global XA_SELOB_SEN3;
   % Select any obs that are obtained by this sensor site #4
   global XA_SELOB_SEN4;
   % Select any obs that are obtained by this sensor site #5
   global XA_SELOB_SEN5;
   % Select any obs that are obtained by this sensor site #6
   global XA_SELOB_SEN6;
   % Select any obs that are obtained by this sensor site #7
   global XA_SELOB_SEN7;
   % Select any obs that are obtained by this sensor site #8
   global XA_SELOB_SEN8;
   % Select any obs that are obtained by this sensor site #9
   global XA_SELOB_SEN9;
   % Select any obs that are obtained by this sensor site #10
   global XA_SELOB_SEN10;
   
   % Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
   global XA_SELOB_OT1;
   % Select any obs that match this obs type #2
   global XA_SELOB_OT2;
   % Select any obs that match this obs type #3
   global XA_SELOB_OT3;
   % Select any obs that match this obs type #4
   global XA_SELOB_OT4;
   % Select any obs that match this obs type #5
   global XA_SELOB_OT5;
   % Select any obs that match this obs type #6
   global XA_SELOB_OT6;
   % Select any obs that match this obs type #7
   global XA_SELOB_OT7;
   % Select any obs that match this obs type #8
   global XA_SELOB_OT8;
   % Select any obs that match this obs type #9
   global XA_SELOB_OT9;
   % Select any obs that match this obs type #10
   global XA_SELOB_OT10;
   
   % From azimuth
   global XA_SELOB_FRAZ;
   % To azimuth
   global XA_SELOB_TOAZ;
   % From elevation
   global XA_SELOB_FREL;
   % To elevation
   global XA_SELOB_TOEL;
   % From right ascension
   global XA_SELOB_FRRA;
   % To right ascension
   global XA_SELOB_TORA;
   % From declincation
   global XA_SELOB_FRDEC;
   % To declination
   global XA_SELOB_TODEC;
   % From range
   global XA_SELOB_FRRNG;
   % To range
   global XA_SELOB_TORNG;
   % From range rate
   global XA_SELOB_FRRNGRT;
   % To range rate
   global XA_SELOB_TORNGRT;
   % From azimuth rate
   global XA_SELOB_FRAZRT;
   % To azimuth rate
   global XA_SELOB_TOAZRT;
   % From elevation rate
   global XA_SELOB_FRELRT;
   % To elevation rate
   global XA_SELOB_TOELRT;
   % From ASTAT (0 to 4)
   global XA_SELOB_FRASTAT;
   % To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   global XA_SELOB_TOASTAT;
   
   global XA_SELOB_SIZE;
   
   
   
   % Equinox indicator
   % time of observation
   clear EQUINOX_OBSTIME;
   % time @ 0 Jan Year of Date
   clear EQUINOX_OBSYEAR;
   % J2000
   clear EQUINOX_J2K;
   % B1950
   clear EQUINOX_B1950;
   
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
   clear SORT_TIMESENTYPEEL;
   % sort order is time, elevation (negative value for reverse order)
   clear SORT_TIMEEL;
   % sort order is time, sensor, otype, el, satno (negative value for reverse order)
   clear SORT_TIMESENTYPEELSAT;
   % sort order is sensor, satno, time, elev (negative value for reverse order)
   clear SORT_SENSATTIMEEL;
   % sort order is sensor, time, elevation (negative value for reverse order)
   clear SORT_SENTIMEEL;
   % sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
   clear SORT_SENSATTYPETIMEEL;
   % sort order is satno, time, sensor, otype, el (negative value for reverse order)
   clear SORT_SATTIMESENTYPEEL;
   % sort order is the order of obs when they were loaded
   clear SORT_ORDERASREAD;
   % sort order is satno, sensor, time (negative value for reverse order)
   clear SORT_SATSENTIME;
   
   
   % Indexes of different obs file format
   % B3 obs format
   clear OBSFORM_B3;
   % Transmission obs format
   clear OBSFORM_TTY;
   % CSV obs format
   clear OBSFORM_CSV;
   % Radio Frequency (TDOA/FDOA) observations
   clear OBSFORM_RF;
   
   clear BADOBSKEY;
   clear DUPOBSKEY;
   
   
   % Different key mode options for obsKey
   % Default - duplicate obs can not be loaded in binary tree
   clear OBS_KEYMODE_NODUP;
   % Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
   clear OBS_KEYMODE_DMA;
   
   % CSV sigma type indicator
   clear CSVSIGMATYPE;
   
   % Indexes of Observation data fields
   % security classification
   clear XF_OBS_SECCLASS;
   % satellite number
   clear XF_OBS_SATNUM;
   % sensor number
   clear XF_OBS_SENNUM;
   % observation time in days since 1950 UTC
   clear XF_OBS_DS50UTC;
   % elevation (deg)
   clear XF_OBS_ELEVATION;
   % declination (deg)
   clear XF_OBS_DECLINATION;
   % azimuth (deg)
   clear XF_OBS_AZIMUTH;
   % right-ascension (deg)
   clear XF_OBS_RA;
   % range (km)
   clear XF_OBS_RANGE;
   % range rate (km/s)
   clear XF_OBS_RANGERATE;
   % elevation rate (deg/s)
   clear XF_OBS_ELRATE;
   % azimuth rate (deg/s)
   clear XF_OBS_AZRATE;
   % range acceleration (km/s^2)
   clear XF_OBS_RANGEACCEL;
   % observation type
   clear XF_OBS_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   clear XF_OBS_TRACKIND;
   % association status assigned by SPADOC
   clear XF_OBS_ASTAT;
   % original satellite number
   clear XF_OBS_SITETAG;
   % SPADOC-asssigned tag number
   clear XF_OBS_SPADOCTAG;
   % position X/EFG (km)
   clear XF_OBS_POSE;
   % position Y/EFG (km)
   clear XF_OBS_POSF;
   % position Z/EFG (km)
   clear XF_OBS_POSG;
   % position X/ECI (km)
   clear XF_OBS_POSX;
   % position Y/ECI (km)
   clear XF_OBS_POSY;
   % position Z/ECI (km)
   clear XF_OBS_POSZ;
   
   % Principal Polarization RCS
   clear XF_OBS_RCS_PP;
   % Orthogonal Polarization RCS
   clear XF_OBS_RCS_OP;
   % Principal Polarization RCS sigma
   clear XF_OBS_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   clear XF_OBS_RCS_OPS;
   % Radar Signal to Noise Ratio
   clear XF_OBS_SNR;
   % Azimuth of Boresite
   clear XF_OBS_BORE_AZ;
   % Elevation of Boresite
   clear XF_OBS_BORE_EL;
   % Apparent Visual magnitude
   clear XF_OBS_VISMAG;
   % GEO Normalized Visual magnitude
   clear XF_OBS_VISMAG_NORM;
   % Solar Phase Angle
   clear XF_OBS_SOL_PHASE;
   % Frame Number
   clear XF_OBS_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   clear XF_OBS_ABERRATION;
   % Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
   clear XF_OBS_ASTAT_METHOD;
   
   % Indexes of observation data in an array
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   clear XA_OBS_SECCLASS;
   % satellite number
   clear XA_OBS_SATNUM;
   % sensor number
   clear XA_OBS_SENNUM;
   % observation time in days since 1950 UTC
   clear XA_OBS_DS50UTC;
   % observation type
   clear XA_OBS_OBSTYPE;
   
   
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   clear XA_OBS_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   clear XA_OBS_AZORRA;
   % range (km)
   clear XA_OBS_RANGE;
   % range rate (km/s) for non-optical obs type
   clear XA_OBS_RANGERATE;
   % elevation rate (deg/s)
   clear XA_OBS_ELRATE;
   % azimuth rate (deg/s)
   clear XA_OBS_AZRATE;
   % range acceleration (km/s^2)
   clear XA_OBS_RANGEACCEL;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   clear XA_OBS_TRACKIND;
   % association status assigned by SPADOC
   clear XA_OBS_ASTAT;
   % original satellite number
   clear XA_OBS_SITETAG;
   % SPADOC-asssigned tag number
   clear XA_OBS_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   clear XA_OBS_POSX;
   % position Y/ECI or Y/EFG (km)
   clear XA_OBS_POSY;
   % position Z/ECI or Z/EFG (km)
   clear XA_OBS_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   clear XA_OBS_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   clear XA_OBS_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   clear XA_OBS_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   clear XA_OBS_YROFEQNX;
   % aberration indicator, 0-not corrected, 1-corrceted
   clear XA_OBS_ABERRATION;
   
   % AZ/RA bias (deg)
   clear XA_OBS_AZORRABIAS;
   % EL/DEC bias (deg)
   clear XA_OBS_ELORDECBIAS;
   % Range bias (km)
   clear XA_OBS_RGBIAS;
   % Range-rate bias (km/sec)
   clear XA_OBS_RRBIAS;
   % Time bias (sec)
   clear XA_OBS_TIMEBIAS;
   % AZ/RA rate bias (deg/sec)
   clear XA_OBS_RAZORRABIAS;
   % EL/DEC rate bias (deg/sec)
   clear XA_OBS_RELORDECBIAS;
   
   % individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
   clear XA_OBS_SIGMATYPE;
   % sigma - covariance element 1 - 6 elemens - Az sigma
   clear XA_OBS_SIGMAEL1;
   % sigma - covariance element 2 - 6 elemens - El sigma
   clear XA_OBS_SIGMAEL2;
   % sigma - covariance element 3 - 6 elemens - Range sigma
   clear XA_OBS_SIGMAEL3;
   % sigma - covariance element 4 - 6 elemens - Range rate sigma
   clear XA_OBS_SIGMAEL4;
   % sigma - covariance element 5 - 6 elemens - Az rate sigma
   clear XA_OBS_SIGMAEL5;
   % sigma - covariance element 6 - 6 elemens - El rate sigma
   clear XA_OBS_SIGMAEL6;
   % sigma - covariance element 7
   clear XA_OBS_SIGMAEL7;
   % sigma - covariance element 8
   clear XA_OBS_SIGMAEL8;
   % sigma - covariance element 9
   clear XA_OBS_SIGMAEL9;
   % sigma - covariance element 10
   clear XA_OBS_SIGMAEL10;
   % sigma - covariance element 11
   clear XA_OBS_SIGMAEL11;
   % sigma - covariance element 12
   clear XA_OBS_SIGMAEL12;
   % sigma - covariance element 13
   clear XA_OBS_SIGMAEL13;
   % sigma - covariance element 14
   clear XA_OBS_SIGMAEL14;
   % sigma - covariance element 15
   clear XA_OBS_SIGMAEL15;
   % sigma - covariance element 16
   clear XA_OBS_SIGMAEL16;
   % sigma - covariance element 17
   clear XA_OBS_SIGMAEL17;
   % sigma - covariance element 18
   clear XA_OBS_SIGMAEL18;
   % sigma - covariance element 19
   clear XA_OBS_SIGMAEL19;
   % sigma - covariance element 20
   clear XA_OBS_SIGMAEL20;
   % sigma - covariance element 21
   clear XA_OBS_SIGMAEL21;
   
   clear XA_OBS_SIZE;
   
   % Indexes of observation data in an array (Obs Type CSV specific)
   % security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
   clear XA_OTCSV_SECCLASS;
   % satellite number
   clear XA_OTCSV_SATNUM;
   % sensor number
   clear XA_OTCSV_SENNUM;
   % observation time in days since 1950 UTC
   clear XA_OTCSV_DS50UTC;
   % elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
   clear XA_OTCSV_ELORDEC;
   % azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
   clear XA_OTCSV_AZORRA;
   % range (km)
   clear XA_OTCSV_RANGE;
   % range rate (km/s) for non-optical obs type
   clear XA_OTCSV_RANGERATE;
   % elevation rate (deg/s)
   clear XA_OTCSV_ELRATE;
   % azimuth rate (deg/s)
   clear XA_OTCSV_AZRATE;
   % range acceleration (km/s^2)
   clear XA_OTCSV_RANGEACCEL;
   % observation type
   clear XA_OTCSV_OBSTYPE;
   % track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
   clear XA_OTCSV_TRACKIND;
   % association status assigned by SPADOC
   clear XA_OTCSV_ASTAT;
   % original satellite number
   clear XA_OTCSV_SITETAG;
   % SPADOC-asssigned tag number
   clear XA_OTCSV_SPADOCTAG;
   % position X/ECI or X/EFG (km)
   clear XA_OTCSV_POSX;
   % position Y/ECI or Y/EFG (km)
   clear XA_OTCSV_POSY;
   % position Z/ECI or Z/EFG (km)
   clear XA_OTCSV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   clear XA_OTCSV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   clear XA_OTCSV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   clear XA_OTCSV_VELZ;
   % year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   clear XA_OTCSV_YROFEQNX;
   
   % Principal Polarization RCS
   clear XA_OTCSV_RCS_PP;
   % Orthogonal Polarization RCS
   clear XA_OTCSV_RCS_OP;
   % Principal Polarization RCS sigma
   clear XA_OTCSV_RCS_PPS;
   % Orthogonal Polarization RCS sigma
   clear XA_OTCSV_RCS_OPS;
   % Radar Signal to Noise Ratio
   clear XA_OTCSV_SNR;
   % Azimuth of Boresite
   clear XA_OTCSV_BORE_AZ;
   % Elevation of Boresite
   clear XA_OTCSV_BORE_EL;
   % Apparent Visual magnitude
   clear XA_OTCSV_VISMAG;
   % GEO Normalized Visual magnitude
   clear XA_OTCSV_VISMAG_NORM;
   % Solar Phase Angle
   clear XA_OTCSV_SOL_PHASE;
   % Frame Number
   clear XA_OTCSV_FRAME;
   % Aberration correction indicator (0=YES, 1=NO)
   clear XA_OTCSV_ABERRATION;
   % 0 = ROTAS, 1 = TRACK
   clear XA_OTCSV_ASTAT_METHOD;
   
   % must equal to 7 to signify this is CSV format
   clear XA_OTCSV_SIGMATYPE;
   % sigma - covariance element 1 - Az sigma
   clear XA_OTCSV_SIGMAEL1;
   % sigma - covariance element 2 - El sigma
   clear XA_OTCSV_SIGMAEL2;
   % sigma - covariance element 3 - Range sigma
   clear XA_OTCSV_SIGMAEL3;
   % sigma - covariance element 4 - Range rate sigma
   clear XA_OTCSV_SIGMAEL4;
   % sigma - covariance element 5 - Az rate sigma
   clear XA_OTCSV_SIGMAEL5;
   % sigma - covariance element 6 - El rate sigma
   clear XA_OTCSV_SIGMAEL6;
   % sigma - covariance element 7 - Time sigma
   clear XA_OTCSV_SIGMAEL7;
   % AZ/RA bias
   clear XA_OTCSV_BIAS1;
   % EL/DEC bias
   clear XA_OTCSV_BIAS2;
   % Range bias
   clear XA_OTCSV_BIAS3;
   % Range-rate bias
   clear XA_OTCSV_BIAS4;
   % Time bias
   clear XA_OTCSV_BIAS5;
   
   
   clear XA_OTCSV_SIZE;
   
   % Indexes of observation data in an array
   % satellite number
   clear XA_OBSTATE_SATNUM;
   % sensor number
   clear XA_OBSTATE_SENNUM;
   % observation time in days since 1950 UTC
   clear XA_OBSTATE_DS50UTC;
   
   % position X/ECI (km)
   clear XA_OBSTATE_POSX;
   % position Y/ECI (km)
   clear XA_OBSTATE_POSY;
   % position Z/ECI (km)
   clear XA_OBSTATE_POSZ;
   % velocity X/ECI (km/s)
   clear XA_OBSTATE_VELX;
   % velocity Y/ECI (km/s)
   clear XA_OBSTATE_VELY;
   % velocity Z/ECI (km/s)
   clear XA_OBSTATE_VELZ;
   % geodetic latitude (deg)
   clear XA_OBSTATE_LAT;
   % geodetic longitude (deg)
   clear XA_OBSTATE_LON;
   % geodetic height (km)
   clear XA_OBSTATE_HGHT;
   % position X/EFG (km)
   clear XA_OBSTATE_POSE;
   % position Y/EFG (km)
   clear XA_OBSTATE_POSF;
   % position Z/EFG (km)
   clear XA_OBSTATE_POSG;
   
   
   clear XA_OBSTATE_SIZE;
   
   % Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
   % All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
   % range rate (km/s)
   clear XA_OT0_RANGERATE;
   
   % elevation (deg)
   clear XA_OT1_ELEVATION;
   % azimuth (deg)
   clear XA_OT1_AZIMUTH;
   
   % elevation (deg)
   clear XA_OT2_ELEVATION;
   % azimuth (deg)
   clear XA_OT2_AZIMUTH;
   % range (km)
   clear XA_OT2_RANGE;
   
   % elevation (deg)
   clear XA_OT3_ELEVATION;
   % azimuth (deg)
   clear XA_OT3_AZIMUTH;
   % range (km)
   clear XA_OT3_RANGE;
   % range rate (km/s)
   clear XA_OT3_RANGERATE;
   
   % elevation (deg)
   clear XA_OT4_ELEVATION;
   % azimuth (deg)
   clear XA_OT4_AZIMUTH;
   % range (km)
   clear XA_OT4_RANGE;
   % range rate (km/s)
   clear XA_OT4_RANGERATE;
   % elevation rate (deg/s)
   clear XA_OT4_ELRATE;
   % azimuth rate (deg/s)
   clear XA_OT4_AZRATE;
   % range acceleration (km/s^2)
   clear XA_OT4_RANGEACCEL;
   
   % declination (deg)
   clear XA_OT5_DECL;
   % right ascesion (deg)
   clear XA_OT5_RIGHTASC;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   clear XA_OT5_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   clear XA_OT5_ABERRATION;
   
   % range (km)
   clear XA_OT6_RANGE;
   
   % elevation (deg)
   clear XA_OT8_ELEVATION;
   % azimuth (deg)
   clear XA_OT8_AZIMUTH;
   % optional - range (km)
   clear XA_OT8_RANGE;
   % orbiting sensor position X/EFG (km)
   clear XA_OT8_POSE;
   % orbiting sensor position Y/EFG (km)
   clear XA_OT8_POSF;
   % orbiting sensor position Z/EFG (km)
   clear XA_OT8_POSG;
   
   % declination (deg)
   clear XA_OT9_DECL;
   % right ascesion (deg)
   clear XA_OT9_RIGHTASC;
   % optional - range (km)
   clear XA_OT9_RANGE;
   % orbiting sensor position X/EFG (km)
   clear XA_OT9_POSE;
   % orbiting sensor position Y/EFG (km)
   clear XA_OT9_POSF;
   % orbiting sensor position Z/EFG (km)
   clear XA_OT9_POSG;
   % year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
   clear XA_OT9_YROFEQNX;
   % ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
   clear XA_OT9_ABERRATION;
   
   % position X/ECI or X/EFG (km)
   clear XA_OTP_POSX;
   % position Y/ECI or Y/EFG (km)
   clear XA_OTP_POSY;
   % position Z/ECI or Z/EFG (km)
   clear XA_OTP_POSZ;
   
   % position X/ECI or X/EFG (km)
   clear XA_OTV_POSX;
   % position Y/ECI or Y/EFG (km)
   clear XA_OTV_POSY;
   % position Z/ECI or Z/EFG (km)
   clear XA_OTV_POSZ;
   % velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
   clear XA_OTV_VELX;
   % velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
   clear XA_OTV_VELY;
   % velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
   clear XA_OTV_VELZ;
   
   clear XA_OT_SIZE;
   
   % Obs selection criteria
   % Seclection mode (unused for now)
   clear XA_SELOB_MODE;
   
   % From time
   clear XA_SELOB_FRTIME;
   % To time
   clear XA_SELOB_TOTIME;
   
   % From time
   clear XA_SELOB_FRIDX;
   % To time
   clear XA_SELOB_TOIDX;
   
   % Select any obs that match this satellite number #1
   clear XA_SELOB_SAT1;
   % Select any obs that match this satellite number #2
   clear XA_SELOB_SAT2;
   % Select any obs that match this satellite number #3
   clear XA_SELOB_SAT3;
   % Select any obs that match this satellite number #4
   clear XA_SELOB_SAT4;
   % Select any obs that match this satellite number #5
   clear XA_SELOB_SAT5;
   % Select any obs that match this satellite number #6
   clear XA_SELOB_SAT6;
   % Select any obs that match this satellite number #7
   clear XA_SELOB_SAT7;
   % Select any obs that match this satellite number #8
   clear XA_SELOB_SAT8;
   % Select any obs that match this satellite number #9
   clear XA_SELOB_SAT9;
   % Select any obs that match this satellite number #10
   clear XA_SELOB_SAT10;
   
   % Select any obs that are obtained by this sensor site #1
   clear XA_SELOB_SEN1;
   % Select any obs that are obtained by this sensor site #2
   clear XA_SELOB_SEN2;
   % Select any obs that are obtained by this sensor site #3
   clear XA_SELOB_SEN3;
   % Select any obs that are obtained by this sensor site #4
   clear XA_SELOB_SEN4;
   % Select any obs that are obtained by this sensor site #5
   clear XA_SELOB_SEN5;
   % Select any obs that are obtained by this sensor site #6
   clear XA_SELOB_SEN6;
   % Select any obs that are obtained by this sensor site #7
   clear XA_SELOB_SEN7;
   % Select any obs that are obtained by this sensor site #8
   clear XA_SELOB_SEN8;
   % Select any obs that are obtained by this sensor site #9
   clear XA_SELOB_SEN9;
   % Select any obs that are obtained by this sensor site #10
   clear XA_SELOB_SEN10;
   
   % Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
   clear XA_SELOB_OT1;
   % Select any obs that match this obs type #2
   clear XA_SELOB_OT2;
   % Select any obs that match this obs type #3
   clear XA_SELOB_OT3;
   % Select any obs that match this obs type #4
   clear XA_SELOB_OT4;
   % Select any obs that match this obs type #5
   clear XA_SELOB_OT5;
   % Select any obs that match this obs type #6
   clear XA_SELOB_OT6;
   % Select any obs that match this obs type #7
   clear XA_SELOB_OT7;
   % Select any obs that match this obs type #8
   clear XA_SELOB_OT8;
   % Select any obs that match this obs type #9
   clear XA_SELOB_OT9;
   % Select any obs that match this obs type #10
   clear XA_SELOB_OT10;
   
   % From azimuth
   clear XA_SELOB_FRAZ;
   % To azimuth
   clear XA_SELOB_TOAZ;
   % From elevation
   clear XA_SELOB_FREL;
   % To elevation
   clear XA_SELOB_TOEL;
   % From right ascension
   clear XA_SELOB_FRRA;
   % To right ascension
   clear XA_SELOB_TORA;
   % From declincation
   clear XA_SELOB_FRDEC;
   % To declination
   clear XA_SELOB_TODEC;
   % From range
   clear XA_SELOB_FRRNG;
   % To range
   clear XA_SELOB_TORNG;
   % From range rate
   clear XA_SELOB_FRRNGRT;
   % To range rate
   clear XA_SELOB_TORNGRT;
   % From azimuth rate
   clear XA_SELOB_FRAZRT;
   % To azimuth rate
   clear XA_SELOB_TOAZRT;
   % From elevation rate
   clear XA_SELOB_FRELRT;
   % To elevation rate
   clear XA_SELOB_TOELRT;
   % From ASTAT (0 to 4)
   clear XA_SELOB_FRASTAT;
   % To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
   clear XA_SELOB_TOASTAT;
   
   clear XA_SELOB_SIZE;
   
   
   FreeObsDll;
   clear LoadObsDll;
   clear FreeObsDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Obs DLL for use in the program
   clear ObsInit
   
   %  Returns information about the current version of Obs DLL. 
   %  The information is placed in the string parameter passed in.
   clear ObsGetInfo
   
   %  Sets the year for transmission observation format (TTY) input files
   clear ObsSetTTYYear
   
   %  Loads observation data from an input text file
   clear ObsLoadFile
   
   %  Saves the currently loaded obs data to a file
   clear ObsSaveFile
   
   %  Removes an obs, represented by the obsKey, from the set of currently loaded observations
   clear ObsRemove
   
   %  Removes all currently loaded observations from memory
   clear ObsRemoveAll
   
   %  Returns the number of observations currently loaded
   clear ObsGetCount
   
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
   clear ObsGetLoaded
   
   %  Loads a single observation-typed card
   clear ObsLoadCard
   
   %  Loads a one-line or two-line observation 
   clear ObsLoadTwoCards
   
   %  Adds an observation from a string in B3 observation format
   clear ObsAddFrB3Card
   
   %  Works like ObsAddFrB3Card but designed for Matlab
   clear ObsAddFrB3CardML
   
   %  Converts B3 format to csv format without loading B3 obs into memory
   clear ObsB3ToCsv
   
   %  Converts CSV format to B3 format without loading CSV obs into memory
   clear ObsCsvToB3
   
   %  Adds an observation from a TTY (1 line or 2 lines) observation format
   clear ObsAddFrTTYCards
   
   %  Works like ObsAddFrTTYCards but designed for Matlab
   clear ObsAddFrTTYCardsML
   
   %  Converts TTY format to CSV format without loading TTY obs into memory
   clear ObsTTYToCsv
   
   %  Converts CSV format to TTY format without loading CSV obs into memory
   clear ObsCsvToTTY
   
   %  Adds one observation using csv obs string 
   clear ObsAddFrCsv
   
   %  Adds one observation using csv obs string - for MatLab
   clear ObsAddFrCsvML
   
   %  Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
   clear ObsAddFrFields
   
   %  Works like ObsAddFrFields but designed for Matlab
   clear ObsAddFrFieldsML
   
   %  Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
   clear ObsAddFrArray
   
   %  Works like ObsAddFrArray but designed for Matlab
   clear ObsAddFrArrayML
   
   %  Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
   clear ObsGetAllFields
   
   %  Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
   %  See ObsGetField for description of xa_obs elements
   clear ObsDataToArray
   
   %  Updates existing observation data with the provided new data
   clear ObsUpdateFrFields
   
   %  Retrieves the value of a specific field of an observation
   clear ObsGetField
   
   %  Updates the value of a field of an observation
   %  See ObsGetField for a description of the xf_Obs parameter.
   %  Satellite number, sensor number, and observation time are not allowed to be updated.
   clear ObsSetField
   
   %  Returns observation in B3-card string
   clear ObsGetB3Card
   
   %  Returns observation in TTY-card string
   clear ObsGetTTYCard
   
   %  Returns observation in CSV-format string
   clear ObsGetCsv
   
   %  Constructs a B3-card string from the input observation data fields
   clear ObsFieldsToB3Card
   
   %  Constructs a csv string from the input observation data fields
   clear ObsFieldsToCsv
   
   %  Constructs a TTY-card string from the input observation data fields
   clear ObsFieldsToTTYCard
   
   %  Computes an obsKey from individually provided fields
   clear ObsFieldsToObsKey
   
   %  Works like ObsFieldsToObsKey but designed for Matlab
   clear ObsFieldsToObsKeyML
   
   %  Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
   clear ObsB3Parse
   
   %  Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
   clear ObsParse
   
   %  Loads observation data from an input text file and group them together in the specified groupd id (gid).
   %  This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
   clear ObsLoadFileGID
   
   %  Saves the currently loaded obs data belong to the specified group id (gid) to a file 
   clear ObsSaveFileGID
   
   %  Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
   clear ObsRemoveGID
   
   %  Returns the number of observations currently loaded that have the same gid
   clear ObsGetCountGID
   
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
   clear ObsGetLoadedGID
   
   %  Converts obs type from character to integer
   clear ObsTypeCToI
   
   %  Converts obs type from integer to character
   clear ObsTypeIToC
   
   %  Resets obs selection settings
   clear ObsResetSelObs
   
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
   clear ObsGetStates
   
   %  Computes observation states from the observation data
   %  See ObsGetStates for a list of the values for the xa_obState parameter.
   clear ObsDataToStates
   
   %  Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
   clear ObsArrToLines
   
   %  Sets OBS key mode
   %  This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
   %  and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
   clear SetObsKeyMode
   
   %  Gets current OBS key mode
   clear GetObsKeyMode
   
   %  Returs the satellite number associated with the input obsKey
   clear SatNumFrObsKey
   
   %  Returs the sensor number associated with the input obsKey
   clear SenNumFrObsKey
   
   %  Retrieves only obs that match the selection criteria
   clear ObsGetSelected
endfunction
% ========================= End of auto generated code ==========================
