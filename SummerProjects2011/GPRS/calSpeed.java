/*
Download a file of fixed size and measure the time taken in reading completely to get throughput
Upload the same file (byte stream) again to the server and calculate the uplink throughput
Keep a note on signal strength, cell id, batter level
*/

import javax.microedition.midlet.*;
import java.io.*;
import javax.microedition.io.*;
import java.util.*;
import java.lang.*;

public class calSpeed implements Runnable{

private GprsTest parent;
private boolean kill = true;
private static final String DURL = "http://muc.iiitd.com/cbs/uploads/GPRS4753.txt" ;
private static final String UURL = "http://muc.iiitd.com/cbs/upload.php"  ;

public calSpeed(GprsTest g){
parent = g;
}

public void start() {
Thread t = new Thread(this);
t.start();
}

public void stop(){
kill = false;
}

public void run() {
HttpConnection hc = null ;
DataInputStream in = null ;
while(kill){

    try{ 
      String cellid = System.getProperty("com.nokia.mid.cellid") ;
	  String strength = System.getProperty("com.nokia.mid.networksignal") ;
	  String level = System.getProperty("com.nokia.mid.batterylevel") ;
	  parent.show("Cell Id", cellid);
	  parent.show("Strength", strength);
	  parent.show("Battery", level);
	  
	  hc = (HttpConnection)Connector.open(DURL);
      int length = (int)hc.getLength();
	  byte[] data = new byte[length] ;
      in = new DataInputStream(hc.openInputStream());
	  
	  float start = parent.getInst();
      in.readFully(data);
	  float end = parent.getInst();
	  in.close();
	  hc.close();
	  
	  float upld = fileUpload(data, length, false)   ;
	  
	  float latency = end - start ;
	  float dwnld = (length/latency) ;
	  parent.show("dwnld", dwnld + " ");
	  parent.show("upld", upld + " ");
	  
	  String info = "D:" + dwnld + "kbps, U:" + upld + "kbps, Cell Id:" + cellid + ", Signal level:" + strength + "battery:" + level + parent.getTime() ;
	  parent.record(info);


}catch (IOException ioe) {parent.show("dwnld",ioe.toString()); 
                          parent.record("No connection" + parent.getTime());}
catch(NegativeArraySizeException ne){parent.show("dwnld: ","Connection not established");
                                     parent.record("No connection" + parent.getTime());}
	   finally {
      try {
        if (in != null) in.close();
		if (hc != null) hc.close();
       	  } catch (IOException ioe) {parent.show("dwnld close", ioe.toString());}
               }
}
}
public float fileUpload(byte[] fileBytes, int size, boolean DATA)
    {
        HttpMultipartRequest req = new HttpMultipartRequest(UURL);
        float upld2 = 0 ;
        Hashtable params = new Hashtable();
        params.put("data", "cbs");
      

        try {
            String sentFilename = null ;
      		long time=System.currentTimeMillis()%10000;
            String stamp=String.valueOf (time);
            if (!DATA)  sentFilename = "-GPRS_" + stamp + ".txt";
			else sentFilename = "GPRS_DATA_" + stamp + ".txt" ;
            req.initialize (UURL, params, "upload_field", sentFilename, "text/plain", fileBytes);
			 } catch (Exception ex) { parent.show("upld", "Connection not established"); parent.record("No Connection" + parent.getTime());  }

        try {
		    byte[] response = req.send(size);
			upld2 = req.calculate() ;
			String str= new String (response,0,response.length);
            } catch (Exception ex) {parent.show("upld2",ex.toString()); }

        return upld2 ;

    }


}