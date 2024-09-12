# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../Linux/IFORT
    exit 1
fi

if [[ "$1" == "-b" ]]; then
    #export LD_LIBRARY_PATH=../../../../../Lib/Linux/IFORT/
    echo Compiling
    cd src
    gnatmake -g sgp4prop_simple.adb -aI../../wrappers -aO$LD_LIBRARY_PATH -largs -ldllmain -lenvconst -ltimefunc -ltle -lsgp4prop
    
    mv sgp4prop_simple ../bin/.
    rm *.o *.ali b~*
    cd ..
fi

bin/sgp4prop_simple
