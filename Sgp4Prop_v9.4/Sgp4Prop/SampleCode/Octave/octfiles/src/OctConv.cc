#include "OctConv.h"

const char* Int64ToStr(__int64 Int64) {
   static char Int64Str[20]; strncpy( Int64Str, " ", sizeof( Int64Str ) );
   sprintf(Int64Str,"%lld",Int64);
   return Int64Str;
}

char OctToChar(octave_value arg){
   charMatrix cInTemp = arg.char_matrix_value ();
   char Cchar=cInTemp(0);
   return Cchar;
}

//get data types
int OctToInt(octave_value arg){
   int Cint=arg.int_value();
   return Cint;
}

__int64 OctToInt64(octave_value arg){
   //Need to input int64 as string or data will get clobbered
   charMatrix strlongInTemp = arg.char_matrix_value ();
   std::string strlongInTemp2 = strlongInTemp.row_as_string(0);
   //Octave string to array of char
   char *cptr;
   __int64 Cint64=strtoll(strlongInTemp2.c_str(),&cptr,10);
   return Cint64;
}

double OctToDouble(octave_value arg){
   double Cdouble=arg.double_value();
   return Cdouble;
}

char* OctToString(octave_value arg, int lenstr){
   charMatrix strInTemp = arg.char_matrix_value ();
   std::string strInTemp2 = strInTemp.row_as_string(0);
   //Octave string to array of char
   char *Cstring;
   Cstring=(char*) malloc(lenstr*sizeof (char));
   strcpy(Cstring, strInTemp2.c_str());
   return Cstring;
}

void OctToInt1D(octave_value arg, int LenArr, int *int1D) {
   int32NDArray int1DInTemp=arg.int32_array_value();
   for (int i = 0; i < LenArr; i++){
	   int1D[i]=int1DInTemp(i);
   }
}

//Will need to work around the Octave int64 bug, so read in a characters.  
void OctToLong1D(octave_value arg, int LenArr, __int64 *long1D) {
   //int64NDArray int1DInTemp=arg.int64_array_value(); //The correct way
   charMatrix ch = arg.char_matrix_value();  // Will be size of whatever input from Octave is?
   char *cptr;
   std::string tmp="";
   for (int i = 0; i < LenArr; i++) {
	  //long1D[i]=long1DInTemp(i); //The correct way
	  tmp=ch.row_as_string(i);
	  long1D[i]=strtoll(tmp.c_str(),&cptr,10);
	  tmp="";
   }
}

void OctToDouble1D(octave_value arg, int LenArr, double *double1D) {
   NDArray real1DInTemp = arg.array_value();  // Will be size of whatever input from Octave is?
   for (int i = 0; i < LenArr; i++) {
      double1D[i]=real1DInTemp(i);
   }
}

template<typename Arr1D, std::size_t LenArr>
void Int1DToOct(octave_value *retval, Arr1D (&int1D)[LenArr]) {
   int32NDArray int1DTemp(dim_vector(1,LenArr));
   for (int i = 0; i < LenArr; i++) {
	   int1DTemp(i) = int1D[i];
   }
   *retval=octave_value (int1DTemp);   
}

template<typename Arr1D, std::size_t LenArr> 
void Int641DToOct(octave_value *retval, Arr1D (&int641D)[LenArr]){
   //Output int641DArray as string array
   //Correct way is same and int, but with int64NDArray
   charMatrix int641DTemp(dim_vector(LenArr,20));
   for (int i = 0; i < LenArr; i++) {
	   int641DTemp.insert("                    ",i,0);
	   int641DTemp.insert(Int64ToStr(int641D[i]),i,0);
   }
   *retval=octave_value (int641DTemp);   
}


template<typename Arr1D, std::size_t LenArr>
void Double1DToOct(octave_value *retval, Arr1D (&double1D)[LenArr]) {
  NDArray double1DTemp(dim_vector(1,LenArr));
   for (int i = 0; i < LenArr; i++) {
	   double1DTemp(i) = double1D[i];
   }
   *retval=octave_value (double1DTemp);   
}


template<typename Arr2D, std::size_t nrow, size_t ncol>
void Int2DToOct(octave_value *retval, Arr2D (&int2D)[nrow][ncol] ) {
   int32NDArray int2DTemp(dim_vector(nrow,ncol));
   for (int i = 0; i < nrow; i++) {
	   for (int j = 0; j < ncol; j++) {
	      int2DTemp(i,j) = int2D[i][j];
	   }
   }
   *retval=octave_value (int2DTemp);   
}

template<typename Arr2D, std::size_t nrow, size_t ncol>
void Int642DToOct(octave_value *retval, Arr2D (&int642D)[nrow][ncol] ) {
   int64NDArray int642DTemp(dim_vector(nrow,ncol));
   for (int i = 0; i < nrow; i++) {
	   for (int j = 0; j < ncol; j++) {
	      int642DTemp(i,j) = int642D[i][j];
	   }
   }
   *retval=octave_value (int642DTemp);   
}

template<typename Arr2D, std::size_t nrow, size_t ncol>
void Double2DToOct(octave_value *retval, Arr2D (&double2D)[nrow][ncol] ) {
   NDArray double2DTemp(dim_vector(nrow,ncol));
   for (int i = 0; i < nrow; i++) {
	   for (int j = 0; j < ncol; j++) {
	      double2DTemp(i,j) = double2D[i][j];
	   }
   }
   *retval=octave_value (double2DTemp);   
}
