with Ada.Text_IO;  use Ada.Text_IO;
with AstroAdaTypes; use AstroAdaTypes;
with TimeFuncDll; use TimeFuncDll;
with TleDll; use TleDll;
with Sgp4PropDll; use Sgp4PropDll;
with System.Storage_Elements; -- For heap allocation
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Containers.Vectors;
with System.Storage_Pools;

procedure Sgp4Prop_Simple is
   -- SatKey     
   satKey : Long_Long_Integer;     
        
   -- Tle
   line1 : String(1..512) := (others => ' ');
   line2 : String(1..512) := (others => ' ');

   ierr : Integer;
   mse : Long_Float;
   ds50UTC : Long_Float;
   yr : Integer;
   day : Long_Float;
   pos : Double1D(1..3);
   vel : Double1D(1..3);
   llh : Double1D(1..3);
   
begin

    line1(1 .. 68) := "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814";
	line2(1 .. 68) := "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199";
    satKey := TleAddSatFrLines(line1,line2);
    ierr := Sgp4InitSat(satKey);
    
    mse := 0.0;
    while mse <=43200.0 loop
       ierr := Sgp4PropMse(satKey, mse, ds50UTC, pos, vel, llh);
       UTCToYrDays(ds50UTC,yr,day);
       Put_Line(Long_Float'Image(mse) & Long_Float'Image(pos(1)) & Long_Float'Image(pos(2)) & Long_Float'Image(pos(3)) & Long_Float'Image(vel(1)) & Long_Float'Image(vel(2)) & Long_Float'Image(vel(3)));
       mse := mse + 2700.0;
    end loop;
end Sgp4Prop_Simple;

