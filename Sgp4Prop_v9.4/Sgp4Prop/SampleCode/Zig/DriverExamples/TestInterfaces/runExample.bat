echo off
setlocal

@REM Check if AS libraries are in the path
for %%X in (DllMain.dll) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Astrodynamics Standards libraries are in your path
	echo For example "set PATH=..\..\..\..\Lib\Windows;%%PATH%%"
    exit /B 1
)

@REM Check if Zig executable is in the path
for %%X in (zig.exe) do (set FOUND=%%~$PATH:X)
if not defined FOUND (
    echo Please ensure the Zig executables are in your path
	echo For example "set PATH=C:\Program Files\Zig\bin;%%PATH%%"
    exit /B 1
)

zig build-exe TestInterfaces.zig -L%PATH% -ldllmain -I../wrappers/ -lc 

echo "Running TestInterfaces"
.\TestInterface
