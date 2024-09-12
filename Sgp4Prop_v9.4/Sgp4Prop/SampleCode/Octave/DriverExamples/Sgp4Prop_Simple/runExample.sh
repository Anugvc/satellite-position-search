#!/usr/bin/bash

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../../../Lib/Linux/IFORT
    exit 1
fi

# Check if Octave executable is in the path
if ! command -v octave &>/dev/null; then
    echo "Please ensure the Octave executables are in your path"
	echo "For example \"export PATH=/opt/octave;$PATH\""
    exit 1
fi

# Check if *.oct files were built
if ! [ -f ../../octfiles/lib/Linux/Sgp4Prop.oct ]; then
	echo "*.oct files may not have been built."
	echo "1.  cd ../../octfiles"
	echo "2.  Run \"octave make_oct_files_for_linux.m\"" 
	exit 1
fi

echo "Running Sgp4Prop_Simple.m"
octave Sgp4Prop_Simple.m
