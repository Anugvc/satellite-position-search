#!/bin/bash

name=Sgp4Prop

echo ""

mkdir -p ../TestResults
rm -f ../TestResults/*

mkdir -p ../Diff
rm -f ../Diff/*

exe_name=${name}

platform="Linux"
compiler="IFORT"
extension="so"
if [[ `uname` == "Linux" ]]; then
    if [[ "$1" == "gfortran" ]]; then
        compiler="GFORTRAN"
    fi
else # assume MacOS
    platform="Intel"
    extension="dylib"
    if [[ `uname -m` == "arm64" ]]; then
        platform="M1"
        compiler="GFORTRAN"
    fi
fi

found="false"
if [[ ! -z ${LD_LIBRARY_PATH} ]]; then
    echo "LD_LIBRARY_PATH is set"
    paths=$(echo $LD_LIBRARY_PATH | tr ";" "\n")
    for path in $paths; do
        echo "checking $path"
        if [[ -d $path ]]; then
            echo "checking $path/libdllmain.$extension "
            if [[ -f $path/libdllmain.$extension ]]; then
                found="true"
                break
            fi
        fi
    done
fi

if [[ $found == "false" ]]; then
    echo "Please set the LD_LIBRARY_PATH environment variable to the location of the Astro Standards libraries"
    exit 1
fi

# Other than other tests, single input generates several outputs
for f in input/*.inp; do
    # Create a local variable 
    str=$f

    # Convert "../BaselineWindows/AfterAOFENDALL.out" to "AfterAOFENDALL"
    str=${str##*/}  # strip off ../BaselineWindows/
    str=${str%.inp} # strip off .inp

    # For this, need to leave out the ".out" extension.
    cmd="./$exe_name input/${str}.inp ../TestResults/${str} WGS-72"
    echo "*********************************************************************"
    echo "$cmd"
    echo "*********************************************************************"
    eval $cmd

    if [[ "$?" != 0 ]]; then
        echo "Error executing $cmd"
        exit 1
    fi
done

echo ""
echo ""
echo "Comparing Files ..."
echo ""

for f in ../BaselineLinux/*.out; do
    # Create a local variable 
    str=$f

    # Convert "../BaselineWindows/AfterAOFENDALL.out" to "AfterAOFENDALL"
    str=${str##*/}  # strip off ../BaselineWindows/
    str=${str%.out} # strip off .out

    cmd="diff ../BaselineLinux/${str}.out ../TestResults/${str}.out > ../Diff/${str}.dif"
    echo "$cmd"
    eval $cmd

    if [[ "$?" > 1 ]]; then
        echo "Error executing $cmd"
        exit 1
    fi
done

echo ""
echo "Done.  Diffs are in the ../Diff directory..."
