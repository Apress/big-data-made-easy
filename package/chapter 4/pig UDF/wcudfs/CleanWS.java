package wcudfs;

import java.io.*;

import org.apache.pig.EvalFunc;
import org.apache.pig.data.Tuple;
import org.apache.hadoop.util.*;

public class CleanWS extends EvalFunc<String>
{
  /*--------------------------------------------------------*/  
  @Override
  public String exec(Tuple input) throws IOException 
  {
    if (input == null || input.size() == 0)
      return null;
    try
    {
      String str = (String)input.get(0);

      return str.replaceAll("[^A-Za-z0-9]"," ");
    }
    catch(IOException ioe)
    {
       System.err.println("Caught exception processing input row : "
                            +  StringUtils.stringifyException(ioe) );
    }

    return null;
  }
  /*--------------------------------------------------------*/

} /* class CleanWS */
