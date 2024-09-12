#!/bin/bash

echo ""
echo *** Starting batch file: Run_VERDICT.bat ...
echo ""

exe_name=Verdict_Linux
verdict=../bin/$exe_name
if [ ! -f $verdict ]; then
	verdict=../../bin/$exe_name
fi


echo ""
echo """*** Deleting previous files in Reports directory.  OK if none found."
mkdir -p Reports
rm -f Reports/*.out

runVerdict() {
    $verdict Sgp4Prop.ini  ../BaselineLinux/$1  $2 ../TestResults/$1 $2 Reports/$1
    if [ $? -ne 0 ]; then
        echo "Error occurred exeuting $verdict Sgp4Prop.ini  ../BaselineLinux/$1  $2 ../TestResults/$1 $2 Reports/$1"
        exit 1
    fi
}

echo ""
echo *** Running VERDICT program...

runVerdict rel14_LatLonHeight.out  SGP4LLH
runVerdict rel14_MeanElem.out      SGP4MEANKEP
runVerdict rel14_NodalApPer.out    SGP4NODAL
runVerdict rel14_OscElem.out       SGP4OSCKEP
runVerdict rel14_OscState.out      SGP4OSCSTATE

runVerdict rel14_type4_LatLonHeight.out  SGP4LLH
runVerdict rel14_type4_MeanElem.out      SGP4MEANKEP
runVerdict rel14_type4_NodalApPer.out    SGP4NODAL
runVerdict rel14_type4_OscElem.out       SGP4OSCKEP
runVerdict rel14_type4_OscState.out      SGP4OSCSTATE

runVerdict sgp4_val_LatLonHeight.out  SGP4LLH
runVerdict sgp4_val_MeanElem.out      SGP4MEANKEP
runVerdict sgp4_val_NodalApPer.out    SGP4NODAL
runVerdict sgp4_val_OscElem.out       SGP4OSCKEP
runVerdict sgp4_val_OscState.out      SGP4OSCSTATE

echo ""
echo *** Run_VERDICT.bat: Done.  Results are in the Reports directory...
echo ""

