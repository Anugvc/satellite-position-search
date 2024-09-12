#!/bin/bash

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries
    echo For example export LD_LIBRARY_PATH=../../../../Lib/Linux/IFORT/
    exit 1
fi

# Check if Tcl executable is in the path
if ! command -v wish &>/dev/null; then
    echo "Please ensure the Tcl executables are in your path"
    echo "For example \"export PATH=/opt/tcl/bin;$PATH\""
    exit 1
fi

# Check if Tcl shared libraries were built
if ! [ -f ../../lib_tcl/lib/Linux/libsgp4prop_tcl.so ]; then
    echo "Tcl shared libraries may not have been built."
    echo "1.  cd ../../lib_tcl"
    echo "2.  Run \"./MakeAll.sh\""
    exit 1
fi

echo "Running Sgp4Prop_Simple.tcl"
wish ./Sgp4Prop_Simple.tcl
