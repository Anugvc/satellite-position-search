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
#include "../../wrappers/ElOpsDll.h"
#include "../../wrappers/Sgp4PropDll.h"
#include "../../wrappers/SpPropDll.h"
#include "../../wrappers/SatStateDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_LoadSatStateDll(JNIEnv* env, jclass jc)
{
    LoadSatStateDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadSatStateDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to SatStateGetInfo");
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
    SatStateGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateLoadFile(JNIEnv* env, jclass jc, jstring inputFile_in, jint xf_Task_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (inputFile_in == 0) {
        printf("Got NULL parameter passed to SatStateLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *inputFile_inArray = (char *)((*env)->GetStringUTFChars(env, inputFile_in, NULL));
    if (inputFile_inArray == NULL) {
        printf("Failed to get elements for inputFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateLoadFile(inputFile_inArray, xf_Task_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateSaveFile(JNIEnv* env, jclass jc, jstring outFile_in, jint saveMode_in, jint saveForm_in, jint xf_Task_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (outFile_in == 0) {
        printf("Got NULL parameter passed to SatStateSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *outFile_inArray = (char *)((*env)->GetStringUTFChars(env, outFile_in, NULL));
    if (outFile_inArray == NULL) {
        printf("Failed to get elements for outFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateSaveFile(outFile_inArray, saveMode_in, saveForm_in, xf_Task_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateRemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateRemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateRemoveSatAll(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateRemoveSatAll(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateRemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateRemoveAllSats();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateReset(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SatStateReset();

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray satKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_out == 0) {
        printf("Got NULL parameter passed to SatStateGetLoaded");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKeys_len = (*env)->GetArrayLength(env, satKeys_out);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *satKeys_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKeys_out, NULL));
    if (satKeys_outArray == NULL) {
        printf("Failed to get elements for satKeys array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *satKeys_longOutArray = (__int64*)malloc(satKeys_len * sizeof(__int64));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SatStateGetLoaded(order_in, satKeys_longOutArray);

    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_outArray[ii] = satKeys_longOutArray[ii];
    }

    free(satKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKeys_out, satKeys_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateNumToKey(JNIEnv* env, jclass jc, jint satNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SatStateNumToKey(satNum_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetSatDataAll(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray satName_out, jintArray eltType_out, jintArray revNum_out, jdoubleArray epochDs50UTC_out, jdoubleArray bField_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jdoubleArray period_out, jdoubleArray perigeeHt_out, jdoubleArray apogeeHt_out, jdoubleArray perigee_out, jdoubleArray apogee_out, jdoubleArray a_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || satName_out == 0 || eltType_out == 0 || revNum_out == 0 || epochDs50UTC_out == 0 || bField_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || period_out == 0 || perigeeHt_out == 0 || apogeeHt_out == 0 || perigee_out == 0 || apogee_out == 0 || a_out == 0) {
        printf("Got NULL parameter passed to SatStateGetSatDataAll");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int eltType_len = (*env)->GetArrayLength(env, eltType_out);
    if (eltType_len < 1) {
        printf("eltType parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int epochDs50UTC_len = (*env)->GetArrayLength(env, epochDs50UTC_out);
    if (epochDs50UTC_len < 1) {
        printf("epochDs50UTC parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int bField_len = (*env)->GetArrayLength(env, bField_out);
    if (bField_len < 1) {
        printf("bField parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int period_len = (*env)->GetArrayLength(env, period_out);
    if (period_len < 1) {
        printf("period parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int perigeeHt_len = (*env)->GetArrayLength(env, perigeeHt_out);
    if (perigeeHt_len < 1) {
        printf("perigeeHt parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int apogeeHt_len = (*env)->GetArrayLength(env, apogeeHt_out);
    if (apogeeHt_len < 1) {
        printf("apogeeHt parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int perigee_len = (*env)->GetArrayLength(env, perigee_out);
    if (perigee_len < 1) {
        printf("perigee parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int apogee_len = (*env)->GetArrayLength(env, apogee_out);
    if (apogee_len < 1) {
        printf("apogee parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    int a_len = (*env)->GetArrayLength(env, a_out);
    if (a_len < 1) {
        printf("a parameter passed in SatStateGetSatDataAll is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *satNum_outArray = (jint *)((*env)->GetIntArrayElements(env, satNum_out, NULL));
    if (satNum_outArray == NULL) {
        printf("Failed to get elements for satNum array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *eltType_outArray = (jint *)((*env)->GetIntArrayElements(env, eltType_out, NULL));
    if (eltType_outArray == NULL) {
        printf("Failed to get elements for eltType array.");
        return (jint)(-1);
    }

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *epochDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDs50UTC_out, NULL));
    if (epochDs50UTC_outArray == NULL) {
        printf("Failed to get elements for epochDs50UTC array.");
        return (jint)(-1);
    }

    jdouble *bField_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bField_out, NULL));
    if (bField_outArray == NULL) {
        printf("Failed to get elements for bField array.");
        return (jint)(-1);
    }

    jint *elsetNum_outArray = (jint *)((*env)->GetIntArrayElements(env, elsetNum_out, NULL));
    if (elsetNum_outArray == NULL) {
        printf("Failed to get elements for elsetNum array.");
        return (jint)(-1);
    }

    jdouble *incli_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, incli_out, NULL));
    if (incli_outArray == NULL) {
        printf("Failed to get elements for incli array.");
        return (jint)(-1);
    }

    jdouble *node_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, node_out, NULL));
    if (node_outArray == NULL) {
        printf("Failed to get elements for node array.");
        return (jint)(-1);
    }

    jdouble *eccen_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, eccen_out, NULL));
    if (eccen_outArray == NULL) {
        printf("Failed to get elements for eccen array.");
        return (jint)(-1);
    }

    jdouble *omega_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, omega_out, NULL));
    if (omega_outArray == NULL) {
        printf("Failed to get elements for omega array.");
        return (jint)(-1);
    }

    jdouble *mnAnomaly_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, mnAnomaly_out, NULL));
    if (mnAnomaly_outArray == NULL) {
        printf("Failed to get elements for mnAnomaly array.");
        return (jint)(-1);
    }

    jdouble *mnMotion_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, mnMotion_out, NULL));
    if (mnMotion_outArray == NULL) {
        printf("Failed to get elements for mnMotion array.");
        return (jint)(-1);
    }

    jdouble *period_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, period_out, NULL));
    if (period_outArray == NULL) {
        printf("Failed to get elements for period array.");
        return (jint)(-1);
    }

    jdouble *perigeeHt_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, perigeeHt_out, NULL));
    if (perigeeHt_outArray == NULL) {
        printf("Failed to get elements for perigeeHt array.");
        return (jint)(-1);
    }

    jdouble *apogeeHt_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, apogeeHt_out, NULL));
    if (apogeeHt_outArray == NULL) {
        printf("Failed to get elements for apogeeHt array.");
        return (jint)(-1);
    }

    jdouble *perigee_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, perigee_out, NULL));
    if (perigee_outArray == NULL) {
        printf("Failed to get elements for perigee array.");
        return (jint)(-1);
    }

    jdouble *apogee_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, apogee_out, NULL));
    if (apogee_outArray == NULL) {
        printf("Failed to get elements for apogee array.");
        return (jint)(-1);
    }

    jdouble *a_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, a_out, NULL));
    if (a_outArray == NULL) {
        printf("Failed to get elements for a array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGetSatDataAll(satKey_in, satNum_outArray, satName_outArray, eltType_outArray, revNum_outArray, epochDs50UTC_outArray, bField_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, period_outArray, perigeeHt_outArray, apogeeHt_outArray, perigee_outArray, apogee_outArray, a_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, eltType_out, eltType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDs50UTC_out, epochDs50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bField_out, bField_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, period_out, period_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, perigeeHt_out, perigeeHt_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, apogeeHt_out, apogeeHt_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, perigee_out, perigee_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, apogee_out, apogee_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, a_out, a_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetSatDataField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Sat_in, jbyteArray retVal_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (retVal_out == 0) {
        printf("Got NULL parameter passed to SatStateGetSatDataField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *retVal_outArray = (jbyte *)((*env)->GetByteArrayElements(env, retVal_out, NULL));
    if (retVal_outArray == NULL) {
        printf("Failed to get elements for retVal array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGetSatDataField(satKey_in, xf_Sat_in, retVal_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, retVal_out, retVal_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateInitSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateInitSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateMse(JNIEnv* env, jclass jc, jlong satKey_in, jdouble mse_in, jdoubleArray ds50UTC_out, jintArray revNum_out, jdoubleArray pos_out, jdoubleArray vel_out, jdoubleArray llh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || revNum_out == 0 || pos_out == 0 || vel_out == 0 || llh_out == 0) {
        printf("Got NULL parameter passed to SatStateMse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in SatStateMse is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in SatStateMse is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in SatStateMse is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in SatStateMse is too small.");
        return (jint)(-1);
    }

    int llh_len = (*env)->GetArrayLength(env, llh_out);
    if (llh_len < 3) {
        printf("llh parameter passed in SatStateMse is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
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
    jint ret = SatStateMse(satKey_in, mse_in, ds50UTC_outArray, revNum_outArray, pos_outArray, vel_outArray, llh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, llh_out, llh_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateDs50UTC(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray mse_out, jintArray revNum_out, jdoubleArray pos_out, jdoubleArray vel_out, jdoubleArray llh_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (mse_out == 0 || revNum_out == 0 || pos_out == 0 || vel_out == 0 || llh_out == 0) {
        printf("Got NULL parameter passed to SatStateDs50UTC");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int mse_len = (*env)->GetArrayLength(env, mse_out);
    if (mse_len < 1) {
        printf("mse parameter passed in SatStateDs50UTC is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in SatStateDs50UTC is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in SatStateDs50UTC is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in SatStateDs50UTC is too small.");
        return (jint)(-1);
    }

    int llh_len = (*env)->GetArrayLength(env, llh_out);
    if (llh_len < 3) {
        printf("llh parameter passed in SatStateDs50UTC is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
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
    jint ret = SatStateDs50UTC(satKey_in, ds50UTC_in, mse_outArray, revNum_outArray, pos_outArray, vel_outArray, llh_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, mse_out, mse_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, llh_out, llh_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetPropOut(JNIEnv* env, jclass jc, jlong satKey_in, jint index_in, jdoubleArray destArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (destArr_out == 0) {
        printf("Got NULL parameter passed to SatStateGetPropOut");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int destArr_len = (*env)->GetArrayLength(env, destArr_out);
    if (destArr_len < 128) {
        printf("destArr parameter passed in SatStateGetPropOut is too small.");
        return (jint)(-1);
    }

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
    jint ret = SatStateGetPropOut(satKey_in, index_in, destArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, destArr_out, destArr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateEphCom(JNIEnv* env, jclass jc, jlong primSatKey_in, jlong secSatKey_in, jdouble ds50UTC_in, jint uvwFlag_in, jdoubleArray xa_Delta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_Delta_out == 0) {
        printf("Got NULL parameter passed to SatStateEphCom");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_Delta_len = (*env)->GetArrayLength(env, xa_Delta_out);
    if (xa_Delta_len < 100) {
        printf("xa_Delta parameter passed in SatStateEphCom is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_Delta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_Delta_out, NULL));
    if (xa_Delta_outArray == NULL) {
        printf("Failed to get elements for xa_Delta array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateEphCom(primSatKey_in, secSatKey_in, ds50UTC_in, uvwFlag_in, xa_Delta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_Delta_out, xa_Delta_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateEphCom_OS(JNIEnv* env, jclass jc, jdoubleArray priPosVel_in, jdoubleArray secPosVel_in, jdouble ds50UTC_in, jint uvwFlag_in, jdoubleArray xa_Delta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (priPosVel_in == 0 || secPosVel_in == 0 || xa_Delta_out == 0) {
        printf("Got NULL parameter passed to SatStateEphCom_OS");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int priPosVel_len = (*env)->GetArrayLength(env, priPosVel_in);
    if (priPosVel_len < 6) {
        printf("priPosVel parameter passed in SatStateEphCom_OS is too small.");
        return;
    }

    int secPosVel_len = (*env)->GetArrayLength(env, secPosVel_in);
    if (secPosVel_len < 6) {
        printf("secPosVel parameter passed in SatStateEphCom_OS is too small.");
        return;
    }

    int xa_Delta_len = (*env)->GetArrayLength(env, xa_Delta_out);
    if (xa_Delta_len < 100) {
        printf("xa_Delta parameter passed in SatStateEphCom_OS is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *priPosVel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, priPosVel_in, NULL));
    if (priPosVel_inArray == NULL) {
        printf("Failed to get elements for priPosVel array.");
        return;
    }

    jdouble *secPosVel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, secPosVel_in, NULL));
    if (secPosVel_inArray == NULL) {
        printf("Failed to get elements for secPosVel array.");
        return;
    }

    jdouble *xa_Delta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_Delta_out, NULL));
    if (xa_Delta_outArray == NULL) {
        printf("Failed to get elements for xa_Delta array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SatStateEphCom_OS(priPosVel_inArray, secPosVel_inArray, ds50UTC_in, uvwFlag_in, xa_Delta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_Delta_out, xa_Delta_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateHasCovMtx(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateHasCovMtx(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetCovUVW(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jobjectArray covUVW_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covUVW_out == 0) {
        printf("Got NULL parameter passed to SatStateGetCovUVW");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int covUVW_nRows = (*env)->GetArrayLength(env, covUVW_out);
    if (covUVW_nRows < 6) {
        printf("covUVW parameter passed in SatStateGetCovUVW is too small.");
        return (jint)(-1);
    }

    jdoubleArray covUVW_rowArray = (*env)->GetObjectArrayElement(env, covUVW_out, 0);
    int covUVW_nCols = (*env)->GetArrayLength(env, covUVW_rowArray);
    if (covUVW_nCols < 6) {
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covUVW_out, NULL));
    if (covUVW_outArray == NULL) {
        printf("Failed to get elements for covUVW array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covUVW_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGetCovUVW(satKey_in, ds50UTC_in, covUVW_array);

    for (row = 0; row < covUVW_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covUVW_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covUVW_nCols; col++) {
            elements[col] = covUVW_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGetCovUVW2Das1D(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray covUVW_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (covUVW_out == 0) {
        printf("Got NULL parameter passed to SatStateGetCovUVW");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *covUVW_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covUVW_out, NULL));
    if (covUVW_outArray == NULL) {
        printf("Failed to get elements for covUVW array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGetCovUVW(satKey_in, ds50UTC_in, covUVW_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, covUVW_out, covUVW_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_SatStateGenEphFile(JNIEnv* env, jclass jc, jlong satKey_in, jdouble startDs50UTC_in, jdouble stopDs50UTC_in, jdouble stepSizeSecs_in, jstring ephFileName_in, jint ephFileType_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ephFileName_in == 0) {
        printf("Got NULL parameter passed to SatStateGenEphFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *ephFileName_inArray = (char *)((*env)->GetStringUTFChars(env, ephFileName_in, NULL));
    if (ephFileName_inArray == NULL) {
        printf("Failed to get elements for ephFileName array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatStateGenEphFile(satKey_in, startDs50UTC_in, stopDs50UTC_in, stepSizeSecs_in, ephFileName_inArray, ephFileType_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniSatState_GetNodalCrossingPriorToTime(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50TAI_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = GetNodalCrossingPriorToTime(satKey_in, ds50TAI_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_GetGobsParams(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray xa_gobs_out, jintArray errCode_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_gobs_out == 0 || errCode_out == 0) {
        printf("Got NULL parameter passed to GetGobsParams");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_gobs_len = (*env)->GetArrayLength(env, xa_gobs_out);
    if (xa_gobs_len < 32) {
        printf("xa_gobs parameter passed in GetGobsParams is too small.");
        return;
    }

    int errCode_len = (*env)->GetArrayLength(env, errCode_out);
    if (errCode_len < 1) {
        printf("errCode parameter passed in GetGobsParams is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_gobs_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_out, NULL));
    if (xa_gobs_outArray == NULL) {
        printf("Failed to get elements for xa_gobs array.");
        return;
    }

    jint *errCode_outArray = (jint *)((*env)->GetIntArrayElements(env, errCode_out, NULL));
    if (errCode_outArray == NULL) {
        printf("Failed to get elements for errCode array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GetGobsParams(satKey_in, ds50UTC_in, xa_gobs_outArray, errCode_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_gobs_out, xa_gobs_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, errCode_out, errCode_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSatState_GobsCom(JNIEnv* env, jclass jc, jlong primSatKey_in, jlong secSatKey_in, jdouble ds50UTC_in, jdoubleArray xa_gobs_lim_in, jdoubleArray xa_gobs_delta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_gobs_lim_in == 0 || xa_gobs_delta_out == 0) {
        printf("Got NULL parameter passed to GobsCom");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_gobs_lim_len = (*env)->GetArrayLength(env, xa_gobs_lim_in);
    if (xa_gobs_lim_len < 16) {
        printf("xa_gobs_lim parameter passed in GobsCom is too small.");
        return (jint)(-1);
    }

    int xa_gobs_delta_len = (*env)->GetArrayLength(env, xa_gobs_delta_out);
    if (xa_gobs_delta_len < 16) {
        printf("xa_gobs_delta parameter passed in GobsCom is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_gobs_lim_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_lim_in, NULL));
    if (xa_gobs_lim_inArray == NULL) {
        printf("Failed to get elements for xa_gobs_lim array.");
        return (jint)(-1);
    }

    jdouble *xa_gobs_delta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_delta_out, NULL));
    if (xa_gobs_delta_outArray == NULL) {
        printf("Failed to get elements for xa_gobs_delta array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GobsCom(primSatKey_in, secSatKey_in, ds50UTC_in, xa_gobs_lim_inArray, xa_gobs_delta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_gobs_delta_out, xa_gobs_delta_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSatState_GobsComArr(JNIEnv* env, jclass jc, jdoubleArray xa_gobs_prim_in, jdoubleArray xa_gobs_sec_in, jdoubleArray xa_gobs_lim_in, jdoubleArray xa_gobs_delta_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_gobs_prim_in == 0 || xa_gobs_sec_in == 0 || xa_gobs_lim_in == 0 || xa_gobs_delta_out == 0) {
        printf("Got NULL parameter passed to GobsComArr");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_gobs_prim_len = (*env)->GetArrayLength(env, xa_gobs_prim_in);
    if (xa_gobs_prim_len < 32) {
        printf("xa_gobs_prim parameter passed in GobsComArr is too small.");
        return;
    }

    int xa_gobs_sec_len = (*env)->GetArrayLength(env, xa_gobs_sec_in);
    if (xa_gobs_sec_len < 32) {
        printf("xa_gobs_sec parameter passed in GobsComArr is too small.");
        return;
    }

    int xa_gobs_lim_len = (*env)->GetArrayLength(env, xa_gobs_lim_in);
    if (xa_gobs_lim_len < 16) {
        printf("xa_gobs_lim parameter passed in GobsComArr is too small.");
        return;
    }

    int xa_gobs_delta_len = (*env)->GetArrayLength(env, xa_gobs_delta_out);
    if (xa_gobs_delta_len < 16) {
        printf("xa_gobs_delta parameter passed in GobsComArr is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_gobs_prim_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_prim_in, NULL));
    if (xa_gobs_prim_inArray == NULL) {
        printf("Failed to get elements for xa_gobs_prim array.");
        return;
    }

    jdouble *xa_gobs_sec_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_sec_in, NULL));
    if (xa_gobs_sec_inArray == NULL) {
        printf("Failed to get elements for xa_gobs_sec array.");
        return;
    }

    jdouble *xa_gobs_lim_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_lim_in, NULL));
    if (xa_gobs_lim_inArray == NULL) {
        printf("Failed to get elements for xa_gobs_lim array.");
        return;
    }

    jdouble *xa_gobs_delta_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_gobs_delta_out, NULL));
    if (xa_gobs_delta_outArray == NULL) {
        printf("Failed to get elements for xa_gobs_delta array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    GobsComArr(xa_gobs_prim_inArray, xa_gobs_sec_inArray, xa_gobs_lim_inArray, xa_gobs_delta_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_gobs_delta_out, xa_gobs_delta_outArray, 0);

}
// ========================= End of auto generated code ==========================
