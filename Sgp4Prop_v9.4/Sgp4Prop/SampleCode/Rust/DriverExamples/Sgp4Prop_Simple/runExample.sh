#!/bin/bash

# This script runs the Sgp4Promp_Simple example

exe_name=Sgp4Prop_Simple

# Check if rust executable is in your PATH
if ! [ -x "$(command -v cargo)" ]; then
    echo Please ensure the cargo executable set in your PATH environment variable
    exit 1
fi

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
    echo For example export LD_LIBRARY_PATH=../../Linux/IFORT/
    exit 1
fi

# Create subdirectories used by makefile
mkdir -p bin
mkdir -p output

# compile all source code
echo Compiling
cargo build

if [[ "$?" != 0 ]]; then
    echo "Error compiling code"
    exit 1
fi

# Note: by default, the executable is in /target/debug subdirectory
echo Running example
cp ./target/debug/$exe_name ./bin/
chmod +x ./bin/$exe_name
./bin/$exe_name

exitCode="$?"

if [[ "$exitCode" != 0 ]]; then
    echo "Error executing $exe_name with exit code of: $exitCode"
    exit 1
fi

