
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;
import javax.microedition.lcdui.*;
import javax.microedition.midlet.*;

import javax.microedition.io.Connector;
import javax.microedition.io.HttpConnection;

public class HttpMultipartRequest
{
	static final String BOUNDARY = "----------V2ymHFg03ehbqgZCaKO6jy";

	byte[] postBytes = null;
	String url = null;
        HttpConnection hc = null;
    public float throughput = 0; 
        public HttpMultipartRequest(String url)
        {           
            try {
                  hc = (HttpConnection) Connector.open(url);
                  hc.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + getBoundaryString());
                  hc.setRequestMethod(HttpConnection.POST);
                 // CBSApplication.mainForm.append("\n Http connection opened");
             } catch (IOException ex) {
                 // CBSApplication.mainForm.append ("\n Can not open Http Connection");
                  ex.printStackTrace();
             }

        }

	public void initialize (String url, Hashtable params, String fileField, String fileName, String fileType, byte[] fileBytes) throws Exception
	{
		this.url = url;

		String boundary = getBoundaryString();

		String boundaryMessage = getBoundaryMessage(boundary, params, fileField, fileName, fileType);

		String endBoundary = "\r\n--" + boundary + "--\r\n";

		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		bos.write(boundaryMessage.getBytes());

		bos.write(fileBytes);

		bos.write(endBoundary.getBytes());

		this.postBytes = bos.toByteArray();

		bos.close();
	}



	String getBoundaryString()
	{
		return BOUNDARY;
	}

	String getBoundaryMessage(String boundary, Hashtable params, String fileField, String fileName, String fileType)
	{
		StringBuffer res = new StringBuffer("--").append(boundary).append("\r\n");

		Enumeration keys = params.keys();

		while(keys.hasMoreElements())
		{
			String key = (String)keys.nextElement();
			String value = (String)params.get(key);

			res.append("Content-Disposition: form-data; name=\"").append(key).append("\"\r\n")
				.append("\r\n").append(value).append("\r\n")
				.append("--").append(boundary).append("\r\n");
		}
		res.append("Content-Disposition: form-data; name=\"").append(fileField).append("\"; filename=\"").append(fileName).append("\"\r\n")
			.append("Content-Type: ").append(fileType).append("\r\n\r\n");

		return res.toString();
	}

	public byte[] send(int size) throws Exception
	{	

		InputStream is = null;

		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		byte[] res = null;

            //    CBSApplication.mainForm.append("\n Sending Data");

		try
		{   
			OutputStream dout = hc.openOutputStream();
			
			float start = getInst();
            
			dout.write(postBytes);
            
			dout.close();
			float end = getInst();
			float latency = end - start;
			throughput = size / latency ;
			
            int rc = hc.getResponseCode();
			if (rc == 200 || rc == 202) {
				System.out.println("Successfully transfered data");

			} else {
				System.out.println("Tranfer failed with return code " + rc);
				
			}

			int ch;

			is = hc.openInputStream();

                        String msg="";

			while ((ch = is.read()) != -1)
			{
				bos.write(ch);
                                msg= msg + (char) ch;
			}

                  //      CBSApplication.mainForm.append("\n Server returned : " + msg);
			res = bos.toByteArray();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{
				if(bos != null)
					bos.close();

				if(is != null)
					is.close();

				if(hc != null)
					hc.close();
			}
			catch(Exception e2)
			{
				e2.printStackTrace();
			}
		}
		return res;
	}
	
public float calculate(){

return throughput;

}
public float getInst() {
    Calendar c = Calendar.getInstance() ;
    float hour   = (c.get(Calendar.HOUR_OF_DAY));
	float minute = (c.get(Calendar.MINUTE) ) ;
    float second = (c.get(Calendar.SECOND) )  ;
	float millisecond = (c.get(Calendar.MILLISECOND) )  ;
	float instant = (hour * 3600000) + (minute * 60000) + (second * 1000) + millisecond ;
    return instant  ;
                         }
 


}