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
#include "../../wrappers/SpVecDll.h"
#include "../../wrappers/VcmDll.h"
#include "../../wrappers/ExtEphemDll.h"
#include "../../wrappers/ElOpsDll.h"

// End
#ifdef __cplusplus
}
#endif

JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniElOps_LoadElOpsDll(JNIEnv* env, jclass jc)
{
    LoadElOpsDll();
}

JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_ElOpsInit(JNIEnv* env, jclass jc, jlong apAddr_in)
{
    LoadElOpsDll();

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = ElOpsInit(apAddr_in);

    return ret;
}


JNIEXPORT void JNICALL Java_afspc_astrostds_wrappers_JniElOps_ElOpsGetInfo(JNIEnv* env, jclass jc, jbyteArray infoStr_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (infoStr_out == 0) {
        printf("Got NULL parameter passed to ElOpsGetInfo");
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
    ElOpsGetInfo(infoStr_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseByteArrayElements(env, infoStr_out, infoStr_outArray, 0);

}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_IsGeoOrbit(JNIEnv* env, jclass jc, jdouble incli_in, jdouble period_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = IsGeoOrbit(incli_in, period_in);

    return ret;
}


JNIEXPORT jdouble JNICALL Java_afspc_astrostds_wrappers_JniElOps_CompLonEastSubPt(JNIEnv* env, jclass jc, jdouble ds50UTC_in, jdouble node_in, jdouble omega_in, jdouble mnAnomaly_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jdouble ret = CompLonEastSubPt(ds50UTC_in, node_in, omega_in, mnAnomaly_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_FindSatDecayTime(JNIEnv* env, jclass jc, jlong satKey_in, jdouble f10Avg_in, jdoubleArray decayDs50UTC_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (decayDs50UTC_out == 0) {
        printf("Got NULL parameter passed to FindSatDecayTime");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int decayDs50UTC_len = (*env)->GetArrayLength(env, decayDs50UTC_out);
    if (decayDs50UTC_len < 1) {
        printf("decayDs50UTC parameter passed in FindSatDecayTime is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *decayDs50UTC_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, decayDs50UTC_out, NULL));
    if (decayDs50UTC_outArray == NULL) {
        printf("Failed to get elements for decayDs50UTC array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = FindSatDecayTime(satKey_in, f10Avg_in, decayDs50UTC_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, decayDs50UTC_out, decayDs50UTC_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_GetSatParameters(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_satparm_out)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_satparm_out == 0) {
        printf("Got NULL parameter passed to GetSatParameters");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_satparm_len = (*env)->GetArrayLength(env, xa_satparm_out);
    if (xa_satparm_len < 32) {
        printf("xa_satparm parameter passed in GetSatParameters is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_satparm_outArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_satparm_out, NULL));
    if (xa_satparm_outArray == NULL) {
        printf("Failed to get elements for xa_satparm array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = GetSatParameters(satKey_in, xa_satparm_outArray);

    ///////////////////////////////////////////////////////////////////////
    // Call the release method(s) to return array(s) to the calling object.
    ///////////////////////////////////////////////////////////////////////
    (*env)->ReleaseDoubleArrayElements(env, xa_satparm_out, xa_satparm_outArray, 0);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_SatNumOf(JNIEnv* env, jclass jc, jlong satKey_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = SatNumOf(satKey_in);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_AddManeuverVPStr(JNIEnv* env, jclass jc, jlong satKey_in, jstring vpString_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (vpString_in == 0) {
        printf("Got NULL parameter passed to AddManeuverVPStr");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    char *vpString_inArray = (char *)((*env)->GetStringUTFChars(env, vpString_in, NULL));
    if (vpString_inArray == NULL) {
        printf("Failed to get elements for vpString array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = AddManeuverVPStr(satKey_in, vpString_inArray);

    return ret;
}


JNIEXPORT jint JNICALL Java_afspc_astrostds_wrappers_JniElOps_AddManeuverVPArr(JNIEnv* env, jclass jc, jlong satKey_in, jdoubleArray xa_vp_in)
{
    ///////////////////////////////////////////////////////////////////////
    // Check for NULL for non-primitive parameters
    ///////////////////////////////////////////////////////////////////////
    if (xa_vp_in == 0) {
        printf("Got NULL parameter passed to AddManeuverVPArr");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Check if array parameters have correct size
    ///////////////////////////////////////////////////////////////////////
    int xa_vp_len = (*env)->GetArrayLength(env, xa_vp_in);
    if (xa_vp_len < 16) {
        printf("xa_vp parameter passed in AddManeuverVPArr is too small.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Create local array variables
    ///////////////////////////////////////////////////////////////////////
    jdouble *xa_vp_inArray = (jdouble *)((*env)->GetDoubleArrayElements(env, xa_vp_in, NULL));
    if (xa_vp_inArray == NULL) {
        printf("Failed to get elements for xa_vp array.");
        return (jint)(-1);
    }

    ///////////////////////////////////////////////////////////////////////
    // Call shared library method
    ///////////////////////////////////////////////////////////////////////
    jint ret = AddManeuverVPArr(satKey_in, xa_vp_inArray);

    return ret;
}
// ========================= End of auto generated code ==========================
