@REM This script runs the Sgp4Prop threading test

@echo off
@setlocal

REM Check if JAVA_HOME environment variable was set.
if "%JAVA_HOME%" == "" (
    echo Please ensure JAVA_HOME environment variable is set in your environment
    exit /B 1
)

REM Add JAVA_HOME bin directory to path.
set path=%JAVA_HOME%\bin;%path%

REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\Windows\;%%PATH%%"
    exit /B 1
)

REM compile all source code
echo Compiling
if not exist "classes" mkdir classes
"%JAVA_HOME%\bin\javac.exe" -cp ..\..\lib\* -d classes -sourcepath .\src;..\..\src src\*.java

if %ERRORLEVEL% NEQ 0 (
    echo Error in javac
    exit /B 1
)

echo Running threading test 1
"%JAVA_HOME%\bin\java.exe" -cp .\;classes;..\..\lib\* PropagatorThreadTester1

if %ERRORLEVEL% NEQ 0 (
    echo Error executing java threading test 1
    exit /B 1
)

echo Running threading test 2
"%JAVA_HOME%\bin\java.exe" -cp .\;classes;..\..\lib\* PropagatorThreadTester2

if %ERRORLEVEL% NEQ 0 (
    echo Error executing java threading test 2
    exit /B 1
)

echo Running threading test 3
"%JAVA_HOME%\bin\java.exe" -cp .\;classes;..\..\lib\* PropagatorThreadTester3

if %ERRORLEVEL% NEQ 0 (
    echo Error executing java threading test 3
    exit /B 1
)

echo Running threading test 4
"%JAVA_HOME%\bin\java.exe" -cp .\;classes;..\..\lib\* PropagatorThreadTester4

if %ERRORLEVEL% NEQ 0 (
    echo Error executing java threading test 4
    exit /B 1
)
