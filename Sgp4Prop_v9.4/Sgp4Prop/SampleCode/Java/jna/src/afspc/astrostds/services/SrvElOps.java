package afspc.astrostds.services;

import afspc.astrostds.wrappers.*;

public class SrvElOps {

    // Elest file types
    public static int
            FILETYPE_TLE    = 1,
            FILETYPE_SPVEC  = 2,
            FILETYPE_VCM    = 3,
            FILETYPE_EXTEPH = 4;

    /**
     * Returns all currently loaded satKeys
     * @param fileType  An integer indicating which type of file was uploaded
     * @return          An array of sat keys
     */
    public static long[] GetCurrLoadedSatKeys(int fileType)
    {
        long[] tmpSatKeys = null;
        int numSats = 0;

        if (fileType == FILETYPE_TLE)
            numSats = JnaTle.TleGetCount();
        else if (fileType == FILETYPE_SPVEC)
            numSats = JnaSpVec.SpVecGetCount();
        else if (fileType == FILETYPE_VCM)
            numSats = JnaVcm.VcmGetCount();
        else if (fileType == FILETYPE_EXTEPH)
            numSats = JnaExtEphem.ExtEphGetCount();

        if (numSats > 0)
        {
            tmpSatKeys = new long[numSats];
            JnaTle.TleGetLoaded(2, tmpSatKeys);
        }

        return tmpSatKeys;
    }

    /**
     * Loads a file of satellites and returns the sat keys
     * @param fileType      An integer indicating which type of file is being uploaded
     * @param inputFile     The path of the input file
     * @return              The array of sat keys
     */
    public static long[] SatKeysFrFile(int fileType, String inputFile)
    {
        long[] preSatKeys;
        long[] currSatKeys;
        long[] tmpSatKeys;
        long[] newSatKeys;
        int preNumSats = 0;
        int currNumSats;
        int newNumSats;
        int i, j, k, errCode = 0;
        boolean isNew = false;

        preSatKeys = GetCurrLoadedSatKeys(fileType);
        if(preSatKeys != null)
            preNumSats = preSatKeys.length;

        if (fileType == FILETYPE_TLE)
            errCode = JnaTle.TleLoadFile(inputFile);
        else if (fileType == FILETYPE_SPVEC)
            errCode = JnaSpVec.SpVecLoadFile(inputFile);
        else if (fileType == FILETYPE_VCM)
            errCode = JnaVcm.VcmLoadFile(inputFile);
        else if (fileType == FILETYPE_EXTEPH)
            errCode = JnaExtEphem.ExtEphLoadFile(inputFile);

        if (errCode != 0)
        {
            return null;
        }

        currSatKeys = GetCurrLoadedSatKeys(fileType);
        currNumSats = currSatKeys.length;

        if (preNumSats == 0)
        {
            newSatKeys = currSatKeys;
        }
        else {
            newNumSats = currNumSats - preNumSats;
            tmpSatKeys = new long[newNumSats];
            k = 0;
            for (j = 0; j < currNumSats; j++) {
                isNew = true;
                for (i = 0; i < preNumSats; i++) {
                    if (currSatKeys[j] == preSatKeys[i]) {
                        isNew = false;
                        break;
                    }
                }
                if (isNew)
                    tmpSatKeys[k++] = currSatKeys[j];
            }

            newSatKeys = tmpSatKeys;
        }

        return newSatKeys;
    }

    /**
     * Compute perigee height (spherical earth) from Tle data
     * @param mnMotion  The mean motion of the satellite's orbit
     * @param eccen     The eccentricity of the satellite's orbit
     * @return          The perigee height
     */
    public static double ComputePerigeeHt(double mnMotion, double eccen)
    {
        double perigeeHt;

        perigeeHt = (JnaAstroFunc.NToA(mnMotion) * (1 - eccen)) - JnaEnvConst.EnvGetGeoConst(JnaEnvConst.XF_GEOCON_KMPER);

        return perigeeHt;
    }
}
