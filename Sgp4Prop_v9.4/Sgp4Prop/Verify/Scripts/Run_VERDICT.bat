@setlocal enabledelayedexpansion

@echo OFF

set name=%1
set conf_file=%name%.ini

set exe_name=Verdict_Windows.exe

set verdict=..\bin\%exe_name%
if not exist %verdict% set verdict=..\..\bin\%exe_name%

@rem This puts vcruntime140_1 in the Path if it's not already
set vcruntime=..\Scripts
if not exist %vcruntime% set vcruntime=..\..\Scripts
where /q vcruntime140_1.dll
if %ERRORLEVEL% neq 0 set PATH=%vcruntime%;%PATH%

echo.
echo *** Starting batch file: Run_VERDICT.bat ...
echo.

echo.
echo *** Deleting previous files in Reports directory.  OK if none found.
if not exist "Reports" mkdir Reports
if exist Reports\*.out (
    del /q Reports\*.out
)

echo.
echo *** Running VERDICT program... 
echo.
echo.

for %%f in (..\BaselineWindows\*.out) do (
	@rem Create a local variable
	set str=%%f

    @rem Convert "..\BaselineWindows\AfterAOFENDALL.out" to "AfterAOFENDALL"
    @rem Start at 19th character from begin 
    @rem Stop -4 characters from end
    set str=!str:~19,-4!
	
	set cmd=%verdict% %conf_file% ..\BaselineWindows\!str!.out %name% ..\TestResults\!str!.out %name% Reports\!str!.out
	echo !cmd!
	!cmd!
	
	if !ERRORLEVEL! NEQ 0 (
		echo "Error executing !cmd!"
		exit /B 1
	)
	
)


echo.
echo *** Run_VERDICT.bat: Done.  Results are in the Reports directory...
echo.

exit /B 0
