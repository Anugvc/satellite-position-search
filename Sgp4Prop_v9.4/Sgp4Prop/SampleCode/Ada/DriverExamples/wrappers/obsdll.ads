-- This wrapper file was generated automatically by the GenDllWrappers program.

pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");
with AstroAdaTypes; use AstroAdaTypes;

package ObsDll is
    
    -- Equinox indicator
    -- time of observation
    EQUINOX_OBSTIME : constant := 0;
    -- time @ 0 Jan Year of Date
    EQUINOX_OBSYEAR : constant := 1;
    -- J2000
    EQUINOX_J2K : constant := 2;
    -- B1950
    EQUINOX_B1950 : constant := 3;
    
    -- Indexes for sorting ob
    -- Sort options:
    -- (+/-) 1 = (descending/ascending) time, sensor, obsType, elev
    -- (+/-) 2 = (descending/ascending) time, elevation
    -- (+/-) 3 = (descending/ascending) time, sensor, otype, el, satno
    -- (+/-) 4 = (descending/ascending) sensor, satno, time, elev
    -- (+/-) 5 = (descending/ascending) sensor, time, elevation
    -- (+/-) 6 = (descending/ascending) sensor, satno, obsType, time, elev
    -- (+/-) 7 = (descending/ascending) satno, time, sensor, otype, el
    -- (+/-)10 = (descending/ascending) satno, sensor, time
    
    -- sort order is time, sensor, obsType, elev (negative value for reverse order)
    SORT_TIMESENTYPEEL : constant := 1;
    -- sort order is time, elevation (negative value for reverse order)
    SORT_TIMEEL : constant := 2;
    -- sort order is time, sensor, otype, el, satno (negative value for reverse order)
    SORT_TIMESENTYPEELSAT : constant := 3;
    -- sort order is sensor, satno, time, elev (negative value for reverse order)
    SORT_SENSATTIMEEL : constant := 4;
    -- sort order is sensor, time, elevation (negative value for reverse order)
    SORT_SENTIMEEL : constant := 5;
    -- sort order is sensor, satno, obsType, time, elev (negative value for reverse order)
    SORT_SENSATTYPETIMEEL : constant := 6;
    -- sort order is satno, time, sensor, otype, el (negative value for reverse order)
    SORT_SATTIMESENTYPEEL : constant := 7;
    -- sort order is the order of obs when they were loaded
    SORT_ORDERASREAD : constant := 8;
    -- sort order is satno, sensor, time (negative value for reverse order)
    SORT_SATSENTIME : constant := 10;
    
    
    -- Indexes of different obs file format
    -- B3 obs format
    OBSFORM_B3 : constant := 0;
    -- Transmission obs format
    OBSFORM_TTY : constant := 1;
    -- CSV obs format
    OBSFORM_CSV : constant := 2;
    -- Radio Frequency (TDOA/FDOA) observations
    OBSFORM_RF : constant := 3;
    
    BADOBSKEY : constant := -1;
    DUPOBSKEY : constant := 0;
    
    
    -- Different key mode options for obsKey
    -- Default - duplicate obs can not be loaded in binary tree
    OBS_KEYMODE_NODUP : constant := 0;
    -- Allow duplicate obs to be loaded and have direct memory access (DMA - no duplication check and no binary tree)
    OBS_KEYMODE_DMA : constant := 1;
    
    -- CSV sigma type indicator
    CSVSIGMATYPE : constant := 7;
    
    -- Indexes of Observation data fields
    -- security classification
    XF_OBS_SECCLASS : constant := 1;
    -- satellite number
    XF_OBS_SATNUM : constant := 2;
    -- sensor number
    XF_OBS_SENNUM : constant := 3;
    -- observation time in days since 1950 UTC
    XF_OBS_DS50UTC : constant := 4;
    -- elevation (deg)
    XF_OBS_ELEVATION : constant := 5;
    -- declination (deg)
    XF_OBS_DECLINATION : constant := 6;
    -- azimuth (deg)
    XF_OBS_AZIMUTH : constant := 7;
    -- right-ascension (deg)
    XF_OBS_RA : constant := 8;
    -- range (km)
    XF_OBS_RANGE : constant := 9;
    -- range rate (km/s)
    XF_OBS_RANGERATE : constant := 10;
    -- elevation rate (deg/s)
    XF_OBS_ELRATE : constant := 11;
    -- azimuth rate (deg/s)
    XF_OBS_AZRATE : constant := 12;
    -- range acceleration (km/s^2)
    XF_OBS_RANGEACCEL : constant := 13;
    -- observation type
    XF_OBS_OBSTYPE : constant := 14;
    -- track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
    XF_OBS_TRACKIND : constant := 15;
    -- association status assigned by SPADOC
    XF_OBS_ASTAT : constant := 16;
    -- original satellite number
    XF_OBS_SITETAG : constant := 17;
    -- SPADOC-asssigned tag number
    XF_OBS_SPADOCTAG : constant := 18;
    -- position X/EFG (km)
    XF_OBS_POSE : constant := 19;
    -- position Y/EFG (km)
    XF_OBS_POSF : constant := 20;
    -- position Z/EFG (km)
    XF_OBS_POSG : constant := 21;
    -- position X/ECI (km)
    XF_OBS_POSX : constant := 22;
    -- position Y/ECI (km)
    XF_OBS_POSY : constant := 23;
    -- position Z/ECI (km)
    XF_OBS_POSZ : constant := 24;
    
    -- Principal Polarization RCS
    XF_OBS_RCS_PP : constant := 25;
    -- Orthogonal Polarization RCS
    XF_OBS_RCS_OP : constant := 26;
    -- Principal Polarization RCS sigma
    XF_OBS_RCS_PPS : constant := 27;
    -- Orthogonal Polarization RCS sigma
    XF_OBS_RCS_OPS : constant := 28;
    -- Radar Signal to Noise Ratio
    XF_OBS_SNR : constant := 29;
    -- Azimuth of Boresite
    XF_OBS_BORE_AZ : constant := 30;
    -- Elevation of Boresite
    XF_OBS_BORE_EL : constant := 31;
    -- Apparent Visual magnitude
    XF_OBS_VISMAG : constant := 32;
    -- GEO Normalized Visual magnitude
    XF_OBS_VISMAG_NORM : constant := 33;
    -- Solar Phase Angle
    XF_OBS_SOL_PHASE : constant := 34;
    -- Frame Number
    XF_OBS_FRAME : constant := 35;
    -- Aberration correction indicator (0=YES, 1=NO)
    XF_OBS_ABERRATION : constant := 36;
    -- Either R" or T; ROTAS=General Perturbations, TRACK=Special Perturbations
    XF_OBS_ASTAT_METHOD : constant := 37;
    
    -- Indexes of observation data in an array
    -- security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
    XA_OBS_SECCLASS : constant := 0;
    -- satellite number
    XA_OBS_SATNUM : constant := 1;
    -- sensor number
    XA_OBS_SENNUM : constant := 2;
    -- observation time in days since 1950 UTC
    XA_OBS_DS50UTC : constant := 3;
    -- observation type
    XA_OBS_OBSTYPE : constant := 11;
    
    
    -- elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
    XA_OBS_ELORDEC : constant := 4;
    -- azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
    XA_OBS_AZORRA : constant := 5;
    -- range (km)
    XA_OBS_RANGE : constant := 6;
    -- range rate (km/s) for non-optical obs type
    XA_OBS_RANGERATE : constant := 7;
    -- elevation rate (deg/s)
    XA_OBS_ELRATE : constant := 8;
    -- azimuth rate (deg/s)
    XA_OBS_AZRATE : constant := 9;
    -- range acceleration (km/s^2)
    XA_OBS_RANGEACCEL : constant := 10;
    -- track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
    XA_OBS_TRACKIND : constant := 12;
    -- association status assigned by SPADOC
    XA_OBS_ASTAT : constant := 13;
    -- original satellite number
    XA_OBS_SITETAG : constant := 14;
    -- SPADOC-asssigned tag number
    XA_OBS_SPADOCTAG : constant := 15;
    -- position X/ECI or X/EFG (km)
    XA_OBS_POSX : constant := 16;
    -- position Y/ECI or Y/EFG (km)
    XA_OBS_POSY : constant := 17;
    -- position Z/ECI or Z/EFG (km)
    XA_OBS_POSZ : constant := 18;
    -- velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
    XA_OBS_VELX : constant := 19;
    -- velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
    XA_OBS_VELY : constant := 20;
    -- velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
    XA_OBS_VELZ : constant := 21;
    -- year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
    XA_OBS_YROFEQNX : constant := 22;
    -- aberration indicator, 0-not corrected, 1-corrceted
    XA_OBS_ABERRATION : constant := 23;
    
    -- AZ/RA bias (deg)
    XA_OBS_AZORRABIAS : constant := 33;
    -- EL/DEC bias (deg)
    XA_OBS_ELORDECBIAS : constant := 34;
    -- Range bias (km)
    XA_OBS_RGBIAS : constant := 35;
    -- Range-rate bias (km/sec)
    XA_OBS_RRBIAS : constant := 36;
    -- Time bias (sec)
    XA_OBS_TIMEBIAS : constant := 37;
    -- AZ/RA rate bias (deg/sec)
    XA_OBS_RAZORRABIAS : constant := 38;
    -- EL/DEC rate bias (deg/sec)
    XA_OBS_RELORDECBIAS : constant := 39;
    
    -- individual obs's sigmas type (0: N/A, 6: 6 elements, 21: 21 elements, 7: this is CSV obs)
    XA_OBS_SIGMATYPE : constant := 40;
    -- sigma - covariance element 1 - 6 elemens - Az sigma
    XA_OBS_SIGMAEL1 : constant := 41;
    -- sigma - covariance element 2 - 6 elemens - El sigma
    XA_OBS_SIGMAEL2 : constant := 42;
    -- sigma - covariance element 3 - 6 elemens - Range sigma
    XA_OBS_SIGMAEL3 : constant := 43;
    -- sigma - covariance element 4 - 6 elemens - Range rate sigma
    XA_OBS_SIGMAEL4 : constant := 44;
    -- sigma - covariance element 5 - 6 elemens - Az rate sigma
    XA_OBS_SIGMAEL5 : constant := 45;
    -- sigma - covariance element 6 - 6 elemens - El rate sigma
    XA_OBS_SIGMAEL6 : constant := 46;
    -- sigma - covariance element 7
    XA_OBS_SIGMAEL7 : constant := 47;
    -- sigma - covariance element 8
    XA_OBS_SIGMAEL8 : constant := 48;
    -- sigma - covariance element 9
    XA_OBS_SIGMAEL9 : constant := 49;
    -- sigma - covariance element 10
    XA_OBS_SIGMAEL10 : constant := 50;
    -- sigma - covariance element 11
    XA_OBS_SIGMAEL11 : constant := 51;
    -- sigma - covariance element 12
    XA_OBS_SIGMAEL12 : constant := 52;
    -- sigma - covariance element 13
    XA_OBS_SIGMAEL13 : constant := 53;
    -- sigma - covariance element 14
    XA_OBS_SIGMAEL14 : constant := 54;
    -- sigma - covariance element 15
    XA_OBS_SIGMAEL15 : constant := 55;
    -- sigma - covariance element 16
    XA_OBS_SIGMAEL16 : constant := 56;
    -- sigma - covariance element 17
    XA_OBS_SIGMAEL17 : constant := 57;
    -- sigma - covariance element 18
    XA_OBS_SIGMAEL18 : constant := 58;
    -- sigma - covariance element 19
    XA_OBS_SIGMAEL19 : constant := 59;
    -- sigma - covariance element 20
    XA_OBS_SIGMAEL20 : constant := 60;
    -- sigma - covariance element 21
    XA_OBS_SIGMAEL21 : constant := 61;
    
    XA_OBS_SIZE : constant := 64;
    
    -- Indexes of observation data in an array (Obs Type CSV specific)
    -- security classification, 1 = Unclassified, 2 = Confidential, 3 = Secret
    XA_OTCSV_SECCLASS : constant := 0;
    -- satellite number
    XA_OTCSV_SATNUM : constant := 1;
    -- sensor number
    XA_OTCSV_SENNUM : constant := 2;
    -- observation time in days since 1950 UTC
    XA_OTCSV_DS50UTC : constant := 3;
    -- elevation (for ob type 1, 2, 3, 4, 8) or declination (for ob type 5, 9) (deg)
    XA_OTCSV_ELORDEC : constant := 4;
    -- azimuth (for ob type 1, 2, 3, 4, 8) or right ascesion (for ob type 5, 9) (deg)
    XA_OTCSV_AZORRA : constant := 5;
    -- range (km)
    XA_OTCSV_RANGE : constant := 6;
    -- range rate (km/s) for non-optical obs type
    XA_OTCSV_RANGERATE : constant := 7;
    -- elevation rate (deg/s)
    XA_OTCSV_ELRATE : constant := 8;
    -- azimuth rate (deg/s)
    XA_OTCSV_AZRATE : constant := 9;
    -- range acceleration (km/s^2)
    XA_OTCSV_RANGEACCEL : constant := 10;
    -- observation type
    XA_OTCSV_OBSTYPE : constant := 11;
    -- track position indicator (3=start track ob, 4=in track ob, 5=end track ob)
    XA_OTCSV_TRACKIND : constant := 12;
    -- association status assigned by SPADOC
    XA_OTCSV_ASTAT : constant := 13;
    -- original satellite number
    XA_OTCSV_SITETAG : constant := 14;
    -- SPADOC-asssigned tag number
    XA_OTCSV_SPADOCTAG : constant := 15;
    -- position X/ECI or X/EFG (km)
    XA_OTCSV_POSX : constant := 16;
    -- position Y/ECI or Y/EFG (km)
    XA_OTCSV_POSY : constant := 17;
    -- position Z/ECI or Z/EFG (km)
    XA_OTCSV_POSZ : constant := 18;
    -- velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
    XA_OTCSV_VELX : constant := 19;
    -- velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
    XA_OTCSV_VELY : constant := 20;
    -- velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
    XA_OTCSV_VELZ : constant := 21;
    -- year of equinox indicator for obs type 5/9 (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
    XA_OTCSV_YROFEQNX : constant := 22;
    
    -- Principal Polarization RCS
    XA_OTCSV_RCS_PP : constant := 23;
    -- Orthogonal Polarization RCS
    XA_OTCSV_RCS_OP : constant := 24;
    -- Principal Polarization RCS sigma
    XA_OTCSV_RCS_PPS : constant := 25;
    -- Orthogonal Polarization RCS sigma
    XA_OTCSV_RCS_OPS : constant := 26;
    -- Radar Signal to Noise Ratio
    XA_OTCSV_SNR : constant := 27;
    -- Azimuth of Boresite
    XA_OTCSV_BORE_AZ : constant := 28;
    -- Elevation of Boresite
    XA_OTCSV_BORE_EL : constant := 29;
    -- Apparent Visual magnitude
    XA_OTCSV_VISMAG : constant := 30;
    -- GEO Normalized Visual magnitude
    XA_OTCSV_VISMAG_NORM : constant := 31;
    -- Solar Phase Angle
    XA_OTCSV_SOL_PHASE : constant := 32;
    -- Frame Number
    XA_OTCSV_FRAME : constant := 33;
    -- Aberration correction indicator (0=YES, 1=NO)
    XA_OTCSV_ABERRATION : constant := 34;
    -- 0 = ROTAS, 1 = TRACK
    XA_OTCSV_ASTAT_METHOD : constant := 35;
    
    -- must equal to 7 to signify this is CSV format
    XA_OTCSV_SIGMATYPE : constant := 40;
    -- sigma - covariance element 1 - Az sigma
    XA_OTCSV_SIGMAEL1 : constant := 41;
    -- sigma - covariance element 2 - El sigma
    XA_OTCSV_SIGMAEL2 : constant := 42;
    -- sigma - covariance element 3 - Range sigma
    XA_OTCSV_SIGMAEL3 : constant := 43;
    -- sigma - covariance element 4 - Range rate sigma
    XA_OTCSV_SIGMAEL4 : constant := 44;
    -- sigma - covariance element 5 - Az rate sigma
    XA_OTCSV_SIGMAEL5 : constant := 45;
    -- sigma - covariance element 6 - El rate sigma
    XA_OTCSV_SIGMAEL6 : constant := 46;
    -- sigma - covariance element 7 - Time sigma
    XA_OTCSV_SIGMAEL7 : constant := 47;
    -- AZ/RA bias
    XA_OTCSV_BIAS1 : constant := 48;
    -- EL/DEC bias
    XA_OTCSV_BIAS2 : constant := 49;
    -- Range bias
    XA_OTCSV_BIAS3 : constant := 50;
    -- Range-rate bias
    XA_OTCSV_BIAS4 : constant := 51;
    -- Time bias
    XA_OTCSV_BIAS5 : constant := 52;
    
    
    XA_OTCSV_SIZE : constant := 64;
    
    -- Indexes of observation data in an array
    -- satellite number
    XA_OBSTATE_SATNUM : constant := 0;
    -- sensor number
    XA_OBSTATE_SENNUM : constant := 1;
    -- observation time in days since 1950 UTC
    XA_OBSTATE_DS50UTC : constant := 2;
    
    -- position X/ECI (km)
    XA_OBSTATE_POSX : constant := 10;
    -- position Y/ECI (km)
    XA_OBSTATE_POSY : constant := 11;
    -- position Z/ECI (km)
    XA_OBSTATE_POSZ : constant := 12;
    -- velocity X/ECI (km/s)
    XA_OBSTATE_VELX : constant := 13;
    -- velocity Y/ECI (km/s)
    XA_OBSTATE_VELY : constant := 14;
    -- velocity Z/ECI (km/s)
    XA_OBSTATE_VELZ : constant := 15;
    -- geodetic latitude (deg)
    XA_OBSTATE_LAT : constant := 16;
    -- geodetic longitude (deg)
    XA_OBSTATE_LON : constant := 17;
    -- geodetic height (km)
    XA_OBSTATE_HGHT : constant := 18;
    -- position X/EFG (km)
    XA_OBSTATE_POSE : constant := 19;
    -- position Y/EFG (km)
    XA_OBSTATE_POSF : constant := 20;
    -- position Z/EFG (km)
    XA_OBSTATE_POSG : constant := 21;
    
    
    XA_OBSTATE_SIZE : constant := 64;
    
    -- Indexes of observation data available for each obs type (OT0: obs type 0, OT1: obs type 1, ...)
    -- All obs types have these common data fields  XA_OBS_SECCLASS = 0, XA_OBS_SATNUM = 1, XA_OBS_SENNUM = 2, XA_OBS_DS50UTC = 3, and XA_OBS_OBSTYPE = 11
    -- range rate (km/s)
    XA_OT0_RANGERATE : constant := 7;
    
    -- elevation (deg)
    XA_OT1_ELEVATION : constant := 4;
    -- azimuth (deg)
    XA_OT1_AZIMUTH : constant := 5;
    
    -- elevation (deg)
    XA_OT2_ELEVATION : constant := 4;
    -- azimuth (deg)
    XA_OT2_AZIMUTH : constant := 5;
    -- range (km)
    XA_OT2_RANGE : constant := 6;
    
    -- elevation (deg)
    XA_OT3_ELEVATION : constant := 4;
    -- azimuth (deg)
    XA_OT3_AZIMUTH : constant := 5;
    -- range (km)
    XA_OT3_RANGE : constant := 6;
    -- range rate (km/s)
    XA_OT3_RANGERATE : constant := 7;
    
    -- elevation (deg)
    XA_OT4_ELEVATION : constant := 4;
    -- azimuth (deg)
    XA_OT4_AZIMUTH : constant := 5;
    -- range (km)
    XA_OT4_RANGE : constant := 6;
    -- range rate (km/s)
    XA_OT4_RANGERATE : constant := 7;
    -- elevation rate (deg/s)
    XA_OT4_ELRATE : constant := 8;
    -- azimuth rate (deg/s)
    XA_OT4_AZRATE : constant := 9;
    -- range acceleration (km/s^2)
    XA_OT4_RANGEACCEL : constant := 10;
    
    -- declination (deg)
    XA_OT5_DECL : constant := 4;
    -- right ascesion (deg)
    XA_OT5_RIGHTASC : constant := 5;
    -- year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
    XA_OT5_YROFEQNX : constant := 22;
    -- ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
    XA_OT5_ABERRATION : constant := 23;
    
    -- range (km)
    XA_OT6_RANGE : constant := 6;
    
    -- elevation (deg)
    XA_OT8_ELEVATION : constant := 4;
    -- azimuth (deg)
    XA_OT8_AZIMUTH : constant := 5;
    -- optional - range (km)
    XA_OT8_RANGE : constant := 6;
    -- orbiting sensor position X/EFG (km)
    XA_OT8_POSE : constant := 16;
    -- orbiting sensor position Y/EFG (km)
    XA_OT8_POSF : constant := 17;
    -- orbiting sensor position Z/EFG (km)
    XA_OT8_POSG : constant := 18;
    
    -- declination (deg)
    XA_OT9_DECL : constant := 4;
    -- right ascesion (deg)
    XA_OT9_RIGHTASC : constant := 5;
    -- optional - range (km)
    XA_OT9_RANGE : constant := 6;
    -- orbiting sensor position X/EFG (km)
    XA_OT9_POSE : constant := 16;
    -- orbiting sensor position Y/EFG (km)
    XA_OT9_POSF : constant := 17;
    -- orbiting sensor position Z/EFG (km)
    XA_OT9_POSG : constant := 18;
    -- year of equinox indicator (0= Time of obs, 1= 0 Jan of date, 2= J2000, 3= B1950)
    XA_OT9_YROFEQNX : constant := 22;
    -- ABERRATION INDICATOR, 0-NOT CORRECTED, 1-CORRCETED
    XA_OT9_ABERRATION : constant := 23;
    
    -- position X/ECI or X/EFG (km)
    XA_OTP_POSX : constant := 16;
    -- position Y/ECI or Y/EFG (km)
    XA_OTP_POSY : constant := 17;
    -- position Z/ECI or Z/EFG (km)
    XA_OTP_POSZ : constant := 18;
    
    -- position X/ECI or X/EFG (km)
    XA_OTV_POSX : constant := 16;
    -- position Y/ECI or Y/EFG (km)
    XA_OTV_POSY : constant := 17;
    -- position Z/ECI or Z/EFG (km)
    XA_OTV_POSZ : constant := 18;
    -- velocity X/ECI (km/s)  (or Edot/EFG (km) for ob type 7 TTY)
    XA_OTV_VELX : constant := 19;
    -- velocity Y/ECI (km/s)  (or Fdot/EFG (km) for ob type 7 TTY)
    XA_OTV_VELY : constant := 20;
    -- velocity Z/ECI (km/s)  (or Gdot/EFG (km) for ob type 7 TTY)
    XA_OTV_VELZ : constant := 21;
    
    XA_OT_SIZE : constant := 64;
    
    -- Obs selection criteria
    -- Seclection mode (unused for now)
    XA_SELOB_MODE : constant := 0;
    
    -- From time
    XA_SELOB_FRTIME : constant := 1;
    -- To time
    XA_SELOB_TOTIME : constant := 2;
    
    -- From time
    XA_SELOB_FRIDX : constant := 3;
    -- To time
    XA_SELOB_TOIDX : constant := 4;
    
    -- Select any obs that match this satellite number #1
    XA_SELOB_SAT1 : constant := 11;
    -- Select any obs that match this satellite number #2
    XA_SELOB_SAT2 : constant := 12;
    -- Select any obs that match this satellite number #3
    XA_SELOB_SAT3 : constant := 13;
    -- Select any obs that match this satellite number #4
    XA_SELOB_SAT4 : constant := 14;
    -- Select any obs that match this satellite number #5
    XA_SELOB_SAT5 : constant := 15;
    -- Select any obs that match this satellite number #6
    XA_SELOB_SAT6 : constant := 16;
    -- Select any obs that match this satellite number #7
    XA_SELOB_SAT7 : constant := 17;
    -- Select any obs that match this satellite number #8
    XA_SELOB_SAT8 : constant := 18;
    -- Select any obs that match this satellite number #9
    XA_SELOB_SAT9 : constant := 19;
    -- Select any obs that match this satellite number #10
    XA_SELOB_SAT10 : constant := 20;
    
    -- Select any obs that are obtained by this sensor site #1
    XA_SELOB_SEN1 : constant := 21;
    -- Select any obs that are obtained by this sensor site #2
    XA_SELOB_SEN2 : constant := 22;
    -- Select any obs that are obtained by this sensor site #3
    XA_SELOB_SEN3 : constant := 23;
    -- Select any obs that are obtained by this sensor site #4
    XA_SELOB_SEN4 : constant := 24;
    -- Select any obs that are obtained by this sensor site #5
    XA_SELOB_SEN5 : constant := 25;
    -- Select any obs that are obtained by this sensor site #6
    XA_SELOB_SEN6 : constant := 26;
    -- Select any obs that are obtained by this sensor site #7
    XA_SELOB_SEN7 : constant := 27;
    -- Select any obs that are obtained by this sensor site #8
    XA_SELOB_SEN8 : constant := 28;
    -- Select any obs that are obtained by this sensor site #9
    XA_SELOB_SEN9 : constant := 29;
    -- Select any obs that are obtained by this sensor site #10
    XA_SELOB_SEN10 : constant := 30;
    
    -- Select any obs that match this obs type #1, use OT_RRATE_SELOB for type 0/range rate only
    XA_SELOB_OT1 : constant := 31;
    -- Select any obs that match this obs type #2
    XA_SELOB_OT2 : constant := 32;
    -- Select any obs that match this obs type #3
    XA_SELOB_OT3 : constant := 33;
    -- Select any obs that match this obs type #4
    XA_SELOB_OT4 : constant := 34;
    -- Select any obs that match this obs type #5
    XA_SELOB_OT5 : constant := 35;
    -- Select any obs that match this obs type #6
    XA_SELOB_OT6 : constant := 36;
    -- Select any obs that match this obs type #7
    XA_SELOB_OT7 : constant := 37;
    -- Select any obs that match this obs type #8
    XA_SELOB_OT8 : constant := 38;
    -- Select any obs that match this obs type #9
    XA_SELOB_OT9 : constant := 39;
    -- Select any obs that match this obs type #10
    XA_SELOB_OT10 : constant := 40;
    
    -- From azimuth
    XA_SELOB_FRAZ : constant := 41;
    -- To azimuth
    XA_SELOB_TOAZ : constant := 42;
    -- From elevation
    XA_SELOB_FREL : constant := 43;
    -- To elevation
    XA_SELOB_TOEL : constant := 44;
    -- From right ascension
    XA_SELOB_FRRA : constant := 45;
    -- To right ascension
    XA_SELOB_TORA : constant := 46;
    -- From declincation
    XA_SELOB_FRDEC : constant := 47;
    -- To declination
    XA_SELOB_TODEC : constant := 48;
    -- From range
    XA_SELOB_FRRNG : constant := 49;
    -- To range
    XA_SELOB_TORNG : constant := 50;
    -- From range rate
    XA_SELOB_FRRNGRT : constant := 51;
    -- To range rate
    XA_SELOB_TORNGRT : constant := 52;
    -- From azimuth rate
    XA_SELOB_FRAZRT : constant := 53;
    -- To azimuth rate
    XA_SELOB_TOAZRT : constant := 54;
    -- From elevation rate
    XA_SELOB_FRELRT : constant := 55;
    -- To elevation rate
    XA_SELOB_TOELRT : constant := 56;
    -- From ASTAT (0 to 4)
    XA_SELOB_FRASTAT : constant := 57;
    -- To ASTAT (0 to 4) (0 < val < 1.0 if want to retrieve ASTAT 0)
    XA_SELOB_TOASTAT : constant := 58;
    
    XA_SELOB_SIZE : constant := 128;
    
    

    -- Notes: This function has been deprecated since v9.0. 
    -- Initializes Obs DLL for use in the program
    function ObsInit
        (apAddr            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsInit";

    -- Returns information about the current version of Obs DLL. 
    -- The information is placed in the string parameter passed in.
    procedure ObsGetInfo
        (infoStr           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ObsGetInfo";
        --infoStr            : String    (1..128);

    -- Sets the year for transmission observation format (TTY) input files
    procedure ObsSetTTYYear
        (ttyYear           :         Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsSetTTYYear";

    -- Loads observation data from an input text file
    function ObsLoadFile
        (obsFile           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsLoadFile";
        --obsFile            : String    (1..512);

    -- Saves the currently loaded obs data to a file
    function ObsSaveFile
        (obsFile           : in      String;
        saveMode           :         Integer;
        obsForm            :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsSaveFile";
        --obsFile            : String    (1..512);

    -- Removes an obs, represented by the obsKey, from the set of currently loaded observations
    function ObsRemove
        (obsKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsRemove";

    -- Removes all currently loaded observations from memory
    function ObsRemoveAll return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsRemoveAll";

    -- Returns the number of observations currently loaded
    function ObsGetCount return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetCount";

    -- Retrieves all of the currently loaded obsKeys. These obsKeys can be used to access the internal data for the observations
    -- Sort options (order):
    -- (+/-)1 = (descending/ascending) time, sensor, obsType, elev
    -- (+/-)2 = (descending/ascending) time, elevation
    -- (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
    -- (+/-)4 = (descending/ascending) sensor, satno, time, elev
    -- (+/-)5 = (descending/ascending) sensor, time, elevation
    -- (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
    -- (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
    -- (+/-)8 = (reversed/same)        order as obs were read
    -- 9 : as is in the tree
    procedure ObsGetLoaded
        (order             :         Integer;
        obsKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ObsGetLoaded";

    -- Loads a single observation-typed card
    function ObsLoadCard
        (card              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsLoadCard";
        --card               : String    (1..512);

    -- Loads a one-line or two-line observation 
    function ObsLoadTwoCards
        (card1             : in      String;
        card2              : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsLoadTwoCards";
        --card1              : String    (1..512);
        --card2              : String    (1..512);

    -- Adds an observation from a string in B3 observation format
    function ObsAddFrB3Card
        (card              : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrB3Card";
        --card               : String    (1..512);

    -- Works like ObsAddFrB3Card but designed for Matlab
    procedure ObsAddFrB3CardML
        (card              : in      String;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrB3CardML";
        --card               : String    (1..512);

    -- Converts B3 format to csv format without loading B3 obs into memory
    function ObsB3ToCsv
        (card              : in      String;
        csvLine            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsB3ToCsv";
        --card               : String    (1..512);
        --csvLine            : String    (1..512);

    -- Converts CSV format to B3 format without loading CSV obs into memory
    function ObsCsvToB3
        (csvLine           : in      String;
        newSatno           :         Integer;
        card               : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsCsvToB3";
        --csvLine            : String    (1..512);
        --card               : String    (1..512);

    -- Adds an observation from a TTY (1 line or 2 lines) observation format
    function ObsAddFrTTYCards
        (card1             : in      String;
        card2              : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrTTYCards";
        --card1              : String    (1..512);
        --card2              : String    (1..512);

    -- Works like ObsAddFrTTYCards but designed for Matlab
    procedure ObsAddFrTTYCardsML
        (card1             : in      String;
        card2              : in      String;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrTTYCardsML";
        --card1              : String    (1..512);
        --card2              : String    (1..512);

    -- Converts TTY format to CSV format without loading TTY obs into memory
    function ObsTTYToCsv
        (card1             : in      String;
        card2              : in      String;
        csvLine            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsTTYToCsv";
        --card1              : String    (1..512);
        --card2              : String    (1..512);
        --csvLine            : String    (1..512);

    -- Converts CSV format to TTY format without loading CSV obs into memory
    function ObsCsvToTTY
        (csvLine           : in      String;
        newSatno           :         Integer;
        card1              : out     String;
        card2              : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsCsvToTTY";
        --csvLine            : String    (1..512);
        --card1              : String    (1..512);
        --card2              : String    (1..512);

    -- Adds one observation using csv obs string 
    function ObsAddFrCsv
        (csvLine           : in      String) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrCsv";
        --csvLine            : String    (1..512);

    -- Adds one observation using csv obs string - for MatLab
    procedure ObsAddFrCsvML
        (csvLine           : in      String;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrCsvML";
        --csvLine            : String    (1..512);

    -- Adds one observation using its input data. Depending on the observation type, some input data might be unavailable and left blank
    function ObsAddFrFields
        (secClass          :         Character;
        satNum             :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        trackInd           :         Integer;
        astat              :         Integer;
        siteTag            :         Integer;
        spadocTag          :         Integer;
        pos                : in      Double1D;
        vel                : in      Double1D;
        extArr             : in      Double1D) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrFields";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --extArr             : Double1D  (1..128);

    -- Works like ObsAddFrFields but designed for Matlab
    procedure ObsAddFrFieldsML
        (secClass          :         Character;
        satNum             :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        trackInd           :         Integer;
        astat              :         Integer;
        siteTag            :         Integer;
        spadocTag          :         Integer;
        pos                : in      Double1D;
        vel                : in      Double1D;
        extArr             : in      Double1D;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrFieldsML";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --extArr             : Double1D  (1..128);

    -- Adds one observation using its input data stored in an array. Depending on the observation type, some input data might be unavailable and left blank
    function ObsAddFrArray
        (xa_obs            : in      Double1D) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrArray";
        --xa_obs             : Double1D  (1..64);

    -- Works like ObsAddFrArray but designed for Matlab
    procedure ObsAddFrArrayML
        (xa_obs            : in      Double1D;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsAddFrArrayML";
        --xa_obs             : Double1D  (1..64);

    -- Retrieves all observation data in a single function call. Depending on the observation type, some input data might be unavailable
    function ObsGetAllFields
        (obsKey            :         Long_Long_Integer;
        secClass           : out     Character;
        satNum             : out     Integer;
        senNum             : out     Integer;
        obsTimeDs50utc     : out     Long_Float;
        elOrDec            : out     Long_Float;
        azOrRA             : out     Long_Float;
        range              : out     Long_Float;
        rangeRate          : out     Long_Float;
        elRate             : out     Long_Float;
        azRate             : out     Long_Float;
        rangeAccel         : out     Long_Float;
        obsType            : out     Character;
        trackInd           : out     Integer;
        astat              : out     Integer;
        siteTag            : out     Integer;
        spadocTag          : out     Integer;
        pos                : out     Double1D;
        vel                : out     Double1D;
        extArr             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetAllFields";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --extArr             : Double1D  (1..128);

    -- Retrieves observation data and stored it in the passing array. Depending on the observation type, some data fields might be unavailable
    -- See ObsGetField for description of xa_obs elements
    function ObsDataToArray
        (obsKey            :         Long_Long_Integer;
        xa_obs             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsDataToArray";
        --xa_obs             : Double1D  (1..64);

    -- Updates existing observation data with the provided new data
    function ObsUpdateFrFields
        (obsKey            :         Long_Long_Integer;
        secClass           :         Character;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        trackInd           :         Integer;
        astat              :         Integer;
        siteTag            :         Integer;
        spadocTag          :         Integer;
        pos                : in      Double1D;
        vel                : in      Double1D;
        extArr             : in      Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsUpdateFrFields";
        --pos                : Double1D  (1..3);
        --vel                : Double1D  (1..3);
        --extArr             : Double1D  (1..128);

    -- Retrieves the value of a specific field of an observation
    function ObsGetField
        (obsKey            :         Long_Long_Integer;
        xf_Obs             :         Integer;
        strValue           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetField";
        --strValue           : String    (1..512);

    -- Updates the value of a field of an observation
    -- See ObsGetField for a description of the xf_Obs parameter.
    -- Satellite number, sensor number, and observation time are not allowed to be updated.
    function ObsSetField
        (obsKey            :         Long_Long_Integer;
        xf_Obs             :         Integer;
        strValue           : in      String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsSetField";
        --strValue           : String    (1..512);

    -- Returns observation in B3-card string
    function ObsGetB3Card
        (obsKey            :         Long_Long_Integer;
        b3Card             : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetB3Card";
        --b3Card             : String    (1..512);

    -- Returns observation in TTY-card string
    function ObsGetTTYCard
        (obsKey            :         Long_Long_Integer;
        ttyCard1           : out     String;
        ttyCard2           : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetTTYCard";
        --ttyCard1           : String    (1..512);
        --ttyCard2           : String    (1..512);

    -- Returns observation in CSV-format string
    function ObsGetCsv
        (obsKey            :         Long_Long_Integer;
        csvline            : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetCsv";
        --csvline            : String    (1..512);

    -- Constructs a B3-card string from the input observation data fields
    procedure ObsFieldsToB3Card
        (secClass          :         Character;
        satNum             :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        trackInd           :         Integer;
        astat              :         Integer;
        siteTag            :         Integer;
        spadocTag          :         Integer;
        pos                : in      Double1D;
        b3Card             : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ObsFieldsToB3Card";
        --pos                : Double1D  (1..3);
        --b3Card             : String    (1..512);

    -- Constructs a csv string from the input observation data fields
    procedure ObsFieldsToCsv
        (secClass          :         Character;
        satNum             :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        trackInd           :         Integer;
        astat              :         Integer;
        siteTag            :         Integer;
        spadocTag          :         Integer;
        pos                : in      Double1D;
        csvLine            : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ObsFieldsToCsv";
        --pos                : Double1D  (1..3);
        --csvLine            : String    (1..512);

    -- Constructs a TTY-card string from the input observation data fields
    procedure ObsFieldsToTTYCard
        (secClass          :         Character;
        satNum             :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        elOrDec            :         Long_Float;
        azOrRA             :         Long_Float;
        range              :         Long_Float;
        rangeRate          :         Long_Float;
        elRate             :         Long_Float;
        azRate             :         Long_Float;
        rangeAccel         :         Long_Float;
        obsType            :         Character;
        pos                : in      Double1D;
        ttyCard1           : out     String;
        ttyCard2           : out     String)
    with Import => True,
        Convention => C,
        External_Name => "ObsFieldsToTTYCard";
        --pos                : Double1D  (1..3);
        --ttyCard1           : String    (1..512);
        --ttyCard2           : String    (1..512);

    -- Computes an obsKey from individually provided fields
    function ObsFieldsToObsKey
        (satNum            :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float) return Long_Long_Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsFieldsToObsKey";

    -- Works like ObsFieldsToObsKey but designed for Matlab
    procedure ObsFieldsToObsKeyML
        (satNum            :         Integer;
        senNum             :         Integer;
        obsTimeDs50utc     :         Long_Float;
        obsKey             : out     Long_Long_Integer)
    with Import => True,
        Convention => C,
        External_Name => "ObsFieldsToObsKeyML";

    -- Parses observation data from a B3-card (or B3E) string / one-line TTY / or CSV - Converts obs data to TEME of Date if neccessary
    function ObsB3Parse
        (b3ObsCard         : in      String;
        secClass           : out     Character;
        satNum             : out     Integer;
        senNum             : out     Integer;
        obsTimeDs50utc     : out     Long_Float;
        elOrDec            : out     Long_Float;
        azOrRA             : out     Long_Float;
        range              : out     Long_Float;
        rangeRate          : out     Long_Float;
        elRate             : out     Long_Float;
        azRate             : out     Long_Float;
        rangeAccel         : out     Long_Float;
        obsType            : out     Character;
        trackInd           : out     Integer;
        astat              : out     Integer;
        siteTag            : out     Integer;
        spadocTag          : out     Integer;
        pos                : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsB3Parse";
        --b3ObsCard          : String    (1..512);
        --pos                : Double1D  (1..3);

    -- Parses any observation data format (B3-card (or B3E) string / one or two line TTY / CSV - No conversion takes place
    function ObsParse
        (line1             : in      String;
        line2              : in      String;
        xa_obs             : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsParse";
        --line1              : String    (1..512);
        --line2              : String    (1..512);
        --xa_obs             : Double1D  (1..64);

    -- Loads observation data from an input text file and group them together in the specified groupd id (gid).
    -- This allows the users to easily manage (load/retrieve/remove/save) a group of observations using the group id (gid)
    function ObsLoadFileGID
        (obsFile           : in      String;
        gid                :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsLoadFileGID";
        --obsFile            : String    (1..512);

    -- Saves the currently loaded obs data belong to the specified group id (gid) to a file 
    function ObsSaveFileGID
        (obsFile           : in      String;
        gid                :         Integer;
        saveMode           :         Integer;
        obsForm            :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsSaveFileGID";
        --obsFile            : String    (1..512);

    -- Removes all observations belong to the specified group id (gid) from the set of currently loaded observations
    function ObsRemoveGID
        (gid               :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsRemoveGID";

    -- Returns the number of observations currently loaded that have the same gid
    function ObsGetCountGID
        (gid               :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetCountGID";

    -- Retrieves all of the currently loaded obsKeys that have the same gid. These obsKeys can be used to access the internal data for the observations
    -- Sort options (order):
    -- (+/-)1 = (descending/ascending) time, sensor, obsType, elev
    -- (+/-)2 = (descending/ascending) time, elevation
    -- (+/-)3 = (descending/ascending) time, sensor, otype, el, satno
    -- (+/-)4 = (descending/ascending) sensor, satno, time, elev
    -- (+/-)5 = (descending/ascending) sensor, time, elevation
    -- (+/-)6 = (descending/ascending) sensor, satno, obsType, time, elev
    -- (+/-)7 = (descending/ascending) satno, time, sensor, otype, el
    -- (+/-)8 = (reversed/same)        order as obs were read
    -- 9 : as is in the tree
    procedure ObsGetLoadedGID
        (gid               :         Integer;
        order              :         Integer;
        obsKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ObsGetLoadedGID";

    -- Converts obs type from character to integer
    function ObsTypeCToI
        (obsTypeChar       :         Character) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsTypeCToI";

    -- Converts obs type from integer to character
    function ObsTypeIToC
        (obsTypeInt        :         Integer) return Character
    with Import => True,
        Convention => C,
        External_Name => "ObsTypeIToC";

    -- Resets obs selection settings
    procedure ObsResetSelObs
    with Import => True,
        Convention => C,
        External_Name => "ObsResetSelObs";

    -- Computes other states of the input observation
    -- 
    -- The table below indicates which index values correspond to which fields in the xa_obState array.
    -- 
    -- table
    -- 
    -- Index
    -- Index Interpretation
    -- 
    -- 0Satellite number
    -- 1Sensor number
    -- 2Observation time in DS50UTC
    -- 10Position X/ECI (km)
    -- 11Position Y/ECI (km)
    -- 12Position Z/ECI (km)
    -- 13Velocity X/ECI (km/s)
    -- 14Velocity Y/ECI (km/s)
    -- 15Velocity Z/ECI (km/s)
    -- 16Geodetic latitude (deg)
    -- 17Geodetic longitude (deg)
    -- 18Geodetic height (km)
    -- 19Position X/EFG (km)
    -- 20Position Y/EFG (km)
    -- 21Position Z/EFG (km)
    -- 
    function ObsGetStates
        (obsKey            :         Long_Long_Integer;
        range_km           :         Long_Float;
        xa_obState         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsGetStates";
        --xa_obState         : Double1D  (1..64);

    -- Computes observation states from the observation data
    -- See ObsGetStates for a list of the values for the xa_obState parameter.
    function ObsDataToStates
        (xa_obs            : in      Double1D;
        xa_obState         : out     Double1D) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsDataToStates";
        --xa_obs             : Double1D  (1..64);
        --xa_obState         : Double1D  (1..64);

    -- Reconstructs obs string (B3-card/one or two line TTY/CSV) from obs data in the input array xa_obs
    function ObsArrToLines
        (xa_obs            : in      Double1D;
        obsForm            :         Integer;
        line1              : out     String;
        line2              : out     String) return Integer
    with Import => True,
        Convention => C,
        External_Name => "ObsArrToLines";
        --xa_obs             : Double1D  (1..64);
        --line1              : String    (1..512);
        --line2              : String    (1..512);

    -- Sets OBS key mode
    -- This mode can also be turned on if the user loads an input text file that includes this line - "AS_DMA_OBS_ON" -
    -- and is currently calling any of these methods: DllMainLoadFile(), or ObsLoadFile()
    function SetObsKeyMode
        (obs_keyMode       :         Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SetObsKeyMode";

    -- Gets current OBS key mode
    function GetObsKeyMode return Integer
    with Import => True,
        Convention => C,
        External_Name => "GetObsKeyMode";

    -- Returs the satellite number associated with the input obsKey
    function SatNumFrObsKey
        (obsKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SatNumFrObsKey";

    -- Returs the sensor number associated with the input obsKey
    function SenNumFrObsKey
        (obsKey            :         Long_Long_Integer) return Integer
    with Import => True,
        Convention => C,
        External_Name => "SenNumFrObsKey";

    -- Retrieves only obs that match the selection criteria
    procedure ObsGetSelected
        (xa_selob          : in      Double1D;
        order              :         Integer;
        numMatchedObss     : out     Integer;
        obsKeys            : out     Long1D_Ptr)
    with Import => True,
        Convention => C,
        External_Name => "ObsGetSelected";
        --xa_selob           : Double1D  (1..128);


end ObsDll;

-- ========================= End of auto generated code ==========================
