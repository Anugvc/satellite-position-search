@setlocal enabledelayedexpansion

@echo off

set name=Sgp4Prop

echo.

if not exist "..\TestResults" mkdir ..\TestResults
del /q ..\TestResults\*.*

if not exist "..\Diff" mkdir ..\Diff
del /q ..\Diff\*.*

set exe_name=%name%.exe

REM Check if Astro Standards libraries are in the PATH
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your PATH
    echo For example "set PATH=..\..\AstroStandards\Lib\Windows;%%PATH%%"
    exit /B 1
)

@rem Other than other tests, single input generates several outputs
for %%f in (input\*.inp) do (
    @rem Create a local variable
    set str=%%f
    
    @rem strip off the directory (i.e.. "..\input\") and file extension (i.e.. ".inp")
    set str=!str:~6,-4!
    
    @rem For this, need to leave out the ".out" extension.
    set cmd=%exe_name% input\!str!.inp ..\TestResults\!str!
    echo *********************************************************************
    echo !cmd!
    echo *********************************************************************
    !cmd!
    
    if !ERRORLEVEL! NEQ 0 (
        echo "Error executing !cmd!"
        exit /B 1
    )
)

echo.                                                                                   
echo.                                                                                   
echo Comparing Files ...                                                                
echo.

for %%f in (..\BaselineWindows\*.out) do (
    @rem Create a local variable
    set str=%%f
    
    @rem Convert "..\BaselineWindows\AfterAOFENDALL.out" to "AfterAOFENDALL"
    @rem Start at 19th character from begin 
    @rem Stop -4 characters from end
    set str=!str:~19,-4!

    set cmd=C:\Windows\System32\fc /N /W /C  ..\BaselineWindows\!str!.out  ..\TestResults\!str!.out ^> ..\Diff\!str!.dif
    echo !cmd!
    C:\Windows\System32\fc /N /W /C ..\TestResults\!str!.out ..\BaselineWindows\!str!.out > ..\Diff\!str!.dif
    
    @rem fc command returns -1 if an error occurred not 1 like other apps
    if !ERRORLEVEL! == -1 (
        echo "Error executing !cmd!"
        exit /B 1
    )
)

echo.
echo  Done.   Diffs are in the ..\Diff directory...
rem pause   

exit /B 0
