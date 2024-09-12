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
#include "../../wrappers/TleDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_LoadTleDll(JNIEnv* env, jclass jc)
{
    LoadTleDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadTleDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to TleGetInfo");
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
    TleGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleLoadFile(JNIEnv* env, jclass jc, jstring tleFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (tleFile_in == 0) {
        printf("Got NULL parameter passed to TleLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *tleFile_inArray = (char *)((*env)->GetStringUTFChars(env, tleFile_in, NULL));
    if (tleFile_inArray == NULL) {
        printf("Failed to get elements for tleFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleLoadFile(tleFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleSaveFile(JNIEnv* env, jclass jc, jstring tleFile_in, jint saveMode_in, jint xf_tleForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (tleFile_in == 0) {
        printf("Got NULL parameter passed to TleSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *tleFile_inArray = (char *)((*env)->GetStringUTFChars(env, tleFile_in, NULL));
    if (tleFile_inArray == NULL) {
        printf("Failed to get elements for tleFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleSaveFile(tleFile_inArray, saveMode_in, xf_tleForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleRemoveSat(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleRemoveSat(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleRemoveAllSats(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleRemoveAllSats();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray satKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKeys_out == 0) {
        printf("Got NULL parameter passed to TleGetLoaded");
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
    TleGetLoaded(order_in, satKeys_longOutArray);

    for (ii = 0; ii < satKeys_len; ii++) {
        satKeys_outArray[ii] = satKeys_longOutArray[ii];
    }

    free(satKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKeys_out, satKeys_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrLines(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrLines");
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
    jlong ret = TleAddSatFrLines(line1_inArray, line2_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrLinesML(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to TleAddSatFrLinesML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleAddSatFrLinesML is too small.");
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
    TleAddSatFrLinesML(line1_inArray, line2_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrCsv(JNIEnv* env, jclass jc, jstring csvLine_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrCsv");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleAddSatFrCsv(csvLine_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrCsvML(JNIEnv* env, jclass jc, jstring csvLine_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to TleAddSatFrCsvML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleAddSatFrCsvML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
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
    TleAddSatFrCsvML(csvLine_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrFieldsGP(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bstar_in, jint ephType_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrFieldsGP");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleAddSatFrFieldsGP(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bstar_in, ephType_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrFieldsGP2(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bstar_in, jint ephType_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jdouble nDotO2_in, jdouble n2DotO6_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrFieldsGP2");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleAddSatFrFieldsGP2(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bstar_in, ephType_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, nDotO2_in, n2DotO6_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrFieldsGP2ML(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bstar_in, jint ephType_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jdouble nDotO2_in, jdouble n2DotO6_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to TleAddSatFrFieldsGP2ML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleAddSatFrFieldsGP2ML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
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
    TleAddSatFrFieldsGP2ML(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bstar_in, ephType_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, nDotO2_in, n2DotO6_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleUpdateSatFrFieldsGP(JNIEnv* env, jclass jc, jlong satKey_in, jbyte secClass_in, jstring satName_in, jdouble bstar_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleUpdateSatFrFieldsGP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleUpdateSatFrFieldsGP(satKey_in, secClass_in, satName_inArray, bstar_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleUpdateSatFrFieldsGP2(JNIEnv* env, jclass jc, jlong satKey_in, jbyte secClass_in, jstring satName_in, jdouble bstar_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jdouble nDotO2_in, jdouble n2DotO6_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleUpdateSatFrFieldsGP2");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleUpdateSatFrFieldsGP2(satKey_in, secClass_in, satName_inArray, bstar_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, nDotO2_in, n2DotO6_in);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrFieldsSP(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bTerm_in, jdouble ogParm_in, jdouble agom_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrFieldsSP");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleAddSatFrFieldsSP(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bTerm_in, ogParm_in, agom_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrFieldsSPML(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bTerm_in, jdouble ogParm_in, jdouble agom_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to TleAddSatFrFieldsSPML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleAddSatFrFieldsSPML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
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
    TleAddSatFrFieldsSPML(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bTerm_in, ogParm_in, agom_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleUpdateSatFrFieldsSP(JNIEnv* env, jclass jc, jlong satKey_in, jbyte secClass_in, jstring satName_in, jdouble bterm_in, jdouble ogParm_in, jdouble agom_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0) {
        printf("Got NULL parameter passed to TleUpdateSatFrFieldsSP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleUpdateSatFrFieldsSP(satKey_in, secClass_in, satName_inArray, bterm_in, ogParm_in, agom_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleSetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Tle_in, jstring valueStr_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_in == 0) {
        printf("Got NULL parameter passed to TleSetField");
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
    jint ret = TleSetField(satKey_in, xf_Tle_in, valueStr_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetField(JNIEnv* env, jclass jc, jlong satKey_in, jint xf_Tle_in, jbyteArray valueStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (valueStr_out == 0) {
        printf("Got NULL parameter passed to TleGetField");
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
    jint ret = TleGetField(satKey_in, xf_Tle_in, valueStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, valueStr_out, valueStr_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetAllFieldsGP(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray secClass_out, jbyteArray satName_out, jintArray epochYr_out, jdoubleArray epochDays_out, jdoubleArray bstar_out, jintArray ephType_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || secClass_out == 0 || satName_out == 0 || epochYr_out == 0 || epochDays_out == 0 || bstar_out == 0 || ephType_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to TleGetAllFieldsGP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int epochYr_len = (*env)->GetArrayLength(env, epochYr_out);
    if (epochYr_len < 1) {
        printf("epochYr parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int epochDays_len = (*env)->GetArrayLength(env, epochDays_out);
    if (epochDays_len < 1) {
        printf("epochDays parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int bstar_len = (*env)->GetArrayLength(env, bstar_out);
    if (bstar_len < 1) {
        printf("bstar parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int ephType_len = (*env)->GetArrayLength(env, ephType_out);
    if (ephType_len < 1) {
        printf("ephType parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in TleGetAllFieldsGP is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in TleGetAllFieldsGP is too small.");
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

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *epochYr_outArray = (jint *)((*env)->GetIntArrayElements(env, epochYr_out, NULL));
    if (epochYr_outArray == NULL) {
        printf("Failed to get elements for epochYr array.");
        return (jint)(-1);
    }

    jdouble *epochDays_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDays_out, NULL));
    if (epochDays_outArray == NULL) {
        printf("Failed to get elements for epochDays array.");
        return (jint)(-1);
    }

    jdouble *bstar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bstar_out, NULL));
    if (bstar_outArray == NULL) {
        printf("Failed to get elements for bstar array.");
        return (jint)(-1);
    }

    jint *ephType_outArray = (jint *)((*env)->GetIntArrayElements(env, ephType_out, NULL));
    if (ephType_outArray == NULL) {
        printf("Failed to get elements for ephType array.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleGetAllFieldsGP(satKey_in, satNum_outArray, secClass_outArray, satName_outArray, epochYr_outArray, epochDays_outArray, bstar_outArray, ephType_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, epochYr_out, epochYr_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDays_out, epochDays_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bstar_out, bstar_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, ephType_out, ephType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetAllFieldsGP2(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray secClass_out, jbyteArray satName_out, jintArray epochYr_out, jdoubleArray epochDays_out, jdoubleArray bstar_out, jintArray ephType_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jintArray revNum_out, jdoubleArray nDotO2_out, jdoubleArray n2DotO6_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || secClass_out == 0 || satName_out == 0 || epochYr_out == 0 || epochDays_out == 0 || bstar_out == 0 || ephType_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || revNum_out == 0 || nDotO2_out == 0 || n2DotO6_out == 0) {
        printf("Got NULL parameter passed to TleGetAllFieldsGP2");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int epochYr_len = (*env)->GetArrayLength(env, epochYr_out);
    if (epochYr_len < 1) {
        printf("epochYr parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int epochDays_len = (*env)->GetArrayLength(env, epochDays_out);
    if (epochDays_len < 1) {
        printf("epochDays parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int bstar_len = (*env)->GetArrayLength(env, bstar_out);
    if (bstar_len < 1) {
        printf("bstar parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int ephType_len = (*env)->GetArrayLength(env, ephType_out);
    if (ephType_len < 1) {
        printf("ephType parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int nDotO2_len = (*env)->GetArrayLength(env, nDotO2_out);
    if (nDotO2_len < 1) {
        printf("nDotO2 parameter passed in TleGetAllFieldsGP2 is too small.");
        return (jint)(-1);
    }

    int n2DotO6_len = (*env)->GetArrayLength(env, n2DotO6_out);
    if (n2DotO6_len < 1) {
        printf("n2DotO6 parameter passed in TleGetAllFieldsGP2 is too small.");
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

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *epochYr_outArray = (jint *)((*env)->GetIntArrayElements(env, epochYr_out, NULL));
    if (epochYr_outArray == NULL) {
        printf("Failed to get elements for epochYr array.");
        return (jint)(-1);
    }

    jdouble *epochDays_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDays_out, NULL));
    if (epochDays_outArray == NULL) {
        printf("Failed to get elements for epochDays array.");
        return (jint)(-1);
    }

    jdouble *bstar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bstar_out, NULL));
    if (bstar_outArray == NULL) {
        printf("Failed to get elements for bstar array.");
        return (jint)(-1);
    }

    jint *ephType_outArray = (jint *)((*env)->GetIntArrayElements(env, ephType_out, NULL));
    if (ephType_outArray == NULL) {
        printf("Failed to get elements for ephType array.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    jdouble *nDotO2_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, nDotO2_out, NULL));
    if (nDotO2_outArray == NULL) {
        printf("Failed to get elements for nDotO2 array.");
        return (jint)(-1);
    }

    jdouble *n2DotO6_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, n2DotO6_out, NULL));
    if (n2DotO6_outArray == NULL) {
        printf("Failed to get elements for n2DotO6 array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleGetAllFieldsGP2(satKey_in, satNum_outArray, secClass_outArray, satName_outArray, epochYr_outArray, epochDays_outArray, bstar_outArray, ephType_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, revNum_outArray, nDotO2_outArray, n2DotO6_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, epochYr_out, epochYr_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDays_out, epochDays_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bstar_out, bstar_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, ephType_out, ephType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, nDotO2_out, nDotO2_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, n2DotO6_out, n2DotO6_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetAllFieldsSP(JNIEnv* env, jclass jc, jlong satKey_in, jintArray satNum_out, jbyteArray secClass_out, jbyteArray satName_out, jintArray epochYr_out, jdoubleArray epochDays_out, jdoubleArray bTerm_out, jdoubleArray ogParm_out, jdoubleArray agom_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satNum_out == 0 || secClass_out == 0 || satName_out == 0 || epochYr_out == 0 || epochDays_out == 0 || bTerm_out == 0 || ogParm_out == 0 || agom_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to TleGetAllFieldsSP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int epochYr_len = (*env)->GetArrayLength(env, epochYr_out);
    if (epochYr_len < 1) {
        printf("epochYr parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int epochDays_len = (*env)->GetArrayLength(env, epochDays_out);
    if (epochDays_len < 1) {
        printf("epochDays parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int bTerm_len = (*env)->GetArrayLength(env, bTerm_out);
    if (bTerm_len < 1) {
        printf("bTerm parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int ogParm_len = (*env)->GetArrayLength(env, ogParm_out);
    if (ogParm_len < 1) {
        printf("ogParm parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int agom_len = (*env)->GetArrayLength(env, agom_out);
    if (agom_len < 1) {
        printf("agom parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in TleGetAllFieldsSP is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in TleGetAllFieldsSP is too small.");
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

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *epochYr_outArray = (jint *)((*env)->GetIntArrayElements(env, epochYr_out, NULL));
    if (epochYr_outArray == NULL) {
        printf("Failed to get elements for epochYr array.");
        return (jint)(-1);
    }

    jdouble *epochDays_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDays_out, NULL));
    if (epochDays_outArray == NULL) {
        printf("Failed to get elements for epochDays array.");
        return (jint)(-1);
    }

    jdouble *bTerm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bTerm_out, NULL));
    if (bTerm_outArray == NULL) {
        printf("Failed to get elements for bTerm array.");
        return (jint)(-1);
    }

    jdouble *ogParm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ogParm_out, NULL));
    if (ogParm_outArray == NULL) {
        printf("Failed to get elements for ogParm array.");
        return (jint)(-1);
    }

    jdouble *agom_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, agom_out, NULL));
    if (agom_outArray == NULL) {
        printf("Failed to get elements for agom array.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleGetAllFieldsSP(satKey_in, satNum_outArray, secClass_outArray, satName_outArray, epochYr_outArray, epochDays_outArray, bTerm_outArray, ogParm_outArray, agom_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, epochYr_out, epochYr_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDays_out, epochDays_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bTerm_out, bTerm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ogParm_out, ogParm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, agom_out, agom_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleParseGP(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jintArray satNum_out, jbyteArray secClass_out, jbyteArray satName_out, jintArray epochYr_out, jdoubleArray epochDays_out, jdoubleArray nDotO2_out, jdoubleArray n2DotO6_out, jdoubleArray bstar_out, jintArray ephType_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || satNum_out == 0 || secClass_out == 0 || satName_out == 0 || epochYr_out == 0 || epochDays_out == 0 || nDotO2_out == 0 || n2DotO6_out == 0 || bstar_out == 0 || ephType_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to TleParseGP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int epochYr_len = (*env)->GetArrayLength(env, epochYr_out);
    if (epochYr_len < 1) {
        printf("epochYr parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int epochDays_len = (*env)->GetArrayLength(env, epochDays_out);
    if (epochDays_len < 1) {
        printf("epochDays parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int nDotO2_len = (*env)->GetArrayLength(env, nDotO2_out);
    if (nDotO2_len < 1) {
        printf("nDotO2 parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int n2DotO6_len = (*env)->GetArrayLength(env, n2DotO6_out);
    if (n2DotO6_len < 1) {
        printf("n2DotO6 parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int bstar_len = (*env)->GetArrayLength(env, bstar_out);
    if (bstar_len < 1) {
        printf("bstar parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int ephType_len = (*env)->GetArrayLength(env, ephType_out);
    if (ephType_len < 1) {
        printf("ephType parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in TleParseGP is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in TleParseGP is too small.");
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

    jint *satNum_outArray = (jint *)((*env)->GetIntArrayElements(env, satNum_out, NULL));
    if (satNum_outArray == NULL) {
        printf("Failed to get elements for satNum array.");
        return (jint)(-1);
    }

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *epochYr_outArray = (jint *)((*env)->GetIntArrayElements(env, epochYr_out, NULL));
    if (epochYr_outArray == NULL) {
        printf("Failed to get elements for epochYr array.");
        return (jint)(-1);
    }

    jdouble *epochDays_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDays_out, NULL));
    if (epochDays_outArray == NULL) {
        printf("Failed to get elements for epochDays array.");
        return (jint)(-1);
    }

    jdouble *nDotO2_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, nDotO2_out, NULL));
    if (nDotO2_outArray == NULL) {
        printf("Failed to get elements for nDotO2 array.");
        return (jint)(-1);
    }

    jdouble *n2DotO6_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, n2DotO6_out, NULL));
    if (n2DotO6_outArray == NULL) {
        printf("Failed to get elements for n2DotO6 array.");
        return (jint)(-1);
    }

    jdouble *bstar_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bstar_out, NULL));
    if (bstar_outArray == NULL) {
        printf("Failed to get elements for bstar array.");
        return (jint)(-1);
    }

    jint *ephType_outArray = (jint *)((*env)->GetIntArrayElements(env, ephType_out, NULL));
    if (ephType_outArray == NULL) {
        printf("Failed to get elements for ephType array.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleParseGP(line1_inArray, line2_inArray, satNum_outArray, secClass_outArray, satName_outArray, epochYr_outArray, epochDays_outArray, nDotO2_outArray, n2DotO6_outArray, bstar_outArray, ephType_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, epochYr_out, epochYr_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDays_out, epochDays_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, nDotO2_out, nDotO2_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, n2DotO6_out, n2DotO6_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bstar_out, bstar_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, ephType_out, ephType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleLinesToArray(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jdoubleArray xa_tle_out, jbyteArray xs_tle_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || xa_tle_out == 0 || xs_tle_out == 0) {
        printf("Got NULL parameter passed to TleLinesToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_out);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleLinesToArray is too small.");
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

    jdouble *xa_tle_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_out, NULL));
    if (xa_tle_outArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jint)(-1);
    }

    jbyte *xs_tle_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_tle_out, NULL));
    if (xs_tle_outArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleLinesToArray(line1_inArray, line2_inArray, xa_tle_outArray, xs_tle_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_tle_out, xa_tle_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_tle_out, xs_tle_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleParseSP(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jintArray satNum_out, jbyteArray secClass_out, jbyteArray satName_out, jintArray epochYr_out, jdoubleArray epochDays_out, jdoubleArray bTerm_out, jdoubleArray ogParm_out, jdoubleArray agom_out, jintArray elsetNum_out, jdoubleArray incli_out, jdoubleArray node_out, jdoubleArray eccen_out, jdoubleArray omega_out, jdoubleArray mnAnomaly_out, jdoubleArray mnMotion_out, jintArray revNum_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || satNum_out == 0 || secClass_out == 0 || satName_out == 0 || epochYr_out == 0 || epochDays_out == 0 || bTerm_out == 0 || ogParm_out == 0 || agom_out == 0 || elsetNum_out == 0 || incli_out == 0 || node_out == 0 || eccen_out == 0 || omega_out == 0 || mnAnomaly_out == 0 || mnMotion_out == 0 || revNum_out == 0) {
        printf("Got NULL parameter passed to TleParseSP");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satNum_len = (*env)->GetArrayLength(env, satNum_out);
    if (satNum_len < 1) {
        printf("satNum parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int epochYr_len = (*env)->GetArrayLength(env, epochYr_out);
    if (epochYr_len < 1) {
        printf("epochYr parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int epochDays_len = (*env)->GetArrayLength(env, epochDays_out);
    if (epochDays_len < 1) {
        printf("epochDays parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int bTerm_len = (*env)->GetArrayLength(env, bTerm_out);
    if (bTerm_len < 1) {
        printf("bTerm parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int ogParm_len = (*env)->GetArrayLength(env, ogParm_out);
    if (ogParm_len < 1) {
        printf("ogParm parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int agom_len = (*env)->GetArrayLength(env, agom_out);
    if (agom_len < 1) {
        printf("agom parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int elsetNum_len = (*env)->GetArrayLength(env, elsetNum_out);
    if (elsetNum_len < 1) {
        printf("elsetNum parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int incli_len = (*env)->GetArrayLength(env, incli_out);
    if (incli_len < 1) {
        printf("incli parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int node_len = (*env)->GetArrayLength(env, node_out);
    if (node_len < 1) {
        printf("node parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int eccen_len = (*env)->GetArrayLength(env, eccen_out);
    if (eccen_len < 1) {
        printf("eccen parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int omega_len = (*env)->GetArrayLength(env, omega_out);
    if (omega_len < 1) {
        printf("omega parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int mnAnomaly_len = (*env)->GetArrayLength(env, mnAnomaly_out);
    if (mnAnomaly_len < 1) {
        printf("mnAnomaly parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int mnMotion_len = (*env)->GetArrayLength(env, mnMotion_out);
    if (mnMotion_len < 1) {
        printf("mnMotion parameter passed in TleParseSP is too small.");
        return (jint)(-1);
    }

    int revNum_len = (*env)->GetArrayLength(env, revNum_out);
    if (revNum_len < 1) {
        printf("revNum parameter passed in TleParseSP is too small.");
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

    jint *satNum_outArray = (jint *)((*env)->GetIntArrayElements(env, satNum_out, NULL));
    if (satNum_outArray == NULL) {
        printf("Failed to get elements for satNum array.");
        return (jint)(-1);
    }

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    jbyte *satName_outArray = (jbyte *)((*env)->GetByteArrayElements(env, satName_out, NULL));
    if (satName_outArray == NULL) {
        printf("Failed to get elements for satName array.");
        return (jint)(-1);
    }

    jint *epochYr_outArray = (jint *)((*env)->GetIntArrayElements(env, epochYr_out, NULL));
    if (epochYr_outArray == NULL) {
        printf("Failed to get elements for epochYr array.");
        return (jint)(-1);
    }

    jdouble *epochDays_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, epochDays_out, NULL));
    if (epochDays_outArray == NULL) {
        printf("Failed to get elements for epochDays array.");
        return (jint)(-1);
    }

    jdouble *bTerm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, bTerm_out, NULL));
    if (bTerm_outArray == NULL) {
        printf("Failed to get elements for bTerm array.");
        return (jint)(-1);
    }

    jdouble *ogParm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, ogParm_out, NULL));
    if (ogParm_outArray == NULL) {
        printf("Failed to get elements for ogParm array.");
        return (jint)(-1);
    }

    jdouble *agom_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, agom_out, NULL));
    if (agom_outArray == NULL) {
        printf("Failed to get elements for agom array.");
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

    jint *revNum_outArray = (jint *)((*env)->GetIntArrayElements(env, revNum_out, NULL));
    if (revNum_outArray == NULL) {
        printf("Failed to get elements for revNum array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleParseSP(line1_inArray, line2_inArray, satNum_outArray, secClass_outArray, satName_outArray, epochYr_outArray, epochDays_outArray, bTerm_outArray, ogParm_outArray, agom_outArray, elsetNum_outArray, incli_outArray, node_outArray, eccen_outArray, omega_outArray, mnAnomaly_outArray, mnMotion_outArray, revNum_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, satNum_out, satNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, satName_out, satName_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, epochYr_out, epochYr_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, epochDays_out, epochDays_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, bTerm_out, bTerm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, ogParm_out, ogParm_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, agom_out, agom_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, elsetNum_out, elsetNum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, incli_out, incli_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, node_out, node_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, eccen_out, eccen_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, omega_out, omega_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnAnomaly_out, mnAnomaly_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, mnMotion_out, mnMotion_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, revNum_out, revNum_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetLines(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to TleGetLines");
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
    jint ret = TleGetLines(satKey_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetCsv(JNIEnv* env, jclass jc, jlong satKey_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_out == 0) {
        printf("Got NULL parameter passed to TleGetCsv");
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
    jint ret = TleGetCsv(satKey_in, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGPFieldsToLines(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble nDotO2_in, jdouble n2DotO6_in, jdouble bstar_in, jint ephType_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to TleGPFieldsToLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
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
    TleGPFieldsToLines(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, nDotO2_in, n2DotO6_in, bstar_in, ephType_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGPFieldsToCsv(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble nDotO2_in, jdouble n2DotO6_in, jdouble bstar_in, jint ephType_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jbyteArray csvLine_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0 || csvLine_out == 0) {
        printf("Got NULL parameter passed to TleGPFieldsToCsv");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
        return;
    }

    jbyte *csvLine_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvLine_out, NULL));
    if (csvLine_outArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TleGPFieldsToCsv(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, nDotO2_in, n2DotO6_in, bstar_in, ephType_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, csvLine_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvLine_out, csvLine_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGPArrayToLines(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jstring xs_tle_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || xs_tle_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to TleGPArrayToLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleGPArrayToLines is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return;
    }

    char *xs_tle_inArray = (char *)((*env)->GetStringUTFChars(env, xs_tle_in, NULL));
    if (xs_tle_inArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
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
    TleGPArrayToLines(xa_tle_inArray, xs_tle_inArray, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGPArrayToCsv(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jstring xs_tle_in, jbyteArray csvline_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || xs_tle_in == 0 || csvline_out == 0) {
        printf("Got NULL parameter passed to TleGPArrayToCsv");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleGPArrayToCsv is too small.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return;
    }

    char *xs_tle_inArray = (char *)((*env)->GetStringUTFChars(env, xs_tle_in, NULL));
    if (xs_tle_inArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
        return;
    }

    jbyte *csvline_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvline_out, NULL));
    if (csvline_outArray == NULL) {
        printf("Failed to get elements for csvline array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    TleGPArrayToCsv(xa_tle_inArray, xs_tle_inArray, csvline_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvline_out, csvline_outArray, 0);

}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleSPFieldsToLines(JNIEnv* env, jclass jc, jint satNum_in, jbyte secClass_in, jstring satName_in, jint epochYr_in, jdouble epochDays_in, jdouble bTerm_in, jdouble ogParm_in, jdouble agom_in, jint elsetNum_in, jdouble incli_in, jdouble node_in, jdouble eccen_in, jdouble omega_in, jdouble mnAnomaly_in, jdouble mnMotion_in, jint revNum_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satName_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to TleSPFieldsToLines");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *satName_inArray = (char *)((*env)->GetStringUTFChars(env, satName_in, NULL));
    if (satName_inArray == NULL) {
        printf("Failed to get elements for satName array.");
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
    TleSPFieldsToLines(satNum_in, secClass_in, satName_inArray, epochYr_in, epochDays_in, bTerm_in, ogParm_in, agom_in, elsetNum_in, incli_in, node_in, eccen_in, omega_in, mnAnomaly_in, mnMotion_in, revNum_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetSatKey(JNIEnv* env, jclass jc, jint satNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleGetSatKey(satNum_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleGetSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKey_out == 0) {
        printf("Got NULL parameter passed to TleGetSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleGetSatKeyML is too small.");
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
    TleGetSatKeyML(satNum_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleFieldsToSatKey(JNIEnv* env, jclass jc, jint satNum_in, jint epochYr_in, jdouble epochDays_in, jint ephType_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleFieldsToSatKey(satNum_in, epochYr_in, epochDays_in, ephType_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleFieldsToSatKeyML(JNIEnv* env, jclass jc, jint satNum_in, jint epochYr_in, jdouble epochDays_in, jint ephType_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (satKey_out == 0) {
        printf("Got NULL parameter passed to TleFieldsToSatKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleFieldsToSatKeyML is too small.");
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
    TleFieldsToSatKeyML(satNum_in, epochYr_in, epochDays_in, ephType_in, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrArray(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jstring xs_tle_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || xs_tle_in == 0) {
        printf("Got NULL parameter passed to TleAddSatFrArray");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleAddSatFrArray is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jlong)(-1);
    }

    char *xs_tle_inArray = (char *)((*env)->GetStringUTFChars(env, xs_tle_in, NULL));
    if (xs_tle_inArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = TleAddSatFrArray(xa_tle_inArray, xs_tle_inArray);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_TleAddSatFrArrayML(JNIEnv* env, jclass jc, jdoubleArray xa_tle_in, jstring xs_tle_in, jlongArray satKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || xs_tle_in == 0 || satKey_out == 0) {
        printf("Got NULL parameter passed to TleAddSatFrArrayML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleAddSatFrArrayML is too small.");
        return;
    }

    int satKey_len = (*env)->GetArrayLength(env, satKey_out);
    if (satKey_len < 1) {
        printf("satKey parameter passed in TleAddSatFrArrayML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_in, NULL));
    if (xa_tle_inArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return;
    }

    char *xs_tle_inArray = (char *)((*env)->GetStringUTFChars(env, xs_tle_in, NULL));
    if (xs_tle_inArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
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
    TleAddSatFrArrayML(xa_tle_inArray, xs_tle_inArray, satKey_longOutArray);

    for (ii = 0; ii < satKey_len; ii++) {
        satKey_outArray[ii] = satKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, satKey_out, satKey_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleUpdateSatFrArray(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_tle_in, jstring xs_tle_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_in == 0 || xs_tle_in == 0) {
        printf("Got NULL parameter passed to TleUpdateSatFrArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_in);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleUpdateSatFrArray is too small.");
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

    char *xs_tle_inArray = (char *)((*env)->GetStringUTFChars(env, xs_tle_in, NULL));
    if (xs_tle_inArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleUpdateSatFrArray(satKey_in, xa_tle_inArray, xs_tle_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleDataToArray(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_tle_out, jbyteArray xs_tle_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_tle_out == 0 || xs_tle_out == 0) {
        printf("Got NULL parameter passed to TleDataToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_tle_len = (*env)->GetArrayLength(env, xa_tle_out);
    if (xa_tle_len < 64) {
        printf("xa_tle parameter passed in TleDataToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_tle_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_tle_out, NULL));
    if (xa_tle_outArray == NULL) {
        printf("Failed to get elements for xa_tle array.");
        return (jint)(-1);
    }

    jbyte *xs_tle_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_tle_out, NULL));
    if (xs_tle_outArray == NULL) {
        printf("Failed to get elements for xs_tle array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleDataToArray(satKey_in, xa_tle_outArray, xs_tle_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_tle_out, xa_tle_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_tle_out, xs_tle_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleLinesToCsv(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jbyteArray csvline_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || csvline_out == 0) {
        printf("Got NULL parameter passed to TleLinesToCsv");
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

    jbyte *csvline_outArray = (jbyte *)((*env)->GetByteArrayElements(env, csvline_out, NULL));
    if (csvline_outArray == NULL) {
        printf("Failed to get elements for csvline array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = TleLinesToCsv(line1_inArray, line2_inArray, csvline_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, csvline_out, csvline_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_TleCsvToLines(JNIEnv* env, jclass jc, jstring csvLine_in, jint newSatno_in, jbyteArray line1_out, jbyteArray line2_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (csvLine_in == 0 || line1_out == 0 || line2_out == 0) {
        printf("Got NULL parameter passed to TleCsvToLines");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *csvLine_inArray = (char *)((*env)->GetStringUTFChars(env, csvLine_in, NULL));
    if (csvLine_inArray == NULL) {
        printf("Failed to get elements for csvLine array.");
        return (jint)(-1);
    }

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
    jint ret = TleCsvToLines(csvLine_inArray, newSatno_in, line1_outArray, line2_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, line1_out, line1_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, line2_out, line2_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_SetTleKeyMode(JNIEnv* env, jclass jc, jint tle_keyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetTleKeyMode(tle_keyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniTle_GetTleKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetTleKeyMode();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniTle_GetCheckSums(JNIEnv* env, jclass jc, jstring line1_in, jstring line2_in, jintArray chkSum1_out, jintArray chkSum2_out, jintArray errCode_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (line1_in == 0 || line2_in == 0 || chkSum1_out == 0 || chkSum2_out == 0 || errCode_out == 0) {
        printf("Got NULL parameter passed to GetCheckSums");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int chkSum1_len = (*env)->GetArrayLength(env, chkSum1_out);
    if (chkSum1_len < 1) {
        printf("chkSum1 parameter passed in GetCheckSums is too small.");
        return;
    }

    int chkSum2_len = (*env)->GetArrayLength(env, chkSum2_out);
    if (chkSum2_len < 1) {
        printf("chkSum2 parameter passed in GetCheckSums is too small.");
        return;
    }

    int errCode_len = (*env)->GetArrayLength(env, errCode_out);
    if (errCode_len < 1) {
        printf("errCode parameter passed in GetCheckSums is too small.");
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

    jint *chkSum1_outArray = (jint *)((*env)->GetIntArrayElements(env, chkSum1_out, NULL));
    if (chkSum1_outArray == NULL) {
        printf("Failed to get elements for chkSum1 array.");
        return;
    }

    jint *chkSum2_outArray = (jint *)((*env)->GetIntArrayElements(env, chkSum2_out, NULL));
    if (chkSum2_outArray == NULL) {
        printf("Failed to get elements for chkSum2 array.");
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
    GetCheckSums(line1_inArray, line2_inArray, chkSum1_outArray, chkSum2_outArray, errCode_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, chkSum1_out, chkSum1_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, chkSum2_out, chkSum2_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, errCode_out, errCode_outArray, 0);

}
// ========================= End of auto generated code ==========================
