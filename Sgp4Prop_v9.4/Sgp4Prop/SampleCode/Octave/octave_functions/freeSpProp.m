% This wrapper file was generated automatically by the GenDllWrappers program.
function freeSpProp()   
   % VCM additional options
   % use VCM's own data
   global VCMOPT_USEOWN;
   % force VCM to use global solar flux and timing constants data
   global VCMOPT_USEGLOBAL;
   
   % Run Modes
   % Perfromance priority. This mode allows the buffer of integration points to extend freely
   global IDX_RUNMODE_PERF;
   % Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
   global IDX_RUNMODE_MEM;
   
   %*******************************************************************************
   
   % Partials Saving Modes
   % Save partials in the buffer
   global IDX_PARTIALS_SAVE;
   % Don't save partials in the buffer
   global IDX_PARTIALS_DONT;
   
   % Indexes of different covariance matrices
   % UVW convariance matrix - TEME of DATE
   global XF_COVMTX_UVW_DATE;
   % Cartesian covariance matrix - TEME of DATE
   global XF_COVMTX_XYZ_DATE;
   % Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
   global XF_COVMTX_EQNX_DATE;
   % UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
   global XF_COVMTX_UVW_J2K;
   % Cartesian covariance matrix - MEME of J2K
   global XF_COVMTX_XYZ_J2K;
   % Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   global XF_COVMTX_EQNX_J2K;
   %*******************************************************************************
   
   % Indexes of Lunar/Solar and Planets perturbation modes
   % Lunar/Solar perturbation off
   global LSPERT_NONE;
   % Lunar/Solar perturbation on (using Analytic mode)
   global LSPERT_ANALYTIC;
   % Lunar/Solar perturbation using JPL ephemeris file
   global LSPERT_JPL;
   % Lunar/Solar + All planets perturbation using JPL ephemeris file
   global LSPERT_ALL;
   % Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
   global LSPERT_BIG;
   % Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
   global LSPERT_MED;
   % Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   global LSPERT_SMA;
   
   %*******************************************************************************
   
   % State Transition Matrix Types
   % UVW state transition matrix
   global STMTYPE_UVW;
   % Cartesian state transition matrix
   global STMTYPE_XYZ;
   % Equinoctial state transition matrix
   global STMTYPE_EQNX;
   
   % Different output coordinate systems options for pos/vel/acc
   % Output coordinate systems in TEME of Date
   global SPCOORD_ECI;
   % Output coordinate systems in MEME of J2K
   global SPCOORD_J2K;
   
   % Different drag perturbation models
   % Jacchia 64 model
   global DRGMDL_JAC64;
   % Jacchia 70 model
   global DRGMDL_JAC70;
   % Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
   global DRGMDL_DCA1;
   % JBH09 model
   global DRGMDL_JBH09;
   % JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
   global DRGMDL_JBHDCA2;
   
   % Indexes of SP 4P card fields
   % Geopotential model to use
   global XF_4P_GEOIDX;
   % Earth gravity pertubations flag
   global XF_4P_BULGEFLG;
   % Drag pertubations flag
   global XF_4P_DRAGFLG;
   % Radiation pressure pertubations flag
   global XF_4P_RADFLG;
   % Lunar/Solar pertubations flag
   global XF_4P_LUNSOL;
   % F10 value
   global XF_4P_F10;
   % F10 average value
   global XF_4P_F10AVG;
   % Ap value
   global XF_4P_AP;
   % Geopotential truncation order/degree/zonals
   global XF_4P_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   global XF_4P_CONVERG;
   % Outgassing pertubations flag
   global XF_4P_OGFLG;
   % Solid earth and ocean tide pertubations flag
   global XF_4P_TIDESFLG;
   % Input vector coordinate system
   global XF_4P_INCOORD;
   % Nutation terms
   global XF_4P_NTERMS;
   % Recompute pertubations at each corrector step
   global XF_4P_REEVAL;
   % Variable of intergration control
   global XF_4P_INTEGCTRL;
   % Variable step size control
   global XF_4P_VARSTEP;
   % Initial step size
   global XF_4P_INITSTEP;
   
   % DCA file name
   global XF_4P_DCAFILE;
   % Solar flux file name
   global XF_4P_FLUXFILE;
   % Geopotential file name
   global XF_4P_GEOFILE;
   % JPL file name
   global XF_4P_JPLFILE;
   % JPL start time
   global XF_4P_JPLSTART;
   % JPL stop time
   global XF_4P_JPLSTOP;
   
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
   global XF_SPAPP_GEODIR;
   % Buffer size
   global XF_SPAPP_BUFSIZE;
   % Run mode
   global XF_SPAPP_RUNMODE;
   % Save partials data
   global XF_SPAPP_SAVEPART;
   % Specter compatibility mode
   global XF_SPAPP_SPECTR;
   % Consider parameter
   global XF_SPAPP_CONSIDER;
   % Decay altitude
   global XF_SPAPP_DECAYALT;
   % Output coordinate system
   global XF_SPAPP_OUTCOORD;
   % VCM additional options
   global XF_SPAPP_VCMOPT;
   
   %*******************************************************************************
   
   % Indexes of data fields of an initialized SP satellite
   % Satellite number I5
   global XF_SPSAT_SATNUM;
   % Satellite's epoch time in days since 1950, UTC
   global XF_SPSAT_DS50UTC;
   % Satellite's epoch time in days since 1950, TAI
   global XF_SPSAT_DS50TAI;
   % Mu value
   global XF_SPSAT_MU;
   % Covariance Matrix flag
   global XF_SPSAT_HASCOV;
   % Integration mode
   global XF_SPSAT_INTMODE;
   % Nutation terms
   global XF_SPSAT_NTERMS;
   % Specter compatibility mode
   global XF_SPSAT_SPECTR;
   
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
   global SP_TIMETYPE_MSE;
   % propagation time is in days since 1950, UTC
   global SP_TIMETYPE_DS50UTC;
   
   
   % Sp propagated data
   % Propagation time in days since 1950, UTC
   global XA_SPOUT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   global XA_SPOUT_MSE;
   % Propagation time in days since 1950, UT1
   global XA_SPOUT_UT1;
   % Propagation time in days since 1950, TAI
   global XA_SPOUT_TAI;
   % Propagation time in days since 1950, ET
   global XA_SPOUT_ET;
   % Revolution number
   global XA_SPOUT_REVNUM;
   % Number of nutation terms
   global XA_SPOUT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   global XA_SPOUT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   global XA_SPOUT_HASCOVMTX;
   
   % J2K position X (km)
   global XA_SPOUT_J2KPOSX;
   % J2K position Y (km)
   global XA_SPOUT_J2KPOSY;
   % J2K position Z (km)
   global XA_SPOUT_J2KPOSZ;
   % J2K velocity X (km/s)
   global XA_SPOUT_J2KVELX;
   % J2K velocity Y (km/s)
   global XA_SPOUT_J2KVELY;
   % J2K velocity Z (km/s)
   global XA_SPOUT_J2KVELZ;
   % ECI position X (km)
   global XA_SPOUT_ECIPOSX;
   % ECI position Y (km)
   global XA_SPOUT_ECIPOSY;
   % ECI position Z (km)
   global XA_SPOUT_ECIPOSZ;
   % ECI velocity X (km/s)
   global XA_SPOUT_ECIVELX;
   % ECI velocity Y (km/s)
   global XA_SPOUT_ECIVELY;
   % ECI velocity Z (km/s)
   global XA_SPOUT_ECIVELZ;
   % Geodetic latitude (deg)
   global XA_SPOUT_LAT;
   % Geodetic longitude (deg)
   global XA_SPOUT_LON;
   % Height above geoid (km)
   global XA_SPOUT_HEIGHT;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   global XA_SPOUT_COVTYPE;
   % 6 by 6 covariance matrix (31-66)
   global XA_SPOUT_COVMTX;
   
   % J2K acceleration X (km/s^2)
   global XA_SPOUT_J2KACCX;
   % J2K acceleration Y (km/s^2)
   global XA_SPOUT_J2KACCY;
   % J2K acceleration Z (km/s^2)
   global XA_SPOUT_J2KACCZ;
   % ECI acceleration X (km/s^2)
   global XA_SPOUT_ECIACCX;
   % ECI acceleration Y (km/s^2)
   global XA_SPOUT_ECIACCY;
   % ECI acceleration Z (km/s^2)
   global XA_SPOUT_ECIACCZ;
   
   global XA_SPOUT_SIZE;
   
   % Sp extended propagation data
   % Propagation time in days since 1950, UTC
   global XA_SPEXT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   global XA_SPEXT_MSE;
   % Propagation time in days since 1950, UT1
   global XA_SPEXT_UT1;
   % Propagation time in days since 1950, TAI
   global XA_SPEXT_TAI;
   % Propagation time in days since 1950, ET
   global XA_SPEXT_ET;
   % Revolution number
   global XA_SPEXT_REVNUM;
   % Number of nutation terms
   global XA_SPEXT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   global XA_SPEXT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   global XA_SPEXT_HASCOVMTX;
   
   % Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
   global XA_SPEXT_COORD;
   % position X (km)
   global XA_SPEXT_POSX;
   % position Y (km)
   global XA_SPEXT_POSY;
   % position Z (km)
   global XA_SPEXT_POSZ;
   % velocity X (km/s)
   global XA_SPEXT_VELX;
   % velocity Y (km/s)
   global XA_SPEXT_VELY;
   % velocity Z (km/s)
   global XA_SPEXT_VELZ;
   % acceleration X (km/s^2)
   global XA_SPEXT_ACCX;
   % acceleration Y (km/s^2)
   global XA_SPEXT_ACCY;
   % acceleration Z (km/s^2)
   global XA_SPEXT_ACCZ;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   global XA_SPEXT_COVTYPE;
   % 6 by 6 covariance matrix (31-66/1D format - 36 elements)
   global XA_SPEXT_COVMTX;
   
   % State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
   global XA_SPEXT_STMTYPE;
   % 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
   global XA_SPEXT_STM;
   
   global XA_SPEXT_SIZE;
   
   
   % Different options for generating ephemerides from SP
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global SP_EPHEM_ECI;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   global SP_EPHEM_J2K;
   
   
   % Different time types returned by the SP propagator
   % Time in minutes since the satellite's epoch time
   global XA_TIMETYPES_MSE;
   % Time in days since 1950, UTC
   global XA_TIMETYPES_UTC;
   % Time in days since 1950, UT1
   global XA_TIMETYPES_UT1;
   % Time in days since 1950, TAI
   global XA_TIMETYPES_TAI;
   % Time in days since 1950, ET
   global XA_TIMETYPES_ET;
   
   global XA_TIMETYPES_SIZE;
   
   
   
   % VCM additional options
   % use VCM's own data
   clear VCMOPT_USEOWN;
   % force VCM to use global solar flux and timing constants data
   clear VCMOPT_USEGLOBAL;
   
   % Run Modes
   % Perfromance priority. This mode allows the buffer of integration points to extend freely
   clear IDX_RUNMODE_PERF;
   % Memory priority. This mode only allows a number of integration points to be saved in the buffer at any one time
   clear IDX_RUNMODE_MEM;
   
   %*******************************************************************************
   
   % Partials Saving Modes
   % Save partials in the buffer
   clear IDX_PARTIALS_SAVE;
   % Don't save partials in the buffer
   clear IDX_PARTIALS_DONT;
   
   % Indexes of different covariance matrices
   % UVW convariance matrix - TEME of DATE
   clear XF_COVMTX_UVW_DATE;
   % Cartesian covariance matrix - TEME of DATE
   clear XF_COVMTX_XYZ_DATE;
   % Equinoctial covariance matrix - TEME of DATE (not available for "PARTIALS: ANALYTIC")
   clear XF_COVMTX_EQNX_DATE;
   % UVW convariance matrix - MEME of J2K (same result as UVW TEME of DATE)
   clear XF_COVMTX_UVW_J2K;
   % Cartesian covariance matrix - MEME of J2K
   clear XF_COVMTX_XYZ_J2K;
   % Equinoctial covariance matrix - MEME of J2K  (not available for "PARTIALS: ANALYTIC")
   clear XF_COVMTX_EQNX_J2K;
   %*******************************************************************************
   
   % Indexes of Lunar/Solar and Planets perturbation modes
   % Lunar/Solar perturbation off
   clear LSPERT_NONE;
   % Lunar/Solar perturbation on (using Analytic mode)
   clear LSPERT_ANALYTIC;
   % Lunar/Solar perturbation using JPL ephemeris file
   clear LSPERT_JPL;
   % Lunar/Solar + All planets perturbation using JPL ephemeris file
   clear LSPERT_ALL;
   % Lunar/Solar + Jupiter and Venus using JPL ephemeris file (Big Force Planets)
   clear LSPERT_BIG;
   % Lunar/Solar + Jupiter, Venus, Saturn, Mars, and Mercury using JPL ephemeris file (Big and Medium Force Planets)
   clear LSPERT_MED;
   % Lunar/Solar + All planets perturbation except Pluto using JPL ephemeris file (Big, Medium, and Small Force Planets)
   clear LSPERT_SMA;
   
   %*******************************************************************************
   
   % State Transition Matrix Types
   % UVW state transition matrix
   clear STMTYPE_UVW;
   % Cartesian state transition matrix
   clear STMTYPE_XYZ;
   % Equinoctial state transition matrix
   clear STMTYPE_EQNX;
   
   % Different output coordinate systems options for pos/vel/acc
   % Output coordinate systems in TEME of Date
   clear SPCOORD_ECI;
   % Output coordinate systems in MEME of J2K
   clear SPCOORD_J2K;
   
   % Different drag perturbation models
   % Jacchia 64 model
   clear DRGMDL_JAC64;
   % Jacchia 70 model
   clear DRGMDL_JAC70;
   % Dynamic Calibration Atmosphere 1 (DCA1/HASDM1) model
   clear DRGMDL_DCA1;
   % JBH09 model
   clear DRGMDL_JBH09;
   % JBH09 and Dynamic Calibration Atmosphere 2 (DCA2/HASDM2)
   clear DRGMDL_JBHDCA2;
   
   % Indexes of SP 4P card fields
   % Geopotential model to use
   clear XF_4P_GEOIDX;
   % Earth gravity pertubations flag
   clear XF_4P_BULGEFLG;
   % Drag pertubations flag
   clear XF_4P_DRAGFLG;
   % Radiation pressure pertubations flag
   clear XF_4P_RADFLG;
   % Lunar/Solar pertubations flag
   clear XF_4P_LUNSOL;
   % F10 value
   clear XF_4P_F10;
   % F10 average value
   clear XF_4P_F10AVG;
   % Ap value
   clear XF_4P_AP;
   % Geopotential truncation order/degree/zonals
   clear XF_4P_TRUNC;
   % Corrector step convergence criterion; exponent of 1/10; default = 10
   clear XF_4P_CONVERG;
   % Outgassing pertubations flag
   clear XF_4P_OGFLG;
   % Solid earth and ocean tide pertubations flag
   clear XF_4P_TIDESFLG;
   % Input vector coordinate system
   clear XF_4P_INCOORD;
   % Nutation terms
   clear XF_4P_NTERMS;
   % Recompute pertubations at each corrector step
   clear XF_4P_REEVAL;
   % Variable of intergration control
   clear XF_4P_INTEGCTRL;
   % Variable step size control
   clear XF_4P_VARSTEP;
   % Initial step size
   clear XF_4P_INITSTEP;
   
   % DCA file name
   clear XF_4P_DCAFILE;
   % Solar flux file name
   clear XF_4P_FLUXFILE;
   % Geopotential file name
   clear XF_4P_GEOFILE;
   % JPL file name
   clear XF_4P_JPLFILE;
   % JPL start time
   clear XF_4P_JPLSTART;
   % JPL stop time
   clear XF_4P_JPLSTOP;
   
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
   clear XF_SPAPP_GEODIR;
   % Buffer size
   clear XF_SPAPP_BUFSIZE;
   % Run mode
   clear XF_SPAPP_RUNMODE;
   % Save partials data
   clear XF_SPAPP_SAVEPART;
   % Specter compatibility mode
   clear XF_SPAPP_SPECTR;
   % Consider parameter
   clear XF_SPAPP_CONSIDER;
   % Decay altitude
   clear XF_SPAPP_DECAYALT;
   % Output coordinate system
   clear XF_SPAPP_OUTCOORD;
   % VCM additional options
   clear XF_SPAPP_VCMOPT;
   
   %*******************************************************************************
   
   % Indexes of data fields of an initialized SP satellite
   % Satellite number I5
   clear XF_SPSAT_SATNUM;
   % Satellite's epoch time in days since 1950, UTC
   clear XF_SPSAT_DS50UTC;
   % Satellite's epoch time in days since 1950, TAI
   clear XF_SPSAT_DS50TAI;
   % Mu value
   clear XF_SPSAT_MU;
   % Covariance Matrix flag
   clear XF_SPSAT_HASCOV;
   % Integration mode
   clear XF_SPSAT_INTMODE;
   % Nutation terms
   clear XF_SPSAT_NTERMS;
   % Specter compatibility mode
   clear XF_SPSAT_SPECTR;
   
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
   clear SP_TIMETYPE_MSE;
   % propagation time is in days since 1950, UTC
   clear SP_TIMETYPE_DS50UTC;
   
   
   % Sp propagated data
   % Propagation time in days since 1950, UTC
   clear XA_SPOUT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   clear XA_SPOUT_MSE;
   % Propagation time in days since 1950, UT1
   clear XA_SPOUT_UT1;
   % Propagation time in days since 1950, TAI
   clear XA_SPOUT_TAI;
   % Propagation time in days since 1950, ET
   clear XA_SPOUT_ET;
   % Revolution number
   clear XA_SPOUT_REVNUM;
   % Number of nutation terms
   clear XA_SPOUT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   clear XA_SPOUT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   clear XA_SPOUT_HASCOVMTX;
   
   % J2K position X (km)
   clear XA_SPOUT_J2KPOSX;
   % J2K position Y (km)
   clear XA_SPOUT_J2KPOSY;
   % J2K position Z (km)
   clear XA_SPOUT_J2KPOSZ;
   % J2K velocity X (km/s)
   clear XA_SPOUT_J2KVELX;
   % J2K velocity Y (km/s)
   clear XA_SPOUT_J2KVELY;
   % J2K velocity Z (km/s)
   clear XA_SPOUT_J2KVELZ;
   % ECI position X (km)
   clear XA_SPOUT_ECIPOSX;
   % ECI position Y (km)
   clear XA_SPOUT_ECIPOSY;
   % ECI position Z (km)
   clear XA_SPOUT_ECIPOSZ;
   % ECI velocity X (km/s)
   clear XA_SPOUT_ECIVELX;
   % ECI velocity Y (km/s)
   clear XA_SPOUT_ECIVELY;
   % ECI velocity Z (km/s)
   clear XA_SPOUT_ECIVELZ;
   % Geodetic latitude (deg)
   clear XA_SPOUT_LAT;
   % Geodetic longitude (deg)
   clear XA_SPOUT_LON;
   % Height above geoid (km)
   clear XA_SPOUT_HEIGHT;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   clear XA_SPOUT_COVTYPE;
   % 6 by 6 covariance matrix (31-66)
   clear XA_SPOUT_COVMTX;
   
   % J2K acceleration X (km/s^2)
   clear XA_SPOUT_J2KACCX;
   % J2K acceleration Y (km/s^2)
   clear XA_SPOUT_J2KACCY;
   % J2K acceleration Z (km/s^2)
   clear XA_SPOUT_J2KACCZ;
   % ECI acceleration X (km/s^2)
   clear XA_SPOUT_ECIACCX;
   % ECI acceleration Y (km/s^2)
   clear XA_SPOUT_ECIACCY;
   % ECI acceleration Z (km/s^2)
   clear XA_SPOUT_ECIACCZ;
   
   clear XA_SPOUT_SIZE;
   
   % Sp extended propagation data
   % Propagation time in days since 1950, UTC
   clear XA_SPEXT_UTC;
   % Propagation time in minutes since the satellite's epoch time
   clear XA_SPEXT_MSE;
   % Propagation time in days since 1950, UT1
   clear XA_SPEXT_UT1;
   % Propagation time in days since 1950, TAI
   clear XA_SPEXT_TAI;
   % Propagation time in days since 1950, ET
   clear XA_SPEXT_ET;
   % Revolution number
   clear XA_SPEXT_REVNUM;
   % Number of nutation terms
   clear XA_SPEXT_NTERMS;
   % Spectr compatible mode (0=not compatible, 1=compatible)
   clear XA_SPEXT_ISSPECTR;
   % Has input covariance matrix (0=no, 1=yes)
   clear XA_SPEXT_HASCOVMTX;
   
   % Output coordSysinate of pos/vel/accel: 1=TEME of Date, 2= MEME of J2K
   clear XA_SPEXT_COORD;
   % position X (km)
   clear XA_SPEXT_POSX;
   % position Y (km)
   clear XA_SPEXT_POSY;
   % position Z (km)
   clear XA_SPEXT_POSZ;
   % velocity X (km/s)
   clear XA_SPEXT_VELX;
   % velocity Y (km/s)
   clear XA_SPEXT_VELY;
   % velocity Z (km/s)
   clear XA_SPEXT_VELZ;
   % acceleration X (km/s^2)
   clear XA_SPEXT_ACCX;
   % acceleration Y (km/s^2)
   clear XA_SPEXT_ACCY;
   % acceleration Z (km/s^2)
   clear XA_SPEXT_ACCZ;
   
   % Covariance matrix type, if available:  1=UVW, 2=ECI_DATE, 3=EQNX_DATE, 12=ECI_J2K, 13=EQNX_J2K
   clear XA_SPEXT_COVTYPE;
   % 6 by 6 covariance matrix (31-66/1D format - 36 elements)
   clear XA_SPEXT_COVMTX;
   
   % State transition matrix type, if available: 2=ECI_Date, 3=Eqnx_DATE
   clear XA_SPEXT_STMTYPE;
   % 6x9 state transition matrix  (71-124/1D format - 54 elements - row major)
   clear XA_SPEXT_STM;
   
   clear XA_SPEXT_SIZE;
   
   
   % Different options for generating ephemerides from SP
   % ECI TEME of DATE     - 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   clear SP_EPHEM_ECI;
   % MEME of J2K (4 terms)- 0: time in days since 1950 UTC, 1-3: pos (km), 4-6: vel (km/sec)
   clear SP_EPHEM_J2K;
   
   
   % Different time types returned by the SP propagator
   % Time in minutes since the satellite's epoch time
   clear XA_TIMETYPES_MSE;
   % Time in days since 1950, UTC
   clear XA_TIMETYPES_UTC;
   % Time in days since 1950, UT1
   clear XA_TIMETYPES_UT1;
   % Time in days since 1950, TAI
   clear XA_TIMETYPES_TAI;
   % Time in days since 1950, ET
   clear XA_TIMETYPES_ET;
   
   clear XA_TIMETYPES_SIZE;
   
   
   FreeSpPropDll;
   clear LoadSpPropDll;
   clear FreeSpPropDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes SpProp DLL for use in the program
   %  If this function returns an error, it is recommended that the users stop the program immediately. The error occurs if the users forget to load and initialize all the prerequisite DLLs, as listed in the DLL Prerequisites section, before using this DLL. 
   clear SpInit
   
   %  Returns information about the current version of SpProp DLL. The information is placed in the string parameter you pass in
   %  The returned string provides information about the version number, build date, and the platform of the Sp DLL. 
   clear SpGetInfo
   
   %  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) from a text file
   clear SpLoadFile
   
   %  Loads SP-related parameters (SP application controls, prediction controls, numerical integration controls) and SP elsets from a text file
   clear SpLoadFileAll
   
   %  Saves currently loaded SP-related parameters (SP application controls, prediction controls, integration controls) to a file
   %  The purpose of this function is to save the current SP-related settings, usually used in GUI applications, for future use.
   clear SpSaveFile
   
   %  Initializes an SP satellite from an SP TLE, SPVEC, or VCM
   %  Internally, when this function is called, the SpProp DLL will look into the right binary tree, based on the vector type extracted from the satKey, and search for the satKey. If found, the SpProp DLL will use the associated SP data to create an SP object for this satellite in its own binary tree. Subsequent calls to propagate this satellite will use the data in the SP object to compute the satellite's new state.
   %  
   %  The users need to call this routine only once for each satellite they want to propagate or every time the satellite data, from which it was initialized, is changed. The call needs to be placed before any calls to the SP propagate routines (SpPropMse, SpPropDs50UTC...).
   clear SpInitSat
   
   %  Removes a satellite, represented by the satKey, from the set of currently loaded satellites
   %  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   %  If the users enter an invalid satKey - a non-existing satKey in memory, the function will return a non-zero value indicating an error.
   clear SpRemoveSat
   
   %  Removes all currently loaded satellites from memory
   %  Calling this function removes all satellites from the set maintained by SpProp.dll. However, the data loaded by Vcm.dll, Tle.dll, SpVec.dll, and ExtEphem.dll is unaffected.
   %  The function returns zero if all the satellites were removed successfully from the SpProp DLL's binary tree.
   clear SpRemoveAllSats
   
   %  Returns the number of SP objects currently created. 
   clear SpGetCount
   
   %  Removes all SP-related data from memory (Geo models, Flux records, JPL, DCA, etc.)
   clear SpReset
   
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
   clear SpGetApCtrl
   
   %  Retrieves all SP application control parameters with a single function call
   clear SpGetApCtrlAll
   
   %  Sets an SP application control parameter
   %  See SpGetApCtrl for a list of the values for the xf_SpApp parameter.
   clear SpSetApCtrl
   
   %  Sets all SP application control parameters with a single function call
   clear SpSetApCtrlAll
   
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
   clear SpGet4P
   
   %  Sets the value of a numerical integration control parameter
   %  See SpGet4P for a list of the values for the xf_4P parameter.
   %  For flux, dca, and jpl file settings, the actual file loading happens when the first SpSatInit() is called. 
   %  If the user needs to load these files instantly, please call the SpLoadFile() instead
   clear SpSet4P
   
   %  Retrieves prediction control parameters
   clear SpGetPredCtrl
   
   %  Sets prediction control parameters
   clear SpSetPredCtrl
   
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
   clear SpGetSatData
   
   %  Retrieves all fields of an SP satellite with a single function call
   clear SpGetSatDataAll
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in minutes since the 
   %  satellite's epoch time
   clear SpPropMse
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   clear SpPropDs50UTC
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the latitude, longitude, and height at that time in coordinate system of Date
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is built especially for application that plots ground trace.
   clear SpPropDs50UtcLLH
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the satellite's ECI position in TEME of DATE
   %  It is the users' responsibility to decide what to do with the returned value. For example, if the users want to check for decay or low altitude, they can put that logic into their own code.
   %  
   %  This function is built especially for application that plots satellites' positions in 3D.
   clear SpPropDs50UtcPos
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   %  <br>
   %  All propagation data is returned by this function.
   clear SpPropAll
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in days since 1950, UTC. 
   %  It only returns the position and velocity in TEME of Date
   clear SpGetStateDs50UTC
   
   %  Reepochs the state of an existing SP object associated with the satKey. 
   %  Proper initialization is handled internally so no need to call SpSatInit() afterward 
   clear SpSetStateDs50UTC
   
   %  Updates an SP object associated with the satKey with the new input data stored in setDataArr. 
   %  Then propagates the updated SP object to the requested time propTimeDs50UTC. 
   %  Resulting propagated data will be stored in propDataArr.
   clear SpSetAndProp
   
   %  This function is reserved for future use. The purpose is to return propagator output data based on user special requests that have not yet been determined
   %  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   clear SpGetPropOut
   
   %  Returns the covariance matrix of a satellite
   %  Use this function immediately after the call to SpPropMse or SpPropDs50UTC. 
   clear SpGetCovMtx
   
   %  Computes the covariance sigma from the input covariance matrix
   clear SpCompCovSigma
   
   %  Sets all numerical integration control parameters with a single function call
   clear SpSet4pAll
   
   %  Retrieves all numerical integration control parameters with a single function call
   clear SpGet4pAll
   
   %  Read the integration control settings from a 4P-Card
   clear SpSet4PCard
   
   %  Builds and returns the integration control card (4P-Card) from the current settings
   clear SpGet4PCard
   
   %  Adds one solar flux record to memory. This API can be used to avoid SpLoadFile's file I/O      
   clear SpAddFluxRec
   
   %  Returns the times, in days since 1950 UTC, of ephemeris points stored in SP buffer that meet the requirement as specified in the minStepSize
   %  This function is used to retrieve times in which SP propagator stored satellite's state vectors in memory (natural integration step size).
   %  An error will occur if the actualEphPts reaches the maxEphPts. In this case, the function will return all ephemereris times up to the time when that maxEphPts is reached.
   clear SpGetEphemTimes
   
   %  Generates ephemerides for the input satellite, represented by its satKey, for the specified time span and step size
   %  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   clear SpGenEphems
   
   %  This function is similar to SpGenEphems but also returns covariance matrix data
   %  Notes: Make sure to turn on the "save partials" flag so that covariance matrix data can be generated
   clear SpGenEphemsCov
   
   %  Generates ephemerides for the input vcm (in string format) for the specified time span and step size
   %  Notes: if arrSize isn't big enough to store all the ephemeris points, the function will exit when the ephemArr reaches
   %  that many points (arrSize) and the errCode is set to IDX_ERR_WARN
   clear SpGenEphemsVcm_OS
   
   %  This function is similar to SpGenEphemsVcm_OS but also returns covariance matrix data
   clear SpGenEphemsVcmCov_OS
   
   %  Propagates all input satellites, represented by their satKeys, to the time expressed in days since 1950, UTC. 
   clear SpPropAllSats
   
   %  Propagates a satellite, represented by the satKey, to the time expressed in either minutes since epoch or days since 1950, UTC. 
   %  <br>
   %  All propagation data is returned by this function.
   clear SpPropAllExt
endfunction
% ========================= End of auto generated code ==========================
