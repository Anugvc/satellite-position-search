package afspc.astrostds.services;

public class SensorLimits2L {
    public int      senNum;           // sensor number/sensor key

    public byte     boresight2;       // orbiting sensor boresight vector (U,V,W) for limits interval #1
    public double   elLim3;           // second lower elevation limit (deg)
    public double   elLim4;           // second upper elevation limit (deg)
    public double   azLim3;           // second lower azimuth limit (deg)
    public double   azLim4;           // second upper azimuth limit (deg)
    public int      earthBckgrnd;     // flag; when set, allow earth in background (orbiting sensor only)
    public double   earthLimb;        // orbiting sensor; earth limb exclusion distance (km)
    public double   solarXAngle;      // orbiting sensor; sun/satellite exclusion angle (deg)
    public double   lunarXAngle;      // orbiting sensor; moon/satellite exclusion angle (deg)
    public double   minIlum;          // orbiting sensor min illumination angle (deg)
    public double   twilit;           // ground site twilight offset angle (deg)
}
