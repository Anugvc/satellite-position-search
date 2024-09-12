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
#include "../../wrappers/SpVecDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_LoadSpVecDll(JNIEnv* env, jclass jc)
{
    LoadSpVecDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadSpVecDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to SpVecGetInfo");
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
    SpVecGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecLoadFile(JNIEnv* env, jclass jc, jstring spVecFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (spVecFile_in == 0) {
        printf("Got NULL parameter passed to SpVecLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *spVecFile_inArray = (char *)((*env)->GetStringUTFChars(env, spVecFile_in, NULL));
    if (spVecFile_inArray == NULL) {
        printf("Failed to get elements for spVecFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecLoadFile(spVecFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecSaveFile(JNIEnv* env, jclass jc, jstring spVecFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (spVecFile_in == 0) {
        printf("Got NULL parameter passed to SpVecSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *spVecFile_inArray = (char *)((*env)->GetStringUTFChars(env, spVecFile_in, NULL));
    if (spVecFile_inArray == NULL) {
        printf("Failed to get elements for spVecFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecSaveFile(spVecFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecRemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecRemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecRemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecRemoveAllSats();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray satKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_out == 0) {
        printf("Got NULL parameter passed to SpVecGetLoaded");
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
    SpVecGetLoaded(order_in, satKeys_longOutArray);

    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_outArray[ii] = satKeys_longOutArray[ii];
    }

    free(satKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKeys_out, satKeys_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrLines(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrLines");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *line1_inArray = (char *)((*env)->GetStringUTFChars(env, line1_in, NULL));
    if (line1_inArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jlong)(-1);
    }

    char *line2_inArray = (char *)((*env)->GetStringUTFChars(env, line2_in, NULL));
    if (line2_inArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SpVecAddSatFrLines(line1_inArray, line2_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrLinesML(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrLinesML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in SpVecAddSatFrLinesML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *line1_inArray = (char *)((*env)->GetStringUTFChars(env, line1_in, NULL));
    if (line1_inArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return;
    }

    char *line2_inArray = (char *)((*env)->GetStringUTFChars(env, line2_in, NULL));
    if (line2_inArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return;
    }

    jlong *satKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKey_out, NULL));
    if (satKey_outArray == NULL) {
        printf("Failed to get elements for satKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 satKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecAddSatFrLinesML(line1_inArray, line2_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrFields(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jbyte secClass_in, jint satNum_in, jstring satName_in, jstring epochDtg_in, jint revNum_in, jint elsetNum_in, jdouble bterm_in, jdouble agom_in, jdouble ogParm_in, jstring coordSys_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || satName_in == 0 || epochDtg_in == 0 || coordSys_in == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrFields");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecAddSatFrFields is too small.");
        return (jlong)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecAddSatFrFields is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *pos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, pos_in, NULL));
    if (pos_inArray == NULL) {
        printf("Failed to get elements for pos array.");
        return (jlong)(-1);
    }

    jdouble *vel_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, vel_in, NULL));
    if (vel_inArray == NULL) {
        printf("Failed to get elements for vel array.");
        return (jlong)(-1);
    }

    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jlong)(-1);
    }

    char *epochDtg_inArray = (char *)((*env)->GetStringUTFChars(env, epochDtg_in, NULL));
    if (epochDtg_inArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return (jlong)(-1);
    }

    char *coordSys_inArray = (char *)((*env)->GetStringUTFChars(env, coordSys_in, NULL));
    if (coordSys_inArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SpVecAddSatFrFields(pos_inArray, vel_inArray, secClass_in, satNum_in, satName_inArray, epochDtg_inArray, revNum_in, elsetNum_in, bterm_in, agom_in, ogParm_in, coordSys_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrFieldsML(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jbyte secClass_in, jint satNum_in, jstring satName_in, jstring epochDtg_in, jint revNum_in, jint elsetNum_in, jdouble bterm_in, jdouble agom_in, jdouble ogParm_in, jstring coordSys_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || satName_in == 0 || epochDtg_in == 0 || coordSys_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrFieldsML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecAddSatFrFieldsML is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecAddSatFrFieldsML is too small.");
        return;
    }

    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in SpVecAddSatFrFieldsML is too small.");
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

    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return;
    }

    char *epochDtg_inArray = (char *)((*env)->GetStringUTFChars(env, epochDtg_in, NULL));
    if (epochDtg_inArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return;
    }

    char *coordSys_inArray = (char *)((*env)->GetStringUTFChars(env, coordSys_in, NULL));
    if (coordSys_inArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return;
    }

    jlong *satKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKey_out, NULL));
    if (satKey_outArray == NULL) {
        printf("Failed to get elements for satKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 satKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecAddSatFrFieldsML(pos_inArray, vel_inArray, secClass_in, satNum_in, satName_inArray, epochDtg_inArray, revNum_in, elsetNum_in, bterm_in, agom_in, ogParm_in, coordSys_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecUpdateSatFrFields(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray pos_in, jdoubleArray vel_in, jbyte secClass_in, jstring satName_in, jint revNum_in, jint elsetNum_in, jdouble bterm_in, jdouble agom_in, jdouble ogParm_in, jstring coordSys_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || satName_in == 0 || coordSys_in == 0) {
        printf("Got NULL parameter passed to SpVecUpdateSatFrFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecUpdateSatFrFields is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecUpdateSatFrFields is too small.");
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

    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    char *coordSys_inArray = (char *)((*env)->GetStringUTFChars(env, coordSys_in, NULL));
    if (coordSys_inArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecUpdateSatFrFields(satKey_in, pos_inArray, vel_inArray, secClass_in, satName_inArray, revNum_in, elsetNum_in, bterm_in, agom_in, ogParm_in, coordSys_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_SpVec_in, jbyteArray valueStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_out == 0) {
        printf("Got NULL parameter passed to SpVecGetField");
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
    jint ret = SpVecGetField(satKey_in, xf_SpVec_in, valueStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, valueStr_out, valueStr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecSetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_SpVec_in, jstring valueStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_in == 0) {
        printf("Got NULL parameter passed to SpVecSetField");
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
    jint ret = SpVecSetField(satKey_in, xf_SpVec_in, valueStr_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetAllFields(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray pos_out, jdoubleArray vel_out, jbyteArray secClass_out, jintArray satNum_out, jbyteArray satName_out, jbyteArray epochDtg_out, jintArray revNum_out, jintArray elsetNum_out, jdoubleArray bterm_out, jdoubleArray agom_out, jdoubleArray ogParm_out, jbyteArray coordSys_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_out == 0 || vel_out == 0 || secClass_out == 0 || satNum_out == 0 || satName_out == 0 || epochDtg_out == 0 || revNum_out == 0 || elsetNum_out == 0 || bterm_out == 0 || agom_out == 0 || ogParm_out == 0 || coordSys_out == 0) {
        printf("Got NULL parameter passed to SpVecGetAllFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int bterm_len = (*env)->GetArrayLength(env, bterm_out);
    if (bterm_len < 1) {
        printf("bterm parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int agom_len = (*env)->GetArrayLength(env, agom_out);
    if (agom_len < 1) {
        printf("agom parameter passed in SpVecGetAllFields is too small.");
        return (jint)(-1);
    }

    int ogParm_len = (*env)->GetArrayLength(env, ogParm_out);
    if (ogParm_len < 1) {
        printf("ogParm parameter passed in SpVecGetAllFields is too small.");
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

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

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

    jbyte *epochDtg_outArray = (jbyte *)((*env)->GetByteArrayElements(env, epochDtg_out, NULL));
    if (epochDtg_outArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return (jint)(-1);
    }

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jint *elsetNum_outArray = (jint *)((*env)->GetIntArrayElements(env, elsetNum_out, NULL));
    if (elsetNum_outArray == NULL) {
        printf("Failed to get elements for elsetNum array.");
        return (jint)(-1);
    }

    jdouble *bterm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bterm_out, NULL));
    if (bterm_outArray == NULL) {
        printf("Failed to get elements for bterm array.");
        return (jint)(-1);
    }

    jdouble *agom_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, agom_out, NULL));
    if (agom_outArray == NULL) {
        printf("Failed to get elements for agom array.");
        return (jint)(-1);
    }

    jdouble *ogParm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ogParm_out, NULL));
    if (ogParm_outArray == NULL) {
        printf("Failed to get elements for ogParm array.");
        return (jint)(-1);
    }

    jbyte *coordSys_outArray = (jbyte *)((*env)->GetByteArrayElements(env, coordSys_out, NULL));
    if (coordSys_outArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecGetAllFields(satKey_in, pos_outArray, vel_outArray, secClass_outArray, satNum_outArray, satName_outArray, epochDtg_outArray, revNum_outArray, elsetNum_outArray, bterm_outArray, agom_outArray, ogParm_outArray, coordSys_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, epochDtg_out, epochDtg_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bterm_out, bterm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, agom_out, agom_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ogParm_out, ogParm_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, coordSys_out, coordSys_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecParse(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jdoubleArray pos_out, jdoubleArray vel_out, jbyteArray secClass_out, jintArray satNum_out, jbyteArray satName_out, jbyteArray epochDtg_out, jintArray revNum_out, jintArray elsetNum_out, jdoubleArray bterm_out, jdoubleArray agom_out, jdoubleArray ogParm_out, jbyteArray coordSys_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || pos_out == 0 || vel_out == 0 || secClass_out == 0 || satNum_out == 0 || satName_out == 0 || epochDtg_out == 0 || revNum_out == 0 || elsetNum_out == 0 || bterm_out == 0 || agom_out == 0 || ogParm_out == 0 || coordSys_out == 0) {
        printf("Got NULL parameter passed to SpVecParse");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_out);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int vel_len = (*env)->GetArrayLength(env, vel_out);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int bterm_len = (*env)->GetArrayLength(env, bterm_out);
    if (bterm_len < 1) {
        printf("bterm parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int agom_len = (*env)->GetArrayLength(env, agom_out);
    if (agom_len < 1) {
        printf("agom parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    int ogParm_len = (*env)->GetArrayLength(env, ogParm_out);
    if (ogParm_len < 1) {
        printf("ogParm parameter passed in SpVecParse is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *line1_inArray = (char *)((*env)->GetStringUTFChars(env, line1_in, NULL));
    if (line1_inArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jint)(-1);
    }

    char *line2_inArray = (char *)((*env)->GetStringUTFChars(env, line2_in, NULL));
    if (line2_inArray == NULL) {
        printf("Failed to get elements for line2 array.");
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

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

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

    jbyte *epochDtg_outArray = (jbyte *)((*env)->GetByteArrayElements(env, epochDtg_out, NULL));
    if (epochDtg_outArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return (jint)(-1);
    }

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jint *elsetNum_outArray = (jint *)((*env)->GetIntArrayElements(env, elsetNum_out, NULL));
    if (elsetNum_outArray == NULL) {
        printf("Failed to get elements for elsetNum array.");
        return (jint)(-1);
    }

    jdouble *bterm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bterm_out, NULL));
    if (bterm_outArray == NULL) {
        printf("Failed to get elements for bterm array.");
        return (jint)(-1);
    }

    jdouble *agom_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, agom_out, NULL));
    if (agom_outArray == NULL) {
        printf("Failed to get elements for agom array.");
        return (jint)(-1);
    }

    jdouble *ogParm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ogParm_out, NULL));
    if (ogParm_outArray == NULL) {
        printf("Failed to get elements for ogParm array.");
        return (jint)(-1);
    }

    jbyte *coordSys_outArray = (jbyte *)((*env)->GetByteArrayElements(env, coordSys_out, NULL));
    if (coordSys_outArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecParse(line1_inArray, line2_inArray, pos_outArray, vel_outArray, secClass_outArray, satNum_outArray, satName_outArray, epochDtg_outArray, revNum_outArray, elsetNum_outArray, bterm_outArray, agom_outArray, ogParm_outArray, coordSys_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, pos_out, pos_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, vel_out, vel_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, epochDtg_out, epochDtg_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bterm_out, bterm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, agom_out, agom_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ogParm_out, ogParm_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, coordSys_out, coordSys_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecLinesToArray(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jdoubleArray xa_spVec_out, jbyteArray xs_spVec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || xa_spVec_out == 0 || xs_spVec_out == 0) {
        printf("Got NULL parameter passed to SpVecLinesToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_out);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecLinesToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *line1_inArray = (char *)((*env)->GetStringUTFChars(env, line1_in, NULL));
    if (line1_inArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jint)(-1);
    }

    char *line2_inArray = (char *)((*env)->GetStringUTFChars(env, line2_in, NULL));
    if (line2_inArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return (jint)(-1);
    }

    jdouble *xa_spVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_out, NULL));
    if (xa_spVec_outArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return (jint)(-1);
    }

    jbyte *xs_spVec_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_spVec_out, NULL));
    if (xs_spVec_outArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecLinesToArray(line1_inArray, line2_inArray, xa_spVec_outArray, xs_spVec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_spVec_out, xa_spVec_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_spVec_out, xs_spVec_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetLines(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to SpVecGetLines");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *line1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line1_out, NULL));
    if (line1_outArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return (jint)(-1);
    }

    jbyte *line2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line2_out, NULL));
    if (line2_outArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecGetLines(satKey_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecFieldsToLines(JNIEnv* env, jclass jc, jdoubleArray pos_in, jdoubleArray vel_in, jbyte secClass_in, jint satNum_in, jstring satName_in, jstring epochDtg_in, jint revNum_in, jint elsetNum_in, jdouble bterm_in, jdouble agom_in, jdouble ogParm_in, jstring coordSys_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (pos_in == 0 || vel_in == 0 || satName_in == 0 || epochDtg_in == 0 || coordSys_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to SpVecFieldsToLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int pos_len = (*env)->GetArrayLength(env, pos_in);
    if (pos_len < 3) {
        printf("pos parameter passed in SpVecFieldsToLines is too small.");
        return;
    }

    int vel_len = (*env)->GetArrayLength(env, vel_in);
    if (vel_len < 3) {
        printf("vel parameter passed in SpVecFieldsToLines is too small.");
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

    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return;
    }

    char *epochDtg_inArray = (char *)((*env)->GetStringUTFChars(env, epochDtg_in, NULL));
    if (epochDtg_inArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return;
    }

    char *coordSys_inArray = (char *)((*env)->GetStringUTFChars(env, coordSys_in, NULL));
    if (coordSys_inArray == NULL) {
        printf("Failed to get elements for coordSys array.");
        return;
    }

    jbyte *line1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line1_out, NULL));
    if (line1_outArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return;
    }

    jbyte *line2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line2_out, NULL));
    if (line2_outArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecFieldsToLines(pos_inArray, vel_inArray, secClass_in, satNum_in, satName_inArray, epochDtg_inArray, revNum_in, elsetNum_in, bterm_in, agom_in, ogParm_in, coordSys_inArray, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecArrayToLines(JNIEnv* env, jclass jc, jdoubleArray xa_spVec_in, jstring xs_spVec_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_spVec_in == 0 || xs_spVec_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to SpVecArrayToLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_in);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecArrayToLines is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_spVec_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_in, NULL));
    if (xa_spVec_inArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return;
    }

    char *xs_spVec_inArray = (char *)((*env)->GetStringUTFChars(env, xs_spVec_in, NULL));
    if (xs_spVec_inArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return;
    }

    jbyte *line1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line1_out, NULL));
    if (line1_outArray == NULL) {
        printf("Failed to get elements for line1 array.");
        return;
    }

    jbyte *line2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, line2_out, NULL));
    if (line2_outArray == NULL) {
        printf("Failed to get elements for line2 array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecArrayToLines(xa_spVec_inArray, xs_spVec_inArray, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetSatKey(JNIEnv* env, jclass jc, jint satNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SpVecGetSatKey(satNum_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecGetSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKey_out == 0) {
        printf("Got NULL parameter passed to SpVecGetSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in SpVecGetSatKeyML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *satKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKey_out, NULL));
    if (satKey_outArray == NULL) {
        printf("Failed to get elements for satKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 satKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecGetSatKeyML(satNum_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecFieldsToSatKey(JNIEnv* env, jclass jc, jint satNum_in, jstring epochDtg_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (epochDtg_in == 0) {
        printf("Got NULL parameter passed to SpVecFieldsToSatKey");
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
    jlong ret = SpVecFieldsToSatKey(satNum_in, epochDtg_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecFieldsToSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jstring epochDtg_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (epochDtg_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to SpVecFieldsToSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in SpVecFieldsToSatKeyML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *epochDtg_inArray = (char *)((*env)->GetStringUTFChars(env, epochDtg_in, NULL));
    if (epochDtg_inArray == NULL) {
        printf("Failed to get elements for epochDtg array.");
        return;
    }

    jlong *satKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKey_out, NULL));
    if (satKey_outArray == NULL) {
        printf("Failed to get elements for satKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 satKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecFieldsToSatKeyML(satNum_in, epochDtg_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrArray(JNIEnv* env, jclass jc, jdoubleArray xa_spVec_in, jstring xs_spVec_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_spVec_in == 0 || xs_spVec_in == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrArray");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_in);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecAddSatFrArray is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_spVec_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_in, NULL));
    if (xa_spVec_inArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return (jlong)(-1);
    }

    char *xs_spVec_inArray = (char *)((*env)->GetStringUTFChars(env, xs_spVec_in, NULL));
    if (xs_spVec_inArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SpVecAddSatFrArray(xa_spVec_inArray, xs_spVec_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecAddSatFrArrayML(JNIEnv* env, jclass jc, jdoubleArray xa_spVec_in, jstring xs_spVec_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_spVec_in == 0 || xs_spVec_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to SpVecAddSatFrArrayML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_in);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecAddSatFrArrayML is too small.");
        return;
    }

    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in SpVecAddSatFrArrayML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_spVec_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_in, NULL));
    if (xa_spVec_inArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return;
    }

    char *xs_spVec_inArray = (char *)((*env)->GetStringUTFChars(env, xs_spVec_in, NULL));
    if (xs_spVec_inArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return;
    }

    jlong *satKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, satKey_out, NULL));
    if (satKey_outArray == NULL) {
        printf("Failed to get elements for satKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 satKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SpVecAddSatFrArrayML(xa_spVec_inArray, xs_spVec_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecUpdateSatFrArray(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_spVec_in, jstring xs_spVec_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_spVec_in == 0 || xs_spVec_in == 0) {
        printf("Got NULL parameter passed to SpVecUpdateSatFrArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_in);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecUpdateSatFrArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_spVec_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_in, NULL));
    if (xa_spVec_inArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return (jint)(-1);
    }

    char *xs_spVec_inArray = (char *)((*env)->GetStringUTFChars(env, xs_spVec_in, NULL));
    if (xs_spVec_inArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecUpdateSatFrArray(satKey_in, xa_spVec_inArray, xs_spVec_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSpVec_SpVecDataToArray(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_spVec_out, jbyteArray xs_spVec_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_spVec_out == 0 || xs_spVec_out == 0) {
        printf("Got NULL parameter passed to SpVecDataToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_spVec_len = (*env)->GetArrayLength(env, xa_spVec_out);
    if (xa_spVec_len < 512) {
        printf("xa_spVec parameter passed in SpVecDataToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_spVec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_spVec_out, NULL));
    if (xa_spVec_outArray == NULL) {
        printf("Failed to get elements for xa_spVec array.");
        return (jint)(-1);
    }

    jbyte *xs_spVec_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_spVec_out, NULL));
    if (xs_spVec_outArray == NULL) {
        printf("Failed to get elements for xs_spVec array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SpVecDataToArray(satKey_in, xa_spVec_outArray, xs_spVec_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_spVec_out, xa_spVec_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_spVec_out, xs_spVec_outArray, 0);

    return ret;
}
// ========================= End of auto generated code ==========================
