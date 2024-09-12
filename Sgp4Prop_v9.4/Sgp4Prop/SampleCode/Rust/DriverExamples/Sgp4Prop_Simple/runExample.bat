@REM This script runs the Sgp4Prop_Simple example

@echo off
@setlocal

set exe_name=Sgp4Prop_Simple

REM Check if the rust executable is in the path
for %%X in (cargo.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the cargo.exe executable is in your path
	echo For example "set PATH=%%PATH%%;..\..\Windows\"
    exit /B 1
)

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\AstroStandards\Lib\Windows;%%PATH%%"
    exit /B 1
)

@REM Create subdirectories used by makefile
if not exist "bin" mkdir bin
if not exist "output" mkdir output

@REM compile all source code
echo Compiling
cargo build

if %ERRORLEVEL% NEQ 0 (
    echo "Error compiling code"
    exit /B 1
)

@REM Note: by default, the executable is in \target\debug subdirectory
echo Running example
copy .\target\debug\%exe_name%.exe .\bin\
.\bin\%exe_name%

set exitCode=%ERRORLEVEL% 

if %exitCode% NEQ 0 (
    echo "Error executing %exe_name% with exit code of: %exitCode%"
    exit /B 1
)

