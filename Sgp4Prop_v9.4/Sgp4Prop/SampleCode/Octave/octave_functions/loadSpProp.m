% This wrapper file was generated automatically by the GenDllWrappers program.
function loadSpProp(OctFilePath)   
   % VCM additional options
   % use VCM's own data
   global  VCMOPT_USEOWN;
   % force VCM to use global solar flux and timing constants data
   global  VCMOPT_USEGLOBAL;
   
   % Run Modes
   % Perfromance priority. This mode allows the buffer of integration points to extend freely
   global  IDX_RUNMODE_PERF;
   % Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
   global  IDX_RUNMODE_MEM;
   
   %*******************************************************************************
   
   % Partials Saving Modes
   % Save partials in the buffer
   global  IDX_PARTIALS_SAVE;
   % Don't save partials in the buffer
   global  IDX_PARTIALS_DONT;
   
   % Indexes of different covariance matrices
   % UVW convariance matrix - TEME of DATE
   global  XF_COVMTX_UVW_DATE;
   % Cartesian covariance matrix - TEME of DATE
   global  XF_COVMTX_XYZ_DATE;
   % Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
   global  XF_COVMTX_EQNX_DATE;
   % UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
   global  XF_COVMTX_UVW_J2K;
   % Cartesian covariance matrix - MEME of J2K
   global  XF_COVMTX_XYZ_J2K;
   % Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   global  XF_COVMTX_EQNX_J2K;
   %*******************************************************************************
   
   % Indexes of Lunar/Solar and Planets perturbation modes
   % Lunar/Solar perturbation off
   global  LSPERT_NONE;
   % Lunar/Solar perturbation on (using Analytic mode)
   global  LSPERT_ANALYTIC;
   % Lunar/Solar perturbation using JPL ephemeris file
   global  LSPERT_JPL;
   % Lunar/Solar + All planets perturbation using JPL ephemeris file
   global  LSPERT_ALL;
   % Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
   global  LSPERT_BIG;
   % Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
   global  LSPERT_MED;
   % Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   global  LSPERT_SMA;
   
   %*******************************************************************************
   
   % State Transition Matrix Types
   % UVW state transition matrix
   global  STMTYPE_UVW;
   % Cartesian state transition matrix
   global  STMTYPE_XYZ;
   % Equinoctial state transition matrix
   global  STMTYPE_EQNX;
   
   % Different output coordinate systems options for pos/vel/acc
   % Output coordinate systems in TEME of Date
   global  SPCOORD_ECI;
   % Output coordinate systems in MEME of J2K
   global  SPCOORD_J2K;
   
   % Different drag perturbation models
   % Jacchia 64 model
   global  DRGMDL_JAC64;
   % Jacchia 70 model
   global  DRGMDL_JAC70;
   % Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
   global  DRGMDL_DCA1;
   % JBH09 model
   global  DRGMDL_JBH09;
   % JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
   global  DRGMDL_JBHDCA2;
   
   % Indexes of SP 4P card fields
   % Geopotential model to use
   global  XF_4P_GEOIDX;
   % Earth gravity pertubations flag
   global  XF_4P_BULGEFLG;
   % Drag pertubations flag
   global  XF_4P_DRAGFLG;
   % Radiation pressure pertubations flag
   global  XF_4P_RADFLG;
   % Lunar/Solar pertubations flag
   global  XF_4P_LUNSOL;
   % F10 value
   global  XF_4P_F10;
   % F10 average value
   global  XF_4P_F10AVG;
   % Ap value
   global  XF_4P_AP;
   % Geopotential truncation order/degree/zonals
   global  XF_4P_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   global  XF_4P_CONVERG;
   % Outgassing pertubations flag
   global  XF_4P_OGFLG;
   % Solid earth and ocean tide pertubations flag
   global  XF_4P_TIDESFLG;
   % Input vector coordinate system
   global  XF_4P_INCOORD;
   % Nutation terms
   global  XF_4P_NTERMS;
   % Recompute pertubations at each corrector step
   global  XF_4P_REEVAL;
   % Variable of intergration control
   global  XF_4P_INTEGCTRL;
   % Variable step size control
   global  XF_4P_VARSTEP;
   % Initial step size
   global  XF_4P_INITSTEP;
   
   % DCA file name
   global  XF_4P_DCAFILE;
   % Solar flux file name
   global  XF_4P_FLUXFILE;
   % Geopotential file name
   global  XF_4P_GEOFILE;
   % JPL file name
   global  XF_4P_JPLFILE;
   % JPL start time
   global  XF_4P_JPLSTART;
   % JPL stop time
   global  XF_4P_JPLSTOP;
   
   %XF_4P_PLANETS  = 27, &    % Sets perturbations from all planets to on
   %XF_4P_MERCURY  = 28, &    % Sets perturbation from Mercury to on
   %XF_4P_VENUS    = 29, &    % Sets perturbation from Venus to on
   %XF_4P_MARS     = 30, &    % Sets perturbation from Mars to on
   %XF_4P_JUPITER  = 31, &    % Sets perturbation from Jupiter to on
   %XF_4P_SATURN   = 32, &    % Sets perturbation from Saturn to on
   %XF_4P_URANUS   = 33, &    % Sets perturbation from Uranus to on
   %XF_4P_NEPTUNE  = 34, &    % Sets perturbation from Neptune to on
   %XF_4P_PLUTO    = 35;      % Sets perturbation from Pluto to on
   
   %*******************************************************************************
   
   % Indexes of SP application control (preference) parameters
   % Geopotential directory path
   global  XF_SPAPP_GEODIR;
   % Buffer size
   global  XF_SPAPP_BUFSIZE;
   % Run mode
   global  XF_SPAPP_RUNMODE;
   % Save partials data
   global  XF_SPAPP_SAVEPART;
   % Specter compatibility mode
   global  XF_SPAPP_SPECTR;
   % Consider parameter
   global  XF_SPAPP_CONSIDER;
   % Decay altitude
   global  XF_SPAPP_DECAYALT;
   % Output coordinate system
   global  XF_SPAPP_OUTCOORD;
   % VCM additional options
   global  XF_SPAPP_VCMOPT;
   
   %*******************************************************************************
   
   % Indexes of data fields of an initialized SP satellite
   % Satellite number I5
   global  XF_SPSAT_SATNUM;
   % Satellite's epoch time in days since 1950, UTC
   global  XF_SPSAT_DS50UTC;
   % Satellite's epoch time in days since 1950, TAI
   global  XF_SPSAT_DS50TAI;
   % Mu value
   global  XF_SPSAT_MU;
   % Covariance Matrix flag
   global  XF_SPSAT_HASCOV;
   % Integration mode
   global  XF_SPSAT_INTMODE;
   % Nutation terms
   global  XF_SPSAT_NTERMS;
   % Specter compatibility mode
   global  XF_SPSAT_SPECTR;
   
   %*******************************************************************************
   
   %% Indexes of Planetary Control
   %   XAI_PLANET_MERCURY = 1, & % 0 = off, 1 = on
   %   XAI_PLANET_VENUS   = 2, & % 0 = off, 1 = on
   %   XAI_PLANET_EARTH   = 3, & % Not used
   %   XAI_PLANET_MARS    = 4, & % 0 = off, 1 = on
   %   XAI_PLANET_JUPITER = 5, & % 0 = off, 1 = on
   %   XAI_PLANET_SATRUN  = 6, & % 0 = off, 1 = on
   %   XAI_PLANET_URANUS  = 7, & % 0 = off, 1 = on
   %   XAI_PLANET_NEPTUNE = 8, & % 0 = off, 1 = on
   %   XAI_PLANET_PLUTO   = 9, & % 0 = off, 1 = on
   %   XAI_PLANET_SIZE    = 9;   % Size of array
   %
   %%*******************************************************************************
   
   % Different time types for passing to SpPropAll
   % propagation time is in minutes since epoch
   global  SP_TIMETYPE_MSE;
   % propagation time is in days since 1950, UTC
   global  SP_TIMETYPE_DS50UTC;
   
   
   % Sp propagated data
   % Propagation time in days since 1950, UTC
   global  XA_SPOUT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   global  XA_SPOUT_MSE;
   % Propagation time in days since 1950, UT1
   global  XA_SPOUT_UT1;
   % Propagation time in days since 1950, TAI
   global  XA_SPOUT_TAI;
   % Propagation time in days since 1950, ET
   global  XA_SPOUT_ET;
   % Revolution number
   global  XA_SPOUT_REVNUM;
   % Number of nutation terms
   global  XA_SPOUT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   global  XA_SPOUT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   global  XA_SPOUT_HASCOVMTX;
   
   % J2K position X (km)
   global  XA_SPOUT_J2KPOSX;
   % J2K position Y (km)
   global  XA_SPOUT_J2KPOSY;
   % J2K position Z (km)
   global  XA_SPOUT_J2KPOSZ;
   % J2K velocity X (km/s)
   global  XA_SPOUT_J2KVELX;
   % J2K velocity Y (km/s)
   global  XA_SPOUT_J2KVELY;
   % J2K velocity Z (km/s)
   global  XA_SPOUT_J2KVELZ;
   % ECI position X (km)
   global  XA_SPOUT_ECIPOSX;
   % ECI position Y (km)
   global  XA_SPOUT_ECIPOSY;
   % ECI position Z (km)
   global  XA_SPOUT_ECIPOSZ;
   % ECI velocity X (km/s)
   global  XA_SPOUT_ECIVELX;
   % ECI velocity Y (km/s)
   global  XA_SPOUT_ECIVELY;
   % ECI velocity Z (km/s)
   global  XA_SPOUT_ECIVELZ;
   % Geodetic latitude (deg)
   global  XA_SPOUT_LAT;
   % Geodetic longitude (deg)
   global  XA_SPOUT_LON;
   % Height above geoid (km)
   global  XA_SPOUT_HEIGHT;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   global  XA_SPOUT_COVTYPE;
   % 6 by 6 covariance matrix (31-66)
   global  XA_SPOUT_COVMTX;
   
   % J2K acceleration X (km/s^2)
   global  XA_SPOUT_J2KACCX;
   % J2K acceleration Y (km/s^2)
   global  XA_SPOUT_J2KACCY;
   % J2K acceleration Z (km/s^2)
   global  XA_SPOUT_J2KACCZ;
   % ECI acceleration X (km/s^2)
   global  XA_SPOUT_ECIACCX;
   % ECI acceleration Y (km/s^2)
   global  XA_SPOUT_ECIACCY;
   % ECI acceleration Z (km/s^2)
   global  XA_SPOUT_ECIACCZ;
   
   global  XA_SPOUT_SIZE
   
   % Sp extended propagation data
   % Propagation time in days since 1950, UTC
   global  XA_SPEXT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   global  XA_SPEXT_MSE;
   % Propagation time in days since 1950, UT1
   global  XA_SPEXT_UT1;
   % Propagation time in days since 1950, TAI
   global  XA_SPEXT_TAI;
   % Propagation time in days since 1950, ET
   global  XA_SPEXT_ET;
   % Revolution number
   global  XA_SPEXT_REVNUM;
   % Number of nutation terms
   global  XA_SPEXT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   global  XA_SPEXT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   global  XA_SPEXT_HASCOVMTX;
   
   % Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
   global  XA_SPEXT_COORD;
   % position X (km)
   global  XA_SPEXT_POSX;
   % position Y (km)
   global  XA_SPEXT_POSY;
   % position Z (km)
   global  XA_SPEXT_POSZ;
   % velocity X (km/s)
   global  XA_SPEXT_VELX;
   % velocity Y (km/s)
   global  XA_SPEXT_VELY;
   % velocity Z (km/s)
   global  XA_SPEXT_VELZ;
   % acceleration X (km/s^2)
   global  XA_SPEXT_ACCX;
   % acceleration Y (km/s^2)
   global  XA_SPEXT_ACCY;
   % acceleration Z (km/s^2)
   global  XA_SPEXT_ACCZ;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   global  XA_SPEXT_COVTYPE;
   % 6 by 6 covariance matrix (31-66/1D format - 36 elements)
   global  XA_SPEXT_COVMTX;
   
   % State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
   global  XA_SPEXT_STMTYPE;
   % 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
   global  XA_SPEXT_STM;
   
   global  XA_SPEXT_SIZE
   
   
   % Different options for generating ephemerides from SP
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global  SP_EPHEM_ECI;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global  SP_EPHEM_J2K;
   
   
   % Different time types returned by the SP propagator
   % Time in minutes since the satellite's epoch time
   global  XA_TIMETYPES_MSE;
   % Time in days since 1950, UTC
   global  XA_TIMETYPES_UTC;
   % Time in days since 1950, UT1
   global  XA_TIMETYPES_UT1;
   % Time in days since 1950, TAI
   global  XA_TIMETYPES_TAI;
   % Time in days since 1950, ET
   global  XA_TIMETYPES_ET;
   
   global  XA_TIMETYPES_SIZE
   
   
   
   % VCM additional options
   % use VCM's own data
   VCMOPT_USEOWN    = 0;
   % force VCM to use global solar flux and timing constants data
   VCMOPT_USEGLOBAL = 1;
   
   % Run Modes
   % Perfromance priority. This mode allows the buffer of integration points to extend freely
   IDX_RUNMODE_PERF = 0;
   % Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
   IDX_RUNMODE_MEM  = 1;
   
   %*******************************************************************************
   
   % Partials Saving Modes
   % Save partials in the buffer
   IDX_PARTIALS_SAVE = 1;
   % Don't save partials in the buffer
   IDX_PARTIALS_DONT = 0;
   
   % Indexes of different covariance matrices
   % UVW convariance matrix - TEME of DATE
   XF_COVMTX_UVW_DATE  =  1;
   % Cartesian covariance matrix - TEME of DATE
   XF_COVMTX_XYZ_DATE  =  2;
   % Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
   XF_COVMTX_EQNX_DATE =  3;
   % UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
   XF_COVMTX_UVW_J2K   = 11;
   % Cartesian covariance matrix - MEME of J2K
   XF_COVMTX_XYZ_J2K   = 12;
   % Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   XF_COVMTX_EQNX_J2K  = 13;
   %*******************************************************************************
   
   % Indexes of Lunar/Solar and Planets perturbation modes
   % Lunar/Solar perturbation off
   LSPERT_NONE      = 0;
   % Lunar/Solar perturbation on (using Analytic mode)
   LSPERT_ANALYTIC  = 1;
   % Lunar/Solar perturbation using JPL ephemeris file
   LSPERT_JPL       = 2;
   % Lunar/Solar + All planets perturbation using JPL ephemeris file
   LSPERT_ALL       = 3;
   % Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
   LSPERT_BIG       = 4;
   % Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
   LSPERT_MED       = 5;
   % Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   LSPERT_SMA       = 6;
   
   %*******************************************************************************
   
   % State Transition Matrix Types
   % UVW state transition matrix
   STMTYPE_UVW       = 1;
   % Cartesian state transition matrix
   STMTYPE_XYZ       = 2;
   % Equinoctial state transition matrix
   STMTYPE_EQNX      = 3;
   
   % Different output coordinate systems options for pos/vel/acc
   % Output coordinate systems in TEME of Date
   SPCOORD_ECI      = 1;
   % Output coordinate systems in MEME of J2K
   SPCOORD_J2K      = 2;
   
   % Different drag perturbation models
   % Jacchia 64 model
   DRGMDL_JAC64   =  1;
   % Jacchia 70 model
   DRGMDL_JAC70   =  2;
   % Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
   DRGMDL_DCA1    =  3;
   % JBH09 model
   DRGMDL_JBH09   = 40;
   % JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
   DRGMDL_JBHDCA2 = 41;
   
   % Indexes of SP 4P card fields
   % Geopotential model to use
   XF_4P_GEOIDX   = 1;
   % Earth gravity pertubations flag
   XF_4P_BULGEFLG = 2;
   % Drag pertubations flag
   XF_4P_DRAGFLG  = 3;
   % Radiation pressure pertubations flag
   XF_4P_RADFLG   = 4;
   % Lunar/Solar pertubations flag
   XF_4P_LUNSOL   = 5;
   % F10 value
   XF_4P_F10      = 6;
   % F10 average value
   XF_4P_F10AVG   = 7;
   % Ap value
   XF_4P_AP       = 8;
   % Geopotential truncation order/degree/zonals
   XF_4P_TRUNC    = 9;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   XF_4P_CONVERG  = 10;
   % Outgassing pertubations flag
   XF_4P_OGFLG    = 11;
   % Solid earth and ocean tide pertubations flag
   XF_4P_TIDESFLG = 12;
   % Input vector coordinate system
   XF_4P_INCOORD  = 13;
   % Nutation terms
   XF_4P_NTERMS   = 14;
   % Recompute pertubations at each corrector step
   XF_4P_REEVAL   = 15;
   % Variable of intergration control
   XF_4P_INTEGCTRL= 16;
   % Variable step size control
   XF_4P_VARSTEP  = 17;
   % Initial step size
   XF_4P_INITSTEP = 18;
   
   % DCA file name
   XF_4P_DCAFILE  = 21;
   % Solar flux file name
   XF_4P_FLUXFILE = 22;
   % Geopotential file name
   XF_4P_GEOFILE  = 23;
   % JPL file name
   XF_4P_JPLFILE  = 24;
   % JPL start time
   XF_4P_JPLSTART = 25;
   % JPL stop time
   XF_4P_JPLSTOP  = 26;
   
   %XF_4P_PLANETS  = 27, &    % Sets perturbations from all planets to on
   %XF_4P_MERCURY  = 28, &    % Sets perturbation from Mercury to on
   %XF_4P_VENUS    = 29, &    % Sets perturbation from Venus to on
   %XF_4P_MARS     = 30, &    % Sets perturbation from Mars to on
   %XF_4P_JUPITER  = 31, &    % Sets perturbation from Jupiter to on
   %XF_4P_SATURN   = 32, &    % Sets perturbation from Saturn to on
   %XF_4P_URANUS   = 33, &    % Sets perturbation from Uranus to on
   %XF_4P_NEPTUNE  = 34, &    % Sets perturbation from Neptune to on
   %XF_4P_PLUTO    = 35;      % Sets perturbation from Pluto to on
   
   %*******************************************************************************
   
   % Indexes of SP application control (preference) parameters
   % Geopotential directory path
   XF_SPAPP_GEODIR   = 1;
   % Buffer size
   XF_SPAPP_BUFSIZE  = 2;
   % Run mode
   XF_SPAPP_RUNMODE  = 3;
   % Save partials data
   XF_SPAPP_SAVEPART = 4;
   % Specter compatibility mode
   XF_SPAPP_SPECTR   = 5;
   % Consider parameter
   XF_SPAPP_CONSIDER = 6;
   % Decay altitude
   XF_SPAPP_DECAYALT = 7;
   % Output coordinate system
   XF_SPAPP_OUTCOORD = 8;
   % VCM additional options
   XF_SPAPP_VCMOPT   = 9;
   
   %*******************************************************************************
   
   % Indexes of data fields of an initialized SP satellite
   % Satellite number I5
   XF_SPSAT_SATNUM  = 1;
   % Satellite's epoch time in days since 1950, UTC
   XF_SPSAT_DS50UTC = 2;
   % Satellite's epoch time in days since 1950, TAI
   XF_SPSAT_DS50TAI = 3;
   % Mu value
   XF_SPSAT_MU      = 4;
   % Covariance Matrix flag
   XF_SPSAT_HASCOV  = 5;
   % Integration mode
   XF_SPSAT_INTMODE = 6;
   % Nutation terms
   XF_SPSAT_NTERMS  = 7;
   % Specter compatibility mode
   XF_SPSAT_SPECTR  = 8;
   
   %*******************************************************************************
   
   %% Indexes of Planetary Control
   %   XAI_PLANET_MERCURY = 1, & % 0 = off, 1 = on
   %   XAI_PLANET_VENUS   = 2, & % 0 = off, 1 = on
   %   XAI_PLANET_EARTH   = 3, & % Not used
   %   XAI_PLANET_MARS    = 4, & % 0 = off, 1 = on
   %   XAI_PLANET_JUPITER = 5, & % 0 = off, 1 = on
   %   XAI_PLANET_SATRUN  = 6, & % 0 = off, 1 = on
   %   XAI_PLANET_URANUS  = 7, & % 0 = off, 1 = on
   %   XAI_PLANET_NEPTUNE = 8, & % 0 = off, 1 = on
   %   XAI_PLANET_PLUTO   = 9, & % 0 = off, 1 = on
   %   XAI_PLANET_SIZE    = 9;   % Size of array
   %
   %%*******************************************************************************
   
   % Different time types for passing to SpPropAll
   % propagation time is in minutes since epoch
   SP_TIMETYPE_MSE      = 0;
   % propagation time is in days since 1950, UTC
   SP_TIMETYPE_DS50UTC  = 1;
   
   
   % Sp propagated data
   % Propagation time in days since 1950, UTC
   XA_SPOUT_UTC       =  0;
   % Propagation time in minutes since the satellite's epoch time
   XA_SPOUT_MSE       =  1;
   % Propagation time in days since 1950, UT1
   XA_SPOUT_UT1       =  2;
   % Propagation time in days since 1950, TAI
   XA_SPOUT_TAI       =  3;
   % Propagation time in days since 1950, ET
   XA_SPOUT_ET        =  4;
   % Revolution number
   XA_SPOUT_REVNUM    =  5;
   % Number of nutation terms
   XA_SPOUT_NTERMS    =  6;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   XA_SPOUT_ISSPECTR  =  7;
   % Has input covariance matrix (0=no, 1=yes)
   XA_SPOUT_HASCOVMTX =  8;
   
   % J2K position X (km)
   XA_SPOUT_J2KPOSX   = 10;
   % J2K position Y (km)
   XA_SPOUT_J2KPOSY   = 11;
   % J2K position Z (km)
   XA_SPOUT_J2KPOSZ   = 12;
   % J2K velocity X (km/s)
   XA_SPOUT_J2KVELX   = 13;
   % J2K velocity Y (km/s)
   XA_SPOUT_J2KVELY   = 14;
   % J2K velocity Z (km/s)
   XA_SPOUT_J2KVELZ   = 15;
   % ECI position X (km)
   XA_SPOUT_ECIPOSX   = 16;
   % ECI position Y (km)
   XA_SPOUT_ECIPOSY   = 17;
   % ECI position Z (km)
   XA_SPOUT_ECIPOSZ   = 18;
   % ECI velocity X (km/s)
   XA_SPOUT_ECIVELX   = 19;
   % ECI velocity Y (km/s)
   XA_SPOUT_ECIVELY   = 20;
   % ECI velocity Z (km/s)
   XA_SPOUT_ECIVELZ   = 21;
   % Geodetic latitude (deg)
   XA_SPOUT_LAT       = 22;
   % Geodetic longitude (deg)
   XA_SPOUT_LON       = 23;
   % Height above geoid (km)
   XA_SPOUT_HEIGHT    = 24;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   XA_SPOUT_COVTYPE   = 30;
   % 6 by 6 covariance matrix (31-66)
   XA_SPOUT_COVMTX    = 31;
   
   % J2K acceleration X (km/s^2)
   XA_SPOUT_J2KACCX   = 70;
   % J2K acceleration Y (km/s^2)
   XA_SPOUT_J2KACCY   = 71;
   % J2K acceleration Z (km/s^2)
   XA_SPOUT_J2KACCZ   = 72;
   % ECI acceleration X (km/s^2)
   XA_SPOUT_ECIACCX   = 73;
   % ECI acceleration Y (km/s^2)
   XA_SPOUT_ECIACCY   = 74;
   % ECI acceleration Z (km/s^2)
   XA_SPOUT_ECIACCZ   = 75;
   
   XA_SPOUT_SIZE      = 128;
   
   % Sp extended propagation data
   % Propagation time in days since 1950, UTC
   XA_SPEXT_UTC       =  0;
   % Propagation time in minutes since the satellite's epoch time
   XA_SPEXT_MSE       =  1;
   % Propagation time in days since 1950, UT1
   XA_SPEXT_UT1       =  2;
   % Propagation time in days since 1950, TAI
   XA_SPEXT_TAI       =  3;
   % Propagation time in days since 1950, ET
   XA_SPEXT_ET        =  4;
   % Revolution number
   XA_SPEXT_REVNUM    =  5;
   % Number of nutation terms
   XA_SPEXT_NTERMS    =  6;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   XA_SPEXT_ISSPECTR  =  7;
   % Has input covariance matrix (0=no, 1=yes)
   XA_SPEXT_HASCOVMTX =  8;
   
   % Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
   XA_SPEXT_COORD     = 10;
   % position X (km)
   XA_SPEXT_POSX      = 11;
   % position Y (km)
   XA_SPEXT_POSY      = 12;
   % position Z (km)
   XA_SPEXT_POSZ      = 13;
   % velocity X (km/s)
   XA_SPEXT_VELX      = 14;
   % velocity Y (km/s)
   XA_SPEXT_VELY      = 15;
   % velocity Z (km/s)
   XA_SPEXT_VELZ      = 16;
   % acceleration X (km/s^2)
   XA_SPEXT_ACCX      = 17;
   % acceleration Y (km/s^2)
   XA_SPEXT_ACCY      = 18;
   % acceleration Z (km/s^2)
   XA_SPEXT_ACCZ      = 19;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   XA_SPEXT_COVTYPE   = 30;
   % 6 by 6 covariance matrix (31-66/1D format - 36 elements)
   XA_SPEXT_COVMTX    = 31;
   
   % State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
   XA_SPEXT_STMTYPE   = 70;
   % 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
   XA_SPEXT_STM       = 71;
   
   XA_SPEXT_SIZE      = 128;
   
   
   % Different options for generating ephemerides from SP
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   SP_EPHEM_ECI   = 1;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   SP_EPHEM_J2K   = 2;
   
   
   % Different time types returned by the SP propagator
   % Time in minutes since the satellite's epoch time
   XA_TIMETYPES_MSE  = 0;
   % Time in days since 1950, UTC
   XA_TIMETYPES_UTC  = 1;
   % Time in days since 1950, UT1
   XA_TIMETYPES_UT1  = 2;
   % Time in days since 1950, TAI
   XA_TIMETYPES_TAI  = 3;
   % Time in days since 1950, ET
   XA_TIMETYPES_ET   = 4;
   
   XA_TIMETYPES_SIZE = 5;
   
   
   autoload("LoadSpPropDll",strcat(OctFilePath,"SpProp.oct"));
   autoload("FreeSpPropDll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SpProp DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
   autoload("SpInit",strcat(OctFilePath,"SpProp.oct"));
   
   %  Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
   autoload("SpGetInfo",strcat(OctFilePath,"SpProp.oct"));
   
   %  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
   autoload("SpLoadFile",strcat(OctFilePath,"SpProp.oct"));
   
   %  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
   autoload("SpLoadFileAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
   %  The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
   autoload("SpSaveFile",strcat(OctFilePath,"SpProp.oct"));
   
   %  Initializes an SP satellite from an SP TLE, SPVEC, or VCM
   %  Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
   %  
   %  The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
   autoload("SpInitSat",strcat(OctFilePath,"SpProp.oct"));
   
   %  Removes a satellite, represented by the satKey, from the set of currently loaded satellites
   %  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   %  If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   autoload("SpRemoveSat",strcat(OctFilePath,"SpProp.oct"));
   
   %  Removes all currently loaded satellites from memory
   %  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   %  The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
   autoload("SpRemoveAllSats",strcat(OctFilePath,"SpProp.oct"));
   
   %  Returns the number of SP objects currently created. 
   autoload("SpGetCount",strcat(OctFilePath,"SpProp.oct"));
   
   %  Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
   autoload("SpReset",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves the value of an SP application control parameter
   %  <br>
   %  The table below shows the values for the xf_SpApp parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>1 </td><td>Geopotential directory path</td></tr>
   %  <tr><td>2 </td><td>Buffer size</td></tr>
   %  <tr><td>3 </td><td>Run mode</td></tr>
   %  <tr><td>4 </td><td>Save partials data</td></tr>
   %  <tr><td>5 </td><td>Specter compatibility mode</td></tr>
   %  <tr><td>6 </td><td>Consider parameter</td></tr>
   %  <tr><td>7 </td><td>Decay altitude</td></tr>
   %  <tr><td>8 </td><td>Output coordinate system</td></tr>
   %  <tr><td>9 </td><td>Additional VCM options</td></tr>
   %  </table>
   autoload("SpGetApCtrl",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves all SP application control parameters with a single function call
   autoload("SpGetApCtrlAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Sets an SP application control parameter
   %  See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
   autoload("SpSetApCtrl",strcat(OctFilePath,"SpProp.oct"));
   
   %  Sets all SP application control parameters with a single function call
   autoload("SpSetApCtrlAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves the value of a numerical integration control parameter
   %  <br>
   %  The table below shows the values for xf_4P parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>1  </td><td> Geopotential model to use</td></tr>
   %  <tr><td>2  </td><td> Earth gravity pertubations flag</td></tr>
   %  <tr><td>3  </td><td> Drag pertubations flag </td></tr>
   %  <tr><td>4  </td><td> Radiation pressure pertubations flag</td></tr>
   %  <tr><td>5  </td><td> Lunar/Solar pertubations flag</td></tr>
   %  <tr><td>6  </td><td> F10 value</td></tr>
   %  <tr><td>7  </td><td> F10 average value</td></tr>
   %  <tr><td>8  </td><td> Ap value</td></tr>
   %  <tr><td>9  </td><td> Geopotential truncation order/degree/zonals</td></tr>
   %  <tr><td>10 </td><td> Corrector step convergence criterion; exponent of 1/10; default = 10</td></tr>
   %  <tr><td>11 </td><td> Outgassing pertubations flag</td></tr>
   %  <tr><td>12 </td><td> Solid earth ocean tide pertubations flag</td></tr>
   %  <tr><td>13 </td><td> Input vector coordinate system</td></tr>
   %  <tr><td>14 </td><td> Nutation terms</td></tr>
   %  <tr><td>15 </td><td> Recompute pertubations at each corrector step</td></tr>
   %  <tr><td>16 </td><td> Variable of intergration control</td></tr>
   %  <tr><td>17 </td><td> Variable step size control</td></tr>
   %  <tr><td>18 </td><td> Initial step size</td></tr>
   %  <tr><td>21 </td><td> DCA file name</td></tr>
   %  <tr><td>22 </td><td> Solar flux file name</td></tr>
   %  <tr><td>23 </td><td> Geopotential file name</td></tr>
   %  <tr><td>24 </td><td> JPL file name</td></tr>
   %  <tr><td>25 </td><td> JPL start time</td></tr>
   %  <tr><td>26 </td><td> JPL stop time</td></tr>
   %  </table>
   autoload("SpGet4P",strcat(OctFilePath,"SpProp.oct"));
   
   %  Sets the value of a numerical integration control parameter
   %  See SpGet4P for a list of the values for the xf_4P parameter.
   %  For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
   %  If the user needs to load these files instantly, please call the SpLoadFile() instead
   autoload("SpSet4P",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves prediction control parameters
   autoload("SpGetPredCtrl",strcat(OctFilePath,"SpProp.oct"));
   
   %  Sets prediction control parameters
   autoload("SpSetPredCtrl",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves the value of a field of an SP satellite
   %  <br>
   %  The table below shows the values for the xf_SpSat parameter:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>
   %  <tr><td>1 </td><td> Satellite number I5</td></tr>
   %  <tr><td>2 </td><td> Satellite's epoch time in days since 1950, UTC </td></tr>
   %  <tr><td>3 </td><td> Satellite's epoch time in days since 1950, TAI</td></tr>
   %  <tr><td>4 </td><td> Mu value </td></tr>
   %  <tr><td>5 </td><td> Covariance Matrix flag</td></tr>
   %  <tr><td>6 </td><td> Integration mode</td></tr>
   %  <tr><td>7 </td><td> Nutation terms</td></tr>
   %  <tr><td>8 </td><td> Specter compatibility mode</td></tr>
   %  </table>
   autoload("SpGetSatData",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves all fields of an SP satellite with a single function call
   autoload("SpGetSatDataAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
   %  satellite's epoch time
   autoload("SpPropMse",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   autoload("SpPropDs50UTC",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the latitude, longitude, and height at that time in coordinate system of Date
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is built especially for application that plots ground trace.
   autoload("SpPropDs50UtcLLH",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the satellite's ECI position in TEME of DATE
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is built especially for application that plots satellites' positions in 3D.
   autoload("SpPropDs50UtcPos",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   %  <br>
   %  All propagation data is returned by this function.
   autoload("SpPropAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the position and velocity in TEME of Date
   autoload("SpGetStateDs50UTC",strcat(OctFilePath,"SpProp.oct"));
   
   %  Reepochs the state of an existing SP object associated with the satKey. 
   %  Proper initialization is handled internally so no need to call SpSatInit() afterward 
   autoload("SpSetStateDs50UTC",strcat(OctFilePath,"SpProp.oct"));
   
   %  Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
   %  Then propagates the updated SP object to the requested time propTimeDs50UTC. 
   %  Resulting propagated data will be stored in propDataArr.
   autoload("SpSetAndProp",strcat(OctFilePath,"SpProp.oct"));
   
   %  This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
   %  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   autoload("SpGetPropOut",strcat(OctFilePath,"SpProp.oct"));
   
   %  Returns the covariance matrix of a satellite
   %  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   autoload("SpGetCovMtx",strcat(OctFilePath,"SpProp.oct"));
   
   %  Computes the covariance sigma from the input covariance matrix
   autoload("SpCompCovSigma",strcat(OctFilePath,"SpProp.oct"));
   
   %  Sets all numerical integration control parameters with a single function call
   autoload("SpSet4pAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Retrieves all numerical integration control parameters with a single function call
   autoload("SpGet4pAll",strcat(OctFilePath,"SpProp.oct"));
   
   %  Read the integration control settings from a 4P-Card
   autoload("SpSet4PCard",strcat(OctFilePath,"SpProp.oct"));
   
   %  Builds and returns the integration control card (4P-Card) from the current settings
   autoload("SpGet4PCard",strcat(OctFilePath,"SpProp.oct"));
   
   %  Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
   autoload("SpAddFluxRec",strcat(OctFilePath,"SpProp.oct"));
   
   %  Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
   %  This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
   %  An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
   autoload("SpGetEphemTimes",strcat(OctFilePath,"SpProp.oct"));
   
   %  Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   %  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   autoload("SpGenEphems",strcat(OctFilePath,"SpProp.oct"));
   
   %  This function is similar to SpGenEphems but also returns covariance matrix data
   %  Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
   autoload("SpGenEphemsCov",strcat(OctFilePath,"SpProp.oct"));
   
   %  Generates ephemerides for the input vcm (in string format) for the specified time span and step size
   %  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   autoload("SpGenEphemsVcm_OS",strcat(OctFilePath,"SpProp.oct"));
   
   %  This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
   autoload("SpGenEphemsVcmCov_OS",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   autoload("SpPropAllSats",strcat(OctFilePath,"SpProp.oct"));
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   %  <br>
   %  All propagation data is returned by this function.
   autoload("SpPropAllExt",strcat(OctFilePath,"SpProp.oct"));
   LoadSpPropDll;
endfunction
% ========================= End of auto generated code ==========================
