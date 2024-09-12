package afspc.astrostds.services;

public class SensorLocation {
   public int      senNum;  
   public double   astroLat;
   public double   astroLon;
   public double   senPos[] = new double [3];
   public byte     senDesc[] = new byte [25];
   public int      orbSatNum;
   public byte     secClass;
}