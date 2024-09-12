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
#include "../../wrappers/AstroFuncDll.h"
#include "../../wrappers/ExtEphemDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_LoadExtEphemDll(JNIEnv* env, jclass jc)
{
    LoadExtEphemDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadExtEphemDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetInfo");
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
    ExtEphGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphLoadFile(JNIEnv* env, jclass jc, jstring extEphFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (extEphFile_in == 0) {
        printf("Got NULL parameter passed to ExtEphLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *extEphFile_inArray = (char *)((*env)->GetStringUTFChars(env, extEphFile_in, NULL));
    if (extEphFile_inArray == NULL) {
        printf("Failed to get elements for extEphFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphLoadFile(extEphFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphSaveFile(JNIEnv* env, jclass jc, jstring extEphFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (extEphFile_in == 0) {
        printf("Got NULL parameter passed to ExtEphSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *extEphFile_inArray = (char *)((*env)->GetStringUTFChars(env, extEphFile_in, NULL));
    if (extEphFile_inArray == NULL) {
        printf("Failed to get elements for extEphFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphSaveFile(extEphFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphRemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphRemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphRemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphRemoveAllSats();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray satKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetLoaded");
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
    ExtEphGetLoaded(order_in, satKeys_longOutArray);

    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_outArray[ii] = satKeys_longOutArray[ii];
    }

    free(satKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKeys_out, satKeys_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphAddSat(JNIEnv* env, jclass jc, jint satNum_in, jdouble epochDs50UTC_in, jdouble ae_in, jdouble ke_in, jint coordSys_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ExtEphAddSat(satNum_in, epochDs50UTC_in, ae_in, ke_in, coordSys_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphAddSatEphem(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray pos_in, jdoubleArray vel_in, jint revNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0) {
        printf("Got NULL parameter passed to ExtEphAddSatEphem");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphAddSatEphem is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphAddSatEphem is too small.");
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

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphAddSatEphem(satKey_in, ds50UTC_in, pos_inArray, vel_inArray, revNum_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphAddSatEphemCovMtx(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray pos_in, jdoubleArray vel_in, jint revNum_in, jdoubleArray covUVW_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || covUVW_in == 0) {
        printf("Got NULL parameter passed to ExtEphAddSatEphemCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphAddSatEphemCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphAddSatEphemCovMtx is too small.");
        return (jint)(-1);
    }

    int covUVW_len = (*env)->GetArrayLength(env, covUVW_in);
    if (covUVW_len < 21) {
        printf("covUVW parameter passed in ExtEphAddSatEphemCovMtx is too small.");
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

    jdouble *covUVW_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covUVW_in, NULL));
    if (covUVW_inArray == NULL) {
        printf("Failed to get elements for covUVW array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphAddSatEphemCovMtx(satKey_in, ds50UTC_in, pos_inArray, vel_inArray, revNum_in, covUVW_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphAddSatEphemExt(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray pos_in, jdoubleArray vel_in, jint revNum_in, jdoubleArray extArr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || extArr_in == 0) {
        printf("Got NULL parameter passed to ExtEphAddSatEphemExt");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphAddSatEphemExt is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphAddSatEphemExt is too small.");
        return (jint)(-1);
    }

    int extArr_len = (*env)->GetArrayLength(env, extArr_in);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ExtEphAddSatEphemExt is too small.");
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

    jdouble *extArr_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_in, NULL));
    if (extArr_inArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphAddSatEphemExt(satKey_in, ds50UTC_in, pos_inArray, vel_inArray, revNum_in, extArr_inArray);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphAddSatFrFile(JNIEnv* env, jclass jc, jstring extEphFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (extEphFile_in == 0) {
        printf("Got NULL parameter passed to ExtEphAddSatFrFile");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *extEphFile_inArray = (char *)((*env)->GetStringUTFChars(env, extEphFile_in, NULL));
    if (extEphFile_inArray == NULL) {
        printf("Failed to get elements for extEphFile array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ExtEphAddSatFrFile(extEphFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetAllFields(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray satName_out, jbyteArray recName_out, jdoubleArray epochDs50UTC_out, jdoubleArray ae_out, jdoubleArray ke_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray coordSys_out, jintArray numOfPts_out, jbyteArray fileLoc_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || satName_out == 0 || recName_out == 0 || epochDs50UTC_out == 0 || ae_out == 0 || ke_out == 0 || pos_out == 0 || vel_out == 0 || coordSys_out == 0 || numOfPts_out == 0 || fileLoc_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetAllFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int epochDs50UTC_len = (*env)->GetArrayLength(env, epochDs50UTC_out);
    if (epochDs50UTC_len < 1) {
        printf("epochDs50UTC parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int ae_len = (*env)->GetArrayLength(env, ae_out);
    if (ae_len < 1) {
        printf("ae parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int ke_len = (*env)->GetArrayLength(env, ke_out);
    if (ke_len < 1) {
        printf("ke parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int coordSys_len = (*env)->GetArrayLength(env, coordSys_out);
    if (coordSys_len < 1) {
        printf("coordSys parameter passed in ExtEphGetAllFields is too small.");
        return (jint)(-1);
    }

    int numOfPts_len = (*env)->GetArrayLength(env, numOfPts_out);
    if (numOfPts_len < 1) {
        printf("numOfPts parameter passed in ExtEphGetAllFields is too small.");
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

    jbyte *recName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, recName_out, NULL));
    if (recName_outArray == NULL) {
        printf("Failed to get elements for recName array.");
        return (jint)(-1);
    }

    jdouble *epochDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDs50UTC_out, NULL));
    if (epochDs50UTC_outArray == NULL) {
        printf("Failed to get elements for epochDs50UTC array.");
        return (jint)(-1);
    }

    jdouble *ae_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ae_out, NULL));
    if (ae_outArray == NULL) {
        printf("Failed to get elements for ae array.");
        return (jint)(-1);
    }

    jdouble *ke_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ke_out, NULL));
    if (ke_outArray == NULL) {
        printf("Failed to get elements for ke array.");
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

    jint *coordSys_outArray = (jint *)((*env)->GetIntArrayElements(env, coordSys_out, NULL));
    if (coordSys_outArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return (jint)(-1);
    }

    jint *numOfPts_outArray = (jint *)((*env)->GetIntArrayElements(env, numOfPts_out, NULL));
    if (numOfPts_outArray == NULL) {
        printf("Failed to get elements for numOfPts array.");
        return (jint)(-1);
    }

    jbyte *fileLoc_outArray = (jbyte *)((*env)->GetByteArrayElements(env, fileLoc_out, NULL));
    if (fileLoc_outArray == NULL) {
        printf("Failed to get elements for fileLoc array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetAllFields(satKey_in, satNum_outArray, satName_outArray, recName_outArray, epochDs50UTC_outArray, ae_outArray, ke_outArray, pos_outArray, vel_outArray, coordSys_outArray, numOfPts_outArray, fileLoc_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, recName_out, recName_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDs50UTC_out, epochDs50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ae_out, ae_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ke_out, ke_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, coordSys_out, coordSys_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, numOfPts_out, numOfPts_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, fileLoc_out, fileLoc_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_ExtEph_in, jbyteArray valueStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *valueStr_outArray = (jbyte *)((*env)->GetByteArrayElements(env, valueStr_out, NULL));
    if (valueStr_outArray == NULL) {
        printf("Failed to get elements for valueStr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetField(satKey_in, xf_ExtEph_in, valueStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, valueStr_out, valueStr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphSetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_ExtEph_in, jstring valueStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_in == 0) {
        printf("Got NULL parameter passed to ExtEphSetField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *valueStr_inArray = (char *)((*env)->GetStringUTFChars(env, valueStr_in, NULL));
    if (valueStr_inArray == NULL) {
        printf("Failed to get elements for valueStr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphSetField(satKey_in, xf_ExtEph_in, valueStr_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphStartEndTime(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray startDs50UTC_out, jdoubleArray endDs50UTC_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (startDs50UTC_out == 0 || endDs50UTC_out == 0) {
        printf("Got NULL parameter passed to ExtEphStartEndTime");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int startDs50UTC_len = (*env)->GetArrayLength(env, startDs50UTC_out);
    if (startDs50UTC_len < 1) {
        printf("startDs50UTC parameter passed in ExtEphStartEndTime is too small.");
        return (jint)(-1);
    }

    int endDs50UTC_len = (*env)->GetArrayLength(env, endDs50UTC_out);
    if (endDs50UTC_len < 1) {
        printf("endDs50UTC parameter passed in ExtEphStartEndTime is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *startDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, startDs50UTC_out, NULL));
    if (startDs50UTC_outArray == NULL) {
        printf("Failed to get elements for startDs50UTC array.");
        return (jint)(-1);
    }

    jdouble *endDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, endDs50UTC_out, NULL));
    if (endDs50UTC_outArray == NULL) {
        printf("Failed to get elements for endDs50UTC array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphStartEndTime(satKey_in, startDs50UTC_outArray, endDs50UTC_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, startDs50UTC_out, startDs50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, endDs50UTC_out, endDs50UTC_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetEphemeris(JNIEnv* env, jclass jc, jlong satKey_in, jint index_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetEphemeris");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphGetEphemeris is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphGetEphemeris is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphGetEphemeris is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphGetEphemeris is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetEphemeris(satKey_in, index_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetCovMtx(JNIEnv* env, jclass jc, jlong satKey_in, jint index_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jobjectArray covMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int covMtx_nRows = (*env)->GetArrayLength(env, covMtx_out);
    if (covMtx_nRows < 6) {
        printf("covMtx parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    jdoubleArray covMtx_rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, 0);
    int covMtx_nCols = (*env)->GetArrayLength(env, covMtx_rowArray);
    if (covMtx_nCols < 6) {
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetCovMtx(satKey_in, index_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_array);

    for (row = 0; row < covMtx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtx_nCols; col++) {
            elements[col] = covMtx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetCovMtx2Das1D(JNIEnv* env, jclass jc, jlong satKey_in, jint index_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jdoubleArray covMtx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphGetCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphGetCovMtx is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetCovMtx(satKey_in, index_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, covMtx_out, covMtx_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphMse(JNIEnv* env, jclass jc, jlong satKey_in, jdouble mse_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to ExtEphMse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphMse is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphMse is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphMse is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphMse is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphMse(satKey_in, mse_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphMseCovMtx(JNIEnv* env, jclass jc, jlong satKey_in, jdouble mse_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jobjectArray covMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphMseCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int covMtx_nRows = (*env)->GetArrayLength(env, covMtx_out);
    if (covMtx_nRows < 6) {
        printf("covMtx parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    jdoubleArray covMtx_rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, 0);
    int covMtx_nCols = (*env)->GetArrayLength(env, covMtx_rowArray);
    if (covMtx_nCols < 6) {
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphMseCovMtx(satKey_in, mse_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_array);

    for (row = 0; row < covMtx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtx_nCols; col++) {
            elements[col] = covMtx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphMseCovMtx2Das1D(JNIEnv* env, jclass jc, jlong satKey_in, jdouble mse_in, jdoubleArray ds50UTC_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jdoubleArray covMtx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (ds50UTC_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphMseCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int ds50UTC_len = (*env)->GetArrayLength(env, ds50UTC_out);
    if (ds50UTC_len < 1) {
        printf("ds50UTC parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphMseCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphMseCovMtx is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphMseCovMtx(satKey_in, mse_in, ds50UTC_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, ds50UTC_out, ds50UTC_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, covMtx_out, covMtx_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphDs50UTC(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray mse_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (mse_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to ExtEphDs50UTC");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int mse_len = (*env)->GetArrayLength(env, mse_out);
    if (mse_len < 1) {
        printf("mse parameter passed in ExtEphDs50UTC is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphDs50UTC is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphDs50UTC is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphDs50UTC is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphDs50UTC(satKey_in, ds50UTC_in, mse_outArray, pos_outArray, vel_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, mse_out, mse_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphDs50UTCCovMtx(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray mse_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jobjectArray covMtx_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (mse_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphDs50UTCCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int mse_len = (*env)->GetArrayLength(env, mse_out);
    if (mse_len < 1) {
        printf("mse parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int covMtx_nRows = (*env)->GetArrayLength(env, covMtx_out);
    if (covMtx_nRows < 6) {
        printf("covMtx parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    jdoubleArray covMtx_rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, 0);
    int covMtx_nCols = (*env)->GetArrayLength(env, covMtx_rowArray);
    if (covMtx_nCols < 6) {
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Convert jobjectArray to a local primitive array
    ///////////////////////////////////////////////////////////////////////
    double covMtx_array[6][6];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphDs50UTCCovMtx(satKey_in, ds50UTC_in, mse_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_array);

    for (row = 0; row < covMtx_nRows; row++) {
        jdoubleArray rowArray = (*env)->GetObjectArrayElement(env, covMtx_out, row);
        jdouble* elements = (*env)->GetDoubleArrayElements(env, rowArray, NULL);
        for (col = 0; col < covMtx_nCols; col++) {
            elements[col] = covMtx_array[row][col];
        }
        (*env)->ReleaseDoubleArrayElements(env, rowArray, elements, 0);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, mse_out, mse_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}
JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphDs50UTCCovMtx2Das1D(JNIEnv* env, jclass jc, jlong satKey_in, jdouble ds50UTC_in, jdoubleArray mse_out, jdoubleArray pos_out, jdoubleArray vel_out, jintArray revNum_out, jdoubleArray covMtx_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (mse_out == 0 || pos_out == 0 || vel_out == 0 || revNum_out == 0 || covMtx_out == 0) {
        printf("Got NULL parameter passed to ExtEphDs50UTCCovMtx");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int mse_len = (*env)->GetArrayLength(env, mse_out);
    if (mse_len < 1) {
        printf("mse parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in ExtEphDs50UTCCovMtx is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in ExtEphDs50UTCCovMtx is too small.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *covMtx_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, covMtx_out, NULL));
    if (covMtx_outArray == NULL) {
        printf("Failed to get elements for covMtx array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphDs50UTCCovMtx(satKey_in, ds50UTC_in, mse_outArray, pos_outArray, vel_outArray, revNum_outArray, covMtx_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, mse_out, mse_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, covMtx_out, covMtx_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphXten(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_getEph_in, jdouble inVal_in, jdoubleArray extArr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (extArr_out == 0) {
        printf("Got NULL parameter passed to ExtEphXten");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int extArr_len = (*env)->GetArrayLength(env, extArr_out);
    if (extArr_len < 128) {
        printf("extArr parameter passed in ExtEphXten is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *extArr_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, extArr_out, NULL));
    if (extArr_outArray == NULL) {
        printf("Failed to get elements for extArr array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphXten(satKey_in, xf_getEph_in, inVal_in, extArr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, extArr_out, extArr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetLine(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray line_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line_out == 0) {
        printf("Got NULL parameter passed to ExtEphGetLine");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *line_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line_out, NULL));
    if (line_outArray == NULL) {
        printf("Failed to get elements for line array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ExtEphGetLine(satKey_in, line_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line_out, line_outArray, 0);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphGetSatKey(JNIEnv* env, jclass jc, jint satNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ExtEphGetSatKey(satNum_in);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniExtEphem_ExtEphFieldsToSatKey(JNIEnv* env, jclass jc, jint satNum_in, jstring epochDtg_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (epochDtg_in == 0) {
        printf("Got NULL parameter passed to ExtEphFieldsToSatKey");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *epochDtg_inArray = (char *)((*env)->GetStringUTFChars(env, epochDtg_in, NULL));
    if (epochDtg_inArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = ExtEphFieldsToSatKey(satNum_in, epochDtg_inArray);

    return ret;
}
// ========================= End of auto generated code ==========================
