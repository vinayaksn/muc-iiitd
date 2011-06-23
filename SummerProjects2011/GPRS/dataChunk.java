/*
Downloading a large file in chunks of each 2K size and measure latency for each chunk
*/
import javax.microedition.midlet.*;
import java.io.*;
import javax.microedition.io.*;
import java.util.*;
import java.lang.*;

public class dataChunk implements Runnable{

private GprsTest parent;
private boolean kill = true;
private static final String DURL = "http://muc.iiitd.com/cbs/uploads/test.txt" ;


public dataChunk(GprsTest g){
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
	  hc = (HttpConnection)Connector.open(DURL);
	  int length = (int)hc.getLength();
      byte[] data = new byte[2048] ;
      in = new DataInputStream(hc.openInputStream());
      	  
	  int rd = 0;
      float latency1 = 0;

while(rd < length - 2048){	  
     float start = parent.getInst();
     try{ rd = rd + in.read(data, 0, 2048);} catch (IOException ioe) {parent.show("dwnlding",ioe.toString()); 
	                                                                  parent.record("No connection" + parent.getTime());}
	 float end = parent.getInst() ;
	 float latency = end - start ;
	 latency1 = latency1 + latency;
	 String strength = System.getProperty("com.nokia.mid.networksignal") ;
	 parent.record(latency + "  " + strength + " " + parent.getTime());
	 }
	 
	  in.close();
	  hc.close();
	 parent.show("net:", latency1 + " "); 
	 parent.record(latency1 + "  " + parent.getTime()); 
	 kill = false ;
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


}