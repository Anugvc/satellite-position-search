#!/bin/bash

os=`uname`
if [[ "$os" == "Darwin" ]]; then
    export JAVA_HOME=`/usr/libexec/java_home`
else
    default_java_home_dir="/ASTRO/Software/Java/jdk1.8.0_261-linux"
    java_home_dir=""

    # check JAVA_HOME environment variable first.
    if [[ ! -z ${JAVA_HOME} ]]; then
        java_home_dir="$JAVA_HOME"
    fi
    
    if [[ "$java_home_dir" == "" ]]; then
        # if environment variable was not set, then prompt user to enter it.
        read -p "Enter path for JAVA_HOME [$default_java_home_dir] : " java_home_dir
        if [[ "$java_home_dir" == "" ]]; then
            java_home_dir="$default_java_home_dir"
        fi

        if [[ ! -d "$java_home_dir" ]]; then
            echo "'$java_home_dir' is invalid"
            exit -1
        fi
        
        export JAVA_HOME="$java_home_dir"
    fi
    
    export PATH="$java_home_dir/bin:$PATH"
fi

for d in */; do
    if [[ "$d" == "lib/" || "$d" == "services/"  || "$d" == "wrappers/" ]]; then
        continue
    fi

    module="${d#Jni}" # remove the "Jni" word
    module="${module%/}" # remove everything after /
    echo "********************************************************"
    echo "$module"
    echo "********************************************************"
    make MODULE=$module clean
    make MODULE=$module
    if [[ "$?" != 0 ]]; then
        exit 1
    fi
    make MODULE=$module clean
done
