clc
clear all
%runs from the Sgp4Prop/SampleCode/Octave directory

if(ispc)
   setenv("PATH","../../../../Lib/Windows")
else %ismac and isunix are also options
   setenv("LD_LIBRARY_PATH","../../../../Lib/Linux/IFORT")
end

%OctFilePath=[pwd,"../../octfiles/lib"]; %autoload likes full paths
dir=pwd;
ndx=strfind(dir,"Octave");
OctFilePath=dir(1:ndx+6);
if(ispc)
   OctFilePath=[OctFilePath,"octfiles/lib/Windows/"]
else %ismac and isunix are also options
   OctFilePath=[OctFilePath,"octfiles/lib/Linux/"]
end
FuncPath="../../octave_functions/";

addpath(FuncPath)

loadDllMain(OctFilePath);

cIn = 'Z';
intIn = 42;
longIn="1234567890123456789";
%longIn = dec2hex(longIn1)
realIn = 123.456;
strIn = 'I am Batman';
int1DIn = [1 2 3];
long1DIn = [ "1234567890123456789";"2345678901234567890";"6"];
real1Din = [7.1 8.2 9.3];
int2DIn = [1 2 3; 4 5 6];
long2DIn = [1234567890123456789 2345678901234567890 3; 4 5 6];
real2Din = [1.1 2.2 3.3; 4.4 5.5 6.6];

[cOut, intOut, longOut, realOut, strOut, int1DOut, long1DOut, real1DOut, int2DOut, long2DOut, real2DOut] = TestInterface(cIn, intIn, longIn, realIn, strIn, int1DIn, long1DIn, real1Din, int2DIn, long2DIn, real2Din)

cInOut      = "Z"; %Converted to 'Z' internally, but stays "Z"
intInOut    = 42;
longInOut   = "123";
realInOut   = 42.0;
strInOut    = "Hello";
int1DInOut  = [1, 2, 3];
long1DInOut = ["1234567890123456789";"2345678901234567890";"6"];
real1DInOut = [1.0, 2.0, 3.0];
int2DInOut  = [1 2 3; 4  5, 6];
long2DInOut = [3, 4, 5; 6, 7, 8];
real2DInOut = [1.0, 2.0; 3.0, 4.0; 5.0, 6.0];
[cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut] = TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut)

size_Unk1DIn = 3;
Unk1DIn = [1,2,3];
size_Unk2DIn = 2;
Unk2DIn  = [1,2,3;4,5,6];
size_Unk1DOut=3;
size_Unk2Dout=2;
[Unk1DOut, Unk2DOut] = TestInterface3(size_Unk1DIn, Unk1DIn, size_Unk1DOut, size_Unk2DIn, Unk2DIn, size_Unk2Dout)

freeDllMain();
