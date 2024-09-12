@REM This runs the ConvertJNAtoJNI application
@REM This script assumes:
@REM - the convertjnatojni.jar file is built in lib directory

@echo off
@setlocal

REM Check if JAVA_HOME environment variable was set.
if "%JAVA_HOME%" == "" (
    echo Please ensure JAVA_HOME environment variable is set in your environment
    exit /B 1
)

"%JAVA_HOME%\bin\java" -jar lib\ConvertJNAtoJNI.jar %~1 %~2
