% This wrapper file was generated automatically by the GenDllWrappers program.
function freeLamod()   
   % Indexes of SenSatData fields
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   global XF_SENSAT_STEPMODE;
   % Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
   global XF_SENSAT_OPTVISFLAG;
   % Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
   global XF_SENSAT_VISPASSONLY;
   % Begin time in ds50TAI
   global XF_SENSAT_BEGDS50TAI;
   % End time in ds50TAI
   global XF_SENSAT_ENDDS50TAI;
   % Print interval
   global XF_SENSAT_INTERVAL;
   % Satellite's period
   global XF_SENSAT_PERIOD;
   
   
   %*******************************************************************************
   % Indexes of lookCode
   % Valid look
   global LOOK_VALID;
   % Failed horizon break test
   global LOOK_HTEST;
   % Failed limit tests
   global LOOK_SENLIMS;
   
   %*******************************************************************************
   
   % Indexes of look angle data output
   % Look time in ds50UTC
   global XA_LOOK_DS50UTC;
   % Look time in minutes since epoch
   global XA_LOOK_MSE;
   % Elevation (deg)
   global XA_LOOK_ELEV;
   % Azimuth (deg)
   global XA_LOOK_AZIM;
   % Range (km) or ? for optical sensor
   global XA_LOOK_RNG;
   % Range rate (km/sec) or ? for optical sensor
   global XA_LOOK_RNGRT;
   global XA_LOOK_SIZE;
   
   %*******************************************************************************
   
   % Indexes of viewing data output
   % computed U-vector to object
   global XF_VIEW_UVEC;
   % range unit vector
   global XF_VIEW_RUVEC;
   % topocentric L unit vector
   global XF_VIEW_LVEC;
   % station zenith vector
   global XF_VIEW_ZVEC;
   % computed range vector (km)
   global XF_VIEW_RNGVEC;
   % computed range-rate vector/relative velocity vector (km/sec)
   global XF_VIEW_RRTVEC;
   % unit vector of sun
   global XF_VIEW_SUNVEC;
   % unit vector of moon
   global XF_VIEW_MOONVEC;
   % angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
   global XF_VIEW_ANGARR;
   % illumination result
   global XF_VIEW_CVIS;
   % Relative velocity (km/sec)
   global XF_VIEW_RELVEL;
   % sensor position EFG
   global XF_VIEW_SENEFG;
   % limit check flags
   global XF_VIEW_LIMFLGS;
   % azimuth and elevation rates (deg/sec)
   global XF_VIEW_AZELRATES;
   % moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
   global XF_VIEW_MOONANGLES;
   
   
   %*******************************************************************************
   
   % Indexes of angle array
   % moon/sen/sat angle (deg)
   global XA_ANGLE_MOONSENSAT;
   % sun/earth/sat angle (deg)
   global XA_ANGLE_SUNEARTHSAT;
   % sun/earth/sen angle (deg)
   global XA_ANGLE_SUNEARTHSEN;
   % sun/sen/sat angle (deg) - solar exclusion angle
   global XA_ANGLE_SUNSENSAT;
   % earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
   global XA_ANGLE_SOLARASPECT;
   global XA_ANGLE_SIZE;
   
   % Indexes of moon angle array
   % DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
   % moon/earth/sat angle (deg)
   global XA_ANGLE_MOONEARTHSAT;
   % moon/earth/sen angle (deg)
   global XA_ANGLE_MOONEARTHSEN;
   
   
   %*******************************************************************************
   
   % Indexes of orbiting sensor's off-boresight/clock  array
   % off-boresight angle 1
   global XA_OFFBORE_EL1;
   % off-boresight clock 1
   global XA_OFFBORE_AZ1;
   % off-boresight angle 2
   global XA_OFFBORE_EL2;
   % off-boresight clock 2
   global XA_OFFBORE_AZ2;
   global XA_OFFBORE_SIZE;
   
   %*******************************************************************************
   
   % Indexes of LAMOD 1P-card data
   % Input time format: 0=Minutes since epoch, 1=UTC
   global XF_1P_TIMEFRM;
   % Begin time
   global XF_1P_BEGTIME;
   % End time
   global XF_1P_ENDTIME;
   % Ouput interval
   global XF_1P_INTERVAL;
   % Print options: 0: print look angles, 1: print look angle and initial conditions
   global XF_1P_PRTOPT;
   % Generate obs from look angles flag
   global XF_1P_GENOBS;
   % Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
   global XF_1P_VISFLG;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   global XF_1P_STEPMODE;
   % Processing mode: 'O': obsched mode; 'P': P ASCHED mode
   global XF_1P_PROCMODE;
   % Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
   global XF_1P_DIAGNOST;
   % Max solar aspect for optical sites
   global XF_1P_MAXSAA;
   
   %*******************************************************************************
   
   % Indexes of limit test flags in the returned array
   % az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
   global XA_LIMFLG_AZLIM;
   % el limits test flag (0=failed, 1=passed)
   global XA_LIMFLG_ELLIM;
   % earth in background flag (0=failed, 1=passed)
   global XA_LIMFLG_EARTHBK;
   % earth obstructed flag (0=failed, 1=passed)
   global XA_LIMFLG_EARTHOB;
   % lunar exclusion angle flag (0=failed, 1=passed)
   global XA_LIMFLG_LUNEXCL;
   % max range test flag (0=failed, 1=passed)
   global XA_LIMFLG_MAXRANGE;
   % min range test flag (0=failed, 1=passed)
   global XA_LIMFLG_MINRANGE;
   % penumb eclipse test flag (0=failed, 1=passed)
   global XA_LIMFLG_PENECLIP;
   % relative velocity test flag (0=failed, 1=passed)
   global XA_LIMFLG_RVELLIM;
   % solar aspect angle test flag (0=failed, 1=passed)
   global XA_LIMFLG_SAALIM;
   % solar exclusion angle flag (0=failed, 1=passed)
   global XA_LIMFLG_SOLEXCL;
   % umbral eclipse test flag (0=failed, 1=passed)
   global XA_LIMFLG_UMBECLIP;
   global XA_LIMFLG_SIZE;
   
   
   % Generate obs options
   % Don't generate obs
   global GENOBS_NONE;
   % Generate B3 obs
   global GENOBS_B3;
   % Generate TYY obs
   global GENOBS_TTY;
   % Generate SP TASKER V obsType
   global GENOBS_SPTASKER;
   % Generate CSV obs
   global GENOBS_CSV;
   
   
   % indexes of look and view data in an array
   % look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
   global XA_LV_LOOKCODE;
   % time in ds50UTC when the look angle is computed
   global XA_LV_DS50UTC;
   % time mse when the look angle is computed
   global XA_LV_MSE;
   % elevation (deg)
   global XA_LV_ELEV;
   % azimuth (deg)
   global XA_LV_AZIM;
   % range (km)
   global XA_LV_RNG;
   % range rate (km/s)
   global XA_LV_RNGRT;
   % right ascension (deg)
   global XA_LV_RA;
   % declination (deg)
   global XA_LV_DEC;
   % azimuth rate (deg/s)
   global XA_LV_AZRATE;
   % elevation rate (deg/s)
   global XA_LV_ELRATE;
   
   % sensor ECI position (X) (km)
   global XA_LV_SENPOSX;
   % sensor ECI position (Y) (km)
   global XA_LV_SENPOSY;
   % sensor ECI position (Z) (km)
   global XA_LV_SENPOSZ;
   % sensor ECI velocity (X) (km/s)
   global XA_LV_SENVELX;
   % sensor ECI velocity (Y) (km/s)
   global XA_LV_SENVELY;
   % sensor ECI velocity (Z) (km/s)
   global XA_LV_SENVELZ;
   % sensor latitude (deg)
   global XA_LV_SENLAT;
   % sensor longitude (deg)
   global XA_LV_SENLON;
   % sensor height (km)
   global XA_LV_SENHEIGHT;
   
   % satellite ECI position (X) (km)
   global XA_LV_SATPOSX;
   % satellite ECI position (Y) (km)
   global XA_LV_SATPOSY;
   % satellite ECI position (Z) (km)
   global XA_LV_SATPOSZ;
   % satellite ECI velocity (X) (km/s)
   global XA_LV_SATVELX;
   % satellite ECI velocity (Y) (km/s)
   global XA_LV_SATVELY;
   % satellite ECI velocity (Z) (km/s)
   global XA_LV_SATVELZ;
   % satellite latitude (deg)
   global XA_LV_SATLAT;
   % satellite longitude (deg)
   global XA_LV_SATLON;
   % satellite height (km)
   global XA_LV_SATHEIGHT;
   
   % computed U-vector to object (X)
   global XA_LV_UVECX;
   % computed U-vector to object (Y)
   global XA_LV_UVECY;
   % computed U-vector to object (Z)
   global XA_LV_UVECZ;
   % slant range unit vector (X)- vector from the sensor to the satellite
   global XA_LV_RUVECX;
   % slant range unit vector (Y)- vector from the sensor to the satellite
   global XA_LV_RUVECY;
   % slant range unit vector (Z)- vector from the sensor to the satellite
   global XA_LV_RUVECZ;
   % station unit vector (X) - vector directed from the center of the earth to the sensor
   global XA_LV_LVECX;
   % station unit vector (Y) - vector directed from the center of the earth to the sensor
   global XA_LV_LVECY;
   % station unit vector (Z) - vector directed from the center of the earth to the sensor
   global XA_LV_LVECZ;
   % station zenith vector (X)
   global XA_LV_ZVECX;
   % station zenith vector (Y)
   global XA_LV_ZVECY;
   % station zenith vector (Z)
   global XA_LV_ZVECZ;
   % slant range vector (X) (km) - vector from the sensor to the satellite
   global XA_LV_RNGVECX;
   % slant range vector (Y) (km) - vector from the sensor to the satellite
   global XA_LV_RNGVECY;
   % slant range vector (Z) (km) - vector from the sensor to the satellite
   global XA_LV_RNGVECZ;
   % range-rate vector - relative velocity vector (X) (km/s)
   global XA_LV_RRTVECX;
   % range-rate vector - relative velocity vector (Y) (km/s)
   global XA_LV_RRTVECY;
   % range-rate vector - relative velocity vector (Z) (km/s)
   global XA_LV_RRTVECZ;
   % unit vector to sun (X)
   global XA_LV_USUNX;
   % unit vector to sun (Y)
   global XA_LV_USUNY;
   % unit vector to sun (Z)
   global XA_LV_USUNZ;
   % unit vector to moon (X)
   global XA_LV_UMOONX;
   % unit vector to moon (Y)
   global XA_LV_UMOONY;
   % unit vector to moon (Z)
   global XA_LV_UMOONZ;
   % moon/sensor/satellite angle (deg)
   global XA_LV_MOSESA;
   % moon/earth/satellite angle (deg)
   global XA_LV_MOEASA;
   % moon/earth/sensor angle (deg)
   global XA_LV_MOEASE;
   % sun/sensor/satellite angle (deg)
   global XA_LV_SUSESA;
   % sun/earth/satellite angle (deg)
   global XA_LV_SUEASA;
   % sun/earth/sensor angle (deg)
   global XA_LV_SUEASE;
   % solar aspect angle (deg)
   global XA_LV_SOLAA;
   % illumination result
   global XA_LV_VIS;
   % relative velocity (km/s)
   global XA_LV_RELVEL;
   % off-boresight angle (deg) - constant azimuth fan only
   global XA_LV_OBSANGLE;
   % angle to fan (deg) - constant azimuth fan only
   global XA_LV_ANG2FAN;
   
   % pass azimuth check (0=failed, 1=passed)
   global XA_LV_AZLIM;
   % pass elevation check (0=failed, 1=passed)
   global XA_LV_ELLIM;
   % pass earth in background check (0=failed, 1=passed)
   global XA_LV_EARTHBK;
   % pass earth obstruction check (0=failed, 1=passed)
   global XA_LV_EARTHOB;
   % pass lunar exclusion check (0=failed, 1=passed)
   global XA_LV_LUNEXCL;
   % pass maximum range check (0=failed, 1=passed)
   global XA_LV_MAXRANGE;
   % pass minimum range check (0=failed, 1=passed)
   global XA_LV_MINRANGE;
   % pass penum eclipse check (0=failed, 1=passed)
   global XA_LV_PENECLIP;
   % pass relative velocity check (0=failed, 1=passed)
   global XA_LV_RVELLIM;
   % pass solar aspect angle check (0=failed, 1=passed)
   global XA_LV_SAALIM;
   % pass solar exclusion angle check (0=failed, 1=passed)
   global XA_LV_SOLEXCL;
   % pass umbral eclipse check (0=failed, 1=passed)
   global XA_LV_UMBECLIP;
   % pass visibility check for optical sensor (0=failed, 1=passed)
   global XA_LV_OPTVIS;
   
   % orbiting sensor EFG position (X) (km)
   global XA_LV_SENPOSE;
   % orbiting sensor EFG position (Y) (km)
   global XA_LV_SENPOSF;
   % orbiting sensor EFG position (Z) (km)
   global XA_LV_SENPOSG;
   % orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   global XA_LV_NBORE1;
   % orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   global XA_LV_NBORE2;
   % orbiting sensor off boresight elevation #1 (deg)
   global XA_LV_OBEL1;
   % orbiting sensor off boresight azimuth #1 (deg)
   global XA_LV_OBAZ1;
   % orbiting sensor off boresight elevation #2 (deg)
   global XA_LV_OBAZ2;
   % orbiting sensor off boresight azimuth #2 (deg)
   global XA_LV_OBEL2;
   
   global XA_LV_SIZE;
   
   
   % indexes of sensor/satellite data in an array
   % Sensor number
   global XA_SENSAT_SENNUM;
   % Satellite number
   global XA_SENSAT_SATNUM;
   % Sensor view type
   global XA_SENSAT_VIEWTYPE;
   % Sensor observation type
   global XA_SENSAT_OBSTYPE;
   % Max number of points per pass
   global XA_SENSAT_PTSPERPAS;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   global XA_SENSAT_STEPMODE;
   % Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
   global XA_SENSAT_OPTVISFLAG;
   % Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
   global XA_SENSAT_VISPASSONLY;
   % Start time in ds50TAI
   global XA_SENSAT_STARTAI;
   % Stop time in ds50TAI
   global XA_SENSAT_STOPTAI;
   % Output interval (min)
   global XA_SENSAT_INTERVAL;
   % Satellite's period (min)
   global XA_SENSAT_PERIOD;
   % Sensor number
   global XA_SENSAT_SENKEY;
   
   global XA_SENSAT_SIZE;
   
   
   % LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   global XA_LA_PARMS_TIMEFLG;
   % begin time
   global XA_LA_PARMS_STARTTIME;
   % end time
   global XA_LA_PARMS_STOPTIME;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   global XA_LA_PARMS_STEPMODE;
   % optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
   global XA_LA_PARMS_VISFLG;
   % max solar aspect angle (deg) for optical sites
   global XA_LA_PARMS_XMSAA;
   
   global XA_LA_PARMS_SIZE;
   
   % Different sensor location types
   % Sensor location is in ECI - specific to LAMOD
   global SENLOC_TYPE_ECI;
   
   % Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
   % location type (see SENLOC_TYPE_? for available types)
   global XA_LOCSEN_LOCTYPE;
   % sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
   global XA_LOCSEN_POS1;
   % sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
   global XA_LOCSEN_POS2;
   % sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
   global XA_LOCSEN_POS3;
   
   % for ground sensor
   % astronomical latitude (deg) (+: North, -: South)
   global XA_LOCSEN_ASTROLAT;
   % astronomical longitude (deg) (+: West, -: East)
   global XA_LOCSEN_ASTROLON;
   
   % for orbiting sensor
   % orbiting sensor velocity in ECI/X component (km/s)
   global XA_LOCSEN_VEL1;
   % orbiting sensor velocity in ECI/Y component (km/s)
   global XA_LOCSEN_VEL2;
   % orbiting sensor velocity in ECI/Z component (km/s)
   global XA_LOCSEN_VEL3;
   
   global XA_LOCSEN_SIZE;
   
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   global XA_PVSAT_POSX;
   % satellite ECI position Y (km) in TEME of Date
   global XA_PVSAT_POSY;
   % satellite ECI position Z (km) in TEME of Date
   global XA_PVSAT_POSZ;
   % satellite ECI velocity X (km/sec) in TEME of Date
   global XA_PVSAT_VELX;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   global XA_PVSAT_VELY;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   global XA_PVSAT_VELZ;
   
   global XA_PVSAT_SIZE;
   
   
   % Indexes of SenSatData fields
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   clear XF_SENSAT_STEPMODE;
   % Optical visibility flag (old name XF_SENSAT_VISPASSONLY)
   clear XF_SENSAT_OPTVISFLAG;
   % Obsolete - should use new name XF_SENSAT_OPTVISFLAG instead
   clear XF_SENSAT_VISPASSONLY;
   % Begin time in ds50TAI
   clear XF_SENSAT_BEGDS50TAI;
   % End time in ds50TAI
   clear XF_SENSAT_ENDDS50TAI;
   % Print interval
   clear XF_SENSAT_INTERVAL;
   % Satellite's period
   clear XF_SENSAT_PERIOD;
   
   
   %*******************************************************************************
   % Indexes of lookCode
   % Valid look
   clear LOOK_VALID;
   % Failed horizon break test
   clear LOOK_HTEST;
   % Failed limit tests
   clear LOOK_SENLIMS;
   
   %*******************************************************************************
   
   % Indexes of look angle data output
   % Look time in ds50UTC
   clear XA_LOOK_DS50UTC;
   % Look time in minutes since epoch
   clear XA_LOOK_MSE;
   % Elevation (deg)
   clear XA_LOOK_ELEV;
   % Azimuth (deg)
   clear XA_LOOK_AZIM;
   % Range (km) or ? for optical sensor
   clear XA_LOOK_RNG;
   % Range rate (km/sec) or ? for optical sensor
   clear XA_LOOK_RNGRT;
   clear XA_LOOK_SIZE;
   
   %*******************************************************************************
   
   % Indexes of viewing data output
   % computed U-vector to object
   clear XF_VIEW_UVEC;
   % range unit vector
   clear XF_VIEW_RUVEC;
   % topocentric L unit vector
   clear XF_VIEW_LVEC;
   % station zenith vector
   clear XF_VIEW_ZVEC;
   % computed range vector (km)
   clear XF_VIEW_RNGVEC;
   % computed range-rate vector/relative velocity vector (km/sec)
   clear XF_VIEW_RRTVEC;
   % unit vector of sun
   clear XF_VIEW_SUNVEC;
   % unit vector of moon
   clear XF_VIEW_MOONVEC;
   % angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect angle)
   clear XF_VIEW_ANGARR;
   % illumination result
   clear XF_VIEW_CVIS;
   % Relative velocity (km/sec)
   clear XF_VIEW_RELVEL;
   % sensor position EFG
   clear XF_VIEW_SENEFG;
   % limit check flags
   clear XF_VIEW_LIMFLGS;
   % azimuth and elevation rates (deg/sec)
   clear XF_VIEW_AZELRATES;
   % moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)
   clear XF_VIEW_MOONANGLES;
   
   
   %*******************************************************************************
   
   % Indexes of angle array
   % moon/sen/sat angle (deg)
   clear XA_ANGLE_MOONSENSAT;
   % sun/earth/sat angle (deg)
   clear XA_ANGLE_SUNEARTHSAT;
   % sun/earth/sen angle (deg)
   clear XA_ANGLE_SUNEARTHSEN;
   % sun/sen/sat angle (deg) - solar exclusion angle
   clear XA_ANGLE_SUNSENSAT;
   % earth/sat/sun angle (deg) - solar aspect angle/solar phase angle
   clear XA_ANGLE_SOLARASPECT;
   clear XA_ANGLE_SIZE;
   
   % Indexes of moon angle array
   % DHN 18Jan13 - Add moon/earth/sat, moon/earth/sen  angles
   % moon/earth/sat angle (deg)
   clear XA_ANGLE_MOONEARTHSAT;
   % moon/earth/sen angle (deg)
   clear XA_ANGLE_MOONEARTHSEN;
   
   
   %*******************************************************************************
   
   % Indexes of orbiting sensor's off-boresight/clock  array
   % off-boresight angle 1
   clear XA_OFFBORE_EL1;
   % off-boresight clock 1
   clear XA_OFFBORE_AZ1;
   % off-boresight angle 2
   clear XA_OFFBORE_EL2;
   % off-boresight clock 2
   clear XA_OFFBORE_AZ2;
   clear XA_OFFBORE_SIZE;
   
   %*******************************************************************************
   
   % Indexes of LAMOD 1P-card data
   % Input time format: 0=Minutes since epoch, 1=UTC
   clear XF_1P_TIMEFRM;
   % Begin time
   clear XF_1P_BEGTIME;
   % End time
   clear XF_1P_ENDTIME;
   % Ouput interval
   clear XF_1P_INTERVAL;
   % Print options: 0: print look angles, 1: print look angle and initial conditions
   clear XF_1P_PRTOPT;
   % Generate obs from look angles flag
   clear XF_1P_GENOBS;
   % Compute optical visibility flag: 0: use sen limits,  1: optically visible passes only, 2: output pass only if SAA less than max SAA
   clear XF_1P_VISFLG;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   clear XF_1P_STEPMODE;
   % Processing mode: 'O': obsched mode; 'P': P ASCHED mode
   clear XF_1P_PROCMODE;
   % Diagnostic mode: 0: none, 1: print sen/sat pos at each look, 2: print pass by pass diagnostics, 3: both 1 and 2
   clear XF_1P_DIAGNOST;
   % Max solar aspect for optical sites
   clear XF_1P_MAXSAA;
   
   %*******************************************************************************
   
   % Indexes of limit test flags in the returned array
   % az limits/off-boresight (constant azimuth fan) test flag (0=failed, 1=passed)
   clear XA_LIMFLG_AZLIM;
   % el limits test flag (0=failed, 1=passed)
   clear XA_LIMFLG_ELLIM;
   % earth in background flag (0=failed, 1=passed)
   clear XA_LIMFLG_EARTHBK;
   % earth obstructed flag (0=failed, 1=passed)
   clear XA_LIMFLG_EARTHOB;
   % lunar exclusion angle flag (0=failed, 1=passed)
   clear XA_LIMFLG_LUNEXCL;
   % max range test flag (0=failed, 1=passed)
   clear XA_LIMFLG_MAXRANGE;
   % min range test flag (0=failed, 1=passed)
   clear XA_LIMFLG_MINRANGE;
   % penumb eclipse test flag (0=failed, 1=passed)
   clear XA_LIMFLG_PENECLIP;
   % relative velocity test flag (0=failed, 1=passed)
   clear XA_LIMFLG_RVELLIM;
   % solar aspect angle test flag (0=failed, 1=passed)
   clear XA_LIMFLG_SAALIM;
   % solar exclusion angle flag (0=failed, 1=passed)
   clear XA_LIMFLG_SOLEXCL;
   % umbral eclipse test flag (0=failed, 1=passed)
   clear XA_LIMFLG_UMBECLIP;
   clear XA_LIMFLG_SIZE;
   
   
   % Generate obs options
   % Don't generate obs
   clear GENOBS_NONE;
   % Generate B3 obs
   clear GENOBS_B3;
   % Generate TYY obs
   clear GENOBS_TTY;
   % Generate SP TASKER V obsType
   clear GENOBS_SPTASKER;
   % Generate CSV obs
   clear GENOBS_CSV;
   
   
   % indexes of look and view data in an array
   % look code: 0=valid look; 1=Fail horizon break test; 2=Fail sensor's limit tests
   clear XA_LV_LOOKCODE;
   % time in ds50UTC when the look angle is computed
   clear XA_LV_DS50UTC;
   % time mse when the look angle is computed
   clear XA_LV_MSE;
   % elevation (deg)
   clear XA_LV_ELEV;
   % azimuth (deg)
   clear XA_LV_AZIM;
   % range (km)
   clear XA_LV_RNG;
   % range rate (km/s)
   clear XA_LV_RNGRT;
   % right ascension (deg)
   clear XA_LV_RA;
   % declination (deg)
   clear XA_LV_DEC;
   % azimuth rate (deg/s)
   clear XA_LV_AZRATE;
   % elevation rate (deg/s)
   clear XA_LV_ELRATE;
   
   % sensor ECI position (X) (km)
   clear XA_LV_SENPOSX;
   % sensor ECI position (Y) (km)
   clear XA_LV_SENPOSY;
   % sensor ECI position (Z) (km)
   clear XA_LV_SENPOSZ;
   % sensor ECI velocity (X) (km/s)
   clear XA_LV_SENVELX;
   % sensor ECI velocity (Y) (km/s)
   clear XA_LV_SENVELY;
   % sensor ECI velocity (Z) (km/s)
   clear XA_LV_SENVELZ;
   % sensor latitude (deg)
   clear XA_LV_SENLAT;
   % sensor longitude (deg)
   clear XA_LV_SENLON;
   % sensor height (km)
   clear XA_LV_SENHEIGHT;
   
   % satellite ECI position (X) (km)
   clear XA_LV_SATPOSX;
   % satellite ECI position (Y) (km)
   clear XA_LV_SATPOSY;
   % satellite ECI position (Z) (km)
   clear XA_LV_SATPOSZ;
   % satellite ECI velocity (X) (km/s)
   clear XA_LV_SATVELX;
   % satellite ECI velocity (Y) (km/s)
   clear XA_LV_SATVELY;
   % satellite ECI velocity (Z) (km/s)
   clear XA_LV_SATVELZ;
   % satellite latitude (deg)
   clear XA_LV_SATLAT;
   % satellite longitude (deg)
   clear XA_LV_SATLON;
   % satellite height (km)
   clear XA_LV_SATHEIGHT;
   
   % computed U-vector to object (X)
   clear XA_LV_UVECX;
   % computed U-vector to object (Y)
   clear XA_LV_UVECY;
   % computed U-vector to object (Z)
   clear XA_LV_UVECZ;
   % slant range unit vector (X)- vector from the sensor to the satellite
   clear XA_LV_RUVECX;
   % slant range unit vector (Y)- vector from the sensor to the satellite
   clear XA_LV_RUVECY;
   % slant range unit vector (Z)- vector from the sensor to the satellite
   clear XA_LV_RUVECZ;
   % station unit vector (X) - vector directed from the center of the earth to the sensor
   clear XA_LV_LVECX;
   % station unit vector (Y) - vector directed from the center of the earth to the sensor
   clear XA_LV_LVECY;
   % station unit vector (Z) - vector directed from the center of the earth to the sensor
   clear XA_LV_LVECZ;
   % station zenith vector (X)
   clear XA_LV_ZVECX;
   % station zenith vector (Y)
   clear XA_LV_ZVECY;
   % station zenith vector (Z)
   clear XA_LV_ZVECZ;
   % slant range vector (X) (km) - vector from the sensor to the satellite
   clear XA_LV_RNGVECX;
   % slant range vector (Y) (km) - vector from the sensor to the satellite
   clear XA_LV_RNGVECY;
   % slant range vector (Z) (km) - vector from the sensor to the satellite
   clear XA_LV_RNGVECZ;
   % range-rate vector - relative velocity vector (X) (km/s)
   clear XA_LV_RRTVECX;
   % range-rate vector - relative velocity vector (Y) (km/s)
   clear XA_LV_RRTVECY;
   % range-rate vector - relative velocity vector (Z) (km/s)
   clear XA_LV_RRTVECZ;
   % unit vector to sun (X)
   clear XA_LV_USUNX;
   % unit vector to sun (Y)
   clear XA_LV_USUNY;
   % unit vector to sun (Z)
   clear XA_LV_USUNZ;
   % unit vector to moon (X)
   clear XA_LV_UMOONX;
   % unit vector to moon (Y)
   clear XA_LV_UMOONY;
   % unit vector to moon (Z)
   clear XA_LV_UMOONZ;
   % moon/sensor/satellite angle (deg)
   clear XA_LV_MOSESA;
   % moon/earth/satellite angle (deg)
   clear XA_LV_MOEASA;
   % moon/earth/sensor angle (deg)
   clear XA_LV_MOEASE;
   % sun/sensor/satellite angle (deg)
   clear XA_LV_SUSESA;
   % sun/earth/satellite angle (deg)
   clear XA_LV_SUEASA;
   % sun/earth/sensor angle (deg)
   clear XA_LV_SUEASE;
   % solar aspect angle (deg)
   clear XA_LV_SOLAA;
   % illumination result
   clear XA_LV_VIS;
   % relative velocity (km/s)
   clear XA_LV_RELVEL;
   % off-boresight angle (deg) - constant azimuth fan only
   clear XA_LV_OBSANGLE;
   % angle to fan (deg) - constant azimuth fan only
   clear XA_LV_ANG2FAN;
   
   % pass azimuth check (0=failed, 1=passed)
   clear XA_LV_AZLIM;
   % pass elevation check (0=failed, 1=passed)
   clear XA_LV_ELLIM;
   % pass earth in background check (0=failed, 1=passed)
   clear XA_LV_EARTHBK;
   % pass earth obstruction check (0=failed, 1=passed)
   clear XA_LV_EARTHOB;
   % pass lunar exclusion check (0=failed, 1=passed)
   clear XA_LV_LUNEXCL;
   % pass maximum range check (0=failed, 1=passed)
   clear XA_LV_MAXRANGE;
   % pass minimum range check (0=failed, 1=passed)
   clear XA_LV_MINRANGE;
   % pass penum eclipse check (0=failed, 1=passed)
   clear XA_LV_PENECLIP;
   % pass relative velocity check (0=failed, 1=passed)
   clear XA_LV_RVELLIM;
   % pass solar aspect angle check (0=failed, 1=passed)
   clear XA_LV_SAALIM;
   % pass solar exclusion angle check (0=failed, 1=passed)
   clear XA_LV_SOLEXCL;
   % pass umbral eclipse check (0=failed, 1=passed)
   clear XA_LV_UMBECLIP;
   % pass visibility check for optical sensor (0=failed, 1=passed)
   clear XA_LV_OPTVIS;
   
   % orbiting sensor EFG position (X) (km)
   clear XA_LV_SENPOSE;
   % orbiting sensor EFG position (Y) (km)
   clear XA_LV_SENPOSF;
   % orbiting sensor EFG position (Z) (km)
   clear XA_LV_SENPOSG;
   % orbiting sensor boresight vector #1 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   clear XA_LV_NBORE1;
   % orbiting sensor boresight vector #2 (1='D', 2='U', 3='B', 4='A', 5='R', 6='L', 7=no limits)
   clear XA_LV_NBORE2;
   % orbiting sensor off boresight elevation #1 (deg)
   clear XA_LV_OBEL1;
   % orbiting sensor off boresight azimuth #1 (deg)
   clear XA_LV_OBAZ1;
   % orbiting sensor off boresight elevation #2 (deg)
   clear XA_LV_OBAZ2;
   % orbiting sensor off boresight azimuth #2 (deg)
   clear XA_LV_OBEL2;
   
   clear XA_LV_SIZE;
   
   
   % indexes of sensor/satellite data in an array
   % Sensor number
   clear XA_SENSAT_SENNUM;
   % Satellite number
   clear XA_SENSAT_SATNUM;
   % Sensor view type
   clear XA_SENSAT_VIEWTYPE;
   % Sensor observation type
   clear XA_SENSAT_OBSTYPE;
   % Max number of points per pass
   clear XA_SENSAT_PTSPERPAS;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   clear XA_SENSAT_STEPMODE;
   % Optical visibility flag (old name XA_SENSAT_VISPASSONLY)
   clear XA_SENSAT_OPTVISFLAG;
   % Obsolete - should use new name XA_SENSAT_OPTVISFLAG instead
   clear XA_SENSAT_VISPASSONLY;
   % Start time in ds50TAI
   clear XA_SENSAT_STARTAI;
   % Stop time in ds50TAI
   clear XA_SENSAT_STOPTAI;
   % Output interval (min)
   clear XA_SENSAT_INTERVAL;
   % Satellite's period (min)
   clear XA_SENSAT_PERIOD;
   % Sensor number
   clear XA_SENSAT_SENKEY;
   
   clear XA_SENSAT_SIZE;
   
   
   % LAMOD control parameters in input array xa_la_parms that is used in LamodInitSenSat_MT()
   % input format for begin and end times (0: minutes since epoch, 1: days since 1950 UTC)
   clear XA_LA_PARMS_TIMEFLG;
   % begin time
   clear XA_LA_PARMS_STARTTIME;
   % end time
   clear XA_LA_PARMS_STOPTIME;
   % Step mode flag: 0= use culmination mode, 1= use step mode, 2= use task mode
   clear XA_LA_PARMS_STEPMODE;
   % optical visibility flag:	0=Accept all passes, 1=Accept optically visual pass only, 2=Same as 1 w/ SAA restrictions, 3=For IR sensors, 9=Use limits record
   clear XA_LA_PARMS_VISFLG;
   % max solar aspect angle (deg) for optical sites
   clear XA_LA_PARMS_XMSAA;
   
   clear XA_LA_PARMS_SIZE;
   
   % Different sensor location types
   % Sensor location is in ECI - specific to LAMOD
   clear SENLOC_TYPE_ECI;
   
   % Sensor location - for use in LamodSenSatDirect_OS() all ground-based sensor types and also orbiting
   % location type (see SENLOC_TYPE_? for available types)
   clear XA_LOCSEN_LOCTYPE;
   % sensor location ECR/EFG X component (km) or LLH/Lat (deg) / orbiting sensor ECI/X component (km) (SENLOC_TYPE_ECI)
   clear XA_LOCSEN_POS1;
   % sensor location ECR/EFG Y component (km) or LLH/Lon (+: East/-: West) (deg) / orbiting sensor ECI/Y component (km) (SENLOC_TYPE_ECI)
   clear XA_LOCSEN_POS2;
   % sensor location ECR/EFG Z component (km) or LLH/Height (km) / or orbiting sensor ECI/Z component (km) (SENLOC_TYPE_ECI)
   clear XA_LOCSEN_POS3;
   
   % for ground sensor
   % astronomical latitude (deg) (+: North, -: South)
   clear XA_LOCSEN_ASTROLAT;
   % astronomical longitude (deg) (+: West, -: East)
   clear XA_LOCSEN_ASTROLON;
   
   % for orbiting sensor
   % orbiting sensor velocity in ECI/X component (km/s)
   clear XA_LOCSEN_VEL1;
   % orbiting sensor velocity in ECI/Y component (km/s)
   clear XA_LOCSEN_VEL2;
   % orbiting sensor velocity in ECI/Z component (km/s)
   clear XA_LOCSEN_VEL3;
   
   clear XA_LOCSEN_SIZE;
   
   
   % Satellite state data
   % satellite ECI position X (km) in TEME of Date
   clear XA_PVSAT_POSX;
   % satellite ECI position Y (km) in TEME of Date
   clear XA_PVSAT_POSY;
   % satellite ECI position Z (km) in TEME of Date
   clear XA_PVSAT_POSZ;
   % satellite ECI velocity X (km/sec) in TEME of Date
   clear XA_PVSAT_VELX;
   % satellite ECI velocity Y (km/sec) in TEME of Date
   clear XA_PVSAT_VELY;
   % satellite ECI velocity Z (km/sec) in TEME of Date
   clear XA_PVSAT_VELZ;
   
   clear XA_PVSAT_SIZE;
   
   FreeLamodDll;
   clear LoadLamodDll;
   clear FreeLamodDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Lamod dll for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisite section, before using this DLL.
   clear LamodInit
   
   %  Returns information about the current version of Lamod.dll. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Lamod DLL. 
   clear LamodGetInfo
   
   %  Loads Lamod-related parameters (1P/2P/3P cards, and Lamod parameter free format) from an input text file
   %  Returns zero indicating the file has been read successfully. Other values indicate an error.
   clear LamodLoadFile
   
   %  Loads Lamod control parameters and all Lamod related data (environment, time, elsets, sensors) from an input text file
   clear LamodLoadFileAll
   
   %  Loads a single Lamod-typed card
   clear LamodLoadCard
   
   %  Saves any currently loaded Lamod-related settings to a file
   %  The purpose of this function is to save the current Lamod-related settings, usually used in GUI applications, for future use.
   clear LamodSaveFile
   
   %  Returns number of sensors/satellites entered via 1P/2P cards
   %  See LamodGetSenNums for example.
   clear LamodGetNumOfSensSats
   
   %  Retrieves all of the input sensor numbers that were entered via 1P-card  (column 38-44), 2P-card, or Lamod parameter free format (SENNO=)
   clear LamodGetSenNums
   
   %  Retrieves all of the input satellite numbers that were entered via 1P-card (column 40-62), 2P-card, or Lamod parameter free format (SATNO=)
   %  See LamodGetSenNums for example.
   clear LamodGetSatNums
   
   %  Builds and returns the Lamod parameter card (1P-Card) from the current Lamod settings
   clear LamodGet1pCard
   
   %  Retrieves all Lamod control parameters with a single function call
   clear LamodGet1pAll
   
   %  Sets all Lamod control parameters with a single function call
   %  The values of <i>visFlg</i> have been changed to match those of sensor limits. <i>VisFlg</i> = 9 now means using limits record value (from V5.4.2 and earlier versions, this used to be <i>visFlg</i> = 0).
   %  
   %  There are cases when the program switches to step mode even though the users have requested culmination mode:
   %  <ul>
   %  <li>When the sensor is an orbiting sensor</li>
   %  <li>When the target satellite orbit has large period (&gt; 960 minutes)</li>
   %  <li>When the last pass's culmination time passes the requested stopTime (culmination time == 0 and setTime == 0)</li>
   %  <li>When a pass has multiple maximum elevations (culmination time == -1.0)</li>
   %  </ul>
   clear LamodSet1pAll
   
   %  Retrieves the value of a specified Lamod control parameter (1P-card field) 
   %  <br>
   %  Remember to convert <i>valueStr</i> to the correct data type that it represents.
   %  <br>
   %  The table below shows the values for the xf_1P parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>1  </td><td> Input time format : 0: Minutes since epoch, 1: UTC</td></tr>
   %  <tr><td>2  </td><td> Begin time</td></tr>
   %  <tr><td>3  </td><td> End time</td></tr>
   %  <tr><td>4  </td><td> Ouput interval</td></tr>
   %  <tr><td>5  </td><td> Print options: 0: print look angles, 1: print look angle and initial conditions</td></tr>
   %  <tr><td>6  </td><td> Generate obs from look angles flag</td></tr>
   %  <tr><td>7  </td><td> Compute optical visibility flag: 0: use limits record value, 1: output optically visible passes only,
   %  2: output pass only if solar aspect angle &lt; masx solar aspect angle</td></tr>
   %  <tr><td>8  </td><td> Step mode flag: 0: use culmination mode; 1: use step mode</td></tr>
   %  <tr><td>9  </td><td> Processing mode: 'O': obsched mode; 'P':P ASCHED mode</td></tr>
   %  <tr><td>10 </td><td> Diagnostic mode: 0: none, 1: print sensor/sat position at each look, 2: print pass by pass diagnostics,
   %  3: both 1 and 2</td></tr>
   %  <tr><td>11 </td><td> Max solar aspect for optical sites</td></tr>   
   %  </table>	
   clear LamodGet1pField
   
   %  Sets the value of a specified Lamod control parameter (1P-card field)
   %  See LamodGet1pField for description of the xf_1P parameter values.
   clear LamodSet1pField
   
   %  Retrieves the concurrent viewing options read from the input 3P Parameter card
   %  The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
   clear LamodGet3pAll
   
   %  Sets concurrent viewing options similar to what is entered in the input 3P Parameter card
   %  The concurrent viewing implementation is used to be totally in the LamodDll.dll. Now, the Lamod library provides the users the capability to implement the concurrent viewing from their driver programs. There is no limit on the number of satellites/sensors being use in concurrent viewing in the new library.
   clear LamodSet3pAll
   
   %  Returns the full file name of the output obs file that was specified using "OBSOUT = " in the main input file or using the LamodSetObsFileName() function call
   %  The users need to make sure they have turned on the flag to generate obs from look angles. Otherwise, this function will return an empty string to the obsFile.
   clear LamodGetObsFileName
   
   %  Sets the full file name of the output obs file which will be used to store the generated obs data
   %  Another way to set the output obs file name is entering "OBSOUT = obsFileName" in the input file. 
   %  
   %  The users need to make sure they have also turned on the flag to generate obs from look angles.
   clear LamodSetObsFileName
   
   %  Checks to see whether the input satellite will ever be viewable to the input sensor
   %  This function is for the initial visibility check which screens out sensors that can't possibly acquire the satellite. Internally, the LamodInitSenSat() also calls this function to do the screening.
   %  
   %  If the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   clear LamodSenSatVisible
   
   %  Initializes a sensor/satellite pair in preparation for computing look angles
   %  It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
   %  
   %  The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
   %  
   %  Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   clear LamodInitSenSat
   
   %  Initializes a sensor/satellite pair in preparation for computing look angles using its own LAMOD parameters - suitable for multithread application
   %  This function is similar to LamodInitSenSat but allows the user to enter separate LAMOD parameters for each call which is suitable for multithread application
   %  It's a good practice to initialize the satellite (SatState.SatStateInitSat) before calling this routine.
   %  
   %  The users need to call this routine only once for each sensor/satellite pair they want to compute the look angles. The function however can be called again when the sensor and/or the satellite data is changed.
   %  
   %  Internally, this function does the initial visibility check to see if the sensor can possibly acquire the satellite. However, if the satellite is an EXTEPHEM (see External Ephemerides document), it will always pass this visibility check (assume the satellite is viewable to the sensor).
   clear LamodInitSenSat_MT
   
   %  Retrieves all of the data for an initialized sensor/satellite pair with a single function call
   clear LamodGetSenSatDataAll
   
   %  Retrieves an individual field of data for an initialized sensor/satellite pair
   %  <br>
   %  Remember to convert <i>valueStr</i> to the correct data type that it represents.
   %  <br>
   %  The table below shows the values for the xf_SenSat parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td> 1 </td><td> Step mode</td></tr>
   %  <tr><td> 2 </td><td> Optical visibility flag</td></tr>
   %  <tr><td> 3 </td><td> Begin time in ds50TAI</td></tr>
   %  <tr><td> 4 </td><td> End time in ds50TAI</td></tr>
   %  <tr><td> 5 </td><td> Print interval </td></tr>
   %  <tr><td> 6 </td><td> Satellite's period</td></tr>
   %  </table>
   clear LamodGetSenSatDataField
   
   %  Retrieves all data fields belonging to the sensor/satellite pair via its senSatKey and store them in the passing array xa_senSat
   clear LamodSenSatDataToArray
   
   %  Returns the number of possible passes of the sensor/satellite pair in the requested time span which pass 
   %  the horizontal limit test. This function only applies when the culmination mode was selected
   %  This is an estimated number of passes. Each pass might not return any valid look angles due to the sensor limits settings.
   clear LamodGetNumPasses
   
   %  Returns an array of rise, culmination, and set times of all possible passes of a sensor/satellite pair during the requested time span
   %  See LamodGetNumPasses for example.
   %  If a possible culmination time of the last pass is after the requested stop time, only the rise time is returned. The culmination and set times are set to zeros. Since there is no culmination time in this case, the host program should switch to step mode to compute look angles.
   %  There are cases when multiple maximum elevations are detected in one pass. In these cases, the culmination times will be set to -1.0. The users need to check for this condition and switch to step mode.
   %  For external ephemeris files, if the provided ephemerides don't cover the requested time span, the possible rise and set times will not be available and will be set to -1.0.
   %  Note: For Fence/Fan typed sensors this function returns enter/penetration-cross/exit times in place of rise/culmination/set times
   clear LamodGetRiseCulmSetTimes
   
   %  Computes a single look angle of the sensor/satellite pair at the specified time
   clear LamodComputeLookAngle
   
   %  Computes at once look and view data of the sensor/satellite pair at the specified time
   %  <br>
   %  Note: This function is a thread safe alternative to LamodComputeLookAngle(), LamodGetOrbSenViewdata(), and LamodGetViewDataField()
   clear LamodComputeLookView
   
   %  Finds exact time when satellite is IN or OUT of sensor's coverage
   %  <br>
   %  Note: The start and end times must have different look values (valid and invalid looks or vice versa)
   clear LamodFindExactIOTime
   
   %  Returns viewing and geometric data for orbiting sensors
   %  <br>
   %  Note: This function is not thread safe, please use LamodComputeLookView() instead   
   clear LamodGetOrbSenViewdata
   
   %  Retrieves a single field of look angle viewing data
   %  <br>
   %  See LamodCompRaDec for an example.
   %  <br>
   %  Note: This function is not thread safe, please use LamodComputeLookView() instead    
   %  <br>
   %  When the users pass the <i>retArray</i> to this function, make sure it has the proper size as shown in the <i>retArray</i> size column.
   %  <br>
   %  The <i>retArray</i> Arrangement column lists the order of the elements in the array. It is not necessarily the subscript of the element in the array since this is language-dependent. For example, in C/C++ the first element in every array is the zero-subscripted element.
   %  <br>
   %  The table below shows the values for the xf_View parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td> 1 </td><td> computed U-vector to object</td></tr>
   %  <tr><td> 2 </td><td> range unit vector</td></tr>
   %  <tr><td> 3 </td><td> topocentric L unit vector</td></tr>
   %  <tr><td> 4 </td><td> station zenith vector</td></tr>
   %  <tr><td> 5 </td><td> computed range vector (km)</td></tr>
   %  <tr><td> 6 </td><td> computed range-rate vector/relative velocity vector (er/kem)</td></tr>
   %  <tr><td> 7 </td><td> vector to sun  (km)</td></tr>
   %  <tr><td> 8 </td><td> vector to moon (km)</td></tr>
   %  <tr><td> 9 </td><td> angle array (1:moon/sen/sat, 2:sun/earth/sat, 3:sun/earth/sen, 4:sun/sen/sat, 5:solar aspect
   %  angle)</td></tr>
   %  <tr><td>10 </td><td> illumination result</td></tr>
   %  <tr><td>11 </td><td> Relative velocity (km/sec)</td></tr>
   %  <tr><td>12 </td><td> sensor position EFG</td></tr>
   %  <tr><td>13 </td><td> limit check flags</td></tr>
   %  <tr><td>14 </td><td> azimuth and elevation rates (deg/sec)</td></tr>
   %  <tr><td>15 </td><td> moon angles (1:moon/earth/sat in deg, 2:moon/earth/sen in deg)</td></tr>
   %  </table>	
   %  <br>
   %  The table below shows the values for the limit check flags (xf_View = 13):
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>  0</td><td> az limits test flag</td></tr>
   %  <tr><td>  1</td><td> el limits test flag</td></tr>
   %  <tr><td>  2</td><td> earth in background flag</td></tr>
   %  <tr><td>  3</td><td> earth obstructed flag</td></tr>
   %  <tr><td>  4</td><td> lunar exclusion angle fl</td></tr>
   %  <tr><td>  5</td><td> max range test flag</td></tr>
   %  <tr><td>  6</td><td> min range test flag</td></tr>
   %  <tr><td>  7</td><td> penumb eclipse test flag</td></tr>
   %  <tr><td>  8</td><td> relative velocity test fl</td></tr>
   %  <tr><td>  9</td><td> solar aspect angle test</td></tr>
   %  <tr><td> 10</td><td> solar exclusion angle fl</td></tr>
   %  <tr><td> 11</td><td> umbral eclipse test flag</td></tr>
   %  </table>	
   clear LamodGetViewDataField
   
   %  Computes right-ascension and declination from the input sensor's range unit vector (also called local horizon vector)
   %  The users need to be careful when -1 &lt; decDeg &lt; 0 because they might easily display it incorrectly (missing the negative sign of its value).
   clear LamodCompRaDec
   
   %  Retrieves the formatted observation strings, either in B3 or transmission format, generated from the most recent look angle data
   %  Note: This function is not thread safe, please use LamodGenObsAtTime() instead 
   %  The function returns one-line or two-line formatted obs string depending on the input <i>punchObs</i> and the sensor's observation type.  The users need to check the returned value of <i>numLines</i> to see what type of the output strings they are.
   clear LamodGenObs
   
   %  Generates formatted observation strings, either in B3 or transmission format, from a VALID look angle obtained at the requested time 
   %  Note: This is a thread-safe version of the LamodGenObs
   clear LamodGenObsAtTime
   
   %  Removes a sensor/satellite pair from Lamod.dll's set of loaded sensor/satellite pairs
   clear LamodRemoveSenSat
   
   %  Removes all sensor/satellite pairs from Lamod.dll's set of sensor/satellite pairs
   clear LamodRemoveAllSenSats
   
   %  Resets all Lamod-related parameters back to their default values
   %  See LamodRemoveAllSenSats for example.
   clear LamodReset
   
   %  Computes all look and view data of the input sensor/satellite at the specified time using their input data directly (no need to provide senSatKey)
   %  <br>
   %  Note: This function doesn't check for sensor limits so all limit flags are returned as passed
   %  <br>
   clear LamodSenSatDirect_OS
endfunction
% ========================= End of auto generated code ==========================
