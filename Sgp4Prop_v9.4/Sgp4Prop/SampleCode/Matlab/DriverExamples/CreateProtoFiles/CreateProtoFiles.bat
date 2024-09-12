@REM This script creates the MatLab Prototype files

@echo off
@setlocal

REM Check if matlab.exe is in the path
for %%X in (matlab.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo This script assumes you have MatLab installed.  Normally, you would find matlab.exe
	echo in a directory like C:\Program Files\MATLAB\R2023a\bin
    exit /B 1
)

set AstroStdsLibPath=%1

if "%~1" == "" (
	if exist ..\..\..\..\Lib\Windows\DllMain.dll (
		set AstroStdsLibPath=..\..\..\..\Lib\Windows
	) else (
		echo Please pass the directory for Astro Standards libraries
		exit /B 1
	)
) else (
	if not exist %1\DllMain.dll (
		echo Could not find Astro Standards libraries in '%1'
		echo Please pass the directory for Astro Standards libraries
		exit /B 1
	)
)

@rem matlab -nosplash -noFigureWindows -batch "try, CreateProtoFiles('../../Windows'), catch, exit, end, exit"
echo Running matlab -nosplash -noFigureWindows -batch ^"try, CreateProtoFiles('%AstroStdsLibPath%'), catch, exit, end, exit^"
echo This could take a minute.  Please wait ....
matlab -nosplash -noFigureWindows -batch "try, CreateProtoFiles('%1'), catch, exit, end, exit"
if %ERRORLEVEL%  NEQ 0 (
    echo "Error occurred trying to create prototype files."
    exit /B 1
)

if not exist "..\protos" mkdir ..\protos\Windows

@move /Y *.dll ..\protos\Windows >nul

@for %%A in (*.m) do if not "%%~A"=="CreateProtoFiles.m" move /Y %%A ..\protos\Windows >nul

echo MatLab prototype files successfully created.