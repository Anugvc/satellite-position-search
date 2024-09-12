#!/bin/bash

name=$1
conf_file=$name.ini

exe_name=Verdict_Linux
verdict=../bin/$exe_name
if [ ! -f $verdict ]; then
	verdict=../../bin/$exe_name
fi

echo ""
echo """*** Starting batch file: Run_VERDICT.bat ..."
echo ""

echo ""
echo """*** Deleting previous files in Reports directory.  OK if none found."
mkdir -p Reports
rm -f Reports/*.out

echo ""
echo """*** Running VERDICT program..."
echo ""
echo ""

for f in ../BaselineLinux/*.out; do
    # Create a local variable 
    str=$f

    # Convert "../BaselineLinux/AfterAOFENDALL.out" to "AfterAOFENDALL"
    str=${str##*/}  # strip off ../BaselineLinux/
    str=${str%.out} # strip off .out
	
	cmd="$verdict $conf_file ../BaselineLinux/${str}.out $name ../TestResults/${str}.out $name Reports/${str}.out"
	echo "$cmd"
	eval $cmd
	
	if [[ "$?" -ne 0 ]]; then
		echo "Error executing $cmd"
		exit 1
    fi
	
done

echo ""
echo """*** Run_VERDICT.bat: Done.  Results are in the Reports directory..."
echo ""
