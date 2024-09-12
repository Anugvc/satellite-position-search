@echo off
@setlocal

REM This script runs the Sgp4Prop example
REM Format: runExample.sh
REM
REM Note: you need to set the correct path to your Microsoft Visual Studio compiler (devenv.com)
REM MVS_BIN_DIR is an environment variable that points to the directory where the
REM "devenv.com" executable is located.
REM
REM Simplest solution to get a C# executable to work is to put all dependency DLLs and
REM executable in the same directory.

set name=Sgp4Prop

set exe_path=.\bin\x64\Release

REM Check if Astro Standards libraries in PATH
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
	echo Could not find Astro Standards libraries in your PATH Environment Variable
	exit /B 1
)

REM Set astro_dll_path to the path of where DllMain.dll was found
for %%i in (DllMain.dll) do set astro_dll_path=%%~$PATH:i
for %%i in (%astro_dll_path%) do set astro_dll_path=%%~dpi

REM Check if devenv.com is in the path
for %%X in (devenv.com) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo This script assumes you are using Microsoft Visual Studio to compile the examples.  If you are not, then please
    echo modify this script and replace the "devenv.com" command to accommodate your compiler.  If you are using
    echo Microsoft Visual Studio, please ensure "devenv.com" is in your path.  For example,
	echo "set PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\IDE;%%PATH%%"
    exit /B 1
)

REM cache the PATH environment variable because sometimes devenv.com does not work with
REM long path values.
set current_path=%PATH%
REM set MVS_BIN_DIR=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE
set MVS_BIN_DIR=C:\Program Files\Microsoft Visual Studio\2022\Professional\Common7\IDE
set PATH=.\bin;%MVS_BIN_DIR%;%astro_dll_path%

if not exist "bin" mkdir bin
if not exist "output" mkdir output

REM Copy all Astro Standards DLLs to the bin folder
copy /Y %astro_dll_path%\*.dll .\bin
copy /Y %astro_dll_path%\*.txt .\bin

echo Building Astro.NetAssemblies ....
devenv.com ..\..\Astro.NetAssemblies\Solution\Solution.sln /rebuild "Final|x64"
if %ERRORLEVEL% NEQ 0 (
	echo Error building Astro.NetAssemblies
	set PATH="%current_path%"
	exit /B 1
)

REM Copy all Astro.NetAssemblies DLLs to the bin folder
copy /Y ..\..\Astro.NetAssemblies\Lib\*.dll .\bin

REM compile all source code
echo Compiling %name%....
devenv.com %name%.csproj /rebuild "Release|x64"
if %ERRORLEVEL% NEQ 0 (
    echo "Error compiling code"
	set PATH="%current_path%"
    exit /B 1
)

REM Copy executable to bin folder
copy /Y %exe_path%\%name%.exe .\bin

echo Running the %name% example ....
.\bin\%name%.exe input\test.inp output\test.out

set errorCode=%ERRORLEVEL% 
if %errorCode% NEQ 0 (
    echo "Error executing %name%.exe with exit code of: %exitCode%"
	set PATH="%current_path%"
    exit /B 1
)

REM restore path value
set PATH=%current_path%

exit /B 0
