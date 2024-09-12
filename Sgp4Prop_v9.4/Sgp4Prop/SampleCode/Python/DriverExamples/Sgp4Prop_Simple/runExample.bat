@REM This script runs the Sgp4Prop_Simple example.  
@REM Note: the bit size of the python executable must match the bit size 
@REM of the Astro Standards libraries.
@REM Arguments to this script:
@REM %1 - Path to the python executable

@echo off
@setlocal

set PY_EXE=%~1

REM Check if PY_EXE was set.  No need to check for "python.exe"
REM because the executable could be named differently.
if "%PY_EXE%" == "" (
    echo Please pass the path to the python executable
	echo For example: runExample ^<python exe^>
    exit /B 1
) else (
    if not exist "%PY_EXE%" (
        echo "Python executable does not exist: %PY_EXE%".
        echo For example: runExample ^<python exe^>
        exit /B 1
    )
)

"%PY_EXE%" -c "import struct;import sys;print(sys.argv[1] + ' is ' + str(8 * struct.calcsize('P')) + ' bit ')" "%PY_EXE%"

REM Check if Astro Standards libraries are in the PATH
REM Use DllMain.lib to sample test
for %%X in (DllMain.lib) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please include the path to the Astro Standards libraries in your PATH environment variable.
	echo For example,
	echo "set PATH=K:\ASTRO\AstroStds_OfficialRelease\v8.4\AstroStandards\Lib\Win64;%%PATH%%"
	echo Note: The bit size of the python executable must match the bit size of the libraries.
    exit /B 1
)

REM copy wrapper code to the src directory for this example.
echo Copying over the wrapper code.
if not exist "src\wrappers" mkdir src\wrappers
copy ..\..\wrappers\* src\wrappers

echo # > src\wrappers\__init__.py

if not exist "output" mkdir output

echo Running example
"%PY_EXE%" src\Sgp4Prop_Simple.py > output\results.out
if %ERRORLEVEL% NEQ 0 (
    exit /B 1
)
