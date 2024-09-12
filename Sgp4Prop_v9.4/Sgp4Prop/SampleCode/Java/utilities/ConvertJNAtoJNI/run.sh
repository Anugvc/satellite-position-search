#!/bin/bash

# This runs the ConvertJNAtoJNI application
# This script assumes:
# - the convertjnatojni.jar file is built in lib directory

# Check if JAVA_HOME environment variable was set.
if [[ "$JAVA_HOME" == "" ]]; then
    echo Please ensure JAVA_HOME environment variable is set in your environment
	echo For example export JAVA_HOME=/opt/java/jdk1.8.0_261
    exit 1
fi

"$JAVA_HOME/bin/java" -jar lib/ConvertJNAtoJNI.jar $1 $2
