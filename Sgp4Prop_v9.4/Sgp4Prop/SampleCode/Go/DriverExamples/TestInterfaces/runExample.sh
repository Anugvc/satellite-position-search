#!/bin/bash

# This script runs the TestInterface example.  Note: the bit size of the 
# Go executable must match the bit size of the AstroStandards libraries.

#GO_EXE=$1

# Check if GO_EXE was set.
#if [[ "$GO_EXE" == "" ]]; then
#    echo Compiling
#    cd src
#    go build test.go
#    mv test ../bin/.
#    cd ..
#else
#    if [[ ! -f "$GO_EXE" ]]; then
#        echo Compiling
#        cd src
#        go build test.go
#        mv test ../bin/.
#        cd ..
#    fi
#fi

if [[ "$1" == "-b" ]]; then
    export LD_LIBRARY_PATH=../../../../../Lib/Linux/IFORT/
    echo Compiling
    cd src
    go build TestInterfaces.go
    mv TestInterfaces ../bin/.
    cd ..
fi

chmod +x bin/TestInterfaces
export LD_LIBRARY_PATH=../../../../Lib/Linux/IFORT/
# Check if LD_LIBRARY_PATH environment variable was set.
#if [[ "$LD_LIBRARY_PATH" == "" ]]; then
#    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
#	echo For example export LD_LIBRARY_PATH=../../Linux64/
#    exit 1
#fi

#@REM compile all source code
#"%GO_EXE%" src\test.go

#if [[ ! -d "output" ]]; then
#    mkdir output
#fi

echo Running example
bin/TestInterfaces 

#> output/results.out
