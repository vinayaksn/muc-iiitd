/*
Calculate gps coordinates continously with a gap of SLEEP_TIME between each query
and attach with a time stamp
The sleep time of thread is adjusted dynamically based on the previous result is indoor or outdoor
adapt() method does the function of adjusting sleep time.
*/


import javax.microedition.location.*;
import javax.microedition.midlet.*;
import java.lang.* ;
import java.util.* ;

public class locateGPS implements Runnable {

private GprsTest parent;
private static boolean kill = true, fail = false;
private static final int TIME_OUT = 30;
private static int SLEEP_TIME = 120000 ;
private static int count = 0;
Thread t = new Thread(this);

public locateGPS(GprsTest g){
parent = g;
}

public void start() {
t.start();
}

public void stop(){
kill = false;
}

public void run() {

while(kill){
      try{	
	  t.sleep(SLEEP_TIME)		;
	  Criteria c = new Criteria();
	  LocationProvider provider = LocationProvider.getInstance(c);
	  Location location = provider.getLocation(TIME_OUT);
      QualifiedCoordinates qc = location.getQualifiedCoordinates();
    	double lat = qc.getLatitude();
	    double lon = qc.getLongitude();
        String info ="latitude:" + lat + " & longitude:" + lon  ;
		parent.show("GPS", info);	
		info = info + parent.getTime()  ;
		parent.record(info);
		adapt(false);
		
	}catch (LocationException lo){
	  parent.show("location: ", "time out");
	  adapt(true);               }
     catch (InterruptedException lo){
	 parent.show("location", lo.toString());}
	      }
		
               }
			   
public void adapt(boolean fail) {
if(fail) SLEEP_TIME = SLEEP_TIME + 20000;
else SLEEP_TIME = SLEEP_TIME - 20000 ;
   }
}