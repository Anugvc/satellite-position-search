package main

// #cgo CFLAGS: -I../../wrappers
// #cgo LDFLAGS: -L../../../../../Lib/Linux/IFORT/ -ldllmain
// #include "DllMainDll.h"
// #include <stdlib.h>
import "C"
import "fmt"
import "strings"
import "unsafe"
import "os"


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
	//Inputs
	cIn      := C.char('Z');
	intIn    := C.int(1234);
	longIn   := C.long(1234567890123456789);
	realIn   := C.double(3.01);
	strIn    := C.CString("String Test");
	int1DIn  := []C.int{1,2,3};
	long1DIn := []C.long{3,4,5};
	real1DIn := []C.double{4.0,5.0,6.0};
	int2DIn  := [][3]C.int{{1,2,3},{4,5,6}};
	long2DIn := [][3]C.long{{1234567890123456789,4,5},{6,7,8}};
	real2DIn := [][3]C.double{{4.1,5.2,6.3},{7.4,8.5,9.6}};

	//Initialize outputs
	cOut := C.CString(" ");
	var intOut C.int;
	var longOut C.long;
	var realOut C.double;
	strOut    := C.CString(allocstr(512));
	int1DOut  := make([]C.int, 3)
	long1DOut := make([]C.long, 3)
	real1DOut := make([]C.double, 3)
	int2DOut  := make([][3]C.int, 2)     //2x3
	long2DOut := make([][3]C.long, 2)   //2x3
	real2DOut := make([][3]C.double, 2) //2x3	
	
	//void TestInterface(char cIn, char cOut[1], int intIn, int* intOut, long longIn, long* longOut, double realIn, double* realOut, char strIn[512], char strOut[512], int int1DIn[3], int int1DOut[3], long long1DIn[3], long long1DOut[3], double real1DIn[3], double real1DOut[3], int int2DIn[2][3], int int2DOut[2][3], long long2DIn[2][3], long long2DOut[2][3], double real2DIn[2][3], double real2DOut[2][3]);
	C.TestInterface(cIn,cOut,intIn,&intOut,longIn,&longOut,realIn,&realOut,strIn,strOut,
		&int1DIn[0],&int1DOut[0],&long1DIn[0],&long1DOut[0],&real1DIn[0],&real1DOut[0],
		&int2DIn[0],&int2DOut[0],&long2DIn[0],&long2DOut[0],&real2DIn[0],&real2DOut[0])
	
	//Still need to convert C types to Go types, or maybe it's good enough
	//C Strings will need convertings, but the numbers seem to be ok...meh
	
	//Print Output
	fmt.Println ("TestInterface outputs:")
	fmt.Println (C.GoString(cOut))
	fmt.Println (intOut)
	fmt.Println (longOut)
	fmt.Println (realOut)
	fmt.Println (strings.TrimSpace(C.GoString(strOut)))
	fmt.Println (int1DOut)
	fmt.Println (long1DOut)
	fmt.Println (real1DOut)
	fmt.Println (int2DOut)
	fmt.Println (long2DOut)
	fmt.Println (real2DOut)
	fmt.Println ("")
	//Free up strings from memory
	//C.free(unsafe.Pointer(cIn));  //Doesn't work for char type?
	C.free(unsafe.Pointer(strIn)); 
	C.free(unsafe.Pointer(cOut));  
	C.free(unsafe.Pointer(strOut));  
	
	//TestInterface2
	cInOut      := C.CString(" ");
    cInOut       = C.CString("A");
    intInOut    := C.int(42);
	longInOut   := C.long(1234567890123456789);
	realInOut   := C.double(3.14);
	strInOut    := C.CString("String Test");
	int1DInOut  := []C.int{1,2,3};
	long1DInOut := []C.long{3,4,5};
	real1DInOut := []C.double{4.0,5.0,6.0};
	int2DInOut  := [][3]C.int{{1,2,3},{4,5,6}};
	long2DInOut := [][3]C.long{{1234567890123456789,4,5},{6,7,8}};
	real2DInOut := [][3]C.double{{4.1,5.2,6.3},{7.4,8.5,9.6}};
    //void TestInterface2(char cInOut, int intInOut, long longInOut, double realInOut, char strInOut[512], 
    //int int1DInOut[3], long long1DInOut[3], double real1DInOut[3], 
    //int int2DInOut[2][3], long long2DInOut[2][3], double real2DInOut[2][3]);
    C.TestInterface2(cInOut,&intInOut,&longInOut,&realInOut,strInOut,
		&int1DInOut[0],&long1DInOut[0],&real1DInOut[0],
		&int2DInOut[0],&long2DInOut[0],&real2DInOut[0])
 	//Print Output
	fmt.Println ("TestInterface2 outputs:")
	fmt.Println (C.GoString(cInOut))
	fmt.Println (intInOut)
	fmt.Println (longInOut)
	fmt.Println (realInOut)
	fmt.Println (strings.TrimSpace(C.GoString(strInOut)))
	fmt.Println (int1DInOut)
	fmt.Println (long1DInOut)
	fmt.Println (real1DInOut)
	fmt.Println (int2DInOut)
	fmt.Println (long2DInOut)
	fmt.Println (real2DInOut)
	fmt.Println ("")
	//Free up strings from memory
	//C.free(unsafe.Pointer(cIn));  //Doesn't work for char type?
	C.free(unsafe.Pointer(strInOut)); 
	C.free(unsafe.Pointer(cInOut));  
   
    //TestInterface3
	Unk1DIn  := []C.int{1,2,3};
	Unk2DIn  := [][3]C.int{{1,2,3},{4,5,6}};
	Unk1DOut := make([]C.int, 3)
	Unk2DOut := make([][3]C.int, 2)     //2x3
	
	//void TestInterface3(int Unk1DIn[], int Unk1DOut[], int Unk2DIn[][3], int Unk2DOut[][3]);
	C.TestInterface3(&Unk1DIn[0], &Unk1DOut[0], &Unk2DIn[0], &Unk2DOut[0]);
	fmt.Println ("TestInterface3 outputs:")
	fmt.Println (Unk1DOut)
	fmt.Println (Unk2DOut)
	fmt.Println ("")
	
	//Check global variables
	fmt.Println ("Check Global Variables")
	fmt.Println (C.LOGMSGLEN)
}
