#!/usr/bin/bash

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../../../Lib/Linux/IFORT
    exit 1
fi

# Check if Zig executable is in the path
if ! command -v zig &>/dev/null; then
    echo "Please ensure the Zig executables are in your path"
	echo "For example \"export PATH=/opt/zig/bin;$PATH\""
    exit 1
fi

# If you have trouble compiling add or remove "/" from the -I term
# Zig sometimes likes the slash and sometimes doesn't, but it isn't consistent
# Works either way in v0.12
zig build-exe TestInterfaces.zig -L${LD_LIBRARY_PATH} -ldllmain -I../wrappers/ -lc 

chmod +x TestInterfaces

echo "Running TestInterfaces"
./TestInterfaces

