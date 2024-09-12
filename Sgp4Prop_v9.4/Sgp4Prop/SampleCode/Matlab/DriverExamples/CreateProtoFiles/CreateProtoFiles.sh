#!/bin/bash
# This script creates the MatLab Prototype files

# Check if matlab executable is in the path
if [[ ! type matlab >/dev/null 2>/dev/null ]]; then
    echo "This script assumes you have MatLab installed.  Normally, you would find matlab"
	echo "in a directory like /opt/MATLAB/R2023a/bin"
    exit 1
fi

export AstroStdsLibPath=$1

if [[ "$1" == "" ]]; then
	if [[ -f ../../../../Lib/Linux/IFORT/libdllmain.so ]]; then
		export AstroStdsLibPath=../../../../Lib/Linux/IFORT
	else
		echo "Please pass the directory for Astro Standards libraries"
		exit /B 1
	fi
else
	if [[ -f $1/libdllmain.so ]]; then
		echo "Could not find Astro Standards libraries in '$1'"
		echo "Please pass the directory for Astro Standards libraries"
		exit 1
	fi
fi

# matlab -nosplash -noFigureWindows -batch "try, CreateProtoFiles('../../Linux'), catch, exit, end, exit"
echo "Running matlab -nosplash -noFigureWindows -batch \"try, CreateProtoFiles('$AstroStdsLibPath'), catch, exit, end, exit\""
echo "This could take a minute.  Please wait ...."
matlab -nosplash -noFigureWindows -batch "try, CreateProtoFiles('$AstroStdsLibPath'), catch, exit, end, exit"
if [[?$ == 0]]; then
    echo "Error occurred trying to create prototype files."
    exit 1
fi

mkdir -p ../protos/Linux

mv *.so ../protos/Linux

for ff in (*.m); do
	if [[ $ff != "CreateProtoFiles.m" ]]; then
		mv $ff ../protos/Linux
	fi
done

echo "MatLab prototype files successfully created."