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
#include "../../wrappers/TleDll.h"
#include "../../wrappers/Sgp4PropDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_LoadSgp4PropDll(JNIEnv* env, jclass jc)
{
    LoadSgp4PropDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4Init(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadSgp4PropDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4Init(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to Sgp4GetInfo");
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
    Sgp4GetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4LoadFileAll(JNIEnv* env, jclass jc, jstring sgp4InputFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (sgp4InputFile_in == 0) {
        printf("Got NULL parameter passed to Sgp4LoadFileAll");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *sgp4InputFile_inArray = (char *)((*env)->GetStringUTFChars(env, sgp4InputFile_in, NULL));
    if (sgp4InputFile_inArray == NULL) {
        printf("Failed to get elements for sgp4InputFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4LoadFileAll(sgp4InputFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4SaveFile(JNIEnv* env, jclass jc, jstring sgp4File_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (sgp4File_in == 0) {
        printf("Got NULL parameter passed to Sgp4SaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *sgp4File_inArray = (char *)((*env)->GetStringUTFChars(env, sgp4File_in, NULL));
    if (sgp4File_inArray == NULL) {
        printf("Failed to get elements for sgp4File array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4SaveFile(sgp4File_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4InitSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4InitSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4RemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4RemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4RemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4RemoveAllSats();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GetCount();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropMse(JNIEnv* env, jclass jc, jlong satKey_in, jdouble mse_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jdoubleArray llh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || llh_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropMse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in Sgp4PropMse is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PropMse is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in Sgp4PropMse is too small.");
        return (jint)(-1);
    }

    int llh_len = (*env)->GetArrayLength(env, llh_out);
    if (llh_len < 3) {
        printf("llh parameter passed in Sgp4PropMse is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ds50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ds50UTC_out, NULL));
    if (ds50UTC_outArray == NULL) {
        printf("Failed to get elements for ds50UTC array.");
        return (jint)(-1);
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *llh_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, llh_out, NULL));
    if (llh_outArray == NULL) {
        printf("Failed to get elements for llh array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropMse(satKey_in, mse_in, ds50UTC_outArray, pos_outArray, vel_outArray, llh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, llh_out, llh_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropDs50UTC(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray mse_out, jdoubleArray pos_out, jdoubleArray vel_out, jdoubleArray llh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (mse_out == 0 || pos_out == 0 || vel_out == 0 || llh_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropDs50UTC");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int mse_len = (*env)->GetArrayLength(env, mse_out);
    if (mse_len < 1) {
        printf("mse parameter passed in Sgp4PropDs50UTC is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PropDs50UTC is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in Sgp4PropDs50UTC is too small.");
        return (jint)(-1);
    }

    int llh_len = (*env)->GetArrayLength(env, llh_out);
    if (llh_len < 3) {
        printf("llh parameter passed in Sgp4PropDs50UTC is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *mse_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, mse_out, NULL));
    if (mse_outArray == NULL) {
        printf("Failed to get elements for mse array.");
        return (jint)(-1);
    }

    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *llh_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, llh_out, NULL));
    if (llh_outArray == NULL) {
        printf("Failed to get elements for llh array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropDs50UTC(satKey_in, ds50UTC_in, mse_outArray, pos_outArray, vel_outArray, llh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, mse_out, mse_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, llh_out, llh_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropDs50UtcPosVel(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray pos_out, jdoubleArray vel_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_out == 0 || vel_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropDs50UtcPosVel");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PropDs50UtcPosVel is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in Sgp4PropDs50UtcPosVel is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_out, NULL));
    if (vel_outArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropDs50UtcPosVel(satKey_in, ds50UTC_in, pos_outArray, vel_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropDs50UtcLLH(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray llh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (llh_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropDs50UtcLLH");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int llh_len = (*env)->GetArrayLength(env, llh_out);
    if (llh_len < 3) {
        printf("llh parameter passed in Sgp4PropDs50UtcLLH is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *llh_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, llh_out, NULL));
    if (llh_outArray == NULL) {
        printf("Failed to get elements for llh array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropDs50UtcLLH(satKey_in, ds50UTC_in, llh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, llh_out, llh_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropDs50UtcPos(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray pos_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropDs50UtcPos");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PropDs50UtcPos is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_out, NULL));
    if (pos_outArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropDs50UtcPos(satKey_in, ds50UTC_in, pos_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GetPropOut(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Sgp4Out_in, jdoubleArray destArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (destArr_out == 0) {
        printf("Got NULL parameter passed to Sgp4GetPropOut");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *destArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, destArr_out, NULL));
    if (destArr_outArray == NULL) {
        printf("Failed to get elements for destArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GetPropOut(satKey_in, xf_Sgp4Out_in, destArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, destArr_out, destArr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropAll(JNIEnv* env, jclass jc, jlong satKey_in, jint timeType_in, jdouble timeIn_in, jdoubleArray xa_Sgp4Out_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_Sgp4Out_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropAll");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_Sgp4Out_len = (*env)->GetArrayLength(env, xa_Sgp4Out_out);
    if (xa_Sgp4Out_len < 64) {
        printf("xa_Sgp4Out parameter passed in Sgp4PropAll is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_Sgp4Out_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_Sgp4Out_out, NULL));
    if (xa_Sgp4Out_outArray == NULL) {
        printf("Failed to get elements for xa_Sgp4Out array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropAll(satKey_in, timeType_in, timeIn_in, xa_Sgp4Out_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_Sgp4Out_out, xa_Sgp4Out_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PosVelToKep(JNIEnv* env, jclass jc, jint yr_in, jdouble day_in, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray posNew_out, jdoubleArray velNew_out, jdoubleArray xa_kep_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || posNew_out == 0 || velNew_out == 0 || xa_kep_out == 0) {
        printf("Got NULL parameter passed to Sgp4PosVelToKep");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PosVelToKep is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in Sgp4PosVelToKep is too small.");
        return (jint)(-1);
    }

    int posNew_len = (*env)->GetArrayLength(env, posNew_out);
    if (posNew_len < 3) {
        printf("posNew parameter passed in Sgp4PosVelToKep is too small.");
        return (jint)(-1);
    }

    int velNew_len = (*env)->GetArrayLength(env, velNew_out);
    if (velNew_len < 3) {
        printf("velNew parameter passed in Sgp4PosVelToKep is too small.");
        return (jint)(-1);
    }

    int xa_kep_len = (*env)->GetArrayLength(env, xa_kep_out);
    if (xa_kep_len < 6) {
        printf("xa_kep parameter passed in Sgp4PosVelToKep is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *posNew_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posNew_out, NULL));
    if (posNew_outArray == NULL) {
        printf("Failed to get elements for posNew array.");
        return (jint)(-1);
    }

    jdouble *velNew_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velNew_out, NULL));
    if (velNew_outArray == NULL) {
        printf("Failed to get elements for velNew array.");
        return (jint)(-1);
    }

    jdouble *xa_kep_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_kep_out, NULL));
    if (xa_kep_outArray == NULL) {
        printf("Failed to get elements for xa_kep array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PosVelToKep(yr_in, day_in, pos_inArray, vel_inArray, posNew_outArray, velNew_outArray, xa_kep_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, posNew_out, posNew_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velNew_out, velNew_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_kep_out, xa_kep_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PosVelToTleArr(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jdoubleArray xa_tle_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || xa_tle_out == 0) {
        printf("Got NULL parameter passed to Sgp4PosVelToTleArr");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in Sgp4PosVelToTleArr is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in Sgp4PosVelToTleArr is too small.");
        return (jint)(-1);
    }

    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_out);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in Sgp4PosVelToTleArr is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jint)(-1);
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jint)(-1);
    }

    jdouble *xa_tle_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_out, NULL));
    if (xa_tle_outArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PosVelToTleArr(pos_inArray, vel_inArray, xa_tle_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_tle_out, xa_tle_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4ReepochTLE(JNIEnv* env, jclass jc, jlong satKey_in, jdouble reEpochDs50UTC_in, jbyteArray line1Out_out, jbyteArray line2Out_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1Out_out == 0 || line2Out_out == 0) {
        printf("Got NULL parameter passed to Sgp4ReepochTLE");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *line1Out_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line1Out_out, NULL));
    if (line1Out_outArray == NULL) {
        printf("Failed to get elements for line1Out array.");
        return (jint)(-1);
    }

    jbyte *line2Out_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line2Out_out, NULL));
    if (line2Out_outArray == NULL) {
        printf("Failed to get elements for line2Out array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4ReepochTLE(satKey_in, reEpochDs50UTC_in, line1Out_outArray, line2Out_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1Out_out, line1Out_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2Out_out, line2Out_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4ReepochCsv(JNIEnv* env, jclass jc, jlong satKey_in, jdouble reEpochDs50UTC_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_out == 0) {
        printf("Got NULL parameter passed to Sgp4ReepochCsv");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4ReepochCsv(satKey_in, reEpochDs50UTC_in, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4SetLicFilePath(JNIEnv* env, jclass jc, jstring licFilePath_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (licFilePath_in == 0) {
        printf("Got NULL parameter passed to Sgp4SetLicFilePath");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *licFilePath_inArray = (char *)((*env)->GetStringUTFChars(env, licFilePath_in, NULL));
    if (licFilePath_inArray == NULL) {
        printf("Failed to get elements for licFilePath array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Sgp4SetLicFilePath(licFilePath_inArray);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GetLicFilePath(JNIEnv* env, jclass jc, jbyteArray licFilePath_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (licFilePath_out == 0) {
        printf("Got NULL parameter passed to Sgp4GetLicFilePath");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *licFilePath_outArray = (jbyte *)((*env)->GetByteArrayElements(env, licFilePath_out, NULL));
    if (licFilePath_outArray == NULL) {
        printf("Failed to get elements for licFilePath array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    Sgp4GetLicFilePath(licFilePath_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, licFilePath_out, licFilePath_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GenEphems(JNIEnv* env, jclass jc, jlong satKey_in, jdouble startTime_in, jdouble endTime_in, jdouble stepSize_in, jint sgp4_ephem_in, jint arrSize_in, jobjectArray ephemArr_out, jintArray genEphemPts_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ephemArr_out == 0 || genEphemPts_out == 0) {
        printf("Got NULL parameter passed to Sgp4GenEphems");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ephemArr_nRows = (*env)->GetArrayLength(env, ephemArr_out);

    jdoubleArray ephemArr_rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, 0);
    int ephemArr_nCols = (*env)->GetArrayLength(env, ephemArr_rowArray);
    if (ephemArr_nCols < 7) {
        return (jint)(-1);
    }

    int genEphemPts_len = (*env)->GetArrayLength(env, genEphemPts_out);
    if (genEphemPts_len < 1) {
        printf("genEphemPts parameter passed in Sgp4GenEphems is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    jint *genEphemPts_outArray = (jint *)((*env)->GetIntArrayElements(env, genEphemPts_out, NULL));
    if (genEphemPts_outArray == NULL) {
        printf("Failed to get elements for genEphemPts array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double (* ephemArr_array)[7];
    ephemArr_array = (double(*)[7])malloc(ephemArr_nRows * sizeof(*ephemArr_array));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GenEphems(satKey_in, startTime_in, endTime_in, stepSize_in, sgp4_ephem_in, arrSize_in, ephemArr_array, genEphemPts_outArray);

    for (row = 0; row < ephemArr_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < ephemArr_nCols; col++) {
            elements[col] = ephemArr_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    free(ephemArr_array);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, genEphemPts_out, genEphemPts_outArray, 0);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GenEphems2Das1D(JNIEnv* env, jclass jc, jlong satKey_in, jdouble startTime_in, jdouble endTime_in, jdouble stepSize_in, jint sgp4_ephem_in, jint arrSize_in, jdoubleArray ephemArr_out, jintArray genEphemPts_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ephemArr_out == 0 || genEphemPts_out == 0) {
        printf("Got NULL parameter passed to Sgp4GenEphems");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int genEphemPts_len = (*env)->GetArrayLength(env, genEphemPts_out);
    if (genEphemPts_len < 1) {
        printf("genEphemPts parameter passed in Sgp4GenEphems is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    jint *genEphemPts_outArray = (jint *)((*env)->GetIntArrayElements(env, genEphemPts_out, NULL));
    if (genEphemPts_outArray == NULL) {
        printf("Failed to get elements for genEphemPts array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GenEphems(satKey_in, startTime_in, endTime_in, stepSize_in, sgp4_ephem_in, arrSize_in, ephemArr_outArray, genEphemPts_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ephemArr_out, ephemArr_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, genEphemPts_out, genEphemPts_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GenEphems_OS(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jdouble startTime_in, jdouble endTime_in, jdouble stepSize_in, jint sgp4_ephem_in, jint arrSize_in, jobjectArray ephemArr_out, jintArray genEphemPts_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || ephemArr_out == 0 || genEphemPts_out == 0) {
        printf("Got NULL parameter passed to Sgp4GenEphems_OS");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in Sgp4GenEphems_OS is too small.");
        return (jint)(-1);
    }

    int ephemArr_nRows = (*env)->GetArrayLength(env, ephemArr_out);

    jdoubleArray ephemArr_rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, 0);
    int ephemArr_nCols = (*env)->GetArrayLength(env, ephemArr_rowArray);
    if (ephemArr_nCols < 7) {
        return (jint)(-1);
    }

    int genEphemPts_len = (*env)->GetArrayLength(env, genEphemPts_out);
    if (genEphemPts_len < 1) {
        printf("genEphemPts parameter passed in Sgp4GenEphems_OS is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jint)(-1);
    }

    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    jint *genEphemPts_outArray = (jint *)((*env)->GetIntArrayElements(env, genEphemPts_out, NULL));
    if (genEphemPts_outArray == NULL) {
        printf("Failed to get elements for genEphemPts array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double (* ephemArr_array)[7];
    ephemArr_array = (double(*)[7])malloc(ephemArr_nRows * sizeof(*ephemArr_array));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GenEphems_OS(xa_tle_inArray, startTime_in, endTime_in, stepSize_in, sgp4_ephem_in, arrSize_in, ephemArr_array, genEphemPts_outArray);

    for (row = 0; row < ephemArr_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < ephemArr_nCols; col++) {
            elements[col] = ephemArr_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    free(ephemArr_array);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, genEphemPts_out, genEphemPts_outArray, 0);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4GenEphems_OS2Das1D(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jdouble startTime_in, jdouble endTime_in, jdouble stepSize_in, jint sgp4_ephem_in, jint arrSize_in, jdoubleArray ephemArr_out, jintArray genEphemPts_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || ephemArr_out == 0 || genEphemPts_out == 0) {
        printf("Got NULL parameter passed to Sgp4GenEphems_OS");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in Sgp4GenEphems_OS is too small.");
        return (jint)(-1);
    }

    int genEphemPts_len = (*env)->GetArrayLength(env, genEphemPts_out);
    if (genEphemPts_len < 1) {
        printf("genEphemPts parameter passed in Sgp4GenEphems_OS is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jint)(-1);
    }

    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    jint *genEphemPts_outArray = (jint *)((*env)->GetIntArrayElements(env, genEphemPts_out, NULL));
    if (genEphemPts_outArray == NULL) {
        printf("Failed to get elements for genEphemPts array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4GenEphems_OS(xa_tle_inArray, startTime_in, endTime_in, stepSize_in, sgp4_ephem_in, arrSize_in, ephemArr_outArray, genEphemPts_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ephemArr_out, ephemArr_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, genEphemPts_out, genEphemPts_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropAllSats(JNIEnv* env, jclass jc, jlongArray satKeys_in, jint numOfSats_in, jdouble ds50UTC_in, jobjectArray ephemArr_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_in == 0 || ephemArr_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropAllSats");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKeys_len = (*env)->GetArrayLength(env, satKeys_in);

    int ephemArr_nRows = (*env)->GetArrayLength(env, ephemArr_out);

    jdoubleArray ephemArr_rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, 0);
    int ephemArr_nCols = (*env)->GetArrayLength(env, ephemArr_rowArray);
    if (ephemArr_nCols < 6) {
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *satKeys_inArray = (jlong *)((*env)->GetLongArrayElements(env, satKeys_in, NULL));
    if (satKeys_inArray == NULL) {
        printf("Failed to get elements for satKeys array.");
        return (jint)(-1);
    }

    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double (* ephemArr_array)[6];
    ephemArr_array = (double(*)[6])malloc(ephemArr_nRows * sizeof(*ephemArr_array));

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *satKeys_longInArray = (__int64*)malloc(satKeys_len * sizeof(__int64));
    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_longInArray[ii] = satKeys_inArray[ii];
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropAllSats(satKeys_longInArray, numOfSats_in, ds50UTC_in, ephemArr_array);

    for (row = 0; row < ephemArr_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, ephemArr_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < ephemArr_nCols; col++) {
            elements[col] = ephemArr_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    free(satKeys_longInArray);

    free(ephemArr_array);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_Sgp4PropAllSats2Das1D(JNIEnv* env, jclass jc, jlongArray satKeys_in, jint numOfSats_in, jdouble ds50UTC_in, jdoubleArray ephemArr_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_in == 0 || ephemArr_out == 0) {
        printf("Got NULL parameter passed to Sgp4PropAllSats");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKeys_len = (*env)->GetArrayLength(env, satKeys_in);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *satKeys_inArray = (jlong *)((*env)->GetLongArrayElements(env, satKeys_in, NULL));
    if (satKeys_inArray == NULL) {
        printf("Failed to get elements for satKeys array.");
        return (jint)(-1);
    }

    jdouble *ephemArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ephemArr_out, NULL));
    if (ephemArr_outArray == NULL) {
        printf("Failed to get elements for ephemArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *satKeys_longInArray = (__int64*)malloc(satKeys_len * sizeof(__int64));
    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_longInArray[ii] = satKeys_inArray[ii];
    }


    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Sgp4PropAllSats(satKeys_longInArray, numOfSats_in, ds50UTC_in, ephemArr_outArray);

    free(satKeys_longInArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ephemArr_out, ephemArr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_XpGetNativeElts(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray xa_eqnx_out, jdoubleArray xa_eqnx_dot_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_eqnx_out == 0 || xa_eqnx_dot_out == 0) {
        printf("Got NULL parameter passed to XpGetNativeElts");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in XpGetNativeElts is too small.");
        return (jint)(-1);
    }

    int xa_eqnx_dot_len = (*env)->GetArrayLength(env, xa_eqnx_dot_out);
    if (xa_eqnx_dot_len < 6) {
        printf("xa_eqnx_dot parameter passed in XpGetNativeElts is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return (jint)(-1);
    }

    jdouble *xa_eqnx_dot_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_dot_out, NULL));
    if (xa_eqnx_dot_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx_dot array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = XpGetNativeElts(satKey_in, ds50UTC_in, xa_eqnx_outArray, xa_eqnx_dot_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_dot_out, xa_eqnx_dot_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSgp4Prop_XpReepochGetNativeElts(JNIEnv* env, jclass jc, jlong satKey_in, jdouble reEpochDs50UTC_in, jbyteArray csvLine_out, jdoubleArray xa_eqnx_out, jdoubleArray xa_eqnx_dot_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_out == 0 || xa_eqnx_out == 0 || xa_eqnx_dot_out == 0) {
        printf("Got NULL parameter passed to XpReepochGetNativeElts");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_eqnx_len = (*env)->GetArrayLength(env, xa_eqnx_out);
    if (xa_eqnx_len < 6) {
        printf("xa_eqnx parameter passed in XpReepochGetNativeElts is too small.");
        return (jint)(-1);
    }

    int xa_eqnx_dot_len = (*env)->GetArrayLength(env, xa_eqnx_dot_out);
    if (xa_eqnx_dot_len < 6) {
        printf("xa_eqnx_dot parameter passed in XpReepochGetNativeElts is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

    jdouble *xa_eqnx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_out, NULL));
    if (xa_eqnx_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx array.");
        return (jint)(-1);
    }

    jdouble *xa_eqnx_dot_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_eqnx_dot_out, NULL));
    if (xa_eqnx_dot_outArray == NULL) {
        printf("Failed to get elements for xa_eqnx_dot array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = XpReepochGetNativeElts(satKey_in, reEpochDs50UTC_in, csvLine_outArray, xa_eqnx_outArray, xa_eqnx_dot_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_out, xa_eqnx_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_eqnx_dot_out, xa_eqnx_dot_outArray, 0);

    return ret;
}
// ========================= End of auto generated code ==========================
