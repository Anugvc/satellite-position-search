with Ada.Text_IO;  use Ada.Text_IO;
with AstroAdaTypes; use AstroAdaTypes;
with DllMainDll; use DllMainDll;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure TestInterfaces is
        
   -- Test a function output     
   V : Integer;
   
   -- TestInterface Variables   
   cIn : Character;
   cOut : Character;
   intIn : Integer;
   intOut : Integer;
   longIn : Long_Long_Integer;
   longOut : Long_Long_Integer;
   realIn : Long_Float;
   realOut : Long_Float;
   strIn : String(1..512) := (others => ' ');
   strOut : String(1 .. 512) := (others => ' ');
   int1DIn : Int1D(1..3);
   int1DOut : Int1D(1..3);
   long1DIn : Long1D(1..3);
   long1DOut : Long1D(1..3);
   real1DIn : Double1D(1..3);
   real1DOut : Double1D(1..3);
   int2DIn : Int2D(1..3,1..2);
   int2DOut : Int2D(1..3,1..2);
   long2DIn : Long2D(1..3,1..2);
   long2DOut : Long2D(1..3,1..2);
   real2DIn : Double2D(1..3,1..2);
   real2DOut : Double2D(1..3,1..2);
   
   -- TestInterface2 Variables
   cInOut : Character;
   intInOut : Integer;
   longInOut : Long_Long_Integer;
   realInOut : Long_Float;
   strInOut : String(1 .. 512) := (others => ' ');
   int1DInOut : Int1D(1..3);
   long1DInOut : Long1D(1..3);
   real1DInOut : Double1D(1..3);
   int2DInOut : Int2D(1..3,1..2);
   long2DInOut : Long2D(1..3,1..2);
   real2DInOut : Double2D(1..3,1..2);
  
   -- TestInterface3 Variables
   size1D : Integer;
   Unk1DIn : Int1D_Ptr;
   Unk1DOut : Int1D_Ptr;
   size2D : Integer;
   Unk2DIn : Int2D_Ptr;
   Unk2DOut : Int2D_Ptr;

begin
   -- Test Constants
   Put_Line("Value of BADKEY = " & Integer'Image(BADKEY) );
   
   -- Try function with return argument
   V := GetElsetKeyMode;
   Put_Line("Result of GetElsetKeyMode = " & Integer'Image(V) );
   
   -- TestInterface
   Put_Line("");
   Put_Line("Testing TestInterface");
   cIn := 'Z';
   intIn := 123;
   longIn := 1234567890123456789;
   realIn := 123.45;
   strIn(1..15) := "Hello form Ada!";  -- Don't know if a better way to do this
   int1DIn := (1, 2, 3);
   long1Din := (1234567890123456789, 2, 3);
   real1Din := (1.1 ,2.2, 3.3);
   int2DIn := ((1, 2), (3,4), (5, 6));
   long2Din := ((1234567890123456789, 2), (3,4),(5,6));
   real2Din := ((1.1, 2.2), (3.3 , 4.4), (5.5, 6.6));
   
   TestInterface(cIn, cOut, intIn, intOut, longIn, longOut, realIn, realOut, strIn, strOut, int1DIn, int1DOut, long1DIn, long1DOut, real1DIn, real1DOut, int2DIn, int2DOut, long2DIn, long2DOut, real2DIn, real2DOut);
         
   Put_Line("cOut = " & Character'Image(cout));
   Put_Line("intOut = " & Integer'Image(intOut));
   Put_Line("longOut = " & Long_Long_Integer'Image(longOut));
   Put_Line("realOut = " & Long_Float'Image(realOut));
   Put_Line("strOut = " & Trim(strOut, Right));
   Put_Line("int1DOut = " & Integer'Image(int1DOut(1)) & Integer'Image(int1DOut(2)) & Integer'Image(int1DOut(3)));
   Put_Line("long1DOut = " & Long_Long_Integer'Image(long1DOut(1)) & Long_Long_Integer'Image(long1DOut(2)) & Long_Long_Integer'Image(long1DOut(3)));
   Put_Line("real1DOut = " & Long_Float'Image(real1DOut(1)) & Long_Float'Image(real1DOut(2)) & Long_Float'Image(real1DOut(3)));
   Put_Line("int2DOut = " & Integer'Image(int2DOut(1,1)) & Integer'Image(int2DOut(1,2)));
   Put_Line("int2DOut = " & Integer'Image(int2DOut(2,1)) & Integer'Image(int2DOut(2,2)));
   Put_Line("int2DOut = " & Integer'Image(int2DOut(3,1)) & Integer'Image(int2DOut(3,2)));
   Put_Line("long2DOut = " & Long_Long_Integer'Image(long2DOut(1,1)) & Long_Long_Integer'Image(long2DOut(1,2)));
   Put_Line("long2DOut = " & Long_Long_Integer'Image(long2DOut(2,1)) & Long_Long_Integer'Image(long2DOut(2,2)));
   Put_Line("long2DOut = " & Long_Long_Integer'Image(long2DOut(3,1)) & Long_Long_Integer'Image(long2DOut(3,2)));
   Put_Line("real2DOut = " & Long_Float'Image(real2DOut(1,1)) & Long_Float'Image(real2DOut(1,2)));
   Put_Line("real2DOut = " & Long_Float'Image(real2DOut(2,1)) & Long_Float'Image(real2DOut(2,2)));
   Put_Line("real2DOut = " & Long_Float'Image(real2DOut(3,1)) & Long_Float'Image(real2DOut(3,2)));


   -- TestInterface2
   Put_Line("");
   Put_Line("Testing TestInterface2");
   cInOut := 'A';
   intInOut := 123;
   longInOut := 1234567890123456789;
   realInOut := 123.45;
   strInOut(1..15) := "Hello form Ada!";  -- Don't know if a better way to do this
   int1DInOut := (1, 2, 3);
   long1DinOut := (1234567890123456789, 2, 3);
   real1DinOut := (1.1 ,2.2, 3.3);
   int2DInOut := ((1, 2), (3,4), (5, 6));
   long2DinOut := ((1234567890123456789, 2), (3,4),(5,6));
   real2DinOut := ((1.1, 2.2), (3.3 , 4.4), (5.5, 6.6));

   TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut);

   Put_Line("cInOut = " & Character'Image(cInOut));
   Put_Line("intInOut = " & Integer'Image(intInOut));
   Put_Line("longInOut = " & Long_Long_Integer'Image(longInOut));
   Put_Line("realInOut = " & Long_Float'Image(realInOut));
   Put_Line("strInOut = " & Trim(strInOut, Right));
   Put_Line("int1DInOut = " & Integer'Image(int1DInOut(1)) & Integer'Image(int1DInOut(2)) & Integer'Image(int1DInOut(3)));
   Put_Line("long1DInOut = " & Long_Long_Integer'Image(long1DInOut(1)) & Long_Long_Integer'Image(long1DInOut(2)) & Long_Long_Integer'Image(long1DInOut(3)));
   Put_Line("real1DInOut = " & Long_Float'Image(real1DInOut(1)) & Long_Float'Image(real1DInOut(2)) & Long_Float'Image(real1DInOut(3)));
   Put_Line("int2DInOut = " & Integer'Image(int2DInOut(1,1)) & Integer'Image(int2DInOut(1,2)));
   Put_Line("int2DInOut = " & Integer'Image(int2DInOut(2,1)) & Integer'Image(int2DInOut(2,2)));
   Put_Line("int2DInOut = " & Integer'Image(int2DInOut(3,1)) & Integer'Image(int2DInOut(3,2)));
   Put_Line("long2DInOut = " & Long_Long_Integer'Image(long2DInOut(1,1)) & Long_Long_Integer'Image(long2DInOut(1,2)));
   Put_Line("long2DInOut = " & Long_Long_Integer'Image(long2DInOut(2,1)) & Long_Long_Integer'Image(long2DInOut(2,2)));
   Put_Line("long2DInOut = " & Long_Long_Integer'Image(long2DInOut(3,1)) & Long_Long_Integer'Image(long2DInOut(3,2)));
   Put_Line("real2DInOut = " & Long_Float'Image(real2DInOut(1,1)) & Long_Float'Image(real2DInOut(1,2)));
   Put_Line("real2DInOut = " & Long_Float'Image(real2DInOut(2,1)) & Long_Float'Image(real2DInOut(2,2)));
   Put_Line("real2DInOut = " & Long_Float'Image(real2DInOut(3,1)) & Long_Float'Image(real2DInOut(3,2)));

   -- TestInterface2
   Put_Line("");
   Put_Line("Testing TestInterface3");
   size1D := 3;
   Unk1DIn := new Int1D(1 .. size1D);
   Unk1DOut := new Int1D(1 .. size1D);
   Unk1DIn(1 .. 3) := (1, 2, 3);
   size2D := 2;
   Unk2DIn := new Int2D(1 .. 3,1 .. size2D);
   Unk2DOut := new Int2D(1 .. 3, 1 .. size2D);
   Unk2DIn(1,1) := 1; Unk2DIn(1,2) := 2;
   Unk2DIn(2,1) := 3; Unk2DIn(2,2) := 4;
   Unk2DIn(3,1) := 5; Unk2DIn(3,2) := 6;
   
   TestInterface3(Unk1DIn, Unk1DOut, Unk2DIn, Unk2DOut);
   
   Put_Line("Unk1DOut = " & Integer'Image(Unk1DOut(1)) & Integer'Image(Unk1DOut(2)) & Integer'Image(Unk1DOut(3)));
   Put_Line("Unk2DOut = " & Integer'Image(Unk2DOut(1,1)) & Integer'Image(Unk2DOut(1,2)));
   Put_Line("Unk2DOut = " & Integer'Image(Unk2DOut(2,1)) & Integer'Image(Unk2DOut(2,2)));
   Put_Line("Unk2DOut = " & Integer'Image(Unk2DOut(3,1)) & Integer'Image(Unk2DOut(3,2)));
   
   --Deallocate(Unk1DIn);  Doesn't work
end TestInterfaces;

