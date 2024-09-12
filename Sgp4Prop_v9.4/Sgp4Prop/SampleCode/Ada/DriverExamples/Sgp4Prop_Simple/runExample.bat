@REM This script runs the Sgp4Prop_Simple example

@echo off
@setlocal

REM Check if the GNAT executables are in the PATH
for %%X in (gnatmake.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the GNAT executables are in your path
	echo For example "set PATH=%%PATH%%;..\..\Windows\"
    exit /B 1
)

REM Check if AstroStds libraries are in the PATH
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=%%PATH%%;..\..\Windows\"
    exit /B 1
)

copy ..\services\*.* .\src\

if not exist "bin" mkdir bin

# delete old executable
if exist ".\bin\Sgp4Prop_Simple.exe" del .\bin\Sgp4Prop_Simple.exe

echo Compiling
cd .\src
gnatmake -g Sgp4Prop_Simple.adb -aI../../wrappers -aO$LD_LIBRARY_PATH -largs -ldllmain -lenvconst -ltimefunc -ltle -lsgp4prop

copy Sgp4Prop_Simple.exe ..\bin\

del *.o *.ali b~*

cd ..

echo "Running driver example ...."
.\bin\Sgp4Prop_Simple

if %ERRORLEVEL% NEQ 0 (
    echo "Error executing Ada program"
    exit /B 1
)

