#!/bin/bash

for d in */; do
    if [[ "$d" == "services/" || "$d" == "wrappers/" || "$d" == "lib/" ]]; then
        continue
    fi

    module="${d#Tcl}" # remove the "Tcl" prefix
    module="${module%/}" # remove everything after /.

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
