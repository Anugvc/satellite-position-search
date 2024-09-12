#!/bin/bash

# This script runs the Sgp4Prop_Simple example.  Note: the bit size of the 
# Go executable must match the bit size of the AstroStandards libraries.

#GO_EXE=$1

# Check if GO_EXE was set.
#if [[ "$GO_EXE" == "" ]]; then
#    echo Please set the path to the Go executable
#    echo "Format: runExample <Go exe> <libraries directory>"
#    exit 1
#else
#    if [[ ! -f "$GO_EXE" ]]; then
#        echo "Go executable does not exist: $GO_EXE".
#        echo "Format: runExample <Go exe> <libraries directory>"
#        exit 1
#    fi
#fi

if [[ "$1" == "-b" ]]; then
    export LD_LIBRARY_PATH=../../../../../Lib/Linux/IFORT/
    echo Compiling
    cd src
    go build SGP4prop_simple.go
    mv SGP4prop_simple ../bin/.
    cd ..
fi

chmod +x bin/SGP4prop_simple
export LD_LIBRARY_PATH=../../../../Lib/Linux/IFORT/
# Check if LD_LIBRARY_PATH environment variable was set.
#if [[ "$LD_LIBRARY_PATH" == "" ]]; then
#    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
#	echo For example export LD_LIBRARY_PATH=../../Linux64/
#    exit 1
#fi

#@REM compile all source code
#echo Compiling
#"%GO_EXE%" src\go_SGP4prop_simple.go

#if [[ ! -d "output" ]]; then
#    mkdir output
#fi

echo Running example
bin/SGP4prop_simple 

#> output/results.out
