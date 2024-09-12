package main

// #cgo CFLAGS: -I../../wrappers
// #cgo LDFLAGS: -L../../../../../Lib/Linux/IFORT -ldllmain -lastrofunc -ltimefunc -lenvconst -ltle -lsgp4prop
// #include "DllMainDll.h"
// #include "AstroFuncDll.h"
// #include "TimeFuncDll.h"
// #include "EnvConstDll.h"
// #include "TleDll.h"
// #include "Sgp4PropDll.h"
// #include <stdlib.h>
import "C"
import "fmt"
import "strings"
import "unsafe"
import "os"
//import "reflect"

func allocstr(length int) string {
	var b strings.Builder
	for i := 0; i < length; i++ {
		b.WriteByte(0)
	}
	str := b.String()
	return str
}
func exitErr() {
	lastErrMsg := C.CString(allocstr(128))
	C.GetLastErrMsg(lastErrMsg); 
	fmt.Println(C.GoString(lastErrMsg)); 
	os.Exit(0);
}
func main() {	
	//Test strings
	infoStr := C.CString(allocstr(128));
	C.DllMainGetInfo(infoStr);
	fmt.Println(strings.TrimSpace(C.GoString(infoStr)));
	C.free(unsafe.Pointer(infoStr));  //Need to free the string after use

	ThetaG := C.ThetaGrnwchFK5(1.520833333333);
	fmt.Println(ThetaG);
	
	//In case the length matters
	//temp1 := fmt.Sprintf("%-512v", "1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814")
	//temp2 := fmt.Sprintf("%-512v", "2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199")
	line1 := C.CString("1 90021U RELEAS14 00051.47568104 +.00000184 +00000+0 +00000-4 0 0814");
	line2 := C.CString("2 90021   0.0222 182.4923 0000720  45.6036 131.8822  1.00271328 1199");
	satKey := C.TleAddSatFrLines(line1,line2);
	
	C.free(unsafe.Pointer(line1));  //Need to free the string after use
	C.free(unsafe.Pointer(line2));  //Need to free the string after use
	fmt.Println(satKey);
	
	ErrCode:=C.Sgp4InitSat(satKey);
	if ErrCode != 0 {exitErr();}
	
	var ds50UTC C.double
	var yr C.int
	var day C.double
	pos := make([]C.double, 3)  //Do I need to convert back to Float64?
	vel := make([]C.double, 3)  //Do I need to convert back to Float64?
	llh := make([]C.double, 3)  //Do I need to convert back to Float64?
	posnew := make([]C.double, 3)  //Do I need to convert back to Float64?
	velnew := make([]C.double, 3)  //Do I need to convert back to Float64?
	sgp4MeanKep := make ([]C.double, 6) 
	for mse := 0.0; mse <= 43200.0; mse+=2700.0 {
		ErrCode=C.Sgp4PropMse(satKey, C.double(mse), &ds50UTC, &pos[0], &vel[0], &llh[0])
		if ErrCode != 0 {exitErr();}
		fmt.Printf(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n", mse, pos[0], pos[1], pos[2], vel[0], vel[1], vel[2])
		C.UTCToYrDays(ds50UTC,&yr,&day)
		ErrCode=C.Sgp4PosVelToKep(yr,day,&pos[0],&vel[0],&posnew[0],&velnew[0],&sgp4MeanKep[0])
		fmt.Printf(" %17.7f%17.7f%17.7f%17.7f%17.7f%17.7f\n", sgp4MeanKep[0], sgp4MeanKep[1], sgp4MeanKep[2], sgp4MeanKep[3], sgp4MeanKep[4], sgp4MeanKep[5])
	}
}

