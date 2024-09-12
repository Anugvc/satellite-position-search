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
#include "../../wrappers/SensorDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSensor_LoadSensorDll(JNIEnv* env, jclass jc)
{
    LoadSensorDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadSensorDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to SensorGetInfo");
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
    SensorGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorLoadFile(JNIEnv* env, jclass jc, jstring senFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senFile_in == 0) {
        printf("Got NULL parameter passed to SensorLoadFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *senFile_inArray = (char *)((*env)->GetStringUTFChars(env, senFile_in, NULL));
    if (senFile_inArray == NULL) {
        printf("Failed to get elements for senFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorLoadFile(senFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorLoadCard(JNIEnv* env, jclass jc, jstring card_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (card_in == 0) {
        printf("Got NULL parameter passed to SensorLoadCard");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *card_inArray = (char *)((*env)->GetStringUTFChars(env, card_in, NULL));
    if (card_inArray == NULL) {
        printf("Failed to get elements for card array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorLoadCard(card_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSaveFile(JNIEnv* env, jclass jc, jstring sensorFile_in, jint saveMode_in, jint saveForm_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (sensorFile_in == 0) {
        printf("Got NULL parameter passed to SensorSaveFile");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *sensorFile_inArray = (char *)((*env)->GetStringUTFChars(env, sensorFile_in, NULL));
    if (sensorFile_inArray == NULL) {
        printf("Failed to get elements for sensorFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSaveFile(sensorFile_inArray, saveMode_in, saveForm_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorRemove(JNIEnv* env, jclass jc, jlong senKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorRemove(senKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorRemoveAll(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorRemoveAll();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetCount(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetCount();

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetLoaded(JNIEnv* env, jclass jc, jint order_in, jlongArray senKeys_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senKeys_out == 0) {
        printf("Got NULL parameter passed to SensorGetLoaded");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int senKeys_len = (*env)->GetArrayLength(env, senKeys_out);

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *senKeys_outArray = (jlong *)((*env)->GetLongArrayElements(env, senKeys_out, NULL));
    if (senKeys_outArray == NULL) {
        printf("Failed to get elements for senKeys array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 *senKeys_longOutArray = (__int64*)malloc(senKeys_len * sizeof(__int64));

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SensorGetLoaded(order_in, senKeys_longOutArray);

    for (ii = 0; ii < senKeys_len; ii++) {
        senKeys_outArray[ii] = senKeys_longOutArray[ii];
    }

    free(senKeys_longOutArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, senKeys_out, senKeys_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetLocAll(JNIEnv* env, jclass jc, jlong senKey_in, jdoubleArray astroLat_out, jdoubleArray astroLon_out, jdoubleArray senPos_out, jbyteArray senDesc_out, jintArray orbSatNum_out, jbyteArray secClass_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (astroLat_out == 0 || astroLon_out == 0 || senPos_out == 0 || senDesc_out == 0 || orbSatNum_out == 0 || secClass_out == 0) {
        printf("Got NULL parameter passed to SensorGetLocAll");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int astroLat_len = (*env)->GetArrayLength(env, astroLat_out);
    if (astroLat_len < 1) {
        printf("astroLat parameter passed in SensorGetLocAll is too small.");
        return (jint)(-1);
    }

    int astroLon_len = (*env)->GetArrayLength(env, astroLon_out);
    if (astroLon_len < 1) {
        printf("astroLon parameter passed in SensorGetLocAll is too small.");
        return (jint)(-1);
    }

    int senPos_len = (*env)->GetArrayLength(env, senPos_out);
    if (senPos_len < 3) {
        printf("senPos parameter passed in SensorGetLocAll is too small.");
        return (jint)(-1);
    }

    int orbSatNum_len = (*env)->GetArrayLength(env, orbSatNum_out);
    if (orbSatNum_len < 1) {
        printf("orbSatNum parameter passed in SensorGetLocAll is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *astroLat_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, astroLat_out, NULL));
    if (astroLat_outArray == NULL) {
        printf("Failed to get elements for astroLat array.");
        return (jint)(-1);
    }

    jdouble *astroLon_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, astroLon_out, NULL));
    if (astroLon_outArray == NULL) {
        printf("Failed to get elements for astroLon array.");
        return (jint)(-1);
    }

    jdouble *senPos_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senPos_out, NULL));
    if (senPos_outArray == NULL) {
        printf("Failed to get elements for senPos array.");
        return (jint)(-1);
    }

    jbyte *senDesc_outArray = (jbyte *)((*env)->GetByteArrayElements(env, senDesc_out, NULL));
    if (senDesc_outArray == NULL) {
        printf("Failed to get elements for senDesc array.");
        return (jint)(-1);
    }

    jint *orbSatNum_outArray = (jint *)((*env)->GetIntArrayElements(env, orbSatNum_out, NULL));
    if (orbSatNum_outArray == NULL) {
        printf("Failed to get elements for orbSatNum array.");
        return (jint)(-1);
    }

    jbyte *secClass_outArray = (jbyte *)((*env)->GetByteArrayElements(env, secClass_out, NULL));
    if (secClass_outArray == NULL) {
        printf("Failed to get elements for secClass array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetLocAll(senKey_in, astroLat_outArray, astroLon_outArray, senPos_outArray, senDesc_outArray, orbSatNum_outArray, secClass_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, astroLat_out, astroLat_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, astroLon_out, astroLon_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, senPos_out, senPos_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, senDesc_out, senDesc_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, orbSatNum_out, orbSatNum_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, secClass_out, secClass_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetLocAll(JNIEnv* env, jclass jc, jlong senKey_in, jdouble astroLat_in, jdouble astroLon_in, jdoubleArray senPos_in, jstring senDesc_in, jint orbSatNum_in, jbyte secClass_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senPos_in == 0 || senDesc_in == 0) {
        printf("Got NULL parameter passed to SensorSetLocAll");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int senPos_len = (*env)->GetArrayLength(env, senPos_in);
    if (senPos_len < 3) {
        printf("senPos parameter passed in SensorSetLocAll is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *senPos_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, senPos_in, NULL));
    if (senPos_inArray == NULL) {
        printf("Failed to get elements for senPos array.");
        return (jint)(-1);
    }

    char *senDesc_inArray = (char *)((*env)->GetStringUTFChars(env, senDesc_in, NULL));
    if (senDesc_inArray == NULL) {
        printf("Failed to get elements for senDesc array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetLocAll(senKey_in, astroLat_in, astroLon_in, senPos_inArray, senDesc_inArray, orbSatNum_in, secClass_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetLocField(JNIEnv* env, jclass jc, jlong senKey_in, jint xf_SenLoc_in, jbyteArray strValue_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_out == 0) {
        printf("Got NULL parameter passed to SensorGetLocField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *strValue_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strValue_out, NULL));
    if (strValue_outArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetLocField(senKey_in, xf_SenLoc_in, strValue_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, strValue_out, strValue_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetLocField(JNIEnv* env, jclass jc, jlong senKey_in, jint xf_SenLoc_in, jstring strValue_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_in == 0) {
        printf("Got NULL parameter passed to SensorSetLocField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *strValue_inArray = (char *)((*env)->GetStringUTFChars(env, strValue_in, NULL));
    if (strValue_inArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetLocField(senKey_in, xf_SenLoc_in, strValue_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGet1L(JNIEnv* env, jclass jc, jlong senKey_in, jbyteArray viewType_out, jbyteArray obsType_out, jintArray rngUnits_out, jdoubleArray maxRngLim_out, jbyteArray boresight1_out, jdoubleArray elLim1_out, jdoubleArray elLim2_out, jdoubleArray azLim1_out, jdoubleArray azLim2_out, jdoubleArray interval_out, jintArray visFlg_out, jintArray rngLimFlg_out, jintArray maxPPP_out, jdoubleArray minRngLim_out, jintArray plntryRes_out, jdoubleArray rrLim_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (viewType_out == 0 || obsType_out == 0 || rngUnits_out == 0 || maxRngLim_out == 0 || boresight1_out == 0 || elLim1_out == 0 || elLim2_out == 0 || azLim1_out == 0 || azLim2_out == 0 || interval_out == 0 || visFlg_out == 0 || rngLimFlg_out == 0 || maxPPP_out == 0 || minRngLim_out == 0 || plntryRes_out == 0 || rrLim_out == 0) {
        printf("Got NULL parameter passed to SensorGet1L");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int rngUnits_len = (*env)->GetArrayLength(env, rngUnits_out);
    if (rngUnits_len < 1) {
        printf("rngUnits parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int maxRngLim_len = (*env)->GetArrayLength(env, maxRngLim_out);
    if (maxRngLim_len < 1) {
        printf("maxRngLim parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int elLim1_len = (*env)->GetArrayLength(env, elLim1_out);
    if (elLim1_len < 1) {
        printf("elLim1 parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int elLim2_len = (*env)->GetArrayLength(env, elLim2_out);
    if (elLim2_len < 1) {
        printf("elLim2 parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int azLim1_len = (*env)->GetArrayLength(env, azLim1_out);
    if (azLim1_len < 1) {
        printf("azLim1 parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int azLim2_len = (*env)->GetArrayLength(env, azLim2_out);
    if (azLim2_len < 1) {
        printf("azLim2 parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int interval_len = (*env)->GetArrayLength(env, interval_out);
    if (interval_len < 1) {
        printf("interval parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int visFlg_len = (*env)->GetArrayLength(env, visFlg_out);
    if (visFlg_len < 1) {
        printf("visFlg parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int rngLimFlg_len = (*env)->GetArrayLength(env, rngLimFlg_out);
    if (rngLimFlg_len < 1) {
        printf("rngLimFlg parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int maxPPP_len = (*env)->GetArrayLength(env, maxPPP_out);
    if (maxPPP_len < 1) {
        printf("maxPPP parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int minRngLim_len = (*env)->GetArrayLength(env, minRngLim_out);
    if (minRngLim_len < 1) {
        printf("minRngLim parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int plntryRes_len = (*env)->GetArrayLength(env, plntryRes_out);
    if (plntryRes_len < 1) {
        printf("plntryRes parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    int rrLim_len = (*env)->GetArrayLength(env, rrLim_out);
    if (rrLim_len < 1) {
        printf("rrLim parameter passed in SensorGet1L is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *viewType_outArray = (jbyte *)((*env)->GetByteArrayElements(env, viewType_out, NULL));
    if (viewType_outArray == NULL) {
        printf("Failed to get elements for viewType array.");
        return (jint)(-1);
    }

    jbyte *obsType_outArray = (jbyte *)((*env)->GetByteArrayElements(env, obsType_out, NULL));
    if (obsType_outArray == NULL) {
        printf("Failed to get elements for obsType array.");
        return (jint)(-1);
    }

    jint *rngUnits_outArray = (jint *)((*env)->GetIntArrayElements(env, rngUnits_out, NULL));
    if (rngUnits_outArray == NULL) {
        printf("Failed to get elements for rngUnits array.");
        return (jint)(-1);
    }

    jdouble *maxRngLim_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, maxRngLim_out, NULL));
    if (maxRngLim_outArray == NULL) {
        printf("Failed to get elements for maxRngLim array.");
        return (jint)(-1);
    }

    jbyte *boresight1_outArray = (jbyte *)((*env)->GetByteArrayElements(env, boresight1_out, NULL));
    if (boresight1_outArray == NULL) {
        printf("Failed to get elements for boresight1 array.");
        return (jint)(-1);
    }

    jdouble *elLim1_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elLim1_out, NULL));
    if (elLim1_outArray == NULL) {
        printf("Failed to get elements for elLim1 array.");
        return (jint)(-1);
    }

    jdouble *elLim2_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elLim2_out, NULL));
    if (elLim2_outArray == NULL) {
        printf("Failed to get elements for elLim2 array.");
        return (jint)(-1);
    }

    jdouble *azLim1_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azLim1_out, NULL));
    if (azLim1_outArray == NULL) {
        printf("Failed to get elements for azLim1 array.");
        return (jint)(-1);
    }

    jdouble *azLim2_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azLim2_out, NULL));
    if (azLim2_outArray == NULL) {
        printf("Failed to get elements for azLim2 array.");
        return (jint)(-1);
    }

    jdouble *interval_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, interval_out, NULL));
    if (interval_outArray == NULL) {
        printf("Failed to get elements for interval array.");
        return (jint)(-1);
    }

    jint *visFlg_outArray = (jint *)((*env)->GetIntArrayElements(env, visFlg_out, NULL));
    if (visFlg_outArray == NULL) {
        printf("Failed to get elements for visFlg array.");
        return (jint)(-1);
    }

    jint *rngLimFlg_outArray = (jint *)((*env)->GetIntArrayElements(env, rngLimFlg_out, NULL));
    if (rngLimFlg_outArray == NULL) {
        printf("Failed to get elements for rngLimFlg array.");
        return (jint)(-1);
    }

    jint *maxPPP_outArray = (jint *)((*env)->GetIntArrayElements(env, maxPPP_out, NULL));
    if (maxPPP_outArray == NULL) {
        printf("Failed to get elements for maxPPP array.");
        return (jint)(-1);
    }

    jdouble *minRngLim_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, minRngLim_out, NULL));
    if (minRngLim_outArray == NULL) {
        printf("Failed to get elements for minRngLim array.");
        return (jint)(-1);
    }

    jint *plntryRes_outArray = (jint *)((*env)->GetIntArrayElements(env, plntryRes_out, NULL));
    if (plntryRes_outArray == NULL) {
        printf("Failed to get elements for plntryRes array.");
        return (jint)(-1);
    }

    jdouble *rrLim_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, rrLim_out, NULL));
    if (rrLim_outArray == NULL) {
        printf("Failed to get elements for rrLim array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGet1L(senKey_in, viewType_outArray, obsType_outArray, rngUnits_outArray, maxRngLim_outArray, boresight1_outArray, elLim1_outArray, elLim2_outArray, azLim1_outArray, azLim2_outArray, interval_outArray, visFlg_outArray, rngLimFlg_outArray, maxPPP_outArray, minRngLim_outArray, plntryRes_outArray, rrLim_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, viewType_out, viewType_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, obsType_out, obsType_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, rngUnits_out, rngUnits_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, maxRngLim_out, maxRngLim_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, boresight1_out, boresight1_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elLim1_out, elLim1_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elLim2_out, elLim2_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azLim1_out, azLim1_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azLim2_out, azLim2_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, interval_out, interval_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, visFlg_out, visFlg_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, rngLimFlg_out, rngLimFlg_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, maxPPP_out, maxPPP_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, minRngLim_out, minRngLim_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, plntryRes_out, plntryRes_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, rrLim_out, rrLim_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSet1L(JNIEnv* env, jclass jc, jlong senKey_in, jbyte viewType_in, jbyte obsType_in, jint rngUnits_in, jdouble maxRngLim_in, jbyte boresight1_in, jdouble elLim1_in, jdouble elLim2_in, jdouble azLim1_in, jdouble azLim2_in, jdouble interval_in, jint visFlg_in, jint rngLimFlg_in, jint maxPPP_in, jdouble minRngLim_in, jint plntryRes_in, jdouble rrLim_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSet1L(senKey_in, viewType_in, obsType_in, rngUnits_in, maxRngLim_in, boresight1_in, elLim1_in, elLim2_in, azLim1_in, azLim2_in, interval_in, visFlg_in, rngLimFlg_in, maxPPP_in, minRngLim_in, plntryRes_in, rrLim_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGet2L(JNIEnv* env, jclass jc, jlong senKey_in, jbyteArray boresight2_out, jdoubleArray elLim3_out, jdoubleArray elLim4_out, jdoubleArray azLim3_out, jdoubleArray azLim4_out, jintArray earthBckgrnd_out, jdoubleArray earthLimb_out, jdoubleArray solarXAngle_out, jdoubleArray lunarXAngle_out, jdoubleArray minIllum_out, jdoubleArray twilit_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (boresight2_out == 0 || elLim3_out == 0 || elLim4_out == 0 || azLim3_out == 0 || azLim4_out == 0 || earthBckgrnd_out == 0 || earthLimb_out == 0 || solarXAngle_out == 0 || lunarXAngle_out == 0 || minIllum_out == 0 || twilit_out == 0) {
        printf("Got NULL parameter passed to SensorGet2L");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int elLim3_len = (*env)->GetArrayLength(env, elLim3_out);
    if (elLim3_len < 1) {
        printf("elLim3 parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int elLim4_len = (*env)->GetArrayLength(env, elLim4_out);
    if (elLim4_len < 1) {
        printf("elLim4 parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int azLim3_len = (*env)->GetArrayLength(env, azLim3_out);
    if (azLim3_len < 1) {
        printf("azLim3 parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int azLim4_len = (*env)->GetArrayLength(env, azLim4_out);
    if (azLim4_len < 1) {
        printf("azLim4 parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int earthBckgrnd_len = (*env)->GetArrayLength(env, earthBckgrnd_out);
    if (earthBckgrnd_len < 1) {
        printf("earthBckgrnd parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int earthLimb_len = (*env)->GetArrayLength(env, earthLimb_out);
    if (earthLimb_len < 1) {
        printf("earthLimb parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int solarXAngle_len = (*env)->GetArrayLength(env, solarXAngle_out);
    if (solarXAngle_len < 1) {
        printf("solarXAngle parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int lunarXAngle_len = (*env)->GetArrayLength(env, lunarXAngle_out);
    if (lunarXAngle_len < 1) {
        printf("lunarXAngle parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int minIllum_len = (*env)->GetArrayLength(env, minIllum_out);
    if (minIllum_len < 1) {
        printf("minIllum parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    int twilit_len = (*env)->GetArrayLength(env, twilit_out);
    if (twilit_len < 1) {
        printf("twilit parameter passed in SensorGet2L is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *boresight2_outArray = (jbyte *)((*env)->GetByteArrayElements(env, boresight2_out, NULL));
    if (boresight2_outArray == NULL) {
        printf("Failed to get elements for boresight2 array.");
        return (jint)(-1);
    }

    jdouble *elLim3_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elLim3_out, NULL));
    if (elLim3_outArray == NULL) {
        printf("Failed to get elements for elLim3 array.");
        return (jint)(-1);
    }

    jdouble *elLim4_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, elLim4_out, NULL));
    if (elLim4_outArray == NULL) {
        printf("Failed to get elements for elLim4 array.");
        return (jint)(-1);
    }

    jdouble *azLim3_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azLim3_out, NULL));
    if (azLim3_outArray == NULL) {
        printf("Failed to get elements for azLim3 array.");
        return (jint)(-1);
    }

    jdouble *azLim4_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, azLim4_out, NULL));
    if (azLim4_outArray == NULL) {
        printf("Failed to get elements for azLim4 array.");
        return (jint)(-1);
    }

    jint *earthBckgrnd_outArray = (jint *)((*env)->GetIntArrayElements(env, earthBckgrnd_out, NULL));
    if (earthBckgrnd_outArray == NULL) {
        printf("Failed to get elements for earthBckgrnd array.");
        return (jint)(-1);
    }

    jdouble *earthLimb_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, earthLimb_out, NULL));
    if (earthLimb_outArray == NULL) {
        printf("Failed to get elements for earthLimb array.");
        return (jint)(-1);
    }

    jdouble *solarXAngle_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, solarXAngle_out, NULL));
    if (solarXAngle_outArray == NULL) {
        printf("Failed to get elements for solarXAngle array.");
        return (jint)(-1);
    }

    jdouble *lunarXAngle_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, lunarXAngle_out, NULL));
    if (lunarXAngle_outArray == NULL) {
        printf("Failed to get elements for lunarXAngle array.");
        return (jint)(-1);
    }

    jdouble *minIllum_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, minIllum_out, NULL));
    if (minIllum_outArray == NULL) {
        printf("Failed to get elements for minIllum array.");
        return (jint)(-1);
    }

    jdouble *twilit_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, twilit_out, NULL));
    if (twilit_outArray == NULL) {
        printf("Failed to get elements for twilit array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGet2L(senKey_in, boresight2_outArray, elLim3_outArray, elLim4_outArray, azLim3_outArray, azLim4_outArray, earthBckgrnd_outArray, earthLimb_outArray, solarXAngle_outArray, lunarXAngle_outArray, minIllum_outArray, twilit_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, boresight2_out, boresight2_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elLim3_out, elLim3_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, elLim4_out, elLim4_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azLim3_out, azLim3_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, azLim4_out, azLim4_outArray, 0);
    (*env)->ReleaseIntArrayElements(env, earthBckgrnd_out, earthBckgrnd_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, earthLimb_out, earthLimb_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, solarXAngle_out, solarXAngle_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, lunarXAngle_out, lunarXAngle_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, minIllum_out, minIllum_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, twilit_out, twilit_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSet2L(JNIEnv* env, jclass jc, jlong senKey_in, jbyte boresight2_in, jdouble elLim3_in, jdouble elLim4_in, jdouble azLim3_in, jdouble azLim4_in, jint earthBckgrnd_in, jdouble earthLimb_in, jdouble solarXAngle_in, jdouble lunarXAngle_in, jdouble minIllum_in, jdouble twilit_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSet2L(senKey_in, boresight2_in, elLim3_in, elLim4_in, azLim3_in, azLim4_in, earthBckgrnd_in, earthLimb_in, solarXAngle_in, lunarXAngle_in, minIllum_in, twilit_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetLimField(JNIEnv* env, jclass jc, jlong senKey_in, jint xf_SenLim_in, jbyteArray strValue_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_out == 0) {
        printf("Got NULL parameter passed to SensorGetLimField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *strValue_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strValue_out, NULL));
    if (strValue_outArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetLimField(senKey_in, xf_SenLim_in, strValue_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, strValue_out, strValue_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetLimField(JNIEnv* env, jclass jc, jlong senKey_in, jint xf_SenLim_in, jstring strValue_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_in == 0) {
        printf("Got NULL parameter passed to SensorSetLimField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *strValue_inArray = (char *)((*env)->GetStringUTFChars(env, strValue_in, NULL));
    if (strValue_inArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetLimField(senKey_in, xf_SenLim_in, strValue_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetBS(JNIEnv* env, jclass jc, jlong senKey_in, jdoubleArray xaf_senbs_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xaf_senbs_out == 0) {
        printf("Got NULL parameter passed to SensorGetBS");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xaf_senbs_len = (*env)->GetArrayLength(env, xaf_senbs_out);
    if (xaf_senbs_len < 16) {
        printf("xaf_senbs parameter passed in SensorGetBS is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xaf_senbs_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xaf_senbs_out, NULL));
    if (xaf_senbs_outArray == NULL) {
        printf("Failed to get elements for xaf_senbs array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetBS(senKey_in, xaf_senbs_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xaf_senbs_out, xaf_senbs_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetBS(JNIEnv* env, jclass jc, jlong senKey_in, jdoubleArray xaf_senbs_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xaf_senbs_in == 0) {
        printf("Got NULL parameter passed to SensorSetBS");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xaf_senbs_len = (*env)->GetArrayLength(env, xaf_senbs_in);
    if (xaf_senbs_len < 16) {
        printf("xaf_senbs parameter passed in SensorSetBS is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xaf_senbs_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xaf_senbs_in, NULL));
    if (xaf_senbs_inArray == NULL) {
        printf("Failed to get elements for xaf_senbs array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetBS(senKey_in, xaf_senbs_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetBSField(JNIEnv* env, jclass jc, jlong senKey_in, jint xaf_senbs_in, jbyteArray strValue_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_out == 0) {
        printf("Got NULL parameter passed to SensorGetBSField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *strValue_outArray = (jbyte *)((*env)->GetByteArrayElements(env, strValue_out, NULL));
    if (strValue_outArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetBSField(senKey_in, xaf_senbs_in, strValue_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, strValue_out, strValue_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetBSField(JNIEnv* env, jclass jc, jlong senKey_in, jint xaf_senbs_in, jstring strValue_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (strValue_in == 0) {
        printf("Got NULL parameter passed to SensorSetBSField");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *strValue_inArray = (char *)((*env)->GetStringUTFChars(env, strValue_in, NULL));
    if (strValue_inArray == NULL) {
        printf("Failed to get elements for strValue array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetBSField(senKey_in, xaf_senbs_in, strValue_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetLines(JNIEnv* env, jclass jc, jlong senKey_in, jbyteArray sCard_out, jbyteArray l1Card_out, jbyteArray l2Card_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (sCard_out == 0 || l1Card_out == 0 || l2Card_out == 0) {
        printf("Got NULL parameter passed to SensorGetLines");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jbyte *sCard_outArray = (jbyte *)((*env)->GetByteArrayElements(env, sCard_out, NULL));
    if (sCard_outArray == NULL) {
        printf("Failed to get elements for sCard array.");
        return (jint)(-1);
    }

    jbyte *l1Card_outArray = (jbyte *)((*env)->GetByteArrayElements(env, l1Card_out, NULL));
    if (l1Card_outArray == NULL) {
        printf("Failed to get elements for l1Card array.");
        return (jint)(-1);
    }

    jbyte *l2Card_outArray = (jbyte *)((*env)->GetByteArrayElements(env, l2Card_out, NULL));
    if (l2Card_outArray == NULL) {
        printf("Failed to get elements for l2Card array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetLines(senKey_in, sCard_outArray, l1Card_outArray, l2Card_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, sCard_out, sCard_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, l1Card_out, l1Card_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, l2Card_out, l2Card_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetOrbSatKey(JNIEnv* env, jclass jc, jlong senKey_in, jlongArray orbSatKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (orbSatKey_out == 0) {
        printf("Got NULL parameter passed to SensorGetOrbSatKey");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int orbSatKey_len = (*env)->GetArrayLength(env, orbSatKey_out);
    if (orbSatKey_len < 1) {
        printf("orbSatKey parameter passed in SensorGetOrbSatKey is too small.");
        return (jint)(-1);
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *orbSatKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, orbSatKey_out, NULL));
    if (orbSatKey_outArray == NULL) {
        printf("Failed to get elements for orbSatKey array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 orbSatKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetOrbSatKey(senKey_in, orbSatKey_longOutArray);

    for (ii = 0; ii < orbSatKey_len; ii++) {
        orbSatKey_outArray[ii] = orbSatKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, orbSatKey_out, orbSatKey_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorSetOrbSatKey(JNIEnv* env, jclass jc, jlong senKey_in, jlong orbSatKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorSetOrbSatKey(senKey_in, orbSatKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorLoadAzElTable(JNIEnv* env, jclass jc, jlong senKey_in, jstring azElTableFile_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (azElTableFile_in == 0) {
        printf("Got NULL parameter passed to SensorLoadAzElTable");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *azElTableFile_inArray = (char *)((*env)->GetStringUTFChars(env, azElTableFile_in, NULL));
    if (azElTableFile_inArray == NULL) {
        printf("Failed to get elements for azElTableFile array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorLoadAzElTable(senKey_in, azElTableFile_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorAddSegment(JNIEnv* env, jclass jc, jlong senKey_in, jint segType_in, jdoubleArray xa_seg_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_seg_in == 0) {
        printf("Got NULL parameter passed to SensorAddSegment");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_seg_len = (*env)->GetArrayLength(env, xa_seg_in);
    if (xa_seg_len < 16) {
        printf("xa_seg parameter passed in SensorAddSegment is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_seg_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_seg_in, NULL));
    if (xa_seg_inArray == NULL) {
        printf("Failed to get elements for xa_seg array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorAddSegment(senKey_in, segType_in, xa_seg_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetSegment(JNIEnv* env, jclass jc, jlong senKey_in, jint segNum_in, jintArray segType_out, jdoubleArray xa_seg_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (segType_out == 0 || xa_seg_out == 0) {
        printf("Got NULL parameter passed to SensorGetSegment");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int segType_len = (*env)->GetArrayLength(env, segType_out);
    if (segType_len < 1) {
        printf("segType parameter passed in SensorGetSegment is too small.");
        return (jint)(-1);
    }

    int xa_seg_len = (*env)->GetArrayLength(env, xa_seg_out);
    if (xa_seg_len < 16) {
        printf("xa_seg parameter passed in SensorGetSegment is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jint *segType_outArray = (jint *)((*env)->GetIntArrayElements(env, segType_out, NULL));
    if (segType_outArray == NULL) {
        printf("Failed to get elements for segType array.");
        return (jint)(-1);
    }

    jdouble *xa_seg_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_seg_out, NULL));
    if (xa_seg_outArray == NULL) {
        printf("Failed to get elements for xa_seg array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorGetSegment(senKey_in, segNum_in, segType_outArray, xa_seg_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseIntArrayElements(env, segType_out, segType_outArray, 0);
    (*env)->ReleaseDoubleArrayElements(env, xa_seg_out, xa_seg_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SetSenKeyMode(JNIEnv* env, jclass jc, jint sen_keyMode_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SetSenKeyMode(sen_keyMode_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_GetSenKeyMode(JNIEnv* env, jclass jc)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetSenKeyMode();

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SenNumOf(JNIEnv* env, jclass jc, jlong senKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SenNumOf(senKey_in);

    return ret;
}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetSenKey(JNIEnv* env, jclass jc, jint senNum_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SensorGetSenKey(senNum_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorGetSenKeyML(JNIEnv* env, jclass jc, jint senNum_in, jlongArray senKey_out)
{
    int row = 0;
    int col = 0;
    int ii = 0;

    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (senKey_out == 0) {
        printf("Got NULL parameter passed to SensorGetSenKeyML");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int senKey_len = (*env)->GetArrayLength(env, senKey_out);
    if (senKey_len < 1) {
        printf("senKey parameter passed in SensorGetSenKeyML is too small.");
        return;
    }


    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jlong *senKey_outArray = (jlong *)((*env)->GetLongArrayElements(env, senKey_out, NULL));
    if (senKey_outArray == NULL) {
        printf("Failed to get elements for senKey array.");
        return;
    }

    ///////////////////////////////////////////////////////////////////////
    // Declare local long array and migrate jlongArray data to this
    // local array for input parameters
    ///////////////////////////////////////////////////////////////////////
    __int64 senKey_longOutArray[1];

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    SensorGetSenKeyML(senNum_in, senKey_longOutArray);

    for (ii = 0; ii < senKey_len; ii++) {
        senKey_outArray[ii] = senKey_longOutArray[ii];
    }

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseLongArrayElements(env, senKey_out, senKey_outArray, 0);

}


JNIEXPORT jlong JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorAddFrArray(JNIEnv* env, jclass jc, jdoubleArray xa_sen_in, jstring xs_sen_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_sen_in == 0 || xs_sen_in == 0) {
        printf("Got NULL parameter passed to SensorAddFrArray");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_sen_len = (*env)->GetArrayLength(env, xa_sen_in);
    if (xa_sen_len < 128) {
        printf("xa_sen parameter passed in SensorAddFrArray is too small.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_sen_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_sen_in, NULL));
    if (xa_sen_inArray == NULL) {
        printf("Failed to get elements for xa_sen array.");
        return (jlong)(-1);
    }

    char *xs_sen_inArray = (char *)((*env)->GetStringUTFChars(env, xs_sen_in, NULL));
    if (xs_sen_inArray == NULL) {
        printf("Failed to get elements for xs_sen array.");
        return (jlong)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jlong ret = SensorAddFrArray(xa_sen_inArray, xs_sen_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniSensor_SensorDataToArray(JNIEnv* env, jclass jc, jlong senKey_in, jdoubleArray xa_sen_out, jbyteArray xs_sen_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_sen_out == 0 || xs_sen_out == 0) {
        printf("Got NULL parameter passed to SensorDataToArray");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_sen_len = (*env)->GetArrayLength(env, xa_sen_out);
    if (xa_sen_len < 128) {
        printf("xa_sen parameter passed in SensorDataToArray is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_sen_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_sen_out, NULL));
    if (xa_sen_outArray == NULL) {
        printf("Failed to get elements for xa_sen array.");
        return (jint)(-1);
    }

    jbyte *xs_sen_outArray = (jbyte *)((*env)->GetByteArrayElements(env, xs_sen_out, NULL));
    if (xs_sen_outArray == NULL) {
        printf("Failed to get elements for xs_sen array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SensorDataToArray(senKey_in, xa_sen_outArray, xs_sen_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_sen_out, xa_sen_outArray, 0);
    (*env)->ReleaseByteArrayElements(env, xs_sen_out, xs_sen_outArray, 0);

    return ret;
}
// ========================= End of auto generated code ==========================
