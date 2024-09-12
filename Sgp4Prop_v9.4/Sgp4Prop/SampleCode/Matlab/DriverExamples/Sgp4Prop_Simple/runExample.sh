#!/bin/bash
# This script runs the Sgp4Prop_Simple example

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../AstroStandards/Lib/Linux
    exit 1
fi

# Check if matlab executable is in the path
if [[ ! type matlab >/dev/null 2>/dev/null ]]; then
    echo "This script assumes you have MatLab installed.  Normally, you would find matlab"
	echo "in a directory like /opt/MATLAB/R2023a/bin"
    exit 1
fi

mkdir -p output

echo "matlab -nosplash -noFigureWindows -batch \"try, Sgp4Prop_Simple(), catch, exit, end, exit\""
matlab -nosplash -noFigureWindows -batch "try, Sgp4Prop_Simple(), catch, exit, end, exit"

if [[ "$?" != 0 ]]; then
    echo "Error executing matlab"
    exit 1
fi

exit 0