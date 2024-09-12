@REM This script runs the TestInterface example.  Note: the bit size of the 
@REM Go executable must match the bit size of the AstroStandards libraries.

@echo off
@setlocal

set GO_EXE=%~1

REM Check if GO_EXE was set.
if "%GO_EXE%" == "" (
    echo Please set the path to the Go executable
	echo Format: runExample ^<Go exe^> ^<libraries directory^>
    exit /B 1
) else (
    if not exist "%GO_EXE%" (
        echo "Go executable does not exist: %GO_EXE%".
        echo Format: runExample ^<Go exe^> ^<libraries directory^>
        exit /B 1
    )
)

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=%%PATH%%;..\..\Win64\"
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
"%GO_EXE%" src\TestInterfaces.go

if not exist "output" mkdir output

echo Running example
TestInterfaces > output\results.out
if %ERRORLEVEL% NEQ 0 (
    exit /B 1
)
