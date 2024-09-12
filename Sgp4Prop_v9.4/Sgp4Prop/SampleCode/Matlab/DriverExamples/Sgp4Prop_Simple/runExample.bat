@REM This script runs the Sgp4Prop_Simple example

@echo off
@setlocal

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\AstroStandards\Lib\Windows;%%PATH%%"
    exit /B 1
)

REM Check if matlab.exe is in the path
for %%X in (matlab.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo This script assumes you have MatLab installed.  Normally, you would find matlab.exe
	echo in a directory like C:\Program Files\MATLAB\R2023a\bin
    exit /B 1
)

if not exist "output" mkdir output

echo matlab -nosplash -noFigureWindows -batch ^"try, Sgp4Prop_Simple(), catch, exit, end, exit^"
matlab -nosplash -noFigureWindows -batch "try, Sgp4Prop_Simple(), catch, exit, end, exit"

set errorCode=%ERRORLEVEL% 

if %errorCode% NEQ 0 (
    echo "Error executing matlab with exit code of: %exitCode%"
    exit /B 1
)

exit /B 0