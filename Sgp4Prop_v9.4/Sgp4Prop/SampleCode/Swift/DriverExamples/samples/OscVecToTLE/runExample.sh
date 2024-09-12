#!/bin/bash

name=OscVecToTLE

exe_name=${name}
exe_path=./bin

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries
    echo For example export LD_LIBRARY_PATH=/usr/local/lib/AstroStds
    exit 1
fi

# Check if Swift executable is in the path
if ! command -v swiftc &>/dev/null; then
    echo "Please ensure the Swift executables are in your path"
    echo "For example \"export PATH=/opt/swift/bin;$PATH\""
    exit 1
fi

# Create subdirectories
mkdir -p $exe_path
mkdir -p output

# Compiling
swiftc ./src/${name}.swift \
   ../../services/Services.swift \
   ../../services/Loader.swift \
   ../../drivers/AstroFuncDriver.swift \
   ../../drivers/DllMainDriver.swift \
   ../../drivers/EnvConstDriver.swift \
   ../../drivers/Sgp4PropDriver.swift \
   ../../drivers/TimeFuncDriver.swift \
   ../../drivers/TleDriver.swift \
   ../../drivers/TestInterfaceDriver.swift \
   ../../wrappers/DllMainWrapper.swift \
   ../../wrappers/AstroFuncWrapper.swift \
   ../../wrappers/EnvConstWrapper.swift \
   ../../wrappers/TleWrapper.swift \
   ../../wrappers/TimeFuncWrapper.swift \
   ../../wrappers/Sgp4PropWrapper.swift -o $exe_path/$exe_name

if [[ "$?" != 0 ]]; then
    echo "Error compiling code"
    exit 1
fi

if [[ `uname` == "Darwin" ]]; then
    install_name_tool -add_rpath "$LD_LIBRARY_PATH" $exe_path/$exe_name
fi

echo Running example
$exe_path/$exe_name input/test.inp output/test.out

exitCode="$?"

if [[ "$exitCode" != 0 ]]; then
    echo "Error executing $exe_name with exit code of: $exitCode"
    exit 1
fi
