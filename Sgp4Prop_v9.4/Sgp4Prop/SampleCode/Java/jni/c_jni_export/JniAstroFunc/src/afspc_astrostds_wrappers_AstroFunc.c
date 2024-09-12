// This wrapper file was generated automatically by the GenDllWrappers program.

#include <memory.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <jni.h>

// Compiler directive that allows C++ code to use the C header files
// Begin
#ifdef __cplusplus
extern "C"
{
#endif

#include "../../services/DllUtils.h"
#include "../../wrappers/DllMainDll.h"
#include "../../wrappers/TimeFuncDll.h"
#include "../../wrappers/AstroFuncDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LoadAstroFuncDll(JNIEnv* env, jclass jc)
{
    LoadAstroFuncDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AstroFuncInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadAstroFuncDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = AstroFuncInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AstroFuncGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to AstroFuncGetInfo");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *infoStr_outArray = (jbyte *)((*env)->GetByteArrayElements(env, infoStr_out, NULL));
    if (infoStr_outArray == NULL) {
        printf("Failed to get elements for infoStr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AstroFuncGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_KepToEqnx(JNIEnv* env, jclass jc, jdoubleArray xa_kep_in, jdoubleArray xa_eqnx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_kep_in == 0 || xa_eqnx_out == 0) {
        printf("Got NULL parameter passed to KepToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_in);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in KepToEqnx is too small.");
        return;
    }

    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in KepToEqnx is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_kep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_in, NULL));
    if (xa_kep_inArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    KepToEqnx(xa_kep_inArray, xa_eqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_KepToPosVel(JNIEnv* env, jclass jc, jdoubleArray xa_kep_in, jdoubleArray pos_out, jdoubleArray vel_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_kep_in == 0 || pos_out == 0 || vel_out == 0) {
        printf("Got NULL parameter passed to KepToPosVel");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_in);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in KepToPosVel is too small.");
        return;
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in KepToPosVel is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in KepToPosVel is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_kep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_in, NULL));
    if (xa_kep_inArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    KepToPosVel(xa_kep_inArray, pos_outArray, vel_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_KepToUVW(JNIEnv* env, jclass jc, jdoubleArray xa_kep_in, jdoubleArray uBar_out, jdoubleArray vBar_out, jdoubleArray wBar_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_kep_in == 0 || uBar_out == 0 || vBar_out == 0 || wBar_out == 0) {
        printf("Got NULL parameter passed to KepToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_in);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in KepToUVW is too small.");
        return;
    }

    int uBar_len = (*env)->GetArrayLength(env, uBar_out);
    if (uBar_len < 3) {
        printf("uBar parameter passed in KepToUVW is too small.");
        return;
    }

    int vBar_len = (*env)->GetArrayLength(env, vBar_out);
    if (vBar_len < 3) {
        printf("vBar parameter passed in KepToUVW is too small.");
        return;
    }

    int wBar_len = (*env)->GetArrayLength(env, wBar_out);
    if (wBar_len < 3) {
        printf("wBar parameter passed in KepToUVW is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_kep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_in, NULL));
    if (xa_kep_inArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    jdouble *uBar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uBar_out, NULL));
    if (uBar_outArray == NULL) {
        printf("Failed to get elements for uBar array.");
        return;
    }

    jdouble *vBar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vBar_out, NULL));
    if (vBar_outArray == NULL) {
        printf("Failed to get elements for vBar array.");
        return;
    }

    jdouble *wBar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, wBar_out, NULL));
    if (wBar_outArray == NULL) {
        printf("Failed to get elements for wBar array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    KepToUVW(xa_kep_inArray, uBar_outArray, vBar_outArray, wBar_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uBar_out, uBar_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vBar_out, vBar_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, wBar_out, wBar_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ClassToEqnx(JNIEnv* env, jclass jc, jdoubleArray xa_cls_in, jdoubleArray xa_eqnx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_cls_in == 0 || xa_eqnx_out == 0) {
        printf("Got NULL parameter passed to ClassToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_cls_len = (*env)->GetArrayLength(env, xa_cls_in);
    if (xa_cls_len < 6) {
        printf("xa_cls parameter passed in ClassToEqnx is too small.");
        return;
    }

    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in ClassToEqnx is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_cls_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_cls_in, NULL));
    if (xa_cls_inArray == NULL) {
        printf("Failed to get elements for xa_cls array.");
        return;
    }

    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ClassToEqnx(xa_cls_inArray, xa_eqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EqnxToClass(JNIEnv* env, jclass jc, jdoubleArray xa_eqnx_in, jdoubleArray xa_cls_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_eqnx_in == 0 || xa_cls_out == 0) {
        printf("Got NULL parameter passed to EqnxToClass");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_in);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in EqnxToClass is too small.");
        return;
    }

    int xa_cls_len = (*env)->GetArrayLength(env, xa_cls_out);
    if (xa_cls_len < 6) {
        printf("xa_cls parameter passed in EqnxToClass is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_eqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_in, NULL));
    if (xa_eqnx_inArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    jdouble *xa_cls_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_cls_out, NULL));
    if (xa_cls_outArray == NULL) {
        printf("Failed to get elements for xa_cls array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EqnxToClass(xa_eqnx_inArray, xa_cls_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_cls_out, xa_cls_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EqnxToKep(JNIEnv* env, jclass jc, jdoubleArray xa_eqnx_in, jdoubleArray xa_kep_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_eqnx_in == 0 || xa_kep_out == 0) {
        printf("Got NULL parameter passed to EqnxToKep");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_in);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in EqnxToKep is too small.");
        return;
    }

    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_out);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in EqnxToKep is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_eqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_in, NULL));
    if (xa_eqnx_inArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    jdouble *xa_kep_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_out, NULL));
    if (xa_kep_outArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EqnxToKep(xa_eqnx_inArray, xa_kep_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_kep_out, xa_kep_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EqnxToPosVel(JNIEnv* env, jclass jc, jdoubleArray xa_eqnx_in, jdoubleArray pos_out, jdoubleArray vel_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_eqnx_in == 0 || pos_out == 0 || vel_out == 0) {
        printf("Got NULL parameter passed to EqnxToPosVel");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_in);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in EqnxToPosVel is too small.");
        return;
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in EqnxToPosVel is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in EqnxToPosVel is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_eqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_in, NULL));
    if (xa_eqnx_inArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EqnxToPosVel(xa_eqnx_inArray, pos_outArray, vel_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelToEqnx(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray xa_eqnx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || xa_eqnx_out == 0) {
        printf("Got NULL parameter passed to PosVelToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelToEqnx is too small.");
        return;
    }

    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in PosVelToEqnx is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelToEqnx(pos_inArray, vel_inArray, xa_eqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelMuToEqnx(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdouble mu_in, jdoubleArray xa_eqnx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || xa_eqnx_out == 0) {
        printf("Got NULL parameter passed to PosVelMuToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelMuToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelMuToEqnx is too small.");
        return;
    }

    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in PosVelMuToEqnx is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelMuToEqnx(pos_inArray, vel_inArray, mu_in, xa_eqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelToKep(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray xa_kep_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || xa_kep_out == 0) {
        printf("Got NULL parameter passed to PosVelToKep");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelToKep is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelToKep is too small.");
        return;
    }

    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_out);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in PosVelToKep is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *xa_kep_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_out, NULL));
    if (xa_kep_outArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelToKep(pos_inArray, vel_inArray, xa_kep_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_kep_out, xa_kep_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelMuToKep(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdouble mu_in, jdoubleArray xa_kep_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || xa_kep_out == 0) {
        printf("Got NULL parameter passed to PosVelMuToKep");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelMuToKep is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelMuToKep is too small.");
        return;
    }

    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_out);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in PosVelMuToKep is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *xa_kep_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_out, NULL));
    if (xa_kep_outArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelMuToKep(pos_inArray, vel_inArray, mu_in, xa_kep_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_kep_out, xa_kep_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelToUUVW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray uvec_out, jdoubleArray vVec_out, jdoubleArray wVec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || uvec_out == 0 || vVec_out == 0 || wVec_out == 0) {
        printf("Got NULL parameter passed to PosVelToUUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelToUUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelToUUVW is too small.");
        return;
    }

    int uvec_len = (*env)->GetArrayLength(env, uvec_out);
    if (uvec_len < 3) {
        printf("uvec parameter passed in PosVelToUUVW is too small.");
        return;
    }

    int vVec_len = (*env)->GetArrayLength(env, vVec_out);
    if (vVec_len < 3) {
        printf("vVec parameter passed in PosVelToUUVW is too small.");
        return;
    }

    int wVec_len = (*env)->GetArrayLength(env, wVec_out);
    if (wVec_len < 3) {
        printf("wVec parameter passed in PosVelToUUVW is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *uvec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvec_out, NULL));
    if (uvec_outArray == NULL) {
        printf("Failed to get elements for uvec array.");
        return;
    }

    jdouble *vVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vVec_out, NULL));
    if (vVec_outArray == NULL) {
        printf("Failed to get elements for vVec array.");
        return;
    }

    jdouble *wVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, wVec_out, NULL));
    if (wVec_outArray == NULL) {
        printf("Failed to get elements for wVec array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelToUUVW(pos_inArray, vel_inArray, uvec_outArray, vVec_outArray, wVec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvec_out, uvec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vVec_out, vVec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, wVec_out, wVec_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PosVelToPTW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray uvec_out, jdoubleArray vVec_out, jdoubleArray wVec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || uvec_out == 0 || vVec_out == 0 || wVec_out == 0) {
        printf("Got NULL parameter passed to PosVelToPTW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in PosVelToPTW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in PosVelToPTW is too small.");
        return;
    }

    int uvec_len = (*env)->GetArrayLength(env, uvec_out);
    if (uvec_len < 3) {
        printf("uvec parameter passed in PosVelToPTW is too small.");
        return;
    }

    int vVec_len = (*env)->GetArrayLength(env, vVec_out);
    if (vVec_len < 3) {
        printf("vVec parameter passed in PosVelToPTW is too small.");
        return;
    }

    int wVec_len = (*env)->GetArrayLength(env, wVec_out);
    if (wVec_len < 3) {
        printf("wVec parameter passed in PosVelToPTW is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *uvec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvec_out, NULL));
    if (uvec_outArray == NULL) {
        printf("Failed to get elements for uvec array.");
        return;
    }

    jdouble *vVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vVec_out, NULL));
    if (vVec_outArray == NULL) {
        printf("Failed to get elements for vVec array.");
        return;
    }

    jdouble *wVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, wVec_out, NULL));
    if (wVec_outArray == NULL) {
        printf("Failed to get elements for wVec array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PosVelToPTW(pos_inArray, vel_inArray, uvec_outArray, vVec_outArray, wVec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvec_out, uvec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vVec_out, vVec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, wVec_out, wVec_outArray, 0);

}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_SolveKepEqtn(JNIEnv* env, jclass jc, jdoubleArray xa_kep_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_kep_in == 0) {
        printf("Got NULL parameter passed to SolveKepEqtn");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_in);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in SolveKepEqtn is too small.");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_kep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_in, NULL));
    if (xa_kep_inArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = SolveKepEqtn(xa_kep_inArray);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CompTrueAnomaly(JNIEnv* env, jclass jc, jdoubleArray xa_kep_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_kep_in == 0) {
        printf("Got NULL parameter passed to CompTrueAnomaly");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_in);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in CompTrueAnomaly is too small.");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_kep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_in, NULL));
    if (xa_kep_inArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return (jdouble)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = CompTrueAnomaly(xa_kep_inArray);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_NToA(JNIEnv* env, jclass jc, jdouble n_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = NToA(n_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AToN(JNIEnv* env, jclass jc, jdouble a_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = AToN(a_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_KozaiToBrouwer(JNIEnv* env, jclass jc, jdouble eccen_in, jdouble incli_in, jdouble nKozai_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = KozaiToBrouwer(eccen_in, incli_in, nKozai_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_BrouwerToKozai(JNIEnv* env, jclass jc, jdouble eccen_in, jdouble incli_in, jdouble nBrouwer_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = BrouwerToKozai(eccen_in, incli_in, nBrouwer_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_KepOscToMean(JNIEnv* env, jclass jc, jdoubleArray xa_OscKep_in, jdoubleArray xa_MeanKep_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_OscKep_in == 0 || xa_MeanKep_out == 0) {
        printf("Got NULL parameter passed to KepOscToMean");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_OscKep_len = (*env)->GetArrayLength(env, xa_OscKep_in);
    if (xa_OscKep_len < 6) {
        printf("xa_OscKep parameter passed in KepOscToMean is too small.");
        return;
    }

    int xa_MeanKep_len = (*env)->GetArrayLength(env, xa_MeanKep_out);
    if (xa_MeanKep_len < 6) {
        printf("xa_MeanKep parameter passed in KepOscToMean is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_OscKep_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_OscKep_in, NULL));
    if (xa_OscKep_inArray == NULL) {
        printf("Failed to get elements for xa_OscKep array.");
        return;
    }

    jdouble *xa_MeanKep_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_MeanKep_out, NULL));
    if (xa_MeanKep_outArray == NULL) {
        printf("Failed to get elements for xa_MeanKep array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    KepOscToMean(xa_OscKep_inArray, xa_MeanKep_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_MeanKep_out, xa_MeanKep_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_XYZToLLH(JNIEnv* env, jclass jc, jdouble thetaG_in, jdoubleArray metricPos_in, jdoubleArray metricLLH_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (metricPos_in == 0 || metricLLH_out == 0) {
        printf("Got NULL parameter passed to XYZToLLH");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int metricPos_len = (*env)->GetArrayLength(env, metricPos_in);
    if (metricPos_len < 3) {
        printf("metricPos parameter passed in XYZToLLH is too small.");
        return;
    }

    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_out);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in XYZToLLH is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *metricPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricPos_in, NULL));
    if (metricPos_inArray == NULL) {
        printf("Failed to get elements for metricPos array.");
        return;
    }

    jdouble *metricLLH_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_out, NULL));
    if (metricLLH_outArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    XYZToLLH(thetaG_in, metricPos_inArray, metricLLH_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, metricLLH_out, metricLLH_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_XYZToLLHTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray metricPos_in, jdoubleArray metricLLH_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (metricPos_in == 0 || metricLLH_out == 0) {
        printf("Got NULL parameter passed to XYZToLLHTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int metricPos_len = (*env)->GetArrayLength(env, metricPos_in);
    if (metricPos_len < 3) {
        printf("metricPos parameter passed in XYZToLLHTime is too small.");
        return;
    }

    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_out);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in XYZToLLHTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *metricPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricPos_in, NULL));
    if (metricPos_inArray == NULL) {
        printf("Failed to get elements for metricPos array.");
        return;
    }

    jdouble *metricLLH_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_out, NULL));
    if (metricLLH_outArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    XYZToLLHTime(ds50UTC_in, metricPos_inArray, metricLLH_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, metricLLH_out, metricLLH_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LLHToXYZ(JNIEnv* env, jclass jc, jdouble thetaG_in, jdoubleArray metricLLH_in, jdoubleArray metricXYZ_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (metricLLH_in == 0 || metricXYZ_out == 0) {
        printf("Got NULL parameter passed to LLHToXYZ");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_in);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in LLHToXYZ is too small.");
        return;
    }

    int metricXYZ_len = (*env)->GetArrayLength(env, metricXYZ_out);
    if (metricXYZ_len < 3) {
        printf("metricXYZ parameter passed in LLHToXYZ is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *metricLLH_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_in, NULL));
    if (metricLLH_inArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    jdouble *metricXYZ_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricXYZ_out, NULL));
    if (metricXYZ_outArray == NULL) {
        printf("Failed to get elements for metricXYZ array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LLHToXYZ(thetaG_in, metricLLH_inArray, metricXYZ_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, metricXYZ_out, metricXYZ_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LLHToXYZTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray metricLLH_in, jdoubleArray metricXYZ_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (metricLLH_in == 0 || metricXYZ_out == 0) {
        printf("Got NULL parameter passed to LLHToXYZTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_in);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in LLHToXYZTime is too small.");
        return;
    }

    int metricXYZ_len = (*env)->GetArrayLength(env, metricXYZ_out);
    if (metricXYZ_len < 3) {
        printf("metricXYZ parameter passed in LLHToXYZTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *metricLLH_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_in, NULL));
    if (metricLLH_inArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    jdouble *metricXYZ_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricXYZ_out, NULL));
    if (metricXYZ_outArray == NULL) {
        printf("Failed to get elements for metricXYZ array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LLHToXYZTime(ds50UTC_in, metricLLH_inArray, metricXYZ_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, metricXYZ_out, metricXYZ_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EFGToECI(JNIEnv* env, jclass jc, jdouble thetaG_in, jdoubleArray posEFG_in, jdoubleArray velEFG_in, jdoubleArray posECI_out, jdoubleArray velECI_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEFG_in == 0 || velEFG_in == 0 || posECI_out == 0 || velECI_out == 0) {
        printf("Got NULL parameter passed to EFGToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEFG_len = (*env)->GetArrayLength(env, posEFG_in);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in EFGToECI is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_in);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in EFGToECI is too small.");
        return;
    }

    int posECI_len = (*env)->GetArrayLength(env, posECI_out);
    if (posECI_len < 3) {
        printf("posECI parameter passed in EFGToECI is too small.");
        return;
    }

    int velECI_len = (*env)->GetArrayLength(env, velECI_out);
    if (velECI_len < 3) {
        printf("velECI parameter passed in EFGToECI is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_in, NULL));
    if (posEFG_inArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_in, NULL));
    if (velEFG_inArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    jdouble *posECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECI_out, NULL));
    if (posECI_outArray == NULL) {
        printf("Failed to get elements for posECI array.");
        return;
    }

    jdouble *velECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECI_out, NULL));
    if (velECI_outArray == NULL) {
        printf("Failed to get elements for velECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EFGToECI(thetaG_in, posEFG_inArray, velEFG_inArray, posECI_outArray, velECI_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posECI_out, posECI_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velECI_out, velECI_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EFGToECITime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray posEFG_in, jdoubleArray velEFG_in, jdoubleArray posECI_out, jdoubleArray velECI_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEFG_in == 0 || velEFG_in == 0 || posECI_out == 0 || velECI_out == 0) {
        printf("Got NULL parameter passed to EFGToECITime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEFG_len = (*env)->GetArrayLength(env, posEFG_in);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in EFGToECITime is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_in);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in EFGToECITime is too small.");
        return;
    }

    int posECI_len = (*env)->GetArrayLength(env, posECI_out);
    if (posECI_len < 3) {
        printf("posECI parameter passed in EFGToECITime is too small.");
        return;
    }

    int velECI_len = (*env)->GetArrayLength(env, velECI_out);
    if (velECI_len < 3) {
        printf("velECI parameter passed in EFGToECITime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_in, NULL));
    if (posEFG_inArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_in, NULL));
    if (velEFG_inArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    jdouble *posECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECI_out, NULL));
    if (posECI_outArray == NULL) {
        printf("Failed to get elements for posECI array.");
        return;
    }

    jdouble *velECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECI_out, NULL));
    if (velECI_outArray == NULL) {
        printf("Failed to get elements for velECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EFGToECITime(ds50UTC_in, posEFG_inArray, velEFG_inArray, posECI_outArray, velECI_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posECI_out, posECI_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velECI_out, velECI_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ECIToEFG(JNIEnv* env, jclass jc, jdouble thetaG_in, jdoubleArray posECI_in, jdoubleArray velECI_in, jdoubleArray posEFG_out, jdoubleArray velEFG_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posECI_in == 0 || velECI_in == 0 || posEFG_out == 0 || velEFG_out == 0) {
        printf("Got NULL parameter passed to ECIToEFG");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posECI_len = (*env)->GetArrayLength(env, posECI_in);
    if (posECI_len < 3) {
        printf("posECI parameter passed in ECIToEFG is too small.");
        return;
    }

    int velECI_len = (*env)->GetArrayLength(env, velECI_in);
    if (velECI_len < 3) {
        printf("velECI parameter passed in ECIToEFG is too small.");
        return;
    }

    int posEFG_len = (*env)->GetArrayLength(env, posEFG_out);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in ECIToEFG is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_out);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in ECIToEFG is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECI_in, NULL));
    if (posECI_inArray == NULL) {
        printf("Failed to get elements for posECI array.");
        return;
    }

    jdouble *velECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECI_in, NULL));
    if (velECI_inArray == NULL) {
        printf("Failed to get elements for velECI array.");
        return;
    }

    jdouble *posEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_out, NULL));
    if (posEFG_outArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_out, NULL));
    if (velEFG_outArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ECIToEFG(thetaG_in, posECI_inArray, velECI_inArray, posEFG_outArray, velEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posEFG_out, posEFG_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velEFG_out, velEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ECIToEFGTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray posECI_in, jdoubleArray velECI_in, jdoubleArray posEFG_out, jdoubleArray velEFG_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posECI_in == 0 || velECI_in == 0 || posEFG_out == 0 || velEFG_out == 0) {
        printf("Got NULL parameter passed to ECIToEFGTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posECI_len = (*env)->GetArrayLength(env, posECI_in);
    if (posECI_len < 3) {
        printf("posECI parameter passed in ECIToEFGTime is too small.");
        return;
    }

    int velECI_len = (*env)->GetArrayLength(env, velECI_in);
    if (velECI_len < 3) {
        printf("velECI parameter passed in ECIToEFGTime is too small.");
        return;
    }

    int posEFG_len = (*env)->GetArrayLength(env, posEFG_out);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in ECIToEFGTime is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_out);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in ECIToEFGTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECI_in, NULL));
    if (posECI_inArray == NULL) {
        printf("Failed to get elements for posECI array.");
        return;
    }

    jdouble *velECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECI_in, NULL));
    if (velECI_inArray == NULL) {
        printf("Failed to get elements for velECI array.");
        return;
    }

    jdouble *posEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_out, NULL));
    if (posEFG_outArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_out, NULL));
    if (velEFG_outArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ECIToEFGTime(ds50UTC_in, posECI_inArray, velECI_inArray, posEFG_outArray, velEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posEFG_out, posEFG_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velEFG_out, velEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ECRToEFG(JNIEnv* env, jclass jc, jdouble polarX_in, jdouble polarY_in, jdoubleArray posECR_in, jdoubleArray velECR_in, jdoubleArray posEFG_out, jdoubleArray velEFG_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posECR_in == 0 || velECR_in == 0 || posEFG_out == 0 || velEFG_out == 0) {
        printf("Got NULL parameter passed to ECRToEFG");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posECR_len = (*env)->GetArrayLength(env, posECR_in);
    if (posECR_len < 3) {
        printf("posECR parameter passed in ECRToEFG is too small.");
        return;
    }

    int velECR_len = (*env)->GetArrayLength(env, velECR_in);
    if (velECR_len < 3) {
        printf("velECR parameter passed in ECRToEFG is too small.");
        return;
    }

    int posEFG_len = (*env)->GetArrayLength(env, posEFG_out);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in ECRToEFG is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_out);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in ECRToEFG is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posECR_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECR_in, NULL));
    if (posECR_inArray == NULL) {
        printf("Failed to get elements for posECR array.");
        return;
    }

    jdouble *velECR_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECR_in, NULL));
    if (velECR_inArray == NULL) {
        printf("Failed to get elements for velECR array.");
        return;
    }

    jdouble *posEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_out, NULL));
    if (posEFG_outArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_out, NULL));
    if (velEFG_outArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ECRToEFG(polarX_in, polarY_in, posECR_inArray, velECR_inArray, posEFG_outArray, velEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posEFG_out, posEFG_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velEFG_out, velEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ECRToEFGTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray posECR_in, jdoubleArray velECR_in, jdoubleArray posEFG_out, jdoubleArray velEFG_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posECR_in == 0 || velECR_in == 0 || posEFG_out == 0 || velEFG_out == 0) {
        printf("Got NULL parameter passed to ECRToEFGTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posECR_len = (*env)->GetArrayLength(env, posECR_in);
    if (posECR_len < 3) {
        printf("posECR parameter passed in ECRToEFGTime is too small.");
        return;
    }

    int velECR_len = (*env)->GetArrayLength(env, velECR_in);
    if (velECR_len < 3) {
        printf("velECR parameter passed in ECRToEFGTime is too small.");
        return;
    }

    int posEFG_len = (*env)->GetArrayLength(env, posEFG_out);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in ECRToEFGTime is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_out);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in ECRToEFGTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posECR_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECR_in, NULL));
    if (posECR_inArray == NULL) {
        printf("Failed to get elements for posECR array.");
        return;
    }

    jdouble *velECR_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECR_in, NULL));
    if (velECR_inArray == NULL) {
        printf("Failed to get elements for velECR array.");
        return;
    }

    jdouble *posEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_out, NULL));
    if (posEFG_outArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_out, NULL));
    if (velEFG_outArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ECRToEFGTime(ds50UTC_in, posECR_inArray, velECR_inArray, posEFG_outArray, velEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posEFG_out, posEFG_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velEFG_out, velEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EFGToECR(JNIEnv* env, jclass jc, jdouble polarX_in, jdouble polarY_in, jdoubleArray posEFG_in, jdoubleArray velEFG_in, jdoubleArray posECR_out, jdoubleArray velECR_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEFG_in == 0 || velEFG_in == 0 || posECR_out == 0 || velECR_out == 0) {
        printf("Got NULL parameter passed to EFGToECR");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEFG_len = (*env)->GetArrayLength(env, posEFG_in);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in EFGToECR is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_in);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in EFGToECR is too small.");
        return;
    }

    int posECR_len = (*env)->GetArrayLength(env, posECR_out);
    if (posECR_len < 3) {
        printf("posECR parameter passed in EFGToECR is too small.");
        return;
    }

    int velECR_len = (*env)->GetArrayLength(env, velECR_out);
    if (velECR_len < 3) {
        printf("velECR parameter passed in EFGToECR is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_in, NULL));
    if (posEFG_inArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_in, NULL));
    if (velEFG_inArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    jdouble *posECR_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECR_out, NULL));
    if (posECR_outArray == NULL) {
        printf("Failed to get elements for posECR array.");
        return;
    }

    jdouble *velECR_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECR_out, NULL));
    if (velECR_outArray == NULL) {
        printf("Failed to get elements for velECR array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EFGToECR(polarX_in, polarY_in, posEFG_inArray, velEFG_inArray, posECR_outArray, velECR_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posECR_out, posECR_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velECR_out, velECR_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EFGToECRTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray posEFG_in, jdoubleArray velEFG_in, jdoubleArray posECR_out, jdoubleArray velECR_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEFG_in == 0 || velEFG_in == 0 || posECR_out == 0 || velECR_out == 0) {
        printf("Got NULL parameter passed to EFGToECRTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEFG_len = (*env)->GetArrayLength(env, posEFG_in);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in EFGToECRTime is too small.");
        return;
    }

    int velEFG_len = (*env)->GetArrayLength(env, velEFG_in);
    if (velEFG_len < 3) {
        printf("velEFG parameter passed in EFGToECRTime is too small.");
        return;
    }

    int posECR_len = (*env)->GetArrayLength(env, posECR_out);
    if (posECR_len < 3) {
        printf("posECR parameter passed in EFGToECRTime is too small.");
        return;
    }

    int velECR_len = (*env)->GetArrayLength(env, velECR_out);
    if (velECR_len < 3) {
        printf("velECR parameter passed in EFGToECRTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_in, NULL));
    if (posEFG_inArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *velEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEFG_in, NULL));
    if (velEFG_inArray == NULL) {
        printf("Failed to get elements for velEFG array.");
        return;
    }

    jdouble *posECR_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECR_out, NULL));
    if (posECR_outArray == NULL) {
        printf("Failed to get elements for posECR array.");
        return;
    }

    jdouble *velECR_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECR_out, NULL));
    if (velECR_outArray == NULL) {
        printf("Failed to get elements for velECR array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EFGToECRTime(ds50UTC_in, posEFG_inArray, velEFG_inArray, posECR_outArray, velECR_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posECR_out, posECR_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velECR_out, velECR_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EFGPosToLLH(JNIEnv* env, jclass jc, jdoubleArray posEFG_in, jdoubleArray metricLLH_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEFG_in == 0 || metricLLH_out == 0) {
        printf("Got NULL parameter passed to EFGPosToLLH");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEFG_len = (*env)->GetArrayLength(env, posEFG_in);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in EFGPosToLLH is too small.");
        return;
    }

    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_out);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in EFGPosToLLH is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_in, NULL));
    if (posEFG_inArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    jdouble *metricLLH_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_out, NULL));
    if (metricLLH_outArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EFGPosToLLH(posEFG_inArray, metricLLH_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, metricLLH_out, metricLLH_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LLHToEFGPos(JNIEnv* env, jclass jc, jdoubleArray metricLLH_in, jdoubleArray posEFG_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (metricLLH_in == 0 || posEFG_out == 0) {
        printf("Got NULL parameter passed to LLHToEFGPos");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int metricLLH_len = (*env)->GetArrayLength(env, metricLLH_in);
    if (metricLLH_len < 3) {
        printf("metricLLH parameter passed in LLHToEFGPos is too small.");
        return;
    }

    int posEFG_len = (*env)->GetArrayLength(env, posEFG_out);
    if (posEFG_len < 3) {
        printf("posEFG parameter passed in LLHToEFGPos is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *metricLLH_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, metricLLH_in, NULL));
    if (metricLLH_inArray == NULL) {
        printf("Failed to get elements for metricLLH array.");
        return;
    }

    jdouble *posEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEFG_out, NULL));
    if (posEFG_outArray == NULL) {
        printf("Failed to get elements for posEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LLHToEFGPos(metricLLH_inArray, posEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posEFG_out, posEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RotJ2KToDate(JNIEnv* env, jclass jc, jint spectr_in, jint nutationTerms_in, jdouble ds50TAI_in, jdoubleArray posJ2K_in, jdoubleArray velJ2K_in, jdoubleArray posDate_out, jdoubleArray velDate_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posJ2K_in == 0 || velJ2K_in == 0 || posDate_out == 0 || velDate_out == 0) {
        printf("Got NULL parameter passed to RotJ2KToDate");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posJ2K_len = (*env)->GetArrayLength(env, posJ2K_in);
    if (posJ2K_len < 3) {
        printf("posJ2K parameter passed in RotJ2KToDate is too small.");
        return;
    }

    int velJ2K_len = (*env)->GetArrayLength(env, velJ2K_in);
    if (velJ2K_len < 3) {
        printf("velJ2K parameter passed in RotJ2KToDate is too small.");
        return;
    }

    int posDate_len = (*env)->GetArrayLength(env, posDate_out);
    if (posDate_len < 3) {
        printf("posDate parameter passed in RotJ2KToDate is too small.");
        return;
    }

    int velDate_len = (*env)->GetArrayLength(env, velDate_out);
    if (velDate_len < 3) {
        printf("velDate parameter passed in RotJ2KToDate is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posJ2K_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posJ2K_in, NULL));
    if (posJ2K_inArray == NULL) {
        printf("Failed to get elements for posJ2K array.");
        return;
    }

    jdouble *velJ2K_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velJ2K_in, NULL));
    if (velJ2K_inArray == NULL) {
        printf("Failed to get elements for velJ2K array.");
        return;
    }

    jdouble *posDate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posDate_out, NULL));
    if (posDate_outArray == NULL) {
        printf("Failed to get elements for posDate array.");
        return;
    }

    jdouble *velDate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velDate_out, NULL));
    if (velDate_outArray == NULL) {
        printf("Failed to get elements for velDate array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RotJ2KToDate(spectr_in, nutationTerms_in, ds50TAI_in, posJ2K_inArray, velJ2K_inArray, posDate_outArray, velDate_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posDate_out, posDate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velDate_out, velDate_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RotDateToJ2K(JNIEnv* env, jclass jc, jint spectr_in, jint nutationTerms_in, jdouble ds50TAI_in, jdoubleArray posDate_in, jdoubleArray velDate_in, jdoubleArray posJ2K_out, jdoubleArray velJ2K_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posDate_in == 0 || velDate_in == 0 || posJ2K_out == 0 || velJ2K_out == 0) {
        printf("Got NULL parameter passed to RotDateToJ2K");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posDate_len = (*env)->GetArrayLength(env, posDate_in);
    if (posDate_len < 3) {
        printf("posDate parameter passed in RotDateToJ2K is too small.");
        return;
    }

    int velDate_len = (*env)->GetArrayLength(env, velDate_in);
    if (velDate_len < 3) {
        printf("velDate parameter passed in RotDateToJ2K is too small.");
        return;
    }

    int posJ2K_len = (*env)->GetArrayLength(env, posJ2K_out);
    if (posJ2K_len < 3) {
        printf("posJ2K parameter passed in RotDateToJ2K is too small.");
        return;
    }

    int velJ2K_len = (*env)->GetArrayLength(env, velJ2K_out);
    if (velJ2K_len < 3) {
        printf("velJ2K parameter passed in RotDateToJ2K is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posDate_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posDate_in, NULL));
    if (posDate_inArray == NULL) {
        printf("Failed to get elements for posDate array.");
        return;
    }

    jdouble *velDate_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velDate_in, NULL));
    if (velDate_inArray == NULL) {
        printf("Failed to get elements for velDate array.");
        return;
    }

    jdouble *posJ2K_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posJ2K_out, NULL));
    if (posJ2K_outArray == NULL) {
        printf("Failed to get elements for posJ2K array.");
        return;
    }

    jdouble *velJ2K_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velJ2K_out, NULL));
    if (velJ2K_outArray == NULL) {
        printf("Failed to get elements for velJ2K array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RotDateToJ2K(spectr_in, nutationTerms_in, ds50TAI_in, posDate_inArray, velDate_inArray, posJ2K_outArray, velJ2K_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posJ2K_out, posJ2K_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velJ2K_out, velJ2K_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CompSunMoonPos(JNIEnv* env, jclass jc, jdouble ds50ET_in, jdoubleArray uvecSun_out, jdoubleArray sunVecMag_out, jdoubleArray uvecMoon_out, jdoubleArray moonVecMag_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (uvecSun_out == 0 || sunVecMag_out == 0 || uvecMoon_out == 0 || moonVecMag_out == 0) {
        printf("Got NULL parameter passed to CompSunMoonPos");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int uvecSun_len = (*env)->GetArrayLength(env, uvecSun_out);
    if (uvecSun_len < 3) {
        printf("uvecSun parameter passed in CompSunMoonPos is too small.");
        return;
    }

    int sunVecMag_len = (*env)->GetArrayLength(env, sunVecMag_out);
    if (sunVecMag_len < 1) {
        printf("sunVecMag parameter passed in CompSunMoonPos is too small.");
        return;
    }

    int uvecMoon_len = (*env)->GetArrayLength(env, uvecMoon_out);
    if (uvecMoon_len < 3) {
        printf("uvecMoon parameter passed in CompSunMoonPos is too small.");
        return;
    }

    int moonVecMag_len = (*env)->GetArrayLength(env, moonVecMag_out);
    if (moonVecMag_len < 1) {
        printf("moonVecMag parameter passed in CompSunMoonPos is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *uvecSun_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecSun_out, NULL));
    if (uvecSun_outArray == NULL) {
        printf("Failed to get elements for uvecSun array.");
        return;
    }

    jdouble *sunVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sunVecMag_out, NULL));
    if (sunVecMag_outArray == NULL) {
        printf("Failed to get elements for sunVecMag array.");
        return;
    }

    jdouble *uvecMoon_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecMoon_out, NULL));
    if (uvecMoon_outArray == NULL) {
        printf("Failed to get elements for uvecMoon array.");
        return;
    }

    jdouble *moonVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, moonVecMag_out, NULL));
    if (moonVecMag_outArray == NULL) {
        printf("Failed to get elements for moonVecMag array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CompSunMoonPos(ds50ET_in, uvecSun_outArray, sunVecMag_outArray, uvecMoon_outArray, moonVecMag_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvecSun_out, uvecSun_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, sunVecMag_out, sunVecMag_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, uvecMoon_out, uvecMoon_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, moonVecMag_out, moonVecMag_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CompSunPos(JNIEnv* env, jclass jc, jdouble ds50ET_in, jdoubleArray uvecSun_out, jdoubleArray sunVecMag_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (uvecSun_out == 0 || sunVecMag_out == 0) {
        printf("Got NULL parameter passed to CompSunPos");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int uvecSun_len = (*env)->GetArrayLength(env, uvecSun_out);
    if (uvecSun_len < 3) {
        printf("uvecSun parameter passed in CompSunPos is too small.");
        return;
    }

    int sunVecMag_len = (*env)->GetArrayLength(env, sunVecMag_out);
    if (sunVecMag_len < 1) {
        printf("sunVecMag parameter passed in CompSunPos is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *uvecSun_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecSun_out, NULL));
    if (uvecSun_outArray == NULL) {
        printf("Failed to get elements for uvecSun array.");
        return;
    }

    jdouble *sunVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sunVecMag_out, NULL));
    if (sunVecMag_outArray == NULL) {
        printf("Failed to get elements for sunVecMag array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CompSunPos(ds50ET_in, uvecSun_outArray, sunVecMag_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvecSun_out, uvecSun_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, sunVecMag_out, sunVecMag_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CompMoonPos(JNIEnv* env, jclass jc, jdouble ds50ET_in, jdoubleArray uvecMoon_out, jdoubleArray moonVecMag_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (uvecMoon_out == 0 || moonVecMag_out == 0) {
        printf("Got NULL parameter passed to CompMoonPos");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int uvecMoon_len = (*env)->GetArrayLength(env, uvecMoon_out);
    if (uvecMoon_len < 3) {
        printf("uvecMoon parameter passed in CompMoonPos is too small.");
        return;
    }

    int moonVecMag_len = (*env)->GetArrayLength(env, moonVecMag_out);
    if (moonVecMag_len < 1) {
        printf("moonVecMag parameter passed in CompMoonPos is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *uvecMoon_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecMoon_out, NULL));
    if (uvecMoon_outArray == NULL) {
        printf("Failed to get elements for uvecMoon array.");
        return;
    }

    jdouble *moonVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, moonVecMag_out, NULL));
    if (moonVecMag_outArray == NULL) {
        printf("Failed to get elements for moonVecMag array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CompMoonPos(ds50ET_in, uvecMoon_outArray, moonVecMag_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvecMoon_out, uvecMoon_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, moonVecMag_out, moonVecMag_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AstroConvFrTo(JNIEnv* env, jclass jc, jint xf_Conv_in, jdoubleArray frArr_in, jdoubleArray toArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (frArr_in == 0 || toArr_out == 0) {
        printf("Got NULL parameter passed to AstroConvFrTo");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int frArr_len = (*env)->GetArrayLength(env, frArr_in);
    if (frArr_len < 128) {
        printf("frArr parameter passed in AstroConvFrTo is too small.");
        return;
    }

    int toArr_len = (*env)->GetArrayLength(env, toArr_out);
    if (toArr_len < 128) {
        printf("toArr parameter passed in AstroConvFrTo is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *frArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, frArr_in, NULL));
    if (frArr_inArray == NULL) {
        printf("Failed to get elements for frArr array.");
        return;
    }

    jdouble *toArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, toArr_out, NULL));
    if (toArr_outArray == NULL) {
        printf("Failed to get elements for toArr array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AstroConvFrTo(xf_Conv_in, frArr_inArray, toArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, toArr_out, toArr_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RADecToLAD(JNIEnv* env, jclass jc, jdouble ra_in, jdouble dec_in, jdoubleArray l_out, jdoubleArray a_tilde_out, jdoubleArray d_tilde_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (l_out == 0 || a_tilde_out == 0 || d_tilde_out == 0) {
        printf("Got NULL parameter passed to RADecToLAD");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int l_len = (*env)->GetArrayLength(env, l_out);
    if (l_len < 3) {
        printf("l parameter passed in RADecToLAD is too small.");
        return;
    }

    int a_tilde_len = (*env)->GetArrayLength(env, a_tilde_out);
    if (a_tilde_len < 3) {
        printf("a_tilde parameter passed in RADecToLAD is too small.");
        return;
    }

    int d_tilde_len = (*env)->GetArrayLength(env, d_tilde_out);
    if (d_tilde_len < 3) {
        printf("d_tilde parameter passed in RADecToLAD is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *l_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, l_out, NULL));
    if (l_outArray == NULL) {
        printf("Failed to get elements for l array.");
        return;
    }

    jdouble *a_tilde_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, a_tilde_out, NULL));
    if (a_tilde_outArray == NULL) {
        printf("Failed to get elements for a_tilde array.");
        return;
    }

    jdouble *d_tilde_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, d_tilde_out, NULL));
    if (d_tilde_outArray == NULL) {
        printf("Failed to get elements for d_tilde array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RADecToLAD(ra_in, dec_in, l_outArray, a_tilde_outArray, d_tilde_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, l_out, l_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, a_tilde_out, a_tilde_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, d_tilde_out, d_tilde_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AzElToLAD(JNIEnv* env, jclass jc, jdouble az_in, jdouble el_in, jdoubleArray lh_out, jdoubleArray ah_out, jdoubleArray dh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lh_out == 0 || ah_out == 0 || dh_out == 0) {
        printf("Got NULL parameter passed to AzElToLAD");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int lh_len = (*env)->GetArrayLength(env, lh_out);
    if (lh_len < 3) {
        printf("lh parameter passed in AzElToLAD is too small.");
        return;
    }

    int ah_len = (*env)->GetArrayLength(env, ah_out);
    if (ah_len < 3) {
        printf("ah parameter passed in AzElToLAD is too small.");
        return;
    }

    int dh_len = (*env)->GetArrayLength(env, dh_out);
    if (dh_len < 3) {
        printf("dh parameter passed in AzElToLAD is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *lh_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lh_out, NULL));
    if (lh_outArray == NULL) {
        printf("Failed to get elements for lh array.");
        return;
    }

    jdouble *ah_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ah_out, NULL));
    if (ah_outArray == NULL) {
        printf("Failed to get elements for ah array.");
        return;
    }

    jdouble *dh_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, dh_out, NULL));
    if (dh_outArray == NULL) {
        printf("Failed to get elements for dh array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AzElToLAD(az_in, el_in, lh_outArray, ah_outArray, dh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, lh_out, lh_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ah_out, ah_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, dh_out, dh_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_ECIToTopoComps(JNIEnv* env, jclass jc, jdouble theta_in, jdouble lat_in, jdoubleArray senPos_in, jdoubleArray satPos_in, jdoubleArray satVel_in, jdoubleArray xa_topo_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senPos_in == 0 || satPos_in == 0 || satVel_in == 0 || xa_topo_out == 0) {
        printf("Got NULL parameter passed to ECIToTopoComps");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int senPos_len = (*env)->GetArrayLength(env, senPos_in);
    if (senPos_len < 3) {
        printf("senPos parameter passed in ECIToTopoComps is too small.");
        return;
    }

    int satPos_len = (*env)->GetArrayLength(env, satPos_in);
    if (satPos_len < 3) {
        printf("satPos parameter passed in ECIToTopoComps is too small.");
        return;
    }

    int satVel_len = (*env)->GetArrayLength(env, satVel_in);
    if (satVel_len < 3) {
        printf("satVel parameter passed in ECIToTopoComps is too small.");
        return;
    }

    int xa_topo_len = (*env)->GetArrayLength(env, xa_topo_out);
    if (xa_topo_len < 10) {
        printf("xa_topo parameter passed in ECIToTopoComps is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *senPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senPos_in, NULL));
    if (senPos_inArray == NULL) {
        printf("Failed to get elements for senPos array.");
        return;
    }

    jdouble *satPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satPos_in, NULL));
    if (satPos_inArray == NULL) {
        printf("Failed to get elements for satPos array.");
        return;
    }

    jdouble *satVel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satVel_in, NULL));
    if (satVel_inArray == NULL) {
        printf("Failed to get elements for satVel array.");
        return;
    }

    jdouble *xa_topo_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_topo_out, NULL));
    if (xa_topo_outArray == NULL) {
        printf("Failed to get elements for xa_topo array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    ECIToTopoComps(theta_in, lat_in, senPos_inArray, satPos_inArray, satVel_inArray, xa_topo_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_topo_out, xa_topo_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RaDecToAzEl(JNIEnv* env, jclass jc, jdouble thetaG_in, jdouble lat_in, jdouble lon_in, jdouble ra_in, jdouble dec_in, jdoubleArray az_out, jdoubleArray el_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (az_out == 0 || el_out == 0) {
        printf("Got NULL parameter passed to RaDecToAzEl");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int az_len = (*env)->GetArrayLength(env, az_out);
    if (az_len < 1) {
        printf("az parameter passed in RaDecToAzEl is too small.");
        return;
    }

    int el_len = (*env)->GetArrayLength(env, el_out);
    if (el_len < 1) {
        printf("el parameter passed in RaDecToAzEl is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *az_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, az_out, NULL));
    if (az_outArray == NULL) {
        printf("Failed to get elements for az array.");
        return;
    }

    jdouble *el_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, el_out, NULL));
    if (el_outArray == NULL) {
        printf("Failed to get elements for el array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RaDecToAzEl(thetaG_in, lat_in, lon_in, ra_in, dec_in, az_outArray, el_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, az_out, az_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, el_out, el_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RaDecToAzElTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdouble lat_in, jdouble lon_in, jdouble ra_in, jdouble dec_in, jdoubleArray az_out, jdoubleArray el_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (az_out == 0 || el_out == 0) {
        printf("Got NULL parameter passed to RaDecToAzElTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int az_len = (*env)->GetArrayLength(env, az_out);
    if (az_len < 1) {
        printf("az parameter passed in RaDecToAzElTime is too small.");
        return;
    }

    int el_len = (*env)->GetArrayLength(env, el_out);
    if (el_len < 1) {
        printf("el parameter passed in RaDecToAzElTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *az_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, az_out, NULL));
    if (az_outArray == NULL) {
        printf("Failed to get elements for az array.");
        return;
    }

    jdouble *el_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, el_out, NULL));
    if (el_outArray == NULL) {
        printf("Failed to get elements for el array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RaDecToAzElTime(ds50UTC_in, lat_in, lon_in, ra_in, dec_in, az_outArray, el_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, az_out, az_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, el_out, el_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AzElToRaDec(JNIEnv* env, jclass jc, jdouble thetaG_in, jdouble lat_in, jdouble lon_in, jdouble az_in, jdouble el_in, jdoubleArray ra_out, jdoubleArray dec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ra_out == 0 || dec_out == 0) {
        printf("Got NULL parameter passed to AzElToRaDec");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ra_len = (*env)->GetArrayLength(env, ra_out);
    if (ra_len < 1) {
        printf("ra parameter passed in AzElToRaDec is too small.");
        return;
    }

    int dec_len = (*env)->GetArrayLength(env, dec_out);
    if (dec_len < 1) {
        printf("dec parameter passed in AzElToRaDec is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ra_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ra_out, NULL));
    if (ra_outArray == NULL) {
        printf("Failed to get elements for ra array.");
        return;
    }

    jdouble *dec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, dec_out, NULL));
    if (dec_outArray == NULL) {
        printf("Failed to get elements for dec array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AzElToRaDec(thetaG_in, lat_in, lon_in, az_in, el_in, ra_outArray, dec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ra_out, ra_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, dec_out, dec_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AzElToRaDecTime(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdouble lat_in, jdouble lon_in, jdouble az_in, jdouble el_in, jdoubleArray ra_out, jdoubleArray dec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ra_out == 0 || dec_out == 0) {
        printf("Got NULL parameter passed to AzElToRaDecTime");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ra_len = (*env)->GetArrayLength(env, ra_out);
    if (ra_len < 1) {
        printf("ra parameter passed in AzElToRaDecTime is too small.");
        return;
    }

    int dec_len = (*env)->GetArrayLength(env, dec_out);
    if (dec_len < 1) {
        printf("dec parameter passed in AzElToRaDecTime is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ra_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ra_out, NULL));
    if (ra_outArray == NULL) {
        printf("Failed to get elements for ra array.");
        return;
    }

    jdouble *dec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, dec_out, NULL));
    if (dec_outArray == NULL) {
        printf("Failed to get elements for dec array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AzElToRaDecTime(ds50UTC_in, lat_in, lon_in, az_in, el_in, ra_outArray, dec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ra_out, ra_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, dec_out, dec_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RAEToECI(JNIEnv* env, jclass jc, jdouble theta_in, jdouble astroLat_in, jdoubleArray xa_rae_in, jdoubleArray senPos_in, jdoubleArray satPos_out, jdoubleArray satVel_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_rae_in == 0 || senPos_in == 0 || satPos_out == 0 || satVel_out == 0) {
        printf("Got NULL parameter passed to RAEToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_rae_len = (*env)->GetArrayLength(env, xa_rae_in);
    if (xa_rae_len < 6) {
        printf("xa_rae parameter passed in RAEToECI is too small.");
        return;
    }

    int senPos_len = (*env)->GetArrayLength(env, senPos_in);
    if (senPos_len < 3) {
        printf("senPos parameter passed in RAEToECI is too small.");
        return;
    }

    int satPos_len = (*env)->GetArrayLength(env, satPos_out);
    if (satPos_len < 3) {
        printf("satPos parameter passed in RAEToECI is too small.");
        return;
    }

    int satVel_len = (*env)->GetArrayLength(env, satVel_out);
    if (satVel_len < 3) {
        printf("satVel parameter passed in RAEToECI is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_rae_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_rae_in, NULL));
    if (xa_rae_inArray == NULL) {
        printf("Failed to get elements for xa_rae array.");
        return;
    }

    jdouble *senPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senPos_in, NULL));
    if (senPos_inArray == NULL) {
        printf("Failed to get elements for senPos array.");
        return;
    }

    jdouble *satPos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satPos_out, NULL));
    if (satPos_outArray == NULL) {
        printf("Failed to get elements for satPos array.");
        return;
    }

    jdouble *satVel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satVel_out, NULL));
    if (satVel_outArray == NULL) {
        printf("Failed to get elements for satVel array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RAEToECI(theta_in, astroLat_in, xa_rae_inArray, senPos_inArray, satPos_outArray, satVel_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, satPos_out, satPos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, satVel_out, satVel_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_GetInitialDrag(JNIEnv* env, jclass jc, jdouble semiMajorAxis_in, jdouble eccen_in, jdoubleArray nDot_out, jdoubleArray bstar_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (nDot_out == 0 || bstar_out == 0) {
        printf("Got NULL parameter passed to GetInitialDrag");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int nDot_len = (*env)->GetArrayLength(env, nDot_out);
    if (nDot_len < 1) {
        printf("nDot parameter passed in GetInitialDrag is too small.");
        return;
    }

    int bstar_len = (*env)->GetArrayLength(env, bstar_out);
    if (bstar_len < 1) {
        printf("bstar parameter passed in GetInitialDrag is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *nDot_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, nDot_out, NULL));
    if (nDot_outArray == NULL) {
        printf("Failed to get elements for nDot array.");
        return;
    }

    jdouble *bstar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bstar_out, NULL));
    if (bstar_outArray == NULL) {
        printf("Failed to get elements for bstar array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetInitialDrag(semiMajorAxis_in, eccen_in, nDot_outArray, bstar_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, nDot_out, nDot_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bstar_out, bstar_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxPTWToUVW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray ptwCovMtx_in, jobjectArray uvwCovMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || ptwCovMtx_in == 0 || uvwCovMtx_out == 0) {
        printf("Got NULL parameter passed to CovMtxPTWToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    int ptwCovMtx_nRows = (*env)->GetArrayLength(env, ptwCovMtx_in);
    if (ptwCovMtx_nRows < 6) {
        printf("ptwCovMtx parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    jdoubleArray ptwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_in, 0);
    int ptwCovMtx_nCols = (*env)->GetArrayLength(env, ptwCovMtx_rowArray);
    if (ptwCovMtx_nCols < 6) {
        return;
    }

    int uvwCovMtx_nRows = (*env)->GetArrayLength(env, uvwCovMtx_out);
    if (uvwCovMtx_nRows < 6) {
        printf("uvwCovMtx parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    jdoubleArray uvwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_out, 0);
    int uvwCovMtx_nCols = (*env)->GetArrayLength(env, uvwCovMtx_rowArray);
    if (uvwCovMtx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *ptwCovMtx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ptwCovMtx_in, NULL));
    if (ptwCovMtx_inArray == NULL) {
        printf("Failed to get elements for ptwCovMtx array.");
        return;
    }

    jdouble *uvwCovMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvwCovMtx_out, NULL));
    if (uvwCovMtx_outArray == NULL) {
        printf("Failed to get elements for uvwCovMtx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double ptwCovMtx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            ptwCovMtx_array[row][col] = elements[col];
        }
    }

    double uvwCovMtx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxPTWToUVW(pos_inArray, vel_inArray, ptwCovMtx_array, uvwCovMtx_array);

    for (row = 0; row < uvwCovMtx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < uvwCovMtx_nCols; col++) {
            elements[col] = uvwCovMtx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxPTWToUVW2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray ptwCovMtx_in, jdoubleArray uvwCovMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || ptwCovMtx_in == 0 || uvwCovMtx_out == 0) {
        printf("Got NULL parameter passed to CovMtxPTWToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    int ptwCovMtx_nRows = (*env)->GetArrayLength(env, ptwCovMtx_in);
    if (ptwCovMtx_nRows < 6) {
        printf("ptwCovMtx parameter passed in CovMtxPTWToUVW is too small.");
        return;
    }

    jdoubleArray ptwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_in, 0);
    int ptwCovMtx_nCols = (*env)->GetArrayLength(env, ptwCovMtx_rowArray);
    if (ptwCovMtx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *ptwCovMtx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ptwCovMtx_in, NULL));
    if (ptwCovMtx_inArray == NULL) {
        printf("Failed to get elements for ptwCovMtx array.");
        return;
    }

    jdouble *uvwCovMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvwCovMtx_out, NULL));
    if (uvwCovMtx_outArray == NULL) {
        printf("Failed to get elements for uvwCovMtx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double ptwCovMtx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            ptwCovMtx_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxPTWToUVW(pos_inArray, vel_inArray, ptwCovMtx_array, uvwCovMtx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvwCovMtx_out, uvwCovMtx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToPTW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray uvwCovMtx_in, jobjectArray ptwCovMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || uvwCovMtx_in == 0 || ptwCovMtx_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToPTW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    int uvwCovMtx_nRows = (*env)->GetArrayLength(env, uvwCovMtx_in);
    if (uvwCovMtx_nRows < 6) {
        printf("uvwCovMtx parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    jdoubleArray uvwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_in, 0);
    int uvwCovMtx_nCols = (*env)->GetArrayLength(env, uvwCovMtx_rowArray);
    if (uvwCovMtx_nCols < 6) {
        return;
    }

    int ptwCovMtx_nRows = (*env)->GetArrayLength(env, ptwCovMtx_out);
    if (ptwCovMtx_nRows < 6) {
        printf("ptwCovMtx parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    jdoubleArray ptwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_out, 0);
    int ptwCovMtx_nCols = (*env)->GetArrayLength(env, ptwCovMtx_rowArray);
    if (ptwCovMtx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *uvwCovMtx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvwCovMtx_in, NULL));
    if (uvwCovMtx_inArray == NULL) {
        printf("Failed to get elements for uvwCovMtx array.");
        return;
    }

    jdouble *ptwCovMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ptwCovMtx_out, NULL));
    if (ptwCovMtx_outArray == NULL) {
        printf("Failed to get elements for ptwCovMtx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double uvwCovMtx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            uvwCovMtx_array[row][col] = elements[col];
        }
    }

    double ptwCovMtx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToPTW(pos_inArray, vel_inArray, uvwCovMtx_array, ptwCovMtx_array);

    for (row = 0; row < ptwCovMtx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ptwCovMtx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < ptwCovMtx_nCols; col++) {
            elements[col] = ptwCovMtx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToPTW2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray uvwCovMtx_in, jdoubleArray ptwCovMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || uvwCovMtx_in == 0 || ptwCovMtx_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToPTW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    int uvwCovMtx_nRows = (*env)->GetArrayLength(env, uvwCovMtx_in);
    if (uvwCovMtx_nRows < 6) {
        printf("uvwCovMtx parameter passed in CovMtxUVWToPTW is too small.");
        return;
    }

    jdoubleArray uvwCovMtx_rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_in, 0);
    int uvwCovMtx_nCols = (*env)->GetArrayLength(env, uvwCovMtx_rowArray);
    if (uvwCovMtx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *uvwCovMtx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvwCovMtx_in, NULL));
    if (uvwCovMtx_inArray == NULL) {
        printf("Failed to get elements for uvwCovMtx array.");
        return;
    }

    jdouble *ptwCovMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ptwCovMtx_out, NULL));
    if (ptwCovMtx_outArray == NULL) {
        printf("Failed to get elements for ptwCovMtx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double uvwCovMtx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, uvwCovMtx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            uvwCovMtx_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToPTW(pos_inArray, vel_inArray, uvwCovMtx_array, ptwCovMtx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ptwCovMtx_out, ptwCovMtx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_EarthObstructionAngles(JNIEnv* env, jclass jc, jdouble earthLimb_in, jdoubleArray satECI_in, jdoubleArray senECI_in, jdoubleArray earthSenLimb_out, jdoubleArray earthSenSat_out, jdoubleArray satEarthSen_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satECI_in == 0 || senECI_in == 0 || earthSenLimb_out == 0 || earthSenSat_out == 0 || satEarthSen_out == 0) {
        printf("Got NULL parameter passed to EarthObstructionAngles");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satECI_len = (*env)->GetArrayLength(env, satECI_in);
    if (satECI_len < 3) {
        printf("satECI parameter passed in EarthObstructionAngles is too small.");
        return;
    }

    int senECI_len = (*env)->GetArrayLength(env, senECI_in);
    if (senECI_len < 3) {
        printf("senECI parameter passed in EarthObstructionAngles is too small.");
        return;
    }

    int earthSenLimb_len = (*env)->GetArrayLength(env, earthSenLimb_out);
    if (earthSenLimb_len < 1) {
        printf("earthSenLimb parameter passed in EarthObstructionAngles is too small.");
        return;
    }

    int earthSenSat_len = (*env)->GetArrayLength(env, earthSenSat_out);
    if (earthSenSat_len < 1) {
        printf("earthSenSat parameter passed in EarthObstructionAngles is too small.");
        return;
    }

    int satEarthSen_len = (*env)->GetArrayLength(env, satEarthSen_out);
    if (satEarthSen_len < 1) {
        printf("satEarthSen parameter passed in EarthObstructionAngles is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *satECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satECI_in, NULL));
    if (satECI_inArray == NULL) {
        printf("Failed to get elements for satECI array.");
        return;
    }

    jdouble *senECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senECI_in, NULL));
    if (senECI_inArray == NULL) {
        printf("Failed to get elements for senECI array.");
        return;
    }

    jdouble *earthSenLimb_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, earthSenLimb_out, NULL));
    if (earthSenLimb_outArray == NULL) {
        printf("Failed to get elements for earthSenLimb array.");
        return;
    }

    jdouble *earthSenSat_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, earthSenSat_out, NULL));
    if (earthSenSat_outArray == NULL) {
        printf("Failed to get elements for earthSenSat array.");
        return;
    }

    jdouble *satEarthSen_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, satEarthSen_out, NULL));
    if (satEarthSen_outArray == NULL) {
        printf("Failed to get elements for satEarthSen array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    EarthObstructionAngles(earthLimb_in, satECI_inArray, senECI_inArray, earthSenLimb_outArray, earthSenSat_outArray, satEarthSen_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, earthSenLimb_out, earthSenLimb_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, earthSenSat_out, earthSenSat_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, satEarthSen_out, satEarthSen_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_IsPointSunlit(JNIEnv* env, jclass jc, jdouble ds50ET_in, jdoubleArray ptEci_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ptEci_in == 0) {
        printf("Got NULL parameter passed to IsPointSunlit");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ptEci_len = (*env)->GetArrayLength(env, ptEci_in);
    if (ptEci_len < 3) {
        printf("ptEci parameter passed in IsPointSunlit is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ptEci_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ptEci_in, NULL));
    if (ptEci_inArray == NULL) {
        printf("Failed to get elements for ptEci array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = IsPointSunlit(ds50ET_in, ptEci_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RotRADecl(JNIEnv* env, jclass jc, jint nutationTerms_in, jint dir_in, jdouble ds50UTCIn_in, jdouble raIn_in, jdouble declIn_in, jdouble ds50UTCOut_in, jdoubleArray raOut_out, jdoubleArray declOut_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (raOut_out == 0 || declOut_out == 0) {
        printf("Got NULL parameter passed to RotRADecl");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int raOut_len = (*env)->GetArrayLength(env, raOut_out);
    if (raOut_len < 1) {
        printf("raOut parameter passed in RotRADecl is too small.");
        return;
    }

    int declOut_len = (*env)->GetArrayLength(env, declOut_out);
    if (declOut_len < 1) {
        printf("declOut parameter passed in RotRADecl is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *raOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, raOut_out, NULL));
    if (raOut_outArray == NULL) {
        printf("Failed to get elements for raOut array.");
        return;
    }

    jdouble *declOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, declOut_out, NULL));
    if (declOut_outArray == NULL) {
        printf("Failed to get elements for declOut array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RotRADecl(nutationTerms_in, dir_in, ds50UTCIn_in, raIn_in, declIn_in, ds50UTCOut_in, raOut_outArray, declOut_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, raOut_out, raOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, declOut_out, declOut_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RotRADec_DateToEqnx(JNIEnv* env, jclass jc, jint nutationTerms_in, jint yrOfEqnx_in, jdouble ds50UTCIn_in, jdouble raIn_in, jdouble declIn_in, jdoubleArray raOut_out, jdoubleArray declOut_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (raOut_out == 0 || declOut_out == 0) {
        printf("Got NULL parameter passed to RotRADec_DateToEqnx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int raOut_len = (*env)->GetArrayLength(env, raOut_out);
    if (raOut_len < 1) {
        printf("raOut parameter passed in RotRADec_DateToEqnx is too small.");
        return (jint)(-1);
    }

    int declOut_len = (*env)->GetArrayLength(env, declOut_out);
    if (declOut_len < 1) {
        printf("declOut parameter passed in RotRADec_DateToEqnx is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *raOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, raOut_out, NULL));
    if (raOut_outArray == NULL) {
        printf("Failed to get elements for raOut array.");
        return (jint)(-1);
    }

    jdouble *declOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, declOut_out, NULL));
    if (declOut_outArray == NULL) {
        printf("Failed to get elements for declOut array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = RotRADec_DateToEqnx(nutationTerms_in, yrOfEqnx_in, ds50UTCIn_in, raIn_in, declIn_in, raOut_outArray, declOut_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, raOut_out, raOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, declOut_out, declOut_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RotRADec_EqnxToDate(JNIEnv* env, jclass jc, jint nutationTerms_in, jint yrOfEqnx_in, jdouble ds50UTCIn_in, jdouble raIn_in, jdouble declIn_in, jdoubleArray raOut_out, jdoubleArray declOut_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (raOut_out == 0 || declOut_out == 0) {
        printf("Got NULL parameter passed to RotRADec_EqnxToDate");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int raOut_len = (*env)->GetArrayLength(env, raOut_out);
    if (raOut_len < 1) {
        printf("raOut parameter passed in RotRADec_EqnxToDate is too small.");
        return (jint)(-1);
    }

    int declOut_len = (*env)->GetArrayLength(env, declOut_out);
    if (declOut_len < 1) {
        printf("declOut parameter passed in RotRADec_EqnxToDate is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *raOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, raOut_out, NULL));
    if (raOut_outArray == NULL) {
        printf("Failed to get elements for raOut array.");
        return (jint)(-1);
    }

    jdouble *declOut_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, declOut_out, NULL));
    if (declOut_outArray == NULL) {
        printf("Failed to get elements for declOut array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = RotRADec_EqnxToDate(nutationTerms_in, yrOfEqnx_in, ds50UTCIn_in, raIn_in, declIn_in, raOut_outArray, declOut_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, raOut_out, raOut_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, declOut_out, declOut_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToUVW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxEqnx_in, jobjectArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxEqnx_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    int covMtxEqnx_nRows = (*env)->GetArrayLength(env, covMtxEqnx_in);
    if (covMtxEqnx_nRows < 6) {
        printf("covMtxEqnx parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    jdoubleArray covMtxEqnx_rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_in, 0);
    int covMtxEqnx_nCols = (*env)->GetArrayLength(env, covMtxEqnx_rowArray);
    if (covMtxEqnx_nCols < 6) {
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_out);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_in, NULL));
    if (covMtxEqnx_inArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxEqnx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxEqnx_array[row][col] = elements[col];
        }
    }

    double covMtxUVW_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToUVW(pos_inArray, vel_inArray, covMtxEqnx_array, covMtxUVW_array);

    for (row = 0; row < covMtxUVW_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxUVW_nCols; col++) {
            elements[col] = covMtxUVW_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToUVW2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxEqnx_in, jdoubleArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxEqnx_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    int covMtxEqnx_nRows = (*env)->GetArrayLength(env, covMtxEqnx_in);
    if (covMtxEqnx_nRows < 6) {
        printf("covMtxEqnx parameter passed in CovMtxEqnxToUVW is too small.");
        return;
    }

    jdoubleArray covMtxEqnx_rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_in, 0);
    int covMtxEqnx_nCols = (*env)->GetArrayLength(env, covMtxEqnx_rowArray);
    if (covMtxEqnx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_in, NULL));
    if (covMtxEqnx_inArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxEqnx_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxEqnx_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToUVW(pos_inArray, vel_inArray, covMtxEqnx_array, covMtxUVW_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxUVW_out, covMtxUVW_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToEqnx(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxUVW_in, jobjectArray covMtxEqnx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxUVW_in == 0 || covMtxEqnx_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_in);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    int covMtxEqnx_nRows = (*env)->GetArrayLength(env, covMtxEqnx_out);
    if (covMtxEqnx_nRows < 6) {
        printf("covMtxEqnx parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxEqnx_rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_out, 0);
    int covMtxEqnx_nCols = (*env)->GetArrayLength(env, covMtxEqnx_rowArray);
    if (covMtxEqnx_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxUVW_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_in, NULL));
    if (covMtxUVW_inArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    jdouble *covMtxEqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_out, NULL));
    if (covMtxEqnx_outArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxUVW_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxUVW_array[row][col] = elements[col];
        }
    }

    double covMtxEqnx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToEqnx(pos_inArray, vel_inArray, covMtxUVW_array, covMtxEqnx_array);

    for (row = 0; row < covMtxEqnx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxEqnx_nCols; col++) {
            elements[col] = covMtxEqnx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToEqnx2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxUVW_in, jdoubleArray covMtxEqnx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxUVW_in == 0 || covMtxEqnx_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_in);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxUVWToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxUVW_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_in, NULL));
    if (covMtxUVW_inArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    jdouble *covMtxEqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_out, NULL));
    if (covMtxEqnx_outArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxUVW_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxUVW_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToEqnx(pos_inArray, vel_inArray, covMtxUVW_array, covMtxEqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxEqnx_out, covMtxEqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToUVW(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxECI_in, jobjectArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxECI_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_in);
    if (covMtxECI_nRows < 6) {
        printf("covMtxECI parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 6) {
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_out);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_in, NULL));
    if (covMtxECI_inArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxECI_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxECI_array[row][col] = elements[col];
        }
    }

    double covMtxUVW_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToUVW(pos_inArray, vel_inArray, covMtxECI_array, covMtxUVW_array);

    for (row = 0; row < covMtxUVW_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxUVW_nCols; col++) {
            elements[col] = covMtxUVW_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToUVW2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxECI_in, jdoubleArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxECI_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToUVW");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_in);
    if (covMtxECI_nRows < 6) {
        printf("covMtxECI parameter passed in CovMtxECIToUVW is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_in, NULL));
    if (covMtxECI_inArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxECI_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxECI_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToUVW(pos_inArray, vel_inArray, covMtxECI_array, covMtxUVW_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxUVW_out, covMtxUVW_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToECI(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxUVW_in, jobjectArray covMtxECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxUVW_in == 0 || covMtxECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_in);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_out);
    if (covMtxECI_nRows < 6) {
        printf("covMtxECI parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_out, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxUVW_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_in, NULL));
    if (covMtxUVW_inArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    jdouble *covMtxECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_out, NULL));
    if (covMtxECI_outArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxUVW_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxUVW_array[row][col] = elements[col];
        }
    }

    double covMtxECI_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToECI(pos_inArray, vel_inArray, covMtxUVW_array, covMtxECI_array);

    for (row = 0; row < covMtxECI_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxECI_nCols; col++) {
            elements[col] = covMtxECI_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUVWToECI2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxUVW_in, jdoubleArray covMtxECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxUVW_in == 0 || covMtxECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxUVWToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_in);
    if (covMtxUVW_nRows < 6) {
        printf("covMtxUVW parameter passed in CovMtxUVWToECI is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxUVW_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_in, NULL));
    if (covMtxUVW_inArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    jdouble *covMtxECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_out, NULL));
    if (covMtxECI_outArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxUVW_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covMtxUVW_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUVWToECI(pos_inArray, vel_inArray, covMtxUVW_array, covMtxECI_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxECI_out, covMtxECI_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToEFG(JNIEnv* env, jclass jc, jdouble thetaG_in, jobjectArray covECI_in, jobjectArray covEFG_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covECI_in == 0 || covEFG_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToEFG");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int covECI_nRows = (*env)->GetArrayLength(env, covECI_in);
    if (covECI_nRows < 6) {
        printf("covECI parameter passed in CovMtxECIToEFG is too small.");
        return;
    }

    jdoubleArray covECI_rowArray = (*env)->GetObjectArrayElement(env, covECI_in, 0);
    int covECI_nCols = (*env)->GetArrayLength(env, covECI_rowArray);
    if (covECI_nCols < 6) {
        return;
    }

    int covEFG_nRows = (*env)->GetArrayLength(env, covEFG_out);
    if (covEFG_nRows < 6) {
        printf("covEFG parameter passed in CovMtxECIToEFG is too small.");
        return;
    }

    jdoubleArray covEFG_rowArray = (*env)->GetObjectArrayElement(env, covEFG_out, 0);
    int covEFG_nCols = (*env)->GetArrayLength(env, covEFG_rowArray);
    if (covEFG_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covECI_in, NULL));
    if (covECI_inArray == NULL) {
        printf("Failed to get elements for covECI array.");
        return;
    }

    jdouble *covEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEFG_out, NULL));
    if (covEFG_outArray == NULL) {
        printf("Failed to get elements for covEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covECI_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covECI_array[row][col] = elements[col];
        }
    }

    double covEFG_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToEFG(thetaG_in, covECI_array, covEFG_array);

    for (row = 0; row < covEFG_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEFG_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covEFG_nCols; col++) {
            elements[col] = covEFG_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToEFG2Das1D(JNIEnv* env, jclass jc, jdouble thetaG_in, jobjectArray covECI_in, jdoubleArray covEFG_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covECI_in == 0 || covEFG_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToEFG");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int covECI_nRows = (*env)->GetArrayLength(env, covECI_in);
    if (covECI_nRows < 6) {
        printf("covECI parameter passed in CovMtxECIToEFG is too small.");
        return;
    }

    jdoubleArray covECI_rowArray = (*env)->GetObjectArrayElement(env, covECI_in, 0);
    int covECI_nCols = (*env)->GetArrayLength(env, covECI_rowArray);
    if (covECI_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covECI_in, NULL));
    if (covECI_inArray == NULL) {
        printf("Failed to get elements for covECI array.");
        return;
    }

    jdouble *covEFG_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEFG_out, NULL));
    if (covEFG_outArray == NULL) {
        printf("Failed to get elements for covEFG array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covECI_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covECI_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToEFG(thetaG_in, covECI_array, covEFG_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covEFG_out, covEFG_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEFGToECI(JNIEnv* env, jclass jc, jdouble thetaG_in, jobjectArray covEFG_in, jobjectArray covECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covEFG_in == 0 || covECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxEFGToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int covEFG_nRows = (*env)->GetArrayLength(env, covEFG_in);
    if (covEFG_nRows < 6) {
        printf("covEFG parameter passed in CovMtxEFGToECI is too small.");
        return;
    }

    jdoubleArray covEFG_rowArray = (*env)->GetObjectArrayElement(env, covEFG_in, 0);
    int covEFG_nCols = (*env)->GetArrayLength(env, covEFG_rowArray);
    if (covEFG_nCols < 6) {
        return;
    }

    int covECI_nRows = (*env)->GetArrayLength(env, covECI_out);
    if (covECI_nRows < 6) {
        printf("covECI parameter passed in CovMtxEFGToECI is too small.");
        return;
    }

    jdoubleArray covECI_rowArray = (*env)->GetObjectArrayElement(env, covECI_out, 0);
    int covECI_nCols = (*env)->GetArrayLength(env, covECI_rowArray);
    if (covECI_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEFG_in, NULL));
    if (covEFG_inArray == NULL) {
        printf("Failed to get elements for covEFG array.");
        return;
    }

    jdouble *covECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covECI_out, NULL));
    if (covECI_outArray == NULL) {
        printf("Failed to get elements for covECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEFG_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEFG_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covEFG_array[row][col] = elements[col];
        }
    }

    double covECI_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEFGToECI(thetaG_in, covEFG_array, covECI_array);

    for (row = 0; row < covECI_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covECI_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covECI_nCols; col++) {
            elements[col] = covECI_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEFGToECI2Das1D(JNIEnv* env, jclass jc, jdouble thetaG_in, jobjectArray covEFG_in, jdoubleArray covECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covEFG_in == 0 || covECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxEFGToECI");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int covEFG_nRows = (*env)->GetArrayLength(env, covEFG_in);
    if (covEFG_nRows < 6) {
        printf("covEFG parameter passed in CovMtxEFGToECI is too small.");
        return;
    }

    jdoubleArray covEFG_rowArray = (*env)->GetObjectArrayElement(env, covEFG_in, 0);
    int covEFG_nCols = (*env)->GetArrayLength(env, covEFG_rowArray);
    if (covEFG_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covEFG_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEFG_in, NULL));
    if (covEFG_inArray == NULL) {
        printf("Failed to get elements for covEFG array.");
        return;
    }

    jdouble *covECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covECI_out, NULL));
    if (covECI_outArray == NULL) {
        printf("Failed to get elements for covECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEFG_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEFG_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            covEFG_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEFGToECI(thetaG_in, covEFG_array, covECI_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covECI_out, covECI_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_Mtx6x6ToLTA21(JNIEnv* env, jclass jc, jobjectArray symMtx6x6_in, jdoubleArray lta21_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (symMtx6x6_in == 0 || lta21_out == 0) {
        printf("Got NULL parameter passed to Mtx6x6ToLTA21");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int symMtx6x6_nRows = (*env)->GetArrayLength(env, symMtx6x6_in);
    if (symMtx6x6_nRows < 6) {
        printf("symMtx6x6 parameter passed in Mtx6x6ToLTA21 is too small.");
        return;
    }

    jdoubleArray symMtx6x6_rowArray = (*env)->GetObjectArrayElement(env, symMtx6x6_in, 0);
    int symMtx6x6_nCols = (*env)->GetArrayLength(env, symMtx6x6_rowArray);
    if (symMtx6x6_nCols < 6) {
        return;
    }

    int lta21_len = (*env)->GetArrayLength(env, lta21_out);
    if (lta21_len < 21) {
        printf("lta21 parameter passed in Mtx6x6ToLTA21 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *symMtx6x6_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx6x6_in, NULL));
    if (symMtx6x6_inArray == NULL) {
        printf("Failed to get elements for symMtx6x6 array.");
        return;
    }

    jdouble *lta21_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta21_out, NULL));
    if (lta21_outArray == NULL) {
        printf("Failed to get elements for lta21 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double symMtx6x6_array[6][6];
    for (row = 0; row < 6; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, symMtx6x6_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 6; col++) {
            symMtx6x6_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Mtx6x6ToLTA21(symMtx6x6_array, lta21_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, lta21_out, lta21_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LTA21ToMtx6x6(JNIEnv* env, jclass jc, jdoubleArray lta21_in, jobjectArray symMtx6x6_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lta21_in == 0 || symMtx6x6_out == 0) {
        printf("Got NULL parameter passed to LTA21ToMtx6x6");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int lta21_len = (*env)->GetArrayLength(env, lta21_in);
    if (lta21_len < 21) {
        printf("lta21 parameter passed in LTA21ToMtx6x6 is too small.");
        return;
    }

    int symMtx6x6_nRows = (*env)->GetArrayLength(env, symMtx6x6_out);
    if (symMtx6x6_nRows < 6) {
        printf("symMtx6x6 parameter passed in LTA21ToMtx6x6 is too small.");
        return;
    }

    jdoubleArray symMtx6x6_rowArray = (*env)->GetObjectArrayElement(env, symMtx6x6_out, 0);
    int symMtx6x6_nCols = (*env)->GetArrayLength(env, symMtx6x6_rowArray);
    if (symMtx6x6_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *lta21_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta21_in, NULL));
    if (lta21_inArray == NULL) {
        printf("Failed to get elements for lta21 array.");
        return;
    }

    jdouble *symMtx6x6_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx6x6_out, NULL));
    if (symMtx6x6_outArray == NULL) {
        printf("Failed to get elements for symMtx6x6 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double symMtx6x6_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LTA21ToMtx6x6(lta21_inArray, symMtx6x6_array);

    for (row = 0; row < symMtx6x6_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, symMtx6x6_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < symMtx6x6_nCols; col++) {
            elements[col] = symMtx6x6_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LTA21ToMtx6x62Das1D(JNIEnv* env, jclass jc, jdoubleArray lta21_in, jdoubleArray symMtx6x6_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lta21_in == 0 || symMtx6x6_out == 0) {
        printf("Got NULL parameter passed to LTA21ToMtx6x6");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int lta21_len = (*env)->GetArrayLength(env, lta21_in);
    if (lta21_len < 21) {
        printf("lta21 parameter passed in LTA21ToMtx6x6 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *lta21_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta21_in, NULL));
    if (lta21_inArray == NULL) {
        printf("Failed to get elements for lta21 array.");
        return;
    }

    jdouble *symMtx6x6_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx6x6_out, NULL));
    if (symMtx6x6_outArray == NULL) {
        printf("Failed to get elements for symMtx6x6 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LTA21ToMtx6x6(lta21_inArray, symMtx6x6_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, symMtx6x6_out, symMtx6x6_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_Mtx9x9ToLTA45(JNIEnv* env, jclass jc, jobjectArray symMtx9x9_in, jdoubleArray lta45_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (symMtx9x9_in == 0 || lta45_out == 0) {
        printf("Got NULL parameter passed to Mtx9x9ToLTA45");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int symMtx9x9_nRows = (*env)->GetArrayLength(env, symMtx9x9_in);
    if (symMtx9x9_nRows < 9) {
        printf("symMtx9x9 parameter passed in Mtx9x9ToLTA45 is too small.");
        return;
    }

    jdoubleArray symMtx9x9_rowArray = (*env)->GetObjectArrayElement(env, symMtx9x9_in, 0);
    int symMtx9x9_nCols = (*env)->GetArrayLength(env, symMtx9x9_rowArray);
    if (symMtx9x9_nCols < 9) {
        return;
    }

    int lta45_len = (*env)->GetArrayLength(env, lta45_out);
    if (lta45_len < 45) {
        printf("lta45 parameter passed in Mtx9x9ToLTA45 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *symMtx9x9_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx9x9_in, NULL));
    if (symMtx9x9_inArray == NULL) {
        printf("Failed to get elements for symMtx9x9 array.");
        return;
    }

    jdouble *lta45_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta45_out, NULL));
    if (lta45_outArray == NULL) {
        printf("Failed to get elements for lta45 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double symMtx9x9_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, symMtx9x9_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            symMtx9x9_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Mtx9x9ToLTA45(symMtx9x9_array, lta45_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, lta45_out, lta45_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LTA45ToMtx9x9(JNIEnv* env, jclass jc, jdoubleArray lta45_in, jobjectArray symMtx9x9_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lta45_in == 0 || symMtx9x9_out == 0) {
        printf("Got NULL parameter passed to LTA45ToMtx9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int lta45_len = (*env)->GetArrayLength(env, lta45_in);
    if (lta45_len < 45) {
        printf("lta45 parameter passed in LTA45ToMtx9x9 is too small.");
        return;
    }

    int symMtx9x9_nRows = (*env)->GetArrayLength(env, symMtx9x9_out);
    if (symMtx9x9_nRows < 9) {
        printf("symMtx9x9 parameter passed in LTA45ToMtx9x9 is too small.");
        return;
    }

    jdoubleArray symMtx9x9_rowArray = (*env)->GetObjectArrayElement(env, symMtx9x9_out, 0);
    int symMtx9x9_nCols = (*env)->GetArrayLength(env, symMtx9x9_rowArray);
    if (symMtx9x9_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *lta45_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta45_in, NULL));
    if (lta45_inArray == NULL) {
        printf("Failed to get elements for lta45 array.");
        return;
    }

    jdouble *symMtx9x9_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx9x9_out, NULL));
    if (symMtx9x9_outArray == NULL) {
        printf("Failed to get elements for symMtx9x9 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double symMtx9x9_array[9][9];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LTA45ToMtx9x9(lta45_inArray, symMtx9x9_array);

    for (row = 0; row < symMtx9x9_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, symMtx9x9_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < symMtx9x9_nCols; col++) {
            elements[col] = symMtx9x9_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_LTA45ToMtx9x92Das1D(JNIEnv* env, jclass jc, jdoubleArray lta45_in, jdoubleArray symMtx9x9_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (lta45_in == 0 || symMtx9x9_out == 0) {
        printf("Got NULL parameter passed to LTA45ToMtx9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int lta45_len = (*env)->GetArrayLength(env, lta45_in);
    if (lta45_len < 45) {
        printf("lta45 parameter passed in LTA45ToMtx9x9 is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *lta45_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lta45_in, NULL));
    if (lta45_inArray == NULL) {
        printf("Failed to get elements for lta45 array.");
        return;
    }

    jdouble *symMtx9x9_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, symMtx9x9_out, NULL));
    if (symMtx9x9_outArray == NULL) {
        printf("Failed to get elements for symMtx9x9 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    LTA45ToMtx9x9(lta45_inArray, symMtx9x9_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, symMtx9x9_out, symMtx9x9_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PropCovFrState(JNIEnv* env, jclass jc, jdouble rms_in, jdouble consider_in, jdoubleArray stateArray_in, jobjectArray cov_in, jobjectArray propCov_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (stateArray_in == 0 || cov_in == 0 || propCov_out == 0) {
        printf("Got NULL parameter passed to PropCovFrState");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int stateArray_len = (*env)->GetArrayLength(env, stateArray_in);
    if (stateArray_len < 54) {
        printf("stateArray parameter passed in PropCovFrState is too small.");
        return;
    }

    int cov_nRows = (*env)->GetArrayLength(env, cov_in);
    if (cov_nRows < 9) {
        printf("cov parameter passed in PropCovFrState is too small.");
        return;
    }

    jdoubleArray cov_rowArray = (*env)->GetObjectArrayElement(env, cov_in, 0);
    int cov_nCols = (*env)->GetArrayLength(env, cov_rowArray);
    if (cov_nCols < 9) {
        return;
    }

    int propCov_nRows = (*env)->GetArrayLength(env, propCov_out);
    if (propCov_nRows < 6) {
        printf("propCov parameter passed in PropCovFrState is too small.");
        return;
    }

    jdoubleArray propCov_rowArray = (*env)->GetObjectArrayElement(env, propCov_out, 0);
    int propCov_nCols = (*env)->GetArrayLength(env, propCov_rowArray);
    if (propCov_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *stateArray_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, stateArray_in, NULL));
    if (stateArray_inArray == NULL) {
        printf("Failed to get elements for stateArray array.");
        return;
    }

    jdouble *cov_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, cov_in, NULL));
    if (cov_inArray == NULL) {
        printf("Failed to get elements for cov array.");
        return;
    }

    jdouble *propCov_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, propCov_out, NULL));
    if (propCov_outArray == NULL) {
        printf("Failed to get elements for propCov array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double cov_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, cov_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            cov_array[row][col] = elements[col];
        }
    }

    double propCov_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PropCovFrState(rms_in, consider_in, stateArray_inArray, cov_array, propCov_array);

    for (row = 0; row < propCov_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, propCov_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < propCov_nCols; col++) {
            elements[col] = propCov_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_PropCovFrState2Das1D(JNIEnv* env, jclass jc, jdouble rms_in, jdouble consider_in, jdoubleArray stateArray_in, jobjectArray cov_in, jdoubleArray propCov_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (stateArray_in == 0 || cov_in == 0 || propCov_out == 0) {
        printf("Got NULL parameter passed to PropCovFrState");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int stateArray_len = (*env)->GetArrayLength(env, stateArray_in);
    if (stateArray_len < 54) {
        printf("stateArray parameter passed in PropCovFrState is too small.");
        return;
    }

    int cov_nRows = (*env)->GetArrayLength(env, cov_in);
    if (cov_nRows < 9) {
        printf("cov parameter passed in PropCovFrState is too small.");
        return;
    }

    jdoubleArray cov_rowArray = (*env)->GetObjectArrayElement(env, cov_in, 0);
    int cov_nCols = (*env)->GetArrayLength(env, cov_rowArray);
    if (cov_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *stateArray_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, stateArray_in, NULL));
    if (stateArray_inArray == NULL) {
        printf("Failed to get elements for stateArray array.");
        return;
    }

    jdouble *cov_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, cov_in, NULL));
    if (cov_inArray == NULL) {
        printf("Failed to get elements for cov array.");
        return;
    }

    jdouble *propCov_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, propCov_out, NULL));
    if (propCov_outArray == NULL) {
        printf("Failed to get elements for propCov array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double cov_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, cov_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            cov_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    PropCovFrState(rms_in, consider_in, stateArray_inArray, cov_array, propCov_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, propCov_out, propCov_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToEqnx(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxECI_in, jobjectArray covMtxEqnx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxECI_in == 0 || covMtxEqnx_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_in);
    if (covMtxECI_nRows < 9) {
        printf("covMtxECI parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 9) {
        return;
    }

    int covMtxEqnx_nRows = (*env)->GetArrayLength(env, covMtxEqnx_out);
    if (covMtxEqnx_nRows < 9) {
        printf("covMtxEqnx parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxEqnx_rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_out, 0);
    int covMtxEqnx_nCols = (*env)->GetArrayLength(env, covMtxEqnx_rowArray);
    if (covMtxEqnx_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_in, NULL));
    if (covMtxECI_inArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    jdouble *covMtxEqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_out, NULL));
    if (covMtxEqnx_outArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxECI_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covMtxECI_array[row][col] = elements[col];
        }
    }

    double covMtxEqnx_array[9][9];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToEqnx(pos_inArray, vel_inArray, covMtxECI_array, covMtxEqnx_array);

    for (row = 0; row < covMtxEqnx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxEqnx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxEqnx_nCols; col++) {
            elements[col] = covMtxEqnx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxECIToEqnx2Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covMtxECI_in, jdoubleArray covMtxEqnx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covMtxECI_in == 0 || covMtxEqnx_out == 0) {
        printf("Got NULL parameter passed to CovMtxECIToEqnx");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_in);
    if (covMtxECI_nRows < 9) {
        printf("covMtxECI parameter passed in CovMtxECIToEqnx is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covMtxECI_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_in, NULL));
    if (covMtxECI_inArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    jdouble *covMtxEqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxEqnx_out, NULL));
    if (covMtxEqnx_outArray == NULL) {
        printf("Failed to get elements for covMtxEqnx array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtxECI_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covMtxECI_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxECIToEqnx(pos_inArray, vel_inArray, covMtxECI_array, covMtxEqnx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxEqnx_out, covMtxEqnx_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToECI9x9(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covEqnx_in, jobjectArray covMtxECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covEqnx_in == 0 || covMtxECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToECI9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    int covEqnx_nRows = (*env)->GetArrayLength(env, covEqnx_in);
    if (covEqnx_nRows < 9) {
        printf("covEqnx parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    jdoubleArray covEqnx_rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, 0);
    int covEqnx_nCols = (*env)->GetArrayLength(env, covEqnx_rowArray);
    if (covEqnx_nCols < 9) {
        return;
    }

    int covMtxECI_nRows = (*env)->GetArrayLength(env, covMtxECI_out);
    if (covMtxECI_nRows < 9) {
        printf("covMtxECI parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    jdoubleArray covMtxECI_rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_out, 0);
    int covMtxECI_nCols = (*env)->GetArrayLength(env, covMtxECI_rowArray);
    if (covMtxECI_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEqnx_in, NULL));
    if (covEqnx_inArray == NULL) {
        printf("Failed to get elements for covEqnx array.");
        return;
    }

    jdouble *covMtxECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_out, NULL));
    if (covMtxECI_outArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEqnx_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covEqnx_array[row][col] = elements[col];
        }
    }

    double covMtxECI_array[9][9];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToECI9x9(pos_inArray, vel_inArray, covEqnx_array, covMtxECI_array);

    for (row = 0; row < covMtxECI_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxECI_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxECI_nCols; col++) {
            elements[col] = covMtxECI_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToECI9x92Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covEqnx_in, jdoubleArray covMtxECI_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covEqnx_in == 0 || covMtxECI_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToECI9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    int covEqnx_nRows = (*env)->GetArrayLength(env, covEqnx_in);
    if (covEqnx_nRows < 9) {
        printf("covEqnx parameter passed in CovMtxEqnxToECI9x9 is too small.");
        return;
    }

    jdoubleArray covEqnx_rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, 0);
    int covEqnx_nCols = (*env)->GetArrayLength(env, covEqnx_rowArray);
    if (covEqnx_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEqnx_in, NULL));
    if (covEqnx_inArray == NULL) {
        printf("Failed to get elements for covEqnx array.");
        return;
    }

    jdouble *covMtxECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxECI_out, NULL));
    if (covMtxECI_outArray == NULL) {
        printf("Failed to get elements for covMtxECI array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEqnx_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covEqnx_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToECI9x9(pos_inArray, vel_inArray, covEqnx_array, covMtxECI_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxECI_out, covMtxECI_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToUVW9x9(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covEqnx_in, jobjectArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covEqnx_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToUVW9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    int covEqnx_nRows = (*env)->GetArrayLength(env, covEqnx_in);
    if (covEqnx_nRows < 9) {
        printf("covEqnx parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    jdoubleArray covEqnx_rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, 0);
    int covEqnx_nCols = (*env)->GetArrayLength(env, covEqnx_rowArray);
    if (covEqnx_nCols < 9) {
        return;
    }

    int covMtxUVW_nRows = (*env)->GetArrayLength(env, covMtxUVW_out);
    if (covMtxUVW_nRows < 9) {
        printf("covMtxUVW parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    jdoubleArray covMtxUVW_rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, 0);
    int covMtxUVW_nCols = (*env)->GetArrayLength(env, covMtxUVW_rowArray);
    if (covMtxUVW_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEqnx_in, NULL));
    if (covEqnx_inArray == NULL) {
        printf("Failed to get elements for covEqnx array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEqnx_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covEqnx_array[row][col] = elements[col];
        }
    }

    double covMtxUVW_array[9][9];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToUVW9x9(pos_inArray, vel_inArray, covEqnx_array, covMtxUVW_array);

    for (row = 0; row < covMtxUVW_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtxUVW_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtxUVW_nCols; col++) {
            elements[col] = covMtxUVW_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxEqnxToUVW9x92Das1D(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jobjectArray covEqnx_in, jdoubleArray covMtxUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covEqnx_in == 0 || covMtxUVW_out == 0) {
        printf("Got NULL parameter passed to CovMtxEqnxToUVW9x9");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    int covEqnx_nRows = (*env)->GetArrayLength(env, covEqnx_in);
    if (covEqnx_nRows < 9) {
        printf("covEqnx parameter passed in CovMtxEqnxToUVW9x9 is too small.");
        return;
    }

    jdoubleArray covEqnx_rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, 0);
    int covEqnx_nCols = (*env)->GetArrayLength(env, covEqnx_rowArray);
    if (covEqnx_nCols < 9) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return;
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return;
    }

    jdouble *covEqnx_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covEqnx_in, NULL));
    if (covEqnx_inArray == NULL) {
        printf("Failed to get elements for covEqnx array.");
        return;
    }

    jdouble *covMtxUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtxUVW_out, NULL));
    if (covMtxUVW_outArray == NULL) {
        printf("Failed to get elements for covMtxUVW array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covEqnx_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covEqnx_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            covEqnx_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxEqnxToUVW9x9(pos_inArray, vel_inArray, covEqnx_array, covMtxUVW_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covMtxUVW_out, covMtxUVW_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUpdate(JNIEnv* env, jclass jc, jdouble rmsIn_in, jdouble consider_in, jobjectArray cov_in, jdoubleArray stateArray_in, jobjectArray propCov_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cov_in == 0 || stateArray_in == 0 || propCov_out == 0) {
        printf("Got NULL parameter passed to CovMtxUpdate");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int cov_nRows = (*env)->GetArrayLength(env, cov_in);
    if (cov_nRows < 9) {
        printf("cov parameter passed in CovMtxUpdate is too small.");
        return;
    }

    jdoubleArray cov_rowArray = (*env)->GetObjectArrayElement(env, cov_in, 0);
    int cov_nCols = (*env)->GetArrayLength(env, cov_rowArray);
    if (cov_nCols < 9) {
        return;
    }

    int stateArray_len = (*env)->GetArrayLength(env, stateArray_in);
    if (stateArray_len < 54) {
        printf("stateArray parameter passed in CovMtxUpdate is too small.");
        return;
    }

    int propCov_nRows = (*env)->GetArrayLength(env, propCov_out);
    if (propCov_nRows < 6) {
        printf("propCov parameter passed in CovMtxUpdate is too small.");
        return;
    }

    jdoubleArray propCov_rowArray = (*env)->GetObjectArrayElement(env, propCov_out, 0);
    int propCov_nCols = (*env)->GetArrayLength(env, propCov_rowArray);
    if (propCov_nCols < 6) {
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *cov_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, cov_in, NULL));
    if (cov_inArray == NULL) {
        printf("Failed to get elements for cov array.");
        return;
    }

    jdouble *stateArray_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, stateArray_in, NULL));
    if (stateArray_inArray == NULL) {
        printf("Failed to get elements for stateArray array.");
        return;
    }

    jdouble *propCov_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, propCov_out, NULL));
    if (propCov_outArray == NULL) {
        printf("Failed to get elements for propCov array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double cov_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, cov_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            cov_array[row][col] = elements[col];
        }
    }

    double propCov_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUpdate(rmsIn_in, consider_in, cov_array, stateArray_inArray, propCov_array);

    for (row = 0; row < propCov_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, propCov_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < propCov_nCols; col++) {
            elements[col] = propCov_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

}
JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_CovMtxUpdate2Das1D(JNIEnv* env, jclass jc, jdouble rmsIn_in, jdouble consider_in, jobjectArray cov_in, jdoubleArray stateArray_in, jdoubleArray propCov_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (cov_in == 0 || stateArray_in == 0 || propCov_out == 0) {
        printf("Got NULL parameter passed to CovMtxUpdate");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int cov_nRows = (*env)->GetArrayLength(env, cov_in);
    if (cov_nRows < 9) {
        printf("cov parameter passed in CovMtxUpdate is too small.");
        return;
    }

    jdoubleArray cov_rowArray = (*env)->GetObjectArrayElement(env, cov_in, 0);
    int cov_nCols = (*env)->GetArrayLength(env, cov_rowArray);
    if (cov_nCols < 9) {
        return;
    }

    int stateArray_len = (*env)->GetArrayLength(env, stateArray_in);
    if (stateArray_len < 54) {
        printf("stateArray parameter passed in CovMtxUpdate is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *cov_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, cov_in, NULL));
    if (cov_inArray == NULL) {
        printf("Failed to get elements for cov array.");
        return;
    }

    jdouble *stateArray_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, stateArray_in, NULL));
    if (stateArray_inArray == NULL) {
        printf("Failed to get elements for stateArray array.");
        return;
    }

    jdouble *propCov_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, propCov_out, NULL));
    if (propCov_outArray == NULL) {
        printf("Failed to get elements for propCov array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double cov_array[9][9];
    for (row = 0; row < 9; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, cov_in, row);

        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);

        for (col = 0; col < 9; col++) {
            cov_array[row][col] = elements[col];
        }
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    CovMtxUpdate(rmsIn_in, consider_in, cov_array, stateArray_inArray, propCov_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, propCov_out, propCov_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AberrationAnnual(JNIEnv* env, jclass jc, jdouble ra_in, jdouble decl_in, jdouble dS50UTC_in, jdoubleArray raDelta_out, jdoubleArray decDelta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (raDelta_out == 0 || decDelta_out == 0) {
        printf("Got NULL parameter passed to AberrationAnnual");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int raDelta_len = (*env)->GetArrayLength(env, raDelta_out);
    if (raDelta_len < 1) {
        printf("raDelta parameter passed in AberrationAnnual is too small.");
        return;
    }

    int decDelta_len = (*env)->GetArrayLength(env, decDelta_out);
    if (decDelta_len < 1) {
        printf("decDelta parameter passed in AberrationAnnual is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *raDelta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, raDelta_out, NULL));
    if (raDelta_outArray == NULL) {
        printf("Failed to get elements for raDelta array.");
        return;
    }

    jdouble *decDelta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, decDelta_out, NULL));
    if (decDelta_outArray == NULL) {
        printf("Failed to get elements for decDelta array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AberrationAnnual(ra_in, decl_in, dS50UTC_in, raDelta_outArray, decDelta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, raDelta_out, raDelta_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, decDelta_out, decDelta_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_AberrationDiurnal(JNIEnv* env, jclass jc, jdouble ra_in, jdouble decl_in, jdouble dS50UTC_in, jdoubleArray senPos_in, jdoubleArray raDelta_out, jdoubleArray decDelta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senPos_in == 0 || raDelta_out == 0 || decDelta_out == 0) {
        printf("Got NULL parameter passed to AberrationDiurnal");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int senPos_len = (*env)->GetArrayLength(env, senPos_in);
    if (senPos_len < 3) {
        printf("senPos parameter passed in AberrationDiurnal is too small.");
        return;
    }

    int raDelta_len = (*env)->GetArrayLength(env, raDelta_out);
    if (raDelta_len < 1) {
        printf("raDelta parameter passed in AberrationDiurnal is too small.");
        return;
    }

    int decDelta_len = (*env)->GetArrayLength(env, decDelta_out);
    if (decDelta_len < 1) {
        printf("decDelta parameter passed in AberrationDiurnal is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *senPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senPos_in, NULL));
    if (senPos_inArray == NULL) {
        printf("Failed to get elements for senPos array.");
        return;
    }

    jdouble *raDelta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, raDelta_out, NULL));
    if (raDelta_outArray == NULL) {
        printf("Failed to get elements for raDelta array.");
        return;
    }

    jdouble *decDelta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, decDelta_out, NULL));
    if (decDelta_outArray == NULL) {
        printf("Failed to get elements for decDelta array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    AberrationDiurnal(ra_in, decl_in, dS50UTC_in, senPos_inArray, raDelta_outArray, decDelta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, raDelta_out, raDelta_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, decDelta_out, decDelta_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_JplSetParameters(JNIEnv* env, jclass jc, jstring jplFile_in, jdouble ds50Start_in, jdouble ds50Stop_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (jplFile_in == 0) {
        printf("Got NULL parameter passed to JplSetParameters");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *jplFile_inArray = (char *)((*env)->GetStringUTFChars(env, jplFile_in, NULL));
    if (jplFile_inArray == NULL) {
        printf("Failed to get elements for jplFile array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    JplSetParameters(jplFile_inArray, ds50Start_in, ds50Stop_in);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_JplGetParameters(JNIEnv* env, jclass jc, jbyteArray jplFile_out, jdoubleArray ds50Start_out, jdoubleArray ds50Stop_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (jplFile_out == 0 || ds50Start_out == 0 || ds50Stop_out == 0) {
        printf("Got NULL parameter passed to JplGetParameters");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50Start_len = (*env)->GetArrayLength(env, ds50Start_out);
    if (ds50Start_len < 1) {
        printf("ds50Start parameter passed in JplGetParameters is too small.");
        return;
    }

    int ds50Stop_len = (*env)->GetArrayLength(env, ds50Stop_out);
    if (ds50Stop_len < 1) {
        printf("ds50Stop parameter passed in JplGetParameters is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *jplFile_outArray = (jbyte *)((*env)->GetByteArrayElements(env, jplFile_out, NULL));
    if (jplFile_outArray == NULL) {
        printf("Failed to get elements for jplFile array.");
        return;
    }

    jdouble *ds50Start_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ds50Start_out, NULL));
    if (ds50Start_outArray == NULL) {
        printf("Failed to get elements for ds50Start array.");
        return;
    }

    jdouble *ds50Stop_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ds50Stop_out, NULL));
    if (ds50Stop_outArray == NULL) {
        printf("Failed to get elements for ds50Stop array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    JplGetParameters(jplFile_outArray, ds50Start_outArray, ds50Stop_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, jplFile_out, jplFile_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ds50Start_out, ds50Start_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ds50Stop_out, ds50Stop_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_JplReset(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    JplReset();

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_JplCompSunMoonVec(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray uvecSun_out, jdoubleArray sunVecMag_out, jdoubleArray uvecMoon_out, jdoubleArray moonVecMag_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (uvecSun_out == 0 || sunVecMag_out == 0 || uvecMoon_out == 0 || moonVecMag_out == 0) {
        printf("Got NULL parameter passed to JplCompSunMoonVec");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int uvecSun_len = (*env)->GetArrayLength(env, uvecSun_out);
    if (uvecSun_len < 3) {
        printf("uvecSun parameter passed in JplCompSunMoonVec is too small.");
        return;
    }

    int sunVecMag_len = (*env)->GetArrayLength(env, sunVecMag_out);
    if (sunVecMag_len < 1) {
        printf("sunVecMag parameter passed in JplCompSunMoonVec is too small.");
        return;
    }

    int uvecMoon_len = (*env)->GetArrayLength(env, uvecMoon_out);
    if (uvecMoon_len < 3) {
        printf("uvecMoon parameter passed in JplCompSunMoonVec is too small.");
        return;
    }

    int moonVecMag_len = (*env)->GetArrayLength(env, moonVecMag_out);
    if (moonVecMag_len < 1) {
        printf("moonVecMag parameter passed in JplCompSunMoonVec is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *uvecSun_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecSun_out, NULL));
    if (uvecSun_outArray == NULL) {
        printf("Failed to get elements for uvecSun array.");
        return;
    }

    jdouble *sunVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sunVecMag_out, NULL));
    if (sunVecMag_outArray == NULL) {
        printf("Failed to get elements for sunVecMag array.");
        return;
    }

    jdouble *uvecMoon_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, uvecMoon_out, NULL));
    if (uvecMoon_outArray == NULL) {
        printf("Failed to get elements for uvecMoon array.");
        return;
    }

    jdouble *moonVecMag_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, moonVecMag_out, NULL));
    if (moonVecMag_outArray == NULL) {
        printf("Failed to get elements for moonVecMag array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    JplCompSunMoonVec(ds50UTC_in, uvecSun_outArray, sunVecMag_outArray, uvecMoon_outArray, moonVecMag_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, uvecSun_out, uvecSun_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, sunVecMag_out, sunVecMag_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, uvecMoon_out, uvecMoon_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, moonVecMag_out, moonVecMag_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_JplCompSunMoonPos(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdoubleArray sunVec_out, jdoubleArray moonVec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (sunVec_out == 0 || moonVec_out == 0) {
        printf("Got NULL parameter passed to JplCompSunMoonPos");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int sunVec_len = (*env)->GetArrayLength(env, sunVec_out);
    if (sunVec_len < 3) {
        printf("sunVec parameter passed in JplCompSunMoonPos is too small.");
        return;
    }

    int moonVec_len = (*env)->GetArrayLength(env, moonVec_out);
    if (moonVec_len < 3) {
        printf("moonVec parameter passed in JplCompSunMoonPos is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *sunVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, sunVec_out, NULL));
    if (sunVec_outArray == NULL) {
        printf("Failed to get elements for sunVec array.");
        return;
    }

    jdouble *moonVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, moonVec_out, NULL));
    if (moonVec_outArray == NULL) {
        printf("Failed to get elements for moonVec array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    JplCompSunMoonPos(ds50UTC_in, sunVec_outArray, moonVec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, sunVec_out, sunVec_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, moonVec_out, moonVec_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_RemoveJpl(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    RemoveJpl();

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniAstroFunc_TemeEpochToDate(JNIEnv* env, jclass jc, jint nutationTerms_in, jdouble epochDs50TAI_in, jdouble dateDs50TAI_in, jdoubleArray posEpoch_in, jdoubleArray velEpoch_in, jdoubleArray posDate_out, jdoubleArray velDate_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (posEpoch_in == 0 || velEpoch_in == 0 || posDate_out == 0 || velDate_out == 0) {
        printf("Got NULL parameter passed to TemeEpochToDate");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int posEpoch_len = (*env)->GetArrayLength(env, posEpoch_in);
    if (posEpoch_len < 3) {
        printf("posEpoch parameter passed in TemeEpochToDate is too small.");
        return;
    }

    int velEpoch_len = (*env)->GetArrayLength(env, velEpoch_in);
    if (velEpoch_len < 3) {
        printf("velEpoch parameter passed in TemeEpochToDate is too small.");
        return;
    }

    int posDate_len = (*env)->GetArrayLength(env, posDate_out);
    if (posDate_len < 3) {
        printf("posDate parameter passed in TemeEpochToDate is too small.");
        return;
    }

    int velDate_len = (*env)->GetArrayLength(env, velDate_out);
    if (velDate_len < 3) {
        printf("velDate parameter passed in TemeEpochToDate is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *posEpoch_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posEpoch_in, NULL));
    if (posEpoch_inArray == NULL) {
        printf("Failed to get elements for posEpoch array.");
        return;
    }

    jdouble *velEpoch_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velEpoch_in, NULL));
    if (velEpoch_inArray == NULL) {
        printf("Failed to get elements for velEpoch array.");
        return;
    }

    jdouble *posDate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posDate_out, NULL));
    if (posDate_outArray == NULL) {
        printf("Failed to get elements for posDate array.");
        return;
    }

    jdouble *velDate_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velDate_out, NULL));
    if (velDate_outArray == NULL) {
        printf("Failed to get elements for velDate array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TemeEpochToDate(nutationTerms_in, epochDs50TAI_in, dateDs50TAI_in, posEpoch_inArray, velEpoch_inArray, posDate_outArray, velDate_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posDate_out, posDate_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velDate_out, velDate_outArray, 0);

}
// ========================= End of auto generated code ==========================
