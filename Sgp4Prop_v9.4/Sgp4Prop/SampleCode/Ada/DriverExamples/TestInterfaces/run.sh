# Check if LD_LIBRARY_PATH environment variable was set.
if [[ "$LD_LIBRARY_PATH" == "" ]]; then
    echo Please ensure LD_LIBRARY_PATH environment variable is set to your Astrodynamics Standards libraries 
	echo For example export LD_LIBRARY_PATH=../../Linux/IFORT
    exit 1
fi

if [[ "$1" == "-b" ]]; then
    rm bin/testinterfaces
    #export LD_LIBRARY_PATH=../../../../../Lib/Linux/IFORT/
    echo Compiling
    cd src
    gnatmake -g testinterfaces.adb -aI../../wrappers -aO$LD_LIBRARY_PATH -largs -ldllmain
    
    mv testinterfaces ../bin/.
    rm *.o *.ali b~*
    cd ..
fi

bin/testinterfaces
