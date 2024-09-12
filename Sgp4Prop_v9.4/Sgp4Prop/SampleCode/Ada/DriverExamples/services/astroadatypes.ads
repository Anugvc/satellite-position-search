pragma Ada_2012;
pragma Style_Checks (Off);
pragma Warnings ("U");

package AstroAdaTypes is
   type Int1D is array (Integer range <>) of Integer;
   type Long1D is array (Integer range <>) of Long_Long_Integer;
   type Double1D is array (Integer range <>) of Long_Float;
   type Int2D is array (Integer range <>, Integer range <>) of Integer;
   type Long2D is array (Integer range <>, Integer range <>) of Long_Long_Integer;
   type Double2D is array (Integer range <>, Integer range <>) of Long_Float;
   type Int1D_Ptr is access Int1D;
   type Int2D_Ptr is access Int2D;
   type Long1D_Ptr is access Long1D;
   type Long2D_Ptr is access Long2D;
   type Double1D_Ptr is access Double1D;
   type Double2D_Ptr is access Double2D;
end AstroAdaTypes;
