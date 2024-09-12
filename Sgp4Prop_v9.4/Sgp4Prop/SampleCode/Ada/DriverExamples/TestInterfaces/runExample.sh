#!/bin/bash

# This script runs the TestInterfaces example

# Check if GNAT executables are in your PATH
if ! [ -x "$(command -v gnatmake)" ]; then
    echo Please ensure the GNAT executables are set in your PATH environment variable
    exit 1
fi

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../Linux/IFORT
    exit 1
fi

echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

# delete old executable
rm -f ./bin/testinterfaces

echo Compiling
cd ./src
gnatmake -g testinterfaces.adb -aI../../services -aI../../wrappers -aO$LD_LIBRARY_PATH -largs -ldllmain

mv testinterfaces ../bin/.

rm *.o *.ali b~*

cd ..

echo "Running driver example ...."
./bin/testinterfaces

if [[ "$?" != 0 ]]; then
    echo "Error executing Ada program"
    exit 1
fi

