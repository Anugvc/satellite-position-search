echo off
setlocal

@REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\..\..\Lib\Windows;%%PATH%%"
    exit /B 1
)

@REM Check if Octave executable is in the path
for %%X in (octave-launch.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Octave executables are in your path
	echo For example "set PATH=C:\Program Files\GNU Octave\Octave-8.2.0;%%PATH%%"
    exit /B 1
)

@REM Check if *.oct files were built
if not exist ..\..\octfiles\lib\Windows\Sgp4Prop.oct (
	echo *.oct files may not have been built.
	echo 1.  cd ..\..\octfiles
	echo 2.  Run "octave make_oct_files_for_windows.m" 
	exit /B 1
)

echo "Running TestInterfaces.m"
octave TestInterfaces.m
