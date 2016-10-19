package nz.co.semtechsolutions.hive.udf;

import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;
import java.text.SimpleDateFormat;
import java.util.Date;

class DateConv extends UDF 
{

    public Text evaluate(Text s) 
    {

		Text to_value = new Text("");

		if (s != null) 
                {
		    try 
                    { 

                       SimpleDateFormat incommingDateFormat = new SimpleDateFormat("dd/MM/yyyy");
                       SimpleDateFormat convertedDateFormat = new SimpleDateFormat("yyyy-MM-dd");

                       Date parsedate = incommingDateFormat.parse( s.toString() );

		       to_value.set( convertedDateFormat.format(parsedate) );

		    } 
                    catch (Exception e) 
                    { 
		       to_value = new Text(s);
		    }
		}
		return to_value;
    }
}
