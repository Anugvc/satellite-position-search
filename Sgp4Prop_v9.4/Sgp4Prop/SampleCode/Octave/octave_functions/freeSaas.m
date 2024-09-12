% This wrapper file was generated automatically by the GenDllWrappers program.
function freeSaas()   
   %*******************************************************************************
   
   % Missile Profile
   % missile profile's minimum height limit (km)
   global XA_MSL_MINHGT;
   % missile profile's maximum height limit (km)
   global XA_MSL_MAXHGT;
   % maximum allowed solar aspect angle (deg)
   global XA_MSL_MAXSA;
   % maximum allowed missile attack angle (deg)
   global XA_MSL_ANGMAX;
   % rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos)
   global XA_MSL_REJFLG;
   % missile trajectory time coefficient for the *X**2 term [sec]
   global XA_MSL_TIMCOE1;
   % missile trajectory time coefficient for the *X term [sec]
   global XA_MSL_TIMCOE2;
   % missile trajectory time constant for the C term [sec]
   global XA_MSL_TIMCOE3;
   % missile trajectory range coefficient *X**2 term [km]
   global XA_MSL_RNGCOE1;
   % missile trajectory range coefficient *X term [km]
   global XA_MSL_RNGCOE2;
   % missile trajectory range constant for the C term [km]
   global XA_MSL_RNGCOE3;
   
   global XA_MSL_SIZE;
   
   %*******************************************************************************
   
   % Launch site location
   % launch site's latitude (deg)  (+N) (-S)
   global XA_LS_LAT;
   % launch site's longitude (deg) (+E) (-W)
   global XA_LS_LON;
   % launch site's height(m)
   global XA_LS_HEIGHT;
   
   global XA_LS_SIZE;
   
   %*******************************************************************************
   
   % Saas run parameters
   % Maximum number of penetration points that are allowed
   global XA_SAASRUN_MAXPENS;
   % SAAS start time in days since 1950, UTC
   global XA_SAASRUN_START;
   % SAAS stop time in days since 1950, UTC
   global XA_SAASRUN_STOP;
   % Half angle of attack cone (0=auto)
   global XA_SAASRUN_HALFCONE;
   
   global XA_SAASRUN_SIZE;
   
   %*******************************************************************************
   
   % Satellite penetration data
   % impact time in days since 1950, UTC
   global XA_SATPEN_IMPTIME;
   % msl launch time in days since 1950, UTC
   global XA_SATPEN_LAUTIME;
   % azimuth (deg)
   global XA_SATPEN_AZ;
   % elevation (deg)
   global XA_SATPEN_EL;
   % range (km)
   global XA_SATPEN_RANGE;
   % range rate (km/s)
   global XA_SATPEN_RNGRATE;
   % solar aspect angle (deg)
   global XA_SATPEN_SOLANG;
   % attack angle (deg)
   global XA_SATPEN_ATTCKANG;
   % satellite's height (km)
   global XA_SATPEN_SATHGHT;
   % ring penetration entry or exit time (0=entry, 1=exit)
   global XA_SATPEN_EN0EX1;
   
   global XA_SATPEN_SIZE;
   
   %*******************************************************************************
   
   % SAAS ouput data
   % number of actual satellite penetrations
   global XA_SAASRET_NUMOFPENS;
   % satellite apogee height (km)
   global XA_SAASRET_SATAHT;
   % satellite perigee height (km)
   global XA_SAASRET_SATPHT;
   % autocone minimum cone half angle (deg)
   global XA_SAASRET_MINCONE;
   % autocone maximum cone half angle (deg)
   global XA_SAASRET_MAXCONE;
   
   
   
   
   global XA_SAASRET_SIZE;
   
   %*******************************************************************************
   
   % predefined values for different orbit types used in planer program
   % orbit type LEO
   global ORBTYPE_LEO;
   % orbit type MEO
   global ORBTYPE_MEO;
   % orbit type GEO
   global ORBTYPE_GEO;
   
   %*******************************************************************************
   
   % indexes of fields specifying parameters for planer intersection program
   % launch site latitude (deg)
   global XA_LNCH_LAT;
   % launch site longitude (deg)
   global XA_LNCH_LON;
   % injection azimuth (deg)
   global XA_LNCH_INJAZ;
   % launch time in days since 1950 UTC
   global XA_LNCH_DS50UTC;
   
   global XA_LNCH_SIZE;
   
   %*******************************************************************************
   
   % indexes of fields specifying parameters for planer intersection program
   % orbital type (LEO = 1, MEO = 2, GEO = 3)
   global XA_PLNR_ORBTYPE;
   % launch site latitude (deg)
   global XA_PLNR_LSLAT;
   % launch site longitude (deg)
   global XA_PLNR_LSLON;
   % launch time in days since 1950 UTC
   global XA_PLNR_DS50UTC;
   % time of flight start (min)
   global XA_PLNR_TOFFR;
   % time of flight end (min)
   global XA_PLNR_TOFTO;
   % planer's inclination (deg)
   global XA_PLNR_INCLI;
   % planer's node (deg)
   global XA_PLNR_NODE;
   
   global XA_PLNR_SIZE;
   
   %*******************************************************************************
   
   % indexes of output data returned by planer intersection program
   % time of intersection in days since 1950 UTC
   global XA_INTXN_DS50UTC;
   % satellite inclination (deg)
   global XA_INTXN_INCLI;
   % satellite latitude (deg) at the time of the intersection
   global XA_INTXN_LAT;
   % satellite longitude (deg) at the time of the intersection
   global XA_INTXN_LON;
   % satellite height (km) at the time of the intersection
   global XA_INTXN_HEIGHT;
   % time of flight (min) since launch time
   global XA_INTXN_TOF;
   % coplaner angle (deg)
   global XA_INTXN_COPLANG;
   
   global XA_INTXN_SIZE;
   
   %*******************************************************************************
   
   
   %*******************************************************************************
   
   % Missile Profile
   % missile profile's minimum height limit (km)
   clear XA_MSL_MINHGT;
   % missile profile's maximum height limit (km)
   clear XA_MSL_MAXHGT;
   % maximum allowed solar aspect angle (deg)
   clear XA_MSL_MAXSA;
   % maximum allowed missile attack angle (deg)
   clear XA_MSL_ANGMAX;
   % rejection flag (-1: reject negative, 0: reject neg and pos, 1: reject pos)
   clear XA_MSL_REJFLG;
   % missile trajectory time coefficient for the *X**2 term [sec]
   clear XA_MSL_TIMCOE1;
   % missile trajectory time coefficient for the *X term [sec]
   clear XA_MSL_TIMCOE2;
   % missile trajectory time constant for the C term [sec]
   clear XA_MSL_TIMCOE3;
   % missile trajectory range coefficient *X**2 term [km]
   clear XA_MSL_RNGCOE1;
   % missile trajectory range coefficient *X term [km]
   clear XA_MSL_RNGCOE2;
   % missile trajectory range constant for the C term [km]
   clear XA_MSL_RNGCOE3;
   
   clear XA_MSL_SIZE;
   
   %*******************************************************************************
   
   % Launch site location
   % launch site's latitude (deg)  (+N) (-S)
   clear XA_LS_LAT;
   % launch site's longitude (deg) (+E) (-W)
   clear XA_LS_LON;
   % launch site's height(m)
   clear XA_LS_HEIGHT;
   
   clear XA_LS_SIZE;
   
   %*******************************************************************************
   
   % Saas run parameters
   % Maximum number of penetration points that are allowed
   clear XA_SAASRUN_MAXPENS;
   % SAAS start time in days since 1950, UTC
   clear XA_SAASRUN_START;
   % SAAS stop time in days since 1950, UTC
   clear XA_SAASRUN_STOP;
   % Half angle of attack cone (0=auto)
   clear XA_SAASRUN_HALFCONE;
   
   clear XA_SAASRUN_SIZE;
   
   %*******************************************************************************
   
   % Satellite penetration data
   % impact time in days since 1950, UTC
   clear XA_SATPEN_IMPTIME;
   % msl launch time in days since 1950, UTC
   clear XA_SATPEN_LAUTIME;
   % azimuth (deg)
   clear XA_SATPEN_AZ;
   % elevation (deg)
   clear XA_SATPEN_EL;
   % range (km)
   clear XA_SATPEN_RANGE;
   % range rate (km/s)
   clear XA_SATPEN_RNGRATE;
   % solar aspect angle (deg)
   clear XA_SATPEN_SOLANG;
   % attack angle (deg)
   clear XA_SATPEN_ATTCKANG;
   % satellite's height (km)
   clear XA_SATPEN_SATHGHT;
   % ring penetration entry or exit time (0=entry, 1=exit)
   clear XA_SATPEN_EN0EX1;
   
   clear XA_SATPEN_SIZE;
   
   %*******************************************************************************
   
   % SAAS ouput data
   % number of actual satellite penetrations
   clear XA_SAASRET_NUMOFPENS;
   % satellite apogee height (km)
   clear XA_SAASRET_SATAHT;
   % satellite perigee height (km)
   clear XA_SAASRET_SATPHT;
   % autocone minimum cone half angle (deg)
   clear XA_SAASRET_MINCONE;
   % autocone maximum cone half angle (deg)
   clear XA_SAASRET_MAXCONE;
   
   
   
   
   clear XA_SAASRET_SIZE;
   
   %*******************************************************************************
   
   % predefined values for different orbit types used in planer program
   % orbit type LEO
   clear ORBTYPE_LEO;
   % orbit type MEO
   clear ORBTYPE_MEO;
   % orbit type GEO
   clear ORBTYPE_GEO;
   
   %*******************************************************************************
   
   % indexes of fields specifying parameters for planer intersection program
   % launch site latitude (deg)
   clear XA_LNCH_LAT;
   % launch site longitude (deg)
   clear XA_LNCH_LON;
   % injection azimuth (deg)
   clear XA_LNCH_INJAZ;
   % launch time in days since 1950 UTC
   clear XA_LNCH_DS50UTC;
   
   clear XA_LNCH_SIZE;
   
   %*******************************************************************************
   
   % indexes of fields specifying parameters for planer intersection program
   % orbital type (LEO = 1, MEO = 2, GEO = 3)
   clear XA_PLNR_ORBTYPE;
   % launch site latitude (deg)
   clear XA_PLNR_LSLAT;
   % launch site longitude (deg)
   clear XA_PLNR_LSLON;
   % launch time in days since 1950 UTC
   clear XA_PLNR_DS50UTC;
   % time of flight start (min)
   clear XA_PLNR_TOFFR;
   % time of flight end (min)
   clear XA_PLNR_TOFTO;
   % planer's inclination (deg)
   clear XA_PLNR_INCLI;
   % planer's node (deg)
   clear XA_PLNR_NODE;
   
   clear XA_PLNR_SIZE;
   
   %*******************************************************************************
   
   % indexes of output data returned by planer intersection program
   % time of intersection in days since 1950 UTC
   clear XA_INTXN_DS50UTC;
   % satellite inclination (deg)
   clear XA_INTXN_INCLI;
   % satellite latitude (deg) at the time of the intersection
   clear XA_INTXN_LAT;
   % satellite longitude (deg) at the time of the intersection
   clear XA_INTXN_LON;
   % satellite height (km) at the time of the intersection
   clear XA_INTXN_HEIGHT;
   % time of flight (min) since launch time
   clear XA_INTXN_TOF;
   % coplaner angle (deg)
   clear XA_INTXN_COPLANG;
   
   clear XA_INTXN_SIZE;
   
   %*******************************************************************************
   
   FreeSaasDll;
   clear LoadSaasDll;
   clear FreeSaasDll;
   
   %  Notes: This function has been deprecated since v9.0. 
   %  Initializes Saas dll for use in the program
   clear SaasInit
   
   %  Returns information about the current version of Saas.dll. The information is placed in the
   %  string parameter passed-in
   clear SaasGetInfo
   
   %  SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   %    (Direct Ascent Anti-Satellite). 
   %  <br>
   %  <br>
   %  SAAS software description:
   %  <br>
   %    SaasGetResults executes SAAS (Satellite Attack Assessment Software) also known as DA ASAT
   %    (Direct Ascent Anti-Satellite). Developed by HQ SpOC, SAAS assesses attack opportunities
   %    for a direct ascent ASAT attack, similar to F-15 ASAT of the 1980's.  By its use of SGP4
   %    propagation, SAAS is designed as a high-speed screening tool to identify potential target
   %    objects in vulnerable orbits relative to the specified missile site/capability; however it
   %    should not be considered a precision analysis model.
   %  <br>
   %  <br>
   %  SAAS algorithm:
   %  <br>
   %    SAAS computes a ring of potential intercept points around a launch site.  The size of the
   %    ring (also known as 'the kill ring') is based on the altitude limit and missile profile
   %    specified for the direct ascent booster.  Each target altitude has a unique kill ring with
   %    two intercept points, defined as 'pierce/entry' and exit.  The ring of potential intercept
   %    points span over 360 degrees azimuth above the launch site.  The ring of intercept points
   %    is circumscribed by a cone looking up from the launch site.  Target orbits are flown
   %    (propagated by SGP4) over a specified period of interest and penetrations of the launch site
   %    cone determine a viable intercept passes.  The time of the cone penetration, and/or cone
   %    exit, are the 'intercept times'.  (Note that as the target altitude decreases, the intercept
   %    point moves farther down-range from the launch site; then it moves up-range after the
   %    specified missile max range is reached.) The azimuth from the launch site to the cone
   %    penetration point is the launch azimuth.  Lastly, the launch time is determined as the cone
   %    penetration time minus the missile time-of-flight to the target.
   %  <br>
   %  <br>
   %  INPUTS include:
   %  <br>
   %  <table>
   %    <caption>table</caption>
   %    <tr><td>(a)</td><td> a set of target input SGP4 two-line element sets (TLEs)</td></tr>
   %    <tr><td>(b)</td><td> coefficient-based missile profile used for the direct ascent attack trajectory</td></tr>
   %    <tr><td>(c)</td><td> missile profile limits including min and max height, maximum sun angle, and maximum
   %         attack angle</td></tr>
   %    <tr><td>(d)</td><td> ground missile location(s) including N. latitude, E. longitude, and height for one or
   %         more test sites</td></tr>
   %    <tr><td>(e)</td><td> a specified evaluation period of interest for assessment</td></tr>
   %  </table>
   %  <br>
   %  <br>
   %  OUTPUTS include:
   %    (a) attack launch time, launch azimuth, and intercept time, for each viable target pass over
   %         a launch site within the specified period of interest
   %  <br>
   %  Order of elements in the input xa_msl array:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td>  0 </td><td>missile profile minimum height limit [km]</td></tr>
   %  <tr><td>  1 </td><td>missile profile maximum height limit [km]</td></tr>
   %  <tr><td>  2 </td><td>maximum allowed solar aspect angle [deg], pass qualifies 
   %  <tr><td>  3 </td><td>maximum allowed missile attack angle [deg], pass qualifies only 
   %  <tr><td>  4 </td><td>rejection flag*: -1=reject negative; 0=reject neither negative nor positive; 1=reject positive. 
   %  <tr><td>  5 </td><td>missile profile time coefficient for the X^2 term</td></tr>
   %  <tr><td>  6 </td><td>missile profile time coefficient for the X term</td></tr>
   %  <tr><td>  7 </td><td>missile profile time constant for the C term</td></tr>
   %  <tr><td>  8 </td><td>missile profile range coefficient for the X^2 term</td></tr>
   %  <tr><td>  9 </td><td>missile profile range coefficient for the X term</td></tr>
   %  <tr><td> 10 </td><td>missile profile range constant for the C term</td></tr>
   %  <tr><td> 11-31 </td><td>unused at this time</td></tr>
   %  </table>   
   %   (*) The missile rejection flag designation is used by SAAS to check for sign of the desired
   %       attack angles in the results.  It evaluates the sign (+ or -) of the computed attack
   %       angle vs. the maximum allowed attack angle.  For example if set to -1, only positive
   %       attack angles less than the max attack angle will be returned.  If set to 0, either a
   %       positive or negative computed attack angle is acceptable as long as long it is less
   %       than the max allowed attack angle.  If set to 1, only negative attack angles less than
   %       the maximum will be accepted and returned.
   %  <br>
   %  Order of elements in the input xa_ls array:   
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td> 0 </td><td>launch test site's latitude (+North, -South)</td></tr>
   %  <tr><td> 1 </td><td>launch test site longitude (+East, -West)</td></tr>
   %  <tr><td> 2 </td><td>launch test site local height above Earth average equatorial radius (meters). 
   %  <tr><td> 3-7 </td><td>unused at this time</td></tr>
   %  </table>   
   %  <br>
   %  Order of elements in the input xa_saasRun array:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td> 0 </td><td>Maximum number of penetration points allowed. 
   %  <tr><td> 1 </td><td>SAAS assessment period-of-interest (POI) start time in fractional days since 1950, UTC</td></tr>
   %  <tr><td> 2 </td><td>SAAS assessment period-of-interest (POI) stop time in fractional days since 1950, UTC. 
   %  								 Note: if a stop time is not specified, it is defaulted by SAAS to 1 day after the specified start
   %  								 time</td></tr>
   %  <tr><td> 3 </td><td>Specified half-angle of attack cone, where if set to 0, SAAS will automatically determine the attack cone half angle. 
   %    								 Note:  if a input cone angle is &gt; 90 degrees, it is defaulted by SAAS to 90
   %    								 degrees</td></tr>
   %  <tr><td> 4-7 </td><td>unused at this time</td></tr>
   %  </table>   
   %  <br>
   %  Order of elements in the returned in the first dimension of xa_satPen array (second array
   %   dimension allows similar same results Elements for other viable penetration solutions at
   %   different times during the assessment period of interest):
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td> 0 </td><td>impact time in fractional days since 1950, UTC</td></tr>
   %  <tr><td> 1 </td><td>missile launch time in fractional days since 1950, UTC</td></tr>
   %  <tr><td> 2 </td><td>satellite penetration azimuth [deg]</td></tr>
   %  <tr><td> 3 </td><td>satellite penetration elevation [deg]</td></tr>
   %  <tr><td> 4 </td><td>satellite penetration range [km]</td></tr>
   %  <tr><td> 5 </td><td>satellite penetration range rate [km/s]</td></tr>
   %  <tr><td> 6 </td><td>satellite penetration solar aspect angle [deg]</td></tr>
   %  <tr><td> 7 </td><td>satellite penetration attack angle [deg]</td></tr>
   %  <tr><td> 8 </td><td>satellite height at penetration [km] </td></tr>
   %  <tr><td> 9 </td><td>ring penetration indicator:  0 = impact time is an 'entry' time; 1 = ring penetration is an 'exit'
   %  time</td></tr>
   %  <tr><td> 10-15 </td><td>unused at this time</td></tr>
   %  </table>   
   %  <br>
   %  Order of elements in the output xa_Ret array:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td> 0 </td><td>number of potential viable attack penetrations (opportunities) identified vs. the target set within the
   %  POI</td></tr>
   %  <tr><td> 1-15 </td><td>unused at this time</td></tr>
   %  </table>   
   %  <br>
   %  xa_saasRet(16) - other saas output:
   %  <table>
   %  <caption>table</caption>
   %  <tr>
   %  <td><b>Index</b></td>
   %  <td><b>Index Interpretation</b></td>
   %  </tr>   
   %  <tr><td> 0 </td><td> number of actual satellite penetrations found</td></tr>
   %  <tr><td> 1 </td><td> satellite apogee height (km)</td></tr>
   %  <tr><td> 2 </td><td> satellite perigee height (km)</td></tr>
   %  <tr><td> 3 </td><td> autocone minimum cone half angle (deg)</td></tr>
   %  <tr><td> 4 </td><td> autocone maximum cone half angle (deg)</td></tr>
   %  <tr><td> 5-15 </td><td> not used at this time</td></tr>
   %  </table>   
   clear SaasGetResults
   
   %  Computes auto cone size based on satellite height and missile profile      
   clear SaasAutoConeSize
   
   %  Computes missile time of flight based on satellite height and missile profile  
   clear SaasMissileFlightTime
   
   %  Computes launch orbital plane (inclination and node) based on the launch data
   clear ComputeLnchOrbPlane
   
   %  Compares a satellite elset against a new launch to find planer intersection time and associated data
   clear FindPlanerIntersection
endfunction
% ========================= End of auto generated code ==========================
