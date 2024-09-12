#!/bin/bash

# This script runs the Sgp4Prop_Simple example

# Check if JAVA_HOME environment variable was set.
if [[ "$JAVA_HOME" == "" ]]; then
    echo Please ensure JAVA_HOME environment variable is set in your environment
	echo For example export JAVA_HOME=/opt/java/jdk1.8.0_261
    exit 1
fi

echo "JAVA_HOME=$JAVA_HOME"

# Add JAVA_HOME bin directory to path.
path=$JAVA_HOME/bin:$path

# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../Linux
    exit 1
fi

echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

# compile all source code
echo Compiling
if [[ ! -d "classes" ]]; then 
    mkdir classes
fi
"$JAVA_HOME/bin/javac" -cp "../../lib/*" -d classes -sourcepath ./src:../../src src/*.java

if [[ "$?" != 0 ]]; then
    echo "Error executing javac"
    exit 1
fi

if [[ ! -d "output" ]]; then
    mkdir output
fi

echo Running example
"$JAVA_HOME/bin/java" -cp "./:classes:../../lib/*" Sgp4Prop_Simple

if [[ "$?" != 0 ]]; then
    echo "Error executing java"
    exit 1
fi
