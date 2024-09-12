#!/bin/bash

# This script runs the Sgp4Prop threading test

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
	echo "Please ensure the Astrodynamics Standards and JNI \"C\" libraries are in your LD_LIBRARY_PATH environment variable"
    echo "For example export LD_LIBRARY_PATH=../../Linux/:../../c_jni_export/lib/Linux"
    exit 1
fi

echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"

# compile all source code
echo Compiling
if [[ ! -d "classes" ]]; then 
    mkdir classes
fi
"$JAVA_HOME/bin/javac" -d classes -sourcepath ./src:../../src src/*.java

if [[ "$?" != 0 ]]; then
    echo "Error executing javac"
    exit 1
fi

if [[ ! -d "output" ]]; then
    mkdir output
fi

echo Running threading test 1
"$JAVA_HOME/bin/java" -cp "./:classes" PropagatorThreadTester1

if [[ "$?" != 0 ]]; then
    echo "Error executing threading test 1"
    exit 1
fi

echo Running threading test 2
"$JAVA_HOME/bin/java" -cp "./:classes" PropagatorThreadTester2

if [[ "$?" != 0 ]]; then
    echo "Error executing threading test 2"
    exit 1
fi

echo Running threading test 3
"$JAVA_HOME/bin/java" -cp "./:classes" PropagatorThreadTester3

if [[ "$?" != 0 ]]; then
    echo "Error executing threading test 3"
    exit 1
fi

echo Running threading test 4
"$JAVA_HOME/bin/java" -cp "./:classes" PropagatorThreadTester4

if [[ "$?" != 0 ]]; then
    echo "Error executing threading test 4"
    exit 1
fi
