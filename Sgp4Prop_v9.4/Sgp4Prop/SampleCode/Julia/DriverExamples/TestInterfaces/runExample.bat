@REM This script runs the TestInterfaces example

@echo off
@setlocal

REM Check if the julia executable is in the path
for %%X in (julia.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the julia.exe executable is in your path
	echo For example "set PATH=%%PATH%%;..\..\Windows\"
    exit /B 1
)

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=%%PATH%%;..\..\Windows\"
    exit /B 1
)

set script=TestInterfaces.jl
echo Running %script% example
julia.exe %script%

if %ERRORLEVEL% NEQ 0 (
    echo Error executing julia.exe %script%
    exit /B 1
)

