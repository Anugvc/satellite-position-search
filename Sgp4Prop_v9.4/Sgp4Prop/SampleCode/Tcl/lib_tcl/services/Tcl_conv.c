#include "Tcl_conv.h"

//Tcl doesn't have a Function for long long (__int64), 
//so we have to make one by writing to string first
int Tcl_GetInt64FromObj(Tcl_Interp *interp, Tcl_Obj *objv, __int64 *int64) {
   int lengthPtr;
   char* longlongStr = Tcl_GetStringFromObj(objv,&lengthPtr);
   char *cptr;
   *int64=strtoll(longlongStr,&cptr,10); // base 10 long long
   return TCL_OK;
}

const char* Int64ToStr(__int64 Int64) {
   static char Int64Str[20]; strncpy( Int64Str, " ", sizeof( Int64Str ) );
   sprintf(Int64Str,"%lld",Int64);
   return Int64Str;
}

int Tcl2Int1D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, int *int1D) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (narr != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
      if (Tcl_GetIntFromObj(interp, objvr[i], &int1D[i]) == TCL_ERROR) return TCL_ERROR;
   }
   return TCL_OK;
}

int Tcl2Int641D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, __int64 *int641D) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (narr != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
      if (Tcl_GetInt64FromObj(interp, objvr[i], &int641D[i]) == TCL_ERROR) return TCL_ERROR;
   }
   return TCL_OK;
}

int Tcl2Double1D(Tcl_Interp *interp, Tcl_Obj *objv, int narr, double *double1D) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (narr != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
      if (Tcl_GetDoubleFromObj(interp, objvr[i], &double1D[i]) == TCL_ERROR) return TCL_ERROR;
   }
   return TCL_OK;
}

int Tcl2Int2D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, int *int2D[]) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (nrow != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   int objcc;
   Tcl_Obj **objvc;
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
   
      if (Tcl_ListObjGetElements(interp, objvr[i], &objcc, &objvc) == TCL_ERROR) return TCL_ERROR;
      if (ncol != objcc) {
         printf("Wrong number of arguments in list");
         return TCL_ERROR;
      }
      
      for (int j=0; j<objcc; j++) {
         if (Tcl_GetIntFromObj(interp, objvc[j], &int2D[i][j]) == TCL_ERROR) return TCL_ERROR;

      }
   }
      
   return TCL_OK;
}

int Tcl2Int642D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, __int64 *int642D[]) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (nrow != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   int objcc;
   Tcl_Obj **objvc;
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
   
      if (Tcl_ListObjGetElements(interp, objvr[i], &objcc, &objvc) == TCL_ERROR) return TCL_ERROR;
      if (ncol != objcc) {
         printf("Wrong number of arguments in list");
         return TCL_ERROR;
      }
      
      for (int j=0; j<objcc; j++) {
         if (Tcl_GetInt64FromObj(interp, objvc[j], &int642D[i][j]) == TCL_ERROR) return TCL_ERROR;
      }
   }
      
   return TCL_OK;
}

int Tcl2Double2D(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, double *double2D[]) {
   int objcr;
   Tcl_Obj **objvr;
   
   ////// EXTRACT ELEMENTS //////
   if (Tcl_ListObjGetElements(interp, objv, &objcr, &objvr) == TCL_ERROR) return TCL_ERROR;
   if (nrow != objcr) {
      printf("Wrong number of arguments in list");
      return TCL_ERROR;
   }
   
   int objcc;
   Tcl_Obj **objvc;
   ////// WORK WITH VALUES //////
   for (int i=0 ; i<objcr ; i++) {
   
      if (Tcl_ListObjGetElements(interp, objvr[i], &objcc, &objvc) == TCL_ERROR) return TCL_ERROR;
      if (ncol != objcc) {
         printf("Wrong number of arguments in list");
         return TCL_ERROR;
      }
      
      for (int j=0; j<objcc; j++) {
         if (Tcl_GetDoubleFromObj(interp, objvc[j], &double2D[i][j]) == TCL_ERROR) return TCL_ERROR;

      }
   }
   return TCL_OK;
}

int Tcl_AppendInt1DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, int *int1D ) {
   Tcl_Obj *intOut_Tcl; intOut_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<narr;i++) if(Tcl_ListObjAppendElement(interp, intOut_Tcl, Tcl_NewIntObj(int1D[i]) ) != TCL_OK) return TCL_ERROR;
   if(Tcl_ListObjAppendElement(interp, objv, intOut_Tcl ) != TCL_OK) return TCL_ERROR;   
   return TCL_OK;
}

int Tcl_AppendInt641DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, __int64 *int641D ) {
   Tcl_Obj *int641D_Tcl; int641D_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<narr;i++) if(Tcl_ListObjAppendElement(interp, int641D_Tcl, Tcl_NewStringObj(Int64ToStr(int641D[i]),20) ) != TCL_OK) return TCL_ERROR;
   if(Tcl_ListObjAppendElement(interp, objv, int641D_Tcl ) != TCL_OK) return TCL_ERROR;
   return TCL_OK;
}

int Tcl_AppendDouble1DArray(Tcl_Interp *interp, Tcl_Obj *objv, int narr, double *double1D ) {
   Tcl_Obj *double1D_Tcl; double1D_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<narr;i++) if(Tcl_ListObjAppendElement(interp, double1D_Tcl, Tcl_NewDoubleObj(double1D[i]) ) != TCL_OK) return TCL_ERROR;
   if(Tcl_ListObjAppendElement(interp, objv, double1D_Tcl ) != TCL_OK) return TCL_ERROR;
   return TCL_OK;
}

int Tcl_AppendInt2DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, int int2D[nrow][ncol] ) {
   Tcl_Obj *int2D_Tcl; int2D_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<nrow;i++) {
      Tcl_Obj *int2Dr_Tcl; int2Dr_Tcl=Tcl_NewListObj(0,NULL);
      for(int j=0;j<ncol;j++) {
         if(Tcl_ListObjAppendElement(interp, int2Dr_Tcl, Tcl_NewIntObj(int2D[i][j]) ) != TCL_OK) return TCL_ERROR;
      }
      if(Tcl_ListObjAppendElement(interp, int2D_Tcl, int2Dr_Tcl ) != TCL_OK) return TCL_ERROR;
   }
   if(Tcl_ListObjAppendElement(interp, objv, int2D_Tcl ) != TCL_OK) return TCL_ERROR;   
   return TCL_OK;
}

int Tcl_AppendInt642DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, __int64 int642D[nrow][ncol] ) {
   Tcl_Obj *int642D_Tcl; int642D_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<nrow;i++) {
      Tcl_Obj *int642Dr_Tcl; int642Dr_Tcl=Tcl_NewListObj(0,NULL);
      for(int j=0;j<ncol;j++) {
         if(Tcl_ListObjAppendElement(interp, int642Dr_Tcl, Tcl_NewStringObj(Int64ToStr(int642D[i][j]),20) ) != TCL_OK) return TCL_ERROR;
      }
      if(Tcl_ListObjAppendElement(interp, int642D_Tcl, int642Dr_Tcl ) != TCL_OK) return TCL_ERROR;
   }
   if(Tcl_ListObjAppendElement(interp, objv, int642D_Tcl ) != TCL_OK) return TCL_ERROR;   
   return TCL_OK;
}

int Tcl_AppendDouble2DArray(Tcl_Interp *interp, Tcl_Obj *objv, int nrow, int ncol, double double2D[nrow][ncol] ) {
   Tcl_Obj *double2D_Tcl; double2D_Tcl=Tcl_NewListObj(0,NULL);
   for(int i=0;i<nrow;i++) {
      Tcl_Obj *double2Dr_Tcl; double2Dr_Tcl=Tcl_NewListObj(0,NULL);
      for(int j=0;j<ncol;j++) {
         if(Tcl_ListObjAppendElement(interp, double2Dr_Tcl, Tcl_NewDoubleObj(double2D[i][j]) ) != TCL_OK) return TCL_ERROR;
      }
      if(Tcl_ListObjAppendElement(interp, double2D_Tcl, double2Dr_Tcl ) != TCL_OK) return TCL_ERROR;
   }
   if(Tcl_ListObjAppendElement(interp, objv, double2D_Tcl ) != TCL_OK) return TCL_ERROR;   

   return TCL_OK;
}
