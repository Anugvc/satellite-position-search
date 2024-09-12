#!/bin/bash

name=Sgp4Prop

exe_name=${name}
exe_path=./bin

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
    echo For example export LD_LIBRARY_PATH=../../Linux/Intel/IFORT/
    exit 1
fi

# Create subdirectories used by makefile
mkdir -p bin
mkdir -p output

# Assuming LD_LIBRARY_PATH is set to the AstroStds libraries
export TMP="$LD_LIBRARY_PATH"

if [[ `uname` == "Darwin" ]]; then
    exe_name=${name}_mac
fi

# If you are using the Intel oneAPI compiler, you will need to source
# the vars.sh file, but that script modifies the LD_LIBRARY_PATH environment
# variable.  So, after compiling, need to reset LD_LIBRARY_PATH back to
# just the AstroStds libraries.
. /opt/intel/oneapi/compiler/latest/env/vars.sh intel64

# compile all source code
# note: the makefile copies the executable to the bin directory
echo Compiling
make clean
make

export LD_LIBRARY_PATH="$TMP"

if [[ `uname` == "Darwin" ]]; then
	echo "install_name_tool -add_rpath \"$LD_LIBRARY_PATH\" $exe_path/$exe_name"
    install_name_tool -add_rpath "$LD_LIBRARY_PATH" $exe_path/$exe_name
fi

if [[ "$?" != 0 ]]; then
    echo "Error compiling code"
    exit 1
fi

echo Running example
$exe_path/$exe_name input/test.inp output/test.out

exitCode="$?"

if [[ "$exitCode" != 0 ]]; then
    echo "Error executing $exe_name with exit code of: $exitCode"
    exit 1
fi
