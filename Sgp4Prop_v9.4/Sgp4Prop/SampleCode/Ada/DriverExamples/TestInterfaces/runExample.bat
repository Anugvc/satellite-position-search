@REM This script runs the TestInterfaces example

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

if not exist "bin" mkdir bin

# delete old executable
if exist ".\bin\testinterfaces.exe" del .\bin\testinterfaces.exe

echo Compiling
cd .\src
gnatmake -g testinterfaces.adb -aI../../wrappers -aO$LD_LIBRARY_PATH -largs -ldllmain

copy testinterfaces.exe ..\bin\

del *.o *.ali b~*

cd ..

echo "Running driver example ...."
.\bin\testinterfaces

if %ERRORLEVEL% NEQ 0 (
    echo "Error executing Ada program"
    exit /B 1
)

