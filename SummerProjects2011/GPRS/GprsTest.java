/*
Main class
Controls all processes
uploads data whenever string size exceedsa LIMIT
Provides methods such as calcInst(), getTime() required for other classes 
*/

import java.io.*;
import javax.microedition.lcdui.*;
import javax.microedition.midlet.*;
import java.util.*;


public class GprsTest extends MIDlet implements CommandListener, Runnable{
  
  private static Display mDisplay;
  private static Form mForm;
  private listenCBS cbs;
  private locateGPS gps;
  private bluetoothDiscovery bd;
  private calSpeed latency;
  private dataChunk step;
  private static String dump_data = null, int_data = null;
  private static boolean suspend = false, running = false;
  private static final int LIMIT = 20000;
 
   
  public GprsTest() {
      
	mForm = new Form("Gprs Test");
	Command exitCommand = new Command("Exit", Command.EXIT, 0)  ;
    mForm.addCommand(exitCommand);
    mForm.setCommandListener(this);
	String imei = System.getProperty("com.nokia.mid.imei") ;
	show("IMEI: ", imei);
	String mnc = System.getProperty("com.nokia.mid.networkid") ;
	show("Operator: ", mnc);
	int_data = "\n" + "IMEI number: " + imei + ", Operator: " + mnc + "\n" ;
	record(int_data);
    }

  public void startApp() {
    mDisplay = Display.getDisplay(this);
    mDisplay.setCurrent(mForm);
	cbs = new listenCBS(this);
	gps = new locateGPS(this); 
	latency = new calSpeed(this);
    bd = new bluetoothDiscovery(this); 
	step = new dataChunk(this);
	bd.start();
	latency.start();
    cbs.start();
	gps.start(); 
	step.start();
	}
	
  
  public void pauseApp() {}

  public void destroyApp(boolean unconditional) {}
  
  public void commandAction(Command c, Displayable s) {
    if (c.getCommandType() == Command.EXIT)
	 {
   suspend = true;
   latency.stop();
   cbs.stop();
   gps.stop();
   bd.stop(); 
   step.stop();
   record(" ");
   Alert alert1 = new Alert("Status" ,"Please wait, the application exits on its own after completing this transaction and data gets uploaded " , null, AlertType.INFO );
   alert1.setTimeout(5000);
   mDisplay.setCurrent(alert1, mForm);
     }
  }

  //log the details in form
  public void show(String title, String content) {
  StringItem mstring = new StringItem(title, content + "\n");
  mForm.append(mstring);
  }
 
 //save the log in string and upload to file in server whenever size increases 2k
  public void record(String data){
  dump_data = dump_data + "\n" + data;
  
  if(!running) {
  if((dump_data.length()) > LIMIT || suspend)
  {Thread t = new Thread(this);
   t.start(); }
   }
  }

  //returns current system timestamp
public String getTime(){
  Calendar c = Calendar.getInstance() ;
    int month = (c.get(Calendar.MONTH));    
	int date  =  (c.get(Calendar.DATE));
    int hour   = (c.get(Calendar.HOUR_OF_DAY));
	int minute = (c.get(Calendar.MINUTE) ) ;
    int second = (c.get(Calendar.SECOND) )  ;
    String timestamp = " time:  " + month + "/" + date + "/" + hour + ":" + minute + ":" + second + " "; 
	return timestamp;
	}

	//returns system time in milliseconds
public float getInst() {
    Calendar c = Calendar.getInstance() ;
    float hour   = (c.get(Calendar.HOUR_OF_DAY));
	float minute = (c.get(Calendar.MINUTE) ) ;
    float second = (c.get(Calendar.SECOND) )  ;
	float millisecond = (c.get(Calendar.MILLISECOND) )  ;
	float instant = (hour * 3600000) + (minute * 60000) + (second * 1000) + millisecond ;
    return instant  ;
                         }
						
public void run(){
  running = true;
  byte[] dump = dump_data.getBytes();	
  mForm.append(new StringItem("uploading data file", null));
  latency.fileUpload(dump,0, true) ;                    
  mForm.append(new StringItem("data file uploaded", null));
  dump_data = int_data;
  running = false;
  if(suspend){Alert alert2 = new Alert("Status" ,"Thanks" , null, AlertType.INFO );
   alert2.setTimeout(5000);
   mDisplay.setCurrent(alert2, mForm);
   notifyDestroyed();}
  }  
}
	             
      

