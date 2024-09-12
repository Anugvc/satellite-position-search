#include "DllUtils.h"
#include <tcl.h>

int Tcl_GetInt64FromObj(Tcl_Interp *interp, Tcl_Obj *objv, __int64 *int64);
const char* Int64ToStr(__int64 Int64);
int Tcl2Int1D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, int *int1D);
int Tcl2Int641D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, __int64 *int641D);
int Tcl2Double1D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, double *double1D);
int Tcl2Int2D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, int **int2D);
int Tcl2Int642D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, __int64 *int642D[]);
int Tcl2Double2D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, double *double2D[]);
int Tcl_AppendInt1DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, int *int1D );
int Tcl_AppendInt641DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, __int64 *int641D );
int Tcl_AppendDouble1DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, double *double1D );
int Tcl_AppendInt2DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, int int2D[nrow][ncol] );
int Tcl_AppendInt642DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, __int64 int642D[nrow][ncol] );
int Tcl_AppendDouble2DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, double int642D[nrow][ncol] );

