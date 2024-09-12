#include "DllUtils.h"
#include <octave/oct.h>

const char* Int64ToStr(__int64 Int64);
char OctToChar(octave_value arg);
int OctToInt(octave_value arg);
__int64 OctToInt64(octave_value arg);
double OctToDouble(octave_value arg);
char* OctToString(octave_value arg, int lenstr);
void OctToInt1D(octave_value arg, int LenArr, int *int1D);
void OctToLong1D(octave_value arg, int LenArr, __int64 *long1D);
void OctToDouble1D(octave_value arg, int LenArr, double *double1D);
template<typename Arr1D, std::size_t LenArr>
void Int1DToOct(octave_value *retval, Arr1D (&int1D)[LenArr]);
template<typename Arr1D, std::size_t LenArr>
void Int641DToOct(octave_value *retval, Arr1D (&int641D)[LenArr]);
template<typename Arr1D, std::size_t LenArr>
void Double1DToOct(octave_value *retval, Arr1D (&double1D)[LenArr]);
template<typename Arr2D, std::size_t nrow, size_t ncol>
void Int2DToOct(octave_value *retval, Arr2D (&int2D)[nrow][ncol] );
template<typename Arr2D, std::size_t nrow, size_t ncol>
void Int642DToOct(octave_value *retval, Arr2D (&int2D)[nrow][ncol] );
template<typename Arr2D, std::size_t nrow, size_t ncol>
void Double2DToOct(octave_value *retval, Arr2D (&int2D)[nrow][ncol] );