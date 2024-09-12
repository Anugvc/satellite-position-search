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
#include "../../wrappers/VcmDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_LoadVcmDll(JNIEnv* env, jclass jc)
{
    LoadVcmDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadVcmDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to VcmGetInfo");
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
    VcmGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmLoadFile(JNIEnv* env, jclass jc, jstring vcmFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmFile_in == 0) {
        printf("Got NULL parameter passed to VcmLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmFile_inArray = (char *)((*env)->GetStringUTFChars(env, vcmFile_in, NULL));
    if (vcmFile_inArray == NULL) {
        printf("Failed to get elements for vcmFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmLoadFile(vcmFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmSaveFile(JNIEnv* env, jclass jc, jstring vcmFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmFile_in == 0) {
        printf("Got NULL parameter passed to VcmSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmFile_inArray = (char *)((*env)->GetStringUTFChars(env, vcmFile_in, NULL));
    if (vcmFile_inArray == NULL) {
        printf("Failed to get elements for vcmFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmSaveFile(vcmFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmRemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmRemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmRemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmRemoveAllSats();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray satKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_out == 0) {
        printf("Got NULL parameter passed to VcmGetLoaded");
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
    VcmGetLoaded(order_in, satKeys_longOutArray);

    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_outArray[ii] = satKeys_longOutArray[ii];
    }

    free(satKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKeys_out, satKeys_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmAddSatFrLines(JNIEnv* env, jclass jc, jstring vcmString_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmString_in == 0) {
        printf("Got NULL parameter passed to VcmAddSatFrLines");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmString_inArray = (char *)((*env)->GetStringUTFChars(env, vcmString_in, NULL));
    if (vcmString_inArray == NULL) {
        printf("Failed to get elements for vcmString array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = VcmAddSatFrLines(vcmString_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmAddSatFrLinesML(JNIEnv* env, jclass jc, jstring vcmString_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmString_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to VcmAddSatFrLinesML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in VcmAddSatFrLinesML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmString_inArray = (char *)((*env)->GetStringUTFChars(env, vcmString_in, NULL));
    if (vcmString_inArray == NULL) {
        printf("Failed to get elements for vcmString array.");
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
    VcmAddSatFrLinesML(vcmString_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmAddSatFrFields(JNIEnv* env, jclass jc, jstring xs_vcm_in, jdoubleArray xa_vcm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xs_vcm_in == 0 || xa_vcm_in == 0) {
        printf("Got NULL parameter passed to VcmAddSatFrFields");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_in);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmAddSatFrFields is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *xs_vcm_inArray = (char *)((*env)->GetStringUTFChars(env, xs_vcm_in, NULL));
    if (xs_vcm_inArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return (jlong)(-1);
    }

    jdouble *xa_vcm_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_in, NULL));
    if (xa_vcm_inArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = VcmAddSatFrFields(xs_vcm_inArray, xa_vcm_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmAddSatFrFieldsML(JNIEnv* env, jclass jc, jstring xs_vcm_in, jdoubleArray xa_vcm_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xs_vcm_in == 0 || xa_vcm_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to VcmAddSatFrFieldsML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_in);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmAddSatFrFieldsML is too small.");
        return;
    }

    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in VcmAddSatFrFieldsML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *xs_vcm_inArray = (char *)((*env)->GetStringUTFChars(env, xs_vcm_in, NULL));
    if (xs_vcm_inArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return;
    }

    jdouble *xa_vcm_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_in, NULL));
    if (xa_vcm_inArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
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
    VcmAddSatFrFieldsML(xs_vcm_inArray, xa_vcm_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmRetrieveAllData(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray xs_vcm_out, jdoubleArray xa_vcm_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xs_vcm_out == 0 || xa_vcm_out == 0) {
        printf("Got NULL parameter passed to VcmRetrieveAllData");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_out);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmRetrieveAllData is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *xs_vcm_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_vcm_out, NULL));
    if (xs_vcm_outArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return (jint)(-1);
    }

    jdouble *xa_vcm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_out, NULL));
    if (xa_vcm_outArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmRetrieveAllData(satKey_in, xs_vcm_outArray, xa_vcm_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, xs_vcm_out, xs_vcm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_vcm_out, xa_vcm_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmUpdateSatFrFields(JNIEnv* env, jclass jc, jlong satKey_in, jstring xs_vcm_in, jdoubleArray xa_vcm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xs_vcm_in == 0 || xa_vcm_in == 0) {
        printf("Got NULL parameter passed to VcmUpdateSatFrFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_in);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmUpdateSatFrFields is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *xs_vcm_inArray = (char *)((*env)->GetStringUTFChars(env, xs_vcm_in, NULL));
    if (xs_vcm_inArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return (jint)(-1);
    }

    jdouble *xa_vcm_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_in, NULL));
    if (xa_vcm_inArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmUpdateSatFrFields(satKey_in, xs_vcm_inArray, xa_vcm_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Vcm_in, jbyteArray valueStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_out == 0) {
        printf("Got NULL parameter passed to VcmGetField");
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
    jint ret = VcmGetField(satKey_in, xf_Vcm_in, valueStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, valueStr_out, valueStr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmSetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Vcm_in, jstring valueStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_in == 0) {
        printf("Got NULL parameter passed to VcmSetField");
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
    jint ret = VcmSetField(satKey_in, xf_Vcm_in, valueStr_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetAllFields(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray satName_out, jbyteArray epochDtg_out, jintArray revNum_out, jdoubleArray posECI_out, jdoubleArray velECI_out, jbyteArray geoName_out, jintArray geoZonals_out, jintArray geoTesserals_out, jbyteArray dragModel_out, jbyteArray lunarSolar_out, jbyteArray radPress_out, jbyteArray earthTides_out, jbyteArray intrackThrust_out, jdoubleArray bTerm_out, jdoubleArray agom_out, jdoubleArray ogParm_out, jdoubleArray cmOffset_out, jintArray f10_out, jintArray f10Avg_out, jdoubleArray apAvg_out, jdoubleArray tconRec_out, jintArray nTerms_out, jbyteArray leapYrDtg_out, jbyteArray integMode_out, jbyteArray partials_out, jbyteArray stepMode_out, jbyteArray fixStep_out, jbyteArray stepSelection_out, jdoubleArray initStepSize_out, jdoubleArray errCtrl_out, jdoubleArray rms_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || satName_out == 0 || epochDtg_out == 0 || revNum_out == 0 || posECI_out == 0 || velECI_out == 0 || geoName_out == 0 || geoZonals_out == 0 || geoTesserals_out == 0 || dragModel_out == 0 || lunarSolar_out == 0 || radPress_out == 0 || earthTides_out == 0 || intrackThrust_out == 0 || bTerm_out == 0 || agom_out == 0 || ogParm_out == 0 || cmOffset_out == 0 || f10_out == 0 || f10Avg_out == 0 || apAvg_out == 0 || tconRec_out == 0 || nTerms_out == 0 || leapYrDtg_out == 0 || integMode_out == 0 || partials_out == 0 || stepMode_out == 0 || fixStep_out == 0 || stepSelection_out == 0 || initStepSize_out == 0 || errCtrl_out == 0 || rms_out == 0) {
        printf("Got NULL parameter passed to VcmGetAllFields");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int posECI_len = (*env)->GetArrayLength(env, posECI_out);
    if (posECI_len < 3) {
        printf("posECI parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int velECI_len = (*env)->GetArrayLength(env, velECI_out);
    if (velECI_len < 3) {
        printf("velECI parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int geoZonals_len = (*env)->GetArrayLength(env, geoZonals_out);
    if (geoZonals_len < 1) {
        printf("geoZonals parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int geoTesserals_len = (*env)->GetArrayLength(env, geoTesserals_out);
    if (geoTesserals_len < 1) {
        printf("geoTesserals parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int bTerm_len = (*env)->GetArrayLength(env, bTerm_out);
    if (bTerm_len < 1) {
        printf("bTerm parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int agom_len = (*env)->GetArrayLength(env, agom_out);
    if (agom_len < 1) {
        printf("agom parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int ogParm_len = (*env)->GetArrayLength(env, ogParm_out);
    if (ogParm_len < 1) {
        printf("ogParm parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int cmOffset_len = (*env)->GetArrayLength(env, cmOffset_out);
    if (cmOffset_len < 1) {
        printf("cmOffset parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int f10_len = (*env)->GetArrayLength(env, f10_out);
    if (f10_len < 1) {
        printf("f10 parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int f10Avg_len = (*env)->GetArrayLength(env, f10Avg_out);
    if (f10Avg_len < 1) {
        printf("f10Avg parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int apAvg_len = (*env)->GetArrayLength(env, apAvg_out);
    if (apAvg_len < 1) {
        printf("apAvg parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int tconRec_len = (*env)->GetArrayLength(env, tconRec_out);
    if (tconRec_len < 5) {
        printf("tconRec parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int nTerms_len = (*env)->GetArrayLength(env, nTerms_out);
    if (nTerms_len < 1) {
        printf("nTerms parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int initStepSize_len = (*env)->GetArrayLength(env, initStepSize_out);
    if (initStepSize_len < 1) {
        printf("initStepSize parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int errCtrl_len = (*env)->GetArrayLength(env, errCtrl_out);
    if (errCtrl_len < 1) {
        printf("errCtrl parameter passed in VcmGetAllFields is too small.");
        return (jint)(-1);
    }

    int rms_len = (*env)->GetArrayLength(env, rms_out);
    if (rms_len < 1) {
        printf("rms parameter passed in VcmGetAllFields is too small.");
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

    jdouble *posECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, posECI_out, NULL));
    if (posECI_outArray == NULL) {
        printf("Failed to get elements for posECI array.");
        return (jint)(-1);
    }

    jdouble *velECI_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, velECI_out, NULL));
    if (velECI_outArray == NULL) {
        printf("Failed to get elements for velECI array.");
        return (jint)(-1);
    }

    jbyte *geoName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, geoName_out, NULL));
    if (geoName_outArray == NULL) {
        printf("Failed to get elements for geoName array.");
        return (jint)(-1);
    }

    jint *geoZonals_outArray = (jint *)((*env)->GetIntArrayElements(env, geoZonals_out, NULL));
    if (geoZonals_outArray == NULL) {
        printf("Failed to get elements for geoZonals array.");
        return (jint)(-1);
    }

    jint *geoTesserals_outArray = (jint *)((*env)->GetIntArrayElements(env, geoTesserals_out, NULL));
    if (geoTesserals_outArray == NULL) {
        printf("Failed to get elements for geoTesserals array.");
        return (jint)(-1);
    }

    jbyte *dragModel_outArray = (jbyte *)((*env)->GetByteArrayElements(env, dragModel_out, NULL));
    if (dragModel_outArray == NULL) {
        printf("Failed to get elements for dragModel array.");
        return (jint)(-1);
    }

    jbyte *lunarSolar_outArray = (jbyte *)((*env)->GetByteArrayElements(env, lunarSolar_out, NULL));
    if (lunarSolar_outArray == NULL) {
        printf("Failed to get elements for lunarSolar array.");
        return (jint)(-1);
    }

    jbyte *radPress_outArray = (jbyte *)((*env)->GetByteArrayElements(env, radPress_out, NULL));
    if (radPress_outArray == NULL) {
        printf("Failed to get elements for radPress array.");
        return (jint)(-1);
    }

    jbyte *earthTides_outArray = (jbyte *)((*env)->GetByteArrayElements(env, earthTides_out, NULL));
    if (earthTides_outArray == NULL) {
        printf("Failed to get elements for earthTides array.");
        return (jint)(-1);
    }

    jbyte *intrackThrust_outArray = (jbyte *)((*env)->GetByteArrayElements(env, intrackThrust_out, NULL));
    if (intrackThrust_outArray == NULL) {
        printf("Failed to get elements for intrackThrust array.");
        return (jint)(-1);
    }

    jdouble *bTerm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bTerm_out, NULL));
    if (bTerm_outArray == NULL) {
        printf("Failed to get elements for bTerm array.");
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

    jdouble *cmOffset_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, cmOffset_out, NULL));
    if (cmOffset_outArray == NULL) {
        printf("Failed to get elements for cmOffset array.");
        return (jint)(-1);
    }

    jint *f10_outArray = (jint *)((*env)->GetIntArrayElements(env, f10_out, NULL));
    if (f10_outArray == NULL) {
        printf("Failed to get elements for f10 array.");
        return (jint)(-1);
    }

    jint *f10Avg_outArray = (jint *)((*env)->GetIntArrayElements(env, f10Avg_out, NULL));
    if (f10Avg_outArray == NULL) {
        printf("Failed to get elements for f10Avg array.");
        return (jint)(-1);
    }

    jdouble *apAvg_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, apAvg_out, NULL));
    if (apAvg_outArray == NULL) {
        printf("Failed to get elements for apAvg array.");
        return (jint)(-1);
    }

    jdouble *tconRec_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, tconRec_out, NULL));
    if (tconRec_outArray == NULL) {
        printf("Failed to get elements for tconRec array.");
        return (jint)(-1);
    }

    jint *nTerms_outArray = (jint *)((*env)->GetIntArrayElements(env, nTerms_out, NULL));
    if (nTerms_outArray == NULL) {
        printf("Failed to get elements for nTerms array.");
        return (jint)(-1);
    }

    jbyte *leapYrDtg_outArray = (jbyte *)((*env)->GetByteArrayElements(env, leapYrDtg_out, NULL));
    if (leapYrDtg_outArray == NULL) {
        printf("Failed to get elements for leapYrDtg array.");
        return (jint)(-1);
    }

    jbyte *integMode_outArray = (jbyte *)((*env)->GetByteArrayElements(env, integMode_out, NULL));
    if (integMode_outArray == NULL) {
        printf("Failed to get elements for integMode array.");
        return (jint)(-1);
    }

    jbyte *partials_outArray = (jbyte *)((*env)->GetByteArrayElements(env, partials_out, NULL));
    if (partials_outArray == NULL) {
        printf("Failed to get elements for partials array.");
        return (jint)(-1);
    }

    jbyte *stepMode_outArray = (jbyte *)((*env)->GetByteArrayElements(env, stepMode_out, NULL));
    if (stepMode_outArray == NULL) {
        printf("Failed to get elements for stepMode array.");
        return (jint)(-1);
    }

    jbyte *fixStep_outArray = (jbyte *)((*env)->GetByteArrayElements(env, fixStep_out, NULL));
    if (fixStep_outArray == NULL) {
        printf("Failed to get elements for fixStep array.");
        return (jint)(-1);
    }

    jbyte *stepSelection_outArray = (jbyte *)((*env)->GetByteArrayElements(env, stepSelection_out, NULL));
    if (stepSelection_outArray == NULL) {
        printf("Failed to get elements for stepSelection array.");
        return (jint)(-1);
    }

    jdouble *initStepSize_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, initStepSize_out, NULL));
    if (initStepSize_outArray == NULL) {
        printf("Failed to get elements for initStepSize array.");
        return (jint)(-1);
    }

    jdouble *errCtrl_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, errCtrl_out, NULL));
    if (errCtrl_outArray == NULL) {
        printf("Failed to get elements for errCtrl array.");
        return (jint)(-1);
    }

    jdouble *rms_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rms_out, NULL));
    if (rms_outArray == NULL) {
        printf("Failed to get elements for rms array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmGetAllFields(satKey_in, satNum_outArray, satName_outArray, epochDtg_outArray, revNum_outArray, posECI_outArray, velECI_outArray, geoName_outArray, geoZonals_outArray, geoTesserals_outArray, dragModel_outArray, lunarSolar_outArray, radPress_outArray, earthTides_outArray, intrackThrust_outArray, bTerm_outArray, agom_outArray, ogParm_outArray, cmOffset_outArray, f10_outArray, f10Avg_outArray, apAvg_outArray, tconRec_outArray, nTerms_outArray, leapYrDtg_outArray, integMode_outArray, partials_outArray, stepMode_outArray, fixStep_outArray, stepSelection_outArray, initStepSize_outArray, errCtrl_outArray, rms_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, epochDtg_out, epochDtg_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, posECI_out, posECI_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, velECI_out, velECI_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, geoName_out, geoName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, geoZonals_out, geoZonals_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, geoTesserals_out, geoTesserals_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, dragModel_out, dragModel_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, lunarSolar_out, lunarSolar_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, radPress_out, radPress_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, earthTides_out, earthTides_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, intrackThrust_out, intrackThrust_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bTerm_out, bTerm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, agom_out, agom_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ogParm_out, ogParm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, cmOffset_out, cmOffset_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, f10_out, f10_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, f10Avg_out, f10Avg_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, apAvg_out, apAvg_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, tconRec_out, tconRec_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, nTerms_out, nTerms_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, leapYrDtg_out, leapYrDtg_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, integMode_out, integMode_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, partials_out, partials_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, stepMode_out, stepMode_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, fixStep_out, fixStep_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, stepSelection_out, stepSelection_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, initStepSize_out, initStepSize_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, errCtrl_out, errCtrl_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rms_out, rms_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetLines(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray vcmLines_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmLines_out == 0) {
        printf("Got NULL parameter passed to VcmGetLines");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *vcmLines_outArray = (jbyte *)((*env)->GetByteArrayElements(env, vcmLines_out, NULL));
    if (vcmLines_outArray == NULL) {
        printf("Failed to get elements for vcmLines array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmGetLines(satKey_in, vcmLines_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, vcmLines_out, vcmLines_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_Vcm1LineToMultiLine(JNIEnv* env, jclass jc, jstring vcm1Line_in, jbyteArray vcmLines_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcm1Line_in == 0 || vcmLines_out == 0) {
        printf("Got NULL parameter passed to Vcm1LineToMultiLine");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcm1Line_inArray = (char *)((*env)->GetStringUTFChars(env, vcm1Line_in, NULL));
    if (vcm1Line_inArray == NULL) {
        printf("Failed to get elements for vcm1Line array.");
        return (jint)(-1);
    }

    jbyte *vcmLines_outArray = (jbyte *)((*env)->GetByteArrayElements(env, vcmLines_out, NULL));
    if (vcmLines_outArray == NULL) {
        printf("Failed to get elements for vcmLines array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = Vcm1LineToMultiLine(vcm1Line_inArray, vcmLines_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, vcmLines_out, vcmLines_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmMultiLineTo1Line(JNIEnv* env, jclass jc, jstring vcmLines_in, jbyteArray vcm1Line_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmLines_in == 0 || vcm1Line_out == 0) {
        printf("Got NULL parameter passed to VcmMultiLineTo1Line");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmLines_inArray = (char *)((*env)->GetStringUTFChars(env, vcmLines_in, NULL));
    if (vcmLines_inArray == NULL) {
        printf("Failed to get elements for vcmLines array.");
        return (jint)(-1);
    }

    jbyte *vcm1Line_outArray = (jbyte *)((*env)->GetByteArrayElements(env, vcm1Line_out, NULL));
    if (vcm1Line_outArray == NULL) {
        printf("Failed to get elements for vcm1Line array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmMultiLineTo1Line(vcmLines_inArray, vcm1Line_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, vcm1Line_out, vcm1Line_outArray, 0);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetSatKey(JNIEnv* env, jclass jc, jint satNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = VcmGetSatKey(satNum_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmGetSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKey_out == 0) {
        printf("Got NULL parameter passed to VcmGetSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in VcmGetSatKeyML is too small.");
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
    VcmGetSatKeyML(satNum_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmFieldsToSatKey(JNIEnv* env, jclass jc, jint satNum_in, jstring epochDtg_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (epochDtg_in == 0) {
        printf("Got NULL parameter passed to VcmFieldsToSatKey");
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
    jlong ret = VcmFieldsToSatKey(satNum_in, epochDtg_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmFieldsToSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jstring epochDtg_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (epochDtg_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to VcmFieldsToSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in VcmFieldsToSatKeyML is too small.");
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
    VcmFieldsToSatKeyML(satNum_in, epochDtg_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmArrayToVcmLines(JNIEnv* env, jclass jc, jdoubleArray xa_vcm_in, jstring xs_vcm_in, jbyteArray vcmLines_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_vcm_in == 0 || xs_vcm_in == 0 || vcmLines_out == 0) {
        printf("Got NULL parameter passed to VcmArrayToVcmLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_in);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmArrayToVcmLines is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_vcm_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_in, NULL));
    if (xa_vcm_inArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return;
    }

    char *xs_vcm_inArray = (char *)((*env)->GetStringUTFChars(env, xs_vcm_in, NULL));
    if (xs_vcm_inArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return;
    }

    jbyte *vcmLines_outArray = (jbyte *)((*env)->GetByteArrayElements(env, vcmLines_out, NULL));
    if (vcmLines_outArray == NULL) {
        printf("Failed to get elements for vcmLines array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    VcmArrayToVcmLines(xa_vcm_inArray, xs_vcm_inArray, vcmLines_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, vcmLines_out, vcmLines_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmArrayToVcm1Line(JNIEnv* env, jclass jc, jdoubleArray xa_vcm_in, jstring xs_vcm_in, jbyteArray vcm1Line_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_vcm_in == 0 || xs_vcm_in == 0 || vcm1Line_out == 0) {
        printf("Got NULL parameter passed to VcmArrayToVcm1Line");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_in);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmArrayToVcm1Line is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_vcm_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_in, NULL));
    if (xa_vcm_inArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return;
    }

    char *xs_vcm_inArray = (char *)((*env)->GetStringUTFChars(env, xs_vcm_in, NULL));
    if (xs_vcm_inArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return;
    }

    jbyte *vcm1Line_outArray = (jbyte *)((*env)->GetByteArrayElements(env, vcm1Line_out, NULL));
    if (vcm1Line_outArray == NULL) {
        printf("Failed to get elements for vcm1Line array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    VcmArrayToVcm1Line(xa_vcm_inArray, xs_vcm_inArray, vcm1Line_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, vcm1Line_out, vcm1Line_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniVcm_VcmStringToArray(JNIEnv* env, jclass jc, jstring vcmString_in, jdoubleArray xa_vcm_out, jbyteArray xs_vcm_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vcmString_in == 0 || xa_vcm_out == 0 || xs_vcm_out == 0) {
        printf("Got NULL parameter passed to VcmStringToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vcm_len = (*env)->GetArrayLength(env, xa_vcm_out);
    if (xa_vcm_len < 512) {
        printf("xa_vcm parameter passed in VcmStringToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vcmString_inArray = (char *)((*env)->GetStringUTFChars(env, vcmString_in, NULL));
    if (vcmString_inArray == NULL) {
        printf("Failed to get elements for vcmString array.");
        return (jint)(-1);
    }

    jdouble *xa_vcm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vcm_out, NULL));
    if (xa_vcm_outArray == NULL) {
        printf("Failed to get elements for xa_vcm array.");
        return (jint)(-1);
    }

    jbyte *xs_vcm_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_vcm_out, NULL));
    if (xs_vcm_outArray == NULL) {
        printf("Failed to get elements for xs_vcm array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = VcmStringToArray(vcmString_inArray, xa_vcm_outArray, xs_vcm_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_vcm_out, xa_vcm_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_vcm_out, xs_vcm_outArray, 0);

    return ret;
}
// ========================= End of auto generated code ==========================
