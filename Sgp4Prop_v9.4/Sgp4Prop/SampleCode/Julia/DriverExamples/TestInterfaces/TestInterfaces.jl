#!/opt/julia-1.7.1/bin/julia
#To run, add !#(path to julia) on the first line or run 
#(path to julia) ./julia_test.jl 
include("../../wrappers/DllMainDll.jl")
using .DllMainDll

infoStr = DllMainGetInfo()
println(rstrip(infoStr))

cIn      = "Z" #Converted to 'Z' internally, but stays "Z"
intIn    = 42
longIn   = 123
realIn   = 42.0
strIn    = "Hello"
int1DIn  = [1, 2, 3]
long1DIn = [4, 5, 6]
real1DIn = [1.0, 2.0, 3.0]
int2DIn  = [1 2; 3 4; 5 6]
long2DIn = [3 4; 5 6; 7 8]
real2DIn = [1.0 2.0; 3.0 4.0; 5.0 6.0]

cOut,intOut,longOut,realOut,strOut,int1DOut,long1DOut,real1DOut,int2DOut,long2DOut,real2DOut =
  TestInterface(cIn,intIn,longIn,realIn,strIn,int1DIn,long1DIn,real1DIn,int2DIn,long2DIn,real2DIn)

println("TestInterface Output")
println(cOut)
println(intOut)
println(longOut)
println(realOut)
println(rstrip(strOut))
println(int1DOut)
println(long1DOut)
println(real1DOut)
println(int2DOut)
println(long2DOut)
println(real2DOut)

cInOut      = "Z" #Converted to 'Z' internally, but stays "Z"
intInOut    = 42
longInOut   = 123
realInOut   = 42.0
strInOut    = "Hello"
int1DInOut  = [1, 2, 3]
long1DInOut = [4, 5, 6]
real1DInOut = [1.0, 2.0, 3.0]
int2DInOut  = [1 2; 3 4; 5 6]
long2DInOut = [3 4; 5 6; 7 8]
real2DInOut = [1.0 2.0; 3.0 4.0; 5.0 6.0]
cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut = 
   TestInterface2(cInOut, intInOut, longInOut, realInOut, strInOut, int1DInOut, long1DInOut, real1DInOut, int2DInOut, long2DInOut, real2DInOut)
println("\nTestInterface2 Output")
println(cInOut)
println(intInOut)
println(longInOut)
println(realInOut)
println(rstrip(strInOut))
println(int1DInOut)
println(long1DInOut)
println(real1DInOut)
println(int2DInOut)
println(long2DInOut)
println(real2DInOut)

println("\nTestInterface3 Output")
Unk1DIn  = [1, 2, 3]
Unk2DIn  = [1 2; 3 4; 5 6]
size_Unk1DOut=3
size_Unk2Dout=2
Unk1DOut,Unk2DOut = TestInterface3(Unk1DIn, size_Unk1DOut, Unk2DIn, size_Unk2Dout)
println(Unk1DOut)
println(Unk2DOut)

