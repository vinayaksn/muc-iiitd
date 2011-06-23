/*
Search every 3 minutes to count the number of bluetooth devices in surroundings
Attach a timestamp to the number

*/
import java.io.IOException;
import java.util.Vector;
import javax.bluetooth.*; 
 
public class bluetoothDiscovery implements DiscoveryListener, Runnable{
   
private static Object lock=new Object();
private static Vector vecDevices=new Vector();
private GprsTest parent;
private boolean running = false, kill = true;
private static final int SLEEP_TIME = 180000 ;
Thread t = new Thread(this);
    
public bluetoothDiscovery(GprsTest g){
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
		 LocalDevice localDevice = LocalDevice.getLocalDevice();
        DiscoveryAgent agent = localDevice.getDiscoveryAgent();
        agent.startInquiry(DiscoveryAgent.GIAC, this);
               
        try {
            synchronized(lock){
                lock.wait();
            }
        }
        catch (InterruptedException e) {
            parent.show(null, e.toString());
        }
           
			
			}catch (BluetoothStateException e) {
            parent.show(null, e.toString());}
			 catch (IOException e) {
            parent.show(null, e.toString()); }
    
        int deviceCount=vecDevices.size();
		parent.show("No: of bt devices: ",deviceCount + " " );
		String msg = deviceCount + parent.getTime();
        parent.record( "No: of bt devices: " + msg );
        vecDevices.removeAllElements();
		try {t.sleep(SLEEP_TIME);} catch (InterruptedException e) {parent.show(null, e.toString()); }			
    }
}
    public void deviceDiscovered(RemoteDevice btDevice, DeviceClass cod) {
           if(!vecDevices.contains(btDevice)){
            vecDevices.addElement(btDevice);
        }
    }
 
    public void servicesDiscovered(int transID, ServiceRecord[] servRecord) {
    }
 
    public void serviceSearchCompleted(int transID, int respCode) {
    }
 
    public void inquiryCompleted(int discType) {
        synchronized(lock){
            lock.notify();
        }
       
        switch (discType) {
            case DiscoveryListener.INQUIRY_COMPLETED :
                parent.show(null, "INQUIRY_COMPLETED");
                break;
               
            case DiscoveryListener.INQUIRY_TERMINATED :
                parent.show(null, "INQUIRY_TERMINATED");
                break;
               
            case DiscoveryListener.INQUIRY_ERROR :
                parent.show(null, "INQUIRY_ERROR");
                break;
 
            default :
                parent.show(null, "Unknown Response Code");
                break;
        }
    }
}








