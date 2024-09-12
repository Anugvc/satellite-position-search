function make_oct_files_for_linux
mkoctfile -o ./lib/Linux/Aof.oct -I./src/services/ -I./src/wrappers/ ./src/Aof.cc
mkoctfile -o ./lib/Linux/AstroFunc.oct -I./src/services/ -I./src/wrappers/ ./src/AstroFunc.cc
mkoctfile -o ./lib/Linux/Bam.oct -I./src/services/ -I./src/wrappers/ ./src/Bam.cc
mkoctfile -o ./lib/Linux/BatchDC.oct -I./src/services/ -I./src/wrappers/ ./src/BatchDC.cc
mkoctfile -o ./lib/Linux/Combo.oct -I./src/services/ -I./src/wrappers/ ./src/Combo.cc
mkoctfile -o ./lib/Linux/DllMain.oct -I./src/services/ -I./src/wrappers/ ./src/DllMain.cc
mkoctfile -o ./lib/Linux/ElComp.oct -I./src/services/ -I./src/wrappers/ ./src/ElComp.cc
mkoctfile -o ./lib/Linux/ElOps.oct -I./src/services/ -I./src/wrappers/ ./src/ElOps.cc
mkoctfile -o ./lib/Linux/EnvConst.oct -I./src/services/ -I./src/wrappers/ ./src/EnvConst.cc
mkoctfile -o ./lib/Linux/ExtEphem.oct -I./src/services/ -I./src/wrappers/ ./src/ExtEphem.cc
mkoctfile -o ./lib/Linux/Fov.oct -I./src/services/ -I./src/wrappers/ ./src/Fov.cc
mkoctfile -o ./lib/Linux/Lamod.oct -I./src/services/ -I./src/wrappers/ ./src/Lamod.cc
mkoctfile -o ./lib/Linux/Obs.oct -I./src/services/ -I./src/wrappers/ ./src/Obs.cc
mkoctfile -o ./lib/Linux/ObsOps.oct -I./src/services/ -I./src/wrappers/ ./src/ObsOps.cc
mkoctfile -o ./lib/Linux/Rotas.oct -I./src/services/ -I./src/wrappers/ ./src/Rotas.cc
mkoctfile -o ./lib/Linux/Saas.oct -I./src/services/ -I./src/wrappers/ ./src/Saas.cc
mkoctfile -o ./lib/Linux/SatState.oct -I./src/services/ -I./src/wrappers/ ./src/SatState.cc
mkoctfile -o ./lib/Linux/Sensor.oct -I./src/services/ -I./src/wrappers/ ./src/Sensor.cc
mkoctfile -o ./lib/Linux/Sgp4Prop.oct -I./src/services/ -I./src/wrappers/ ./src/Sgp4Prop.cc
mkoctfile -o ./lib/Linux/SpProp.oct -I./src/services/ -I./src/wrappers/ ./src/SpProp.cc
mkoctfile -o ./lib/Linux/SpVec.oct -I./src/services/ -I./src/wrappers/ ./src/SpVec.cc
mkoctfile -o ./lib/Linux/TimeFunc.oct -I./src/services/ -I./src/wrappers/ ./src/TimeFunc.cc
mkoctfile -o ./lib/Linux/Tle.oct -I./src/services/ -I./src/wrappers/ ./src/Tle.cc
mkoctfile -o ./lib/Linux/Vcm.oct -I./src/services/ -I./src/wrappers/ ./src/Vcm.cc
end
