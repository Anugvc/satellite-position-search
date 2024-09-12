@REM This script runs the Sgp4Prop example

@echo off
@setlocal

set name=Sgp4Prop

set exe_name=%name%.exe
set exe_path=.\bin

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
    echo For example "set PATH=..\..\Windows\;%%PATH%%"
    exit /B 1
)

@REM Check if Swift executable is in the path
for %%X in (swiftc.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Swift executables are in your path
	echo For example "set PATH=C:\Library\Developer\Toolchains\unknown-Asserts-development.xctoolchain\usr\bin;%%PATH%%"
    exit /B 1
)

REM clean the build directory ..
if not exist "%exe_path%" mkdir %exe_path%
if not exist "output" mkdir output

xcopy ..\..\drivers .\src\drivers /E /Y /I
xcopy ..\..\services .\src\services /E /Y /I
xcopy ..\..\wrappers .\src\wrappers /E /Y /I

REM echo Compiling
swiftc .\src\%name%.swift ^
    .\src\services\Services.swift ^
    .\src\services\Loader.swift ^
    .\src\drivers\AstroFuncDriver.swift ^
    .\src\drivers\DllMainDriver.swift ^
    .\src\drivers\EnvConstDriver.swift ^
    .\src\drivers\Sgp4PropDriver.swift ^
    .\src\drivers\TimeFuncDriver.swift ^
    .\src\drivers\TleDriver.swift ^
    .\src\wrappers\DllMainWrapper.swift ^
    .\src\wrappers\AstroFuncWrapper.swift ^
    .\src\wrappers\EnvConstWrapper.swift ^
    .\src\wrappers\TleWrapper.swift ^
    .\src\wrappers\TimeFuncWrapper.swift ^
    .\src\wrappers\Sgp4PropWrapper.swift -o %exe_path%\%exe_name%
    
if %ERRORLEVEL% NEQ 0 (
    echo "Error compiling code"
    exit /B 1
)

echo Running example
%exe_path%\%exe_name% input\bright.inp output\test.out

if %ERRORLEVEL% NEQ 0 (
    echo "Error executing %exe_name% with exit code of: %ERRORLEVEL%"
    exit /B 1
)
