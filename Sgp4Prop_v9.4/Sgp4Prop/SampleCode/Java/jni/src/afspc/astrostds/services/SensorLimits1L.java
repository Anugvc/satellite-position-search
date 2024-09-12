package afspc.astrostds.services;

public class SensorLimits1L {
    public int      senNum;           // sensor number/sensor key
    public byte     viewType;         // sensor viewing type
    public byte     obsType;          // sensor's observation type
    public int      rngUnits;         // sensor's observation units
    public double   maxRngLim;        // maximum range (km)
    public double   minRngLim;        // minimum range (km)
    public double   rrLim;            // range-rate limit (km/sec)
    public byte     boresight1;       // orbiting sensor boresight vector (U,V,W) for limits interval #1
    public double   elLim1;           // first lower elevation limit (deg)
    public double   elLim2;           // first upper elevation limit (deg)
    public double   azLim1;           // first lower azimuth limit (deg)
    public double   azLim2;           // first upper azimuth limit (deg)
    public double   interval;         // look-angle interval (min)

    public int      visFlg;           // flag; if set, select visual passes only
    public int      rngLimFlg;        // flag; if set, check max range
    public int      maxPPP;           // maximum number of looks per pass
    public int      plntryRes;        // orbiting sensor planetary restrictions flag
}
