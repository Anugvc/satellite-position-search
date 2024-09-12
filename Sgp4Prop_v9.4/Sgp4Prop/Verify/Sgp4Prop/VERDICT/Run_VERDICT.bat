@echo OFF
echo.
echo *** Starting batch file: Run_VERDICT.bat ...
echo.
title  (SGP4) Run_VERDICT.bat

set exe_name=Verdict_Windows.exe

set verdict=..\bin\%exe_name%
if not exist %verdict% set verdict=..\..\bin\%exe_name%


echo.
echo *** Deleting previous files in Reports directory...
if not exist "Reports" mkdir Reports
if exist Reports\*.out (
    del /q Reports\*.out
)

echo.
echo *** Running VERDICT program...

call :execute rel14_LatLonHeight.out SGP4LLH
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_MeanElem.out SGP4MEANKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_NodalApPer.out SGP4NODAL
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_OscElem.out SGP4OSCKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_OscState.out SGP4OSCSTATE
if ERRORLEVEL 1 (
	exit /B 1
)

call :execute rel14_type4_LatLonHeight.out SGP4LLH
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_type4_MeanElem.out SGP4MEANKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_type4_NodalApPer.out SGP4NODAL
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_type4_OscElem.out SGP4OSCKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute rel14_type4_OscState.out SGP4OSCSTATE
if ERRORLEVEL 1 (
	exit /B 1
)

call :execute sgp4_val_LatLonHeight.out SGP4LLH
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute sgp4_val_MeanElem.out SGP4MEANKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute sgp4_val_NodalApPer.out SGP4NODAL
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute sgp4_val_OscElem.out SGP4OSCKEP
if ERRORLEVEL 1 (
	exit /B 1
)
call :execute sgp4_val_OscState.out SGP4OSCSTATE
if ERRORLEVEL 1 (
	exit /B 1
)

echo.
echo *** Run_VERDICT.bat: Done.  Results are in the Reports directory...
echo.

exit /B 0


:execute
echo Running %verdict% SGP4PROP.INI  ..\BaselineWindows\%~1 %~2 ..\TestResults\%~1 %~2 Reports\%~1
%verdict% SGP4PROP.INI  ..\BaselineWindows\%~1 %~2 ..\TestResults\%~1 %~2 Reports\%~1
exit /b %ERRORLEVEL%

