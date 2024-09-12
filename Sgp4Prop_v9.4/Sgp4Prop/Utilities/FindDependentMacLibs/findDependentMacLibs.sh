#!/bin/bash

# This script only runs on a Mac and runs "otool -l" and "otool -L" (capital "L")
# to find dependent libraries.
#
# This script will only find dependent libraries and its dependencies (i.e.. only 2 levels deep).
#
# If you don't pass in anything, this script will prompt you for a library file name.
# You can pass in one or more file names.  You can also pass in wildcards (i.e... *.dylib)

# If this is not a Mac, then exit
if [[ `uname` != "Darwin" ]]; then
    echo "This script only runs on Mac"
    exit -1
fi

# Check if user passed in any arguments. If not, prompt the user.
libpath=""
if [ "$1" == "" ]; then
    read -p "Enter the library file (with path if not in current directory): " libpath
    if [ ! -f $libpath ]; then
        echo "'$libpath' does not exist"
        exit -1
    fi
fi


# Declare an array to hold all library file names
arr=()

# This function takes a file path argument.  If it has "../" in it, it removes it and
# the previous path segment.  i.e.. converts /one/two/three/../../aaa/bbb to /one/aaa/bbb
function removeDotDot() {
    str="$1/"
    while [[ "$str" =~ .*/(\.\./).* ]]; do
        p1=${str%%../*}
        p2=${str#*../}
        p1=${p1%/*}
        p1=${p1%/*}
        if [[ "$p2" == "" ]]; then
            str="$p1"
        else
            str="$p1/$p2"
        fi
    done
    returnValue="$str"
}

# This function uses "otool -l" to find the LC_RPATH values for a given library.  If the
# LC_PATH value contains a "@" character, then its ignored because its another reference
# to another variable.  When running "otool -l", there may be multiple LC_PATH entries.
# This function builds the "rpaths" array of all of the LC_PATH values.  
function findRPaths() {
    rcpath_line_found="false"
    while read -r line
    do
        if [[ "$line" =~ .*LC_RPATH.* ]]; then
            rcpath_line_found="true"
        fi
    
        if [[ "$rcpath_line_found" == "true" ]]; then
            # check if line has a '@' character in it.  if
            # it does, it doesn't have a valid path
            if [[ "$line" =~ .*\@.* ]]; then
                rcpath_line_found="false"
                continue
            fi

            re=".*\s*(path)\s*(.*)"
            if [[ "$line" =~ $re ]]; then
                rcpath_line_found="false"
                newRpath="${BASH_REMATCH[2]}"
                newRpath=`echo $newRpath | cut -f1 -d" "`
                removeDotDot "$newRpath"
                rpaths+=("$returnValue")
                #rpaths+=("$newRpath")
            fi
        fi
    done <<< "$(otool -l "$1")|grep LC_RPATH -A2"
}

# This function adds unique names to the "arr" array.  Duplicate file names may occur
# if this script is run with multiple files that have the same dependencies.  The "arr"
# array is the final result for this script.
function addToArray() {
    arg1=`echo $1|tr -d ":"`
    for tt in ${arr[@]}; do
        if [[ "$tt" == "$arg1" ]]; then
            # do nothing because $1 is already in array
            return
        fi
    done

    arr+=("$arg1")
}

# This function iterates thru the "rpaths" array and replaces "@rpath" in the given
# argument (i.e.. $1) to see if the file exists.  If it does, the path (without "@rpath")
# is returned in the "returnValue" variable.  Otherwise, "" is returned in the 
# "returnValue" variable.
function checkRPathsForFile() {
    for rpath in ${rpaths[@]}; do
        # replace "@rpath" with the $rpath value and remove the
        subpath=`echo ${1/\@rpath/$rpath} | cut -f1 -d" "` # check if that path exists
        if [[ -f $subpath ]]; then
            returnValue="$subpath"
            return 0
        fi
    done

    returnValue=""
    return 0
}

# This function reads in the results of "otool -L" for the given file. Then runs
# "otool -L" again on each of those files.  It calls the checkRPathsForFile
# function to replace "@rpath" if it was in the reponses of "otool -L", and calls
# addToArray to add the name to the "arr" array.
# This function is only 2 deep, but can be modified to be recursive to allow finding 
# all the dependencies of dependencies.
function readFiles() {
    while read -r line
    do
        re="@rpath"
        if [[ "$line" =~ $re ]]; then
            checkRPathsForFile $line
            if [[ "$returnValue" == "" ]]; then
                # Could not find an Rpath
                continue;
            fi
            var1="$returnValue"
            addToArray "$var1"

            # Run otool -L again on each that had @rpath in the response
            while read -r line2
            do
                re="@rpath"
                if [[ "$line2" =~ $re ]]; then
                    checkRPathsForFile $line2
                    if [[ "$returnValue" == "" ]]; then
                        # Could not find an Rpath
                        continue;
                    fi
                    var2="$returnValue"
                    addToArray "$var2"
                else
                    var3=`echo $line2 | cut -f1 -d" "`
                    addToArray "$var3"
                fi
            done <<< "$(otool -L "$var1")"
        else
            var4=`echo $line | cut -f1 -d" "`

            if [[ ! "$var4" =~ .*\:.* ]]; then
                addToArray "$var4"
            fi
        fi
    done <<< "$(otool -L "$1")"
}

# This function prints the contents of the "arr" array.
# It ignores the libc++.1.dylib and libSystem.B.dylib files because those
# files usually don't exist.  Not sure why.
function printArray() {
    for tt in ${arr[@]}; do
        if [[ "$tt" =~ libSystem\.B\.dylib ]]; then
            continue
        fi
        if [[ "$tt" =~ libc\+\+\.1\.dylib ]]; then
            continue
        fi
        if [ -f $tt ]; then
            echo "$tt"
        else
            echo "$tt (missing)"
        fi
    done
}

# Main driver for the program.
if [[ "$libpath" != "" ]]; then
    rpaths=()
    findRPaths "$libpath"
    
    # If findRPaths could not define the rpath variable
    if [[ ${#rpaths[@]} -eq 0 ]]; then
        otool -L $1
        exit 0
    else
        readFiles "$libpath"
    fi
else
    for libFile in "$@"; do
        echo "Processing $libFile ...."
        rpaths=()
        findRPaths "$libFile"
    
        # If findRPaths could not define the rpath variable
        if [[ ${#rpaths[@]} -ne 0 ]]; then
            readFiles "$libFile"
        fi
    done
fi

printArray
