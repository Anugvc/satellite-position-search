@REM This script runs the ShowVersion example

@echo off
@setlocal

set name=ShowVersion

set switches="Release|x64"
set build_name=%name%_x64.exe
set exe_name=%name%.exe
set exe_path=..\..\x64\Release

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\AstroStandards\Lib\Windows;%%PATH%%"
    exit /B 1
)

REM Check if devenv.com is in the path
for %%X in (devenv.com) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo This script assumes you are using Microsoft Visual Studio to compile the examples.  If you are not, then please
    echo modify this script and replace the "devenv.com" command to accommodate your compiler.  If you are using
    echo Microsoft Visual Studio, please ensure "devenv.com" is in your path.  For example,
	echo "set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE;%%PATH%%"
    exit /B 1
)

@REM compile all source code
echo Compiling
@REM Fix this line to your compile command
devenv.com ..\..\driverexamples_c.sln /Project %name% /rebuild %switches%

if %ERRORLEVEL% NEQ 0 (
    echo "Error compiling code"
    exit /B 1
)

if not exist "bin" mkdir bin
if not exist "output" mkdir output

copy %exe_path%\%build_name% .\bin\%exe_name%

echo Running example
".\bin\%exe_name%"

set errorCode=%ERRORLEVEL% 

if %errorCode% NEQ 0 (
    echo "Error executing %exe_name% with exit code of: %exitCode%"
    exit /B 1
)

exit /B 0
