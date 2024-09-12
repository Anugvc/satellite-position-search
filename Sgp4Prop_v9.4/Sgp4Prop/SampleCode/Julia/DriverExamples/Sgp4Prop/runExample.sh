#!/bin/bash

# This script runs the Sgp4Prop_simple example

# Check if julia executable is in your PATH
if ! [ -x "$(command -v julia)" ]; then
    echo Please ensure the julia executable set in your PATH environment variable
    exit 1
fi

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../Linux/IFORT
    exit 1
fi

echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

export script=SGP4prop_simple.jl
echo Running $script example
julia $script

if [[ "$?" != 0 ]]; then
    echo "Error executing julia $script"
    exit 1
fi
