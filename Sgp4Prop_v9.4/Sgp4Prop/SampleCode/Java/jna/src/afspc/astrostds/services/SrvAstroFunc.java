package afspc.astrostds.services;

import java.io.*;
import java.io.Reader;
import java.util.Date;

import com.sun.jna.Library;
import com.sun.jna.Native;
import com.sun.jna.Platform;
import com.sun.jna.PointerType;
import com.sun.jna.ptr.ByteByReference;
import com.sun.jna.ptr.IntByReference;
import com.sun.jna.ptr.LongByReference;
import com.sun.jna.ptr.DoubleByReference;

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

		thetaG = JnaTimeFunc.ThetaGrnwch(ds50UT1, envFk);
		JnaAstroFunc.XYZToLLH(thetaG, pos, llh);

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

		thetaG = JnaTimeFunc.ThetaGrnwch(ds50UT1, envFk);
		JnaAstroFunc.LLHToXYZ(thetaG, llh, pos);

		return pos;
	}
}
