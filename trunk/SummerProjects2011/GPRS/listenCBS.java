/*
Implements CBS message listener
notifies whenever there is incoming cbs message
adds timestamp to message and calls record method of main class to upload the cbs message
*/




import javax.wireless.messaging.*;
import javax.microedition.midlet.*;
import java.io.*;
import javax.microedition.io.*;

public class listenCBS implements MessageListener, Runnable{

private GprsTest parent ;
private MessageConnection msgconn = null;


public listenCBS(GprsTest g){
parent = g;
try{  
msgconn = (MessageConnection)Connector.open("cbs://:50");
msgconn.setMessageListener(this);
}catch(IOException io){parent.show("cbs connection",io.toString());}
}


public void start(){
}


public void stop(){
try {msgconn.close() ;}  catch(IOException io){ parent.show("cbs close",io.toString());}
}

public void notifyIncomingMessage(MessageConnection conn){
Thread t = new Thread(this);
t.start(); 
}

public void run(){
 try{
            TextMessage txtmsg =(TextMessage)msgconn.receive();
			String msg =  (txtmsg.getPayloadText());
			parent.show("CBS", msg);
			msg = "CBS:" + msg + parent.getTime() ;
			parent.record(msg);
		}  catch(IOException io){ parent.show("cbs",io.toString());}
      }
		
}