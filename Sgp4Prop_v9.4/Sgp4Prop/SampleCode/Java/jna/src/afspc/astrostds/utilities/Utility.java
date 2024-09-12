package afspc.astrostds.utilities;

// This file provides various utilities used by Java versions
// of the Astrodynamic Standard programs.
// Authors: Dinh Nguyen, A9YA
//          Joseph C. Lininger, A9YA

import java.io.*;
import java.io.Reader;
import java.util.Date;
import java.nio.ByteBuffer;


public class Utility
{
   public static final int
      LOGMSGLEN    = 128,
      INFOSTRLEN   = 128,
      FILEPATHLEN  = 512,
      GETSETSTRLEN = 512,
      INPUTCARDLEN = 512;

   public static final double
      PI           = 3.1415926535897932384,
      MPD          = 1440.0,
      MSPERDAY     = 86400000,
      TODEG        = 180.0 / PI,
      TORAD        = PI / 180.0;

   /**
    * Convert byte array to string
    * @param sBytes  byte array to be turned into a String
    * @return        the new String
    */
   public static String BytesToString(byte[] sBytes)
   {
      return new String(sBytes);
   }

   /**
    * Convert byte array to trimmed string
    * @param sBytes  byte array to be turned into a String
    * @return        the trimmed String
    */
   public static String BytesToStringTrim(byte[] sBytes)
   {
      return new String(sBytes).trim();
   }

   /**
    * Convert byte array to an int
    * @param sBytes  byte array to be turned into an int
    * @return        the new int
    */
   public static int BytesToInt(byte[] sBytes)
   {
      return Integer.parseInt(BytesToStringTrim(sBytes));
   }

   /**
    * Convert byte array to double
    * @param sBytes  byte array to be turned into a double
    * @return        the new double
    */
   public static double BytesToDouble(byte[] sBytes)
   {
      return Double.parseDouble(BytesToStringTrim(sBytes));
   }

   /**
    * Open file for writing and check for error
    * @param fileName   The name of the file to open for writing
    * @return           The generated BufferedWriter
    */
   public static BufferedWriter FileOpen(String fileName)
   {
      try
      {
         BufferedWriter sw = new BufferedWriter(new FileWriter(fileName.trim()));
         return sw;
      }
      catch (IOException e)
      {
         // <JCL> This prints an error message now instead of a stack trace
         System.out.printf("Unable to open \"%s\" for writing.\n", fileName.trim());
         return null;
      }
   }

   /**
    * Open file for reading and check for error
    * @param fileName   The name of the file to open for reading
    * @return           The generated BufferedReader
    */
   public static BufferedReader FileRead(String fileName)
   {
      try
      {
         BufferedReader sr = new BufferedReader(new FileReader(fileName));
         return sr;
      }
      catch (IOException e)
      {
         // <JCL> This prints an error message now instead of a stack trace
         System.out.printf("Unable to open %s for reading.\n", fileName);
         return null;
      }
   }

   /**
    * <JCL> Copy one job from a batch input file to a scratch file
    * @param inFile  The BufferedReader containing the file with the job data
    * @return        A temporary file containing one job
    * @throws IOException
    */
   public static File GetOneJob(BufferedReader inFile) throws IOException
   {
      // Check if the input file is open and ready for reading (not errored or eof)
      if (inFile.ready() == false)
      {
         return (null);
      }

      // Generate a unique file name
      File tempFilePath = null;
      try
      {
         tempFilePath = File.createTempFile("scratch_", "__ScratchFile", new File("."));
      }
      catch (IOException e)
      {
         System.out.println("Unable to generate a unique scratch file name.");
         return (null);
      }

      // Try to open the file
      BufferedWriter tempFile = FileOpen(tempFilePath.getPath());
      if (tempFile == null)
      {
         tempFilePath.delete();
         return (null);
      }

      // Read the job from the input file
      boolean readOne = false; // means we read at least one line of job info
      boolean done = false; // done with job (avoids multiple string compares)
      String line = ""; // current line we're processing
      while (inFile.ready() == true && done == false)
      {
         inFile.mark(INPUTCARDLEN);
         line = inFile.readLine();
         // Skip over blank lines
         if (line.equals(""))
         { ; }
         // End of job condition
         else if (line.equals("ENDOFJOB") == true)
         {
            done = true;
         }
         // ENDALL directive
         else if (line.equals("ENDALL") == true)
         {
            done = true;
            inFile.reset(); // so next call to this function will return null
         }
         // This line makes up part of the job
         else
         {
            tempFile.write(line + "\n");
            readOne = true;
         }
      }
      tempFile.close();

      // Make sure the temp file is deleted and null is returned
      // if we didn't have at least one line of job info
      if (readOne == false)
      {
         tempFilePath.delete();
         tempFilePath = null;
      }
      return tempFilePath;
   }

   /**
    * <JCL> Print export control warning
    * @param outFile       The BufferedWriter object containing the file to write to
    * @param softwareName  The name of the software in use
    * @throws IOException
    */
   public static void PrintWarning(BufferedWriter outFile, String softwareName) throws IOException
   {
      outFile.write("**********************************************************\n");
      outFile.write("*                                                        *\n");
      outFile.write("*                      W A R N I N G                     *\n");
      outFile.write("*  THIS SOFTWARE CONTAINS TECHNICAL DATA WHOSE EXPORT IS *\n");
      outFile.write("*  RESTRICTED BY THE ARMS EXPORT CONTROL ACT (TITLE 22,  *\n");
      outFile.write("*  USC, SEC 2751 ) OR EXECUTIVE ORDER 12470. VIOLATORS   *\n");
      outFile.write("*  OF EXPORT LAWS ARE SUBJECT TO SEVERE CRIMINAL         *\n");
      outFile.write("*  PENALTIES.                                            *\n");
      outFile.write("*                 D I S T R I B U T I O N                *\n");
      outFile.write("*  DISTRIBUTION IS AUTHORIZED TO US GOVERNMENT AGENCIES  *\n");
      outFile.write("*  AND THEIR CONTRACTORS FOR OFFICIAL USE ON A NEED TO   *\n");
      outFile.write("*  KNOW BASIS ONLY. ALL REQUESTS FOR THIS SOFTWARE SHALL *\n");
      outFile.write("*  BE REFERRED TO AFSPC/A9.  NO SOFTWARE CODE, MANUAL,   *\n");
      outFile.write("*  OR MEDIA CONTAINING ANY REPRESENTATION OF THE UNITED  *\n");
      outFile.write("*  STATES AIR FORCE (USAF), HQ AIR FORCE SPACE COMMAND   *\n");
      outFile.write("*  (AFSPC) SPACE ANALYSIS CENTER (ASAC) [AFSPC/A9]       *\n");
      outFile.write(String.format("*                   %10s                           *\n", softwareName));
      outFile.write("*  CAPABILITY MAY BE ASSIGNED, COPIED, OR TRANSFERRED TO *\n");
      outFile.write("*  ANY NON-AUTHORIZED PERSON, CONTRACTOR, OR GOVERNMENT  *\n");
      outFile.write("*  AGENCY WITHOUT THE EXPRESSED WRITTEN CONSENT OF       *\n");
      outFile.write("*               USAF, HQ AFSPC/A9.                       *\n");
      outFile.write("**********************************************************\n\n\n");
   }

   /**
    * Convert minutes since satellite's epoch to ds50UTC
    * @param epochDs50UTC  The satellite's epoch
    * @param mse           Minutes since epoch
    * @return              The calculated Ds50UTC
    */
   public static double MseToDs50UTC(double epochDs50UTC, double mse)
   {
      return epochDs50UTC + (mse / 1440.0);
   }

   /**
    * <JCL> Convert a single dimensional array to a 2-dimensional array, do not transpose
    * This version works with type double.
    * @param source     The original single dimensional array
    * @param rows       The number of rows required for the two dimensional array
    * @param columns    The number of columns required for the two dimensional array
    * @return           The generated two dimensional array
    */
   public static double [][] OneToTwoDim(double [] source, int rows, int columns)
   {
      // Ensure that row and column arguements are valid
      if (rows <= 0)
      {
         throw new IllegalArgumentException("rows must be a positive integer.");
      }
      if (columns <= 0)
      {
         throw new IllegalArgumentException("Columns must be a positive integer.");
      }

      // Ensure that the new array size will match up
      if (rows * columns != source.length)
      {
         throw new IllegalArgumentException("Source and destination arrays must have the same total number of elements.");
      }

      // Allocate the new array and copy items into it
      double [][] target = new double[rows][columns];
      int k = 0;
      for (int row = 0; row < rows; row++)
      {
         for (int column = 0; column < columns; column++)
         {
            target[row][column] = source[k++];
         }
      }
      return (target);
   }

   public static double [] TwoToOneDim(double [][] source, int rows, int columns)
   {
      // Ensure that row and column arguements are valid
      if (rows <= 0)
      {
         throw new IllegalArgumentException("rows must be a positive integer.");
      }
      if (columns <= 0)
      {
         throw new IllegalArgumentException("Columns must be a positive integer.");
      }

      // Ensure that the new array size will match up
      if (!(source.length == rows && source[0].length == columns))
      {
         throw new IllegalArgumentException("Source and destination arrays must have the same total number of elements.");
      }

      // Allocate the new array and copy items into it
      double [] target = new double[rows * columns];
      int k = 0;
      for (int row = 0; row < rows; row++)
      {
         for (int column = 0; column < columns; column++)
         {
            target[k++] = source[row][column];
         }
      }
      return (target);
   }

   /**
    *  <JCL> Convert a single dimensional array to a 2-dimensional array, do not transpose
    *  This version works with type int.
    * @param source     The original single dimensional array
    * @param rows       The number of rows required for the two dimensional array
    * @param columns    The number of columns required for the two dimensional array
    * @return           The generated two dimensional array
    */
   public static int [][] OneToTwoDim(int [] source, int rows, int columns)
   {
      // Ensure that row and column arguements are valid
      if (rows <= 0)
      {
         throw new IllegalArgumentException("rows must be a positive integer.");
      }
      if (columns <= 0)
      {
         throw new IllegalArgumentException("Columns must be a positive integer.");
      }

      // Ensure that the new array size will match up
      if (rows * columns != source.length)
      {
         throw new IllegalArgumentException("Source and destination arrays must have the same total number of elements.");
      }

      // Allocate the new array and copy items into it
      int [][] target = new int[rows][columns];
      int k = 0;
      for (int row = 0; row < rows; row++)
      {
         for (int column = 0; column < columns; column++)
         {
            target[row][column] = source[k++];
         }
      }
      return (target);
   }

   /**
    * <JCL> Convert a single dimensional array to a 2-dimensional one, transposing rows and columns
    * Useful when working with JNA arrays and Fortran routines
    * This version works with type double.
    * @param source     The original single dimensional array
    * @param rows       The number of rows required for the two dimensional array
    * @param columns    The number of columns required for the two dimensional array
    * @return           The generated two dimensional array
    */
   public static double [][] OneToTwoDimTranspose(double [] source, int rows, int columns)
   {
      // Ensure that row and column arguements are valid
      if (rows <= 0)
      {
         throw new IllegalArgumentException("rows must be a positive integer.");
      }
      if (columns <= 0)
      {
         throw new IllegalArgumentException("Columns must be a positive integer.");
      }

      // Ensure that the new array size will match up
      if (rows * columns != source.length)
      {
         throw new IllegalArgumentException("Source and destination arrays must have the same total number of elements.");
      }

      // Allocate the new array and copy items into it
      double [][] target = new double[rows][columns];
      int k = 0;
      for (int column = 0; column < columns; column++)
      {
         for (int row = 0; row < rows; row++)
         {
            target[row][column] = source[k++];
         }
      }
      return (target);
   }

   /*
   public static double GetKey32Double(GetKey32FieldFnPtr fnPtr, int keyInt, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyInt, idx, retValStr);
      if (errCode != 0)
         return 0.0;
      else
         return BytesToDouble(retValStr);
   }

   public static int GetKey32Int(GetKey32FieldFnPtr fnPtr, int keyInt, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyInt, idx, retValStr);
      if (errCode != 0)
         return 0;
      else
         return BytesToInt(retValStr);
   }

   public static char GetKey32Char(GetKey32FieldFnPtr fnPtr, int keyInt, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyInt, idx, retValStr);
      if (errCode != 0)
         return ' ';
      else
         return (char)retValStr[0];
   }

   public static String GetKey32String(GetKey32FieldFnPtr fnPtr, int keyInt, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyInt, idx, retValStr);
      if (errCode != 0)
         return "";
      else
         return BytesToStringTrim(retValStr);
   }

   public static double GetKey64Double(GetKey64FieldFnPtr fnPtr, long keyLong, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyLong, idx, retValStr);
      if (errCode != 0)
         return 0.0;
      else
      {
         double temp = BytesToDouble(retValStr);
         return BytesToDouble(retValStr);
      }
   }

   public static int GetKey64Int(GetKey64FieldFnPtr fnPtr, long keyLong, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyLong, idx, retValStr);
      if (errCode != 0)
         return 0;
      else
         return BytesToInt(retValStr);
   }

   public static char GetKey64Char(GetKey64FieldFnPtr fnPtr, long keyLong, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyLong, idx, retValStr);
      if (errCode != 0)
         return ' ';
      else
         return (char)retValStr[0];
   }

   public static String GetKey64String(GetKey64FieldFnPtr fnPtr, long keyLong, int idx)
   {
      int errCode;
      byte[] retValStr = new byte[GETSETSTRLEN];

      errCode = fnPtr(keyLong, idx, retValStr);
      if (errCode != 0)
         return "";
      else
         return BytesToStringTrim(retValStr);
   }

   public static double GetDouble(GetFieldFnPtr fnPtr, int idx)
   {
      byte[] retValStr = new byte[GETSETSTRLEN];

      fnPtr(idx, retValStr);

      return BytesToDouble(retValStr);
   }

   public static int GetInt(GetFieldFnPtr fnPtr, int idx)
   {
      byte[] retValStr = new byte[GETSETSTRLEN];

      fnPtr(idx, retValStr);

      return BytesToInt(retValStr);
   }

   public static char GetChar(GetFieldFnPtr fnPtr, int idx)
   {
      byte[] retValStr = new byte[GETSETSTRLEN];

      fnPtr(idx, retValStr);

      return (char)retValStr[0];
   }

   public static String GetString(GetFieldFnPtr fnPtr, int idx)
   {
      byte[] retValStr = new byte[GETSETSTRLEN];

      fnPtr(idx, retValStr);

      return BytesToStringTrim(retValStr);
   }
   */
}
