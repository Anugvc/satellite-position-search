package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import afspc.astrostds.wrappers.*;
import afspc.astrostds.utilities.Utility;

public class SrvAstroFunc
{
	/**
	 * Compute LLH from position vector
	 * @param ds50UT1	Input days since 1950, UT1
	 * @param pos		The ECI (TEME of Date) position vector (km) to be converted
	 * @param envFk		A handle to the FK data. Use the value returned from EnvGetFkPtr(), located in EnvConst.dll
	 * @return			Calculated LLH
	 */
	public static double[] PosToLLH(double ds50UT1, double[] pos, long envFk)
	{
		double[] llh = new double[3];
		double thetaG;

		thetaG = JniTimeFunc.ThetaGrnwch(ds50UT1, envFk);
		JniAstroFunc.XYZToLLH(thetaG, pos, llh);

		return llh;
	}

	/**
	 * Compute position XYZ from LLH
	 * @param ds50UT1	Input days since 1950, UT1
	 * @param llh		An array containing geodetic north latitude (degree), east longitude (degree), and height (km) to be converted
	 * @param envFk		A handle to the FK data. Use the value returned from EnvGetFkPtr(), located in EnvConst.dll
	 * @return			Calculated position
	 */
	public static double[] LLHToPos(double ds50UT1, double[] llh, long envFk)
	{
		double[] pos = new double[3];
		double thetaG;

		thetaG = JniTimeFunc.ThetaGrnwch(ds50UT1, envFk);
		JniAstroFunc.LLHToXYZ(thetaG, llh, pos);

		return pos;
	}
}
