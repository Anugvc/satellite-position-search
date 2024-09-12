echo off
setlocal

@REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\..\..\Lib\Windows;%%PATH%%"
    exit /B 1
)

@REM Check if Tcl executable is in the path
for %%X in (wish.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Tcl executables are in your path
	echo For example "set PATH=C:\Program Files\TCL;%%PATH%%"
    exit /B 1
)

@REM Check if Tcl shared libraries were built
if not exist ..\..\lib_tcl\lib\Windows\TclDllMain.dll (
	echo Tcl library files may not have been built.
	echo 1.  cd ..\..\lib_tcl
	echo 2.  Run "devenv.com lib_tcl.sln" 
	exit /B 1
)

echo "Running Sgp4Prop_Simple.tcl"
wish .\Sgp4Prop_Simple.tcl
