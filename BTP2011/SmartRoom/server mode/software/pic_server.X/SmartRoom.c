/****************************************************************************
 * file contains smart room specific functions
 * Two types of functions defined
 *  1. functions to handle data publishing to web server
 *  2. functions to handle httpserver() response
 *
 * Author : #A/M
 *
 *****************************************************************************/

#include "pic_server.X/SmartRoom.h"
#include "TCPIP Stack/TCPIP.h"
#include "EEPROM.h"

   typedef struct{
        BYTE addr[16];
        BYTE path[20];
   }IP_ADDRESS;

   // For time being capabilities to push data on a single server only
    IP_ADDRESS ip_addresses[]={
        {"192.168.0.3","/sensorsafe/upload"}
    };

    #define TOTAL_IP_PUBLISH 1

    
    /* define new sensor specifications*/

    typedef struct{
       char            name[15];    //sensor name
       unsigned char   id;          // sensor id
       char            starttimestamp[12]; // starting time stamp
       WORD            size;      // size of reading array associated
       char*           readings;  // pointer to array to store readings
       float           samp_freq; // Main sampling frequency
       WORD            samp_freq_convr;//converted frequency (.15 -> 15)
    }SENSOR;

#define ADC_READING_SIZE 300 // array size to store adc type readings eg. temperature
#define BIN_READING_SIZE 100 // array size to store binary type readings eg. pir
    
     unsigned char temp1_reading[ADC_READING_SIZE]; // array to store readings for temperature 1
     unsigned char temp2_reading[ADC_READING_SIZE]; // array to store readings for temperature 2
     unsigned char  pir1_reading[BIN_READING_SIZE]; // array to store readings for pir 1
     unsigned char  pir2_reading[BIN_READING_SIZE]; // array to store readings for pir 2
     unsigned char reed1_reading[BIN_READING_SIZE]; // array to store readings for reed 1
     unsigned char reed2_reading[BIN_READING_SIZE]; // array to store readings for reed 2

    /*initialize sensors with corresponding entries in SENSOR structure*/
    SENSOR sensors[]={
        {"temperature",'1',"0",ADC_READING_SIZE,temp1_reading,(float)2},
        {"temperature",'2',"0",ADC_READING_SIZE,temp2_reading,(float)2},
        {"pir",'1',"0",BIN_READING_SIZE,pir1_reading,(float)2},
        {"pir",'2',"0",BIN_READING_SIZE,pir2_reading,(float)2},
        {"reed",'1',"0",BIN_READING_SIZE,reed1_reading,(float)2},
        {"reed",'2',"0",BIN_READING_SIZE,reed2_reading,(float)2}
    };

    
    /* define appliances to actutate */
    typedef struct{
        char app_name[15];
        unsigned short int app_num;
    }APPLIANCE;

    APPLIANCE appliances[]={
        {{"fan"},2},
        {{"light"},2},
        {{"plug"},2}
    };

    #define NUM_APPLIANCES sizeof(appliances)/sizeof(appliances[0])
    #define APPLIANCE_NUM(num) appliances[num].app_num

    extern void HTTPPostTask(BYTE* ServerName,BYTE* ServerPath); // HTTP post
    void ADCInit(); // initialize adc module
    double ReadADCData(unsigned int); // function to read adc value for a given channel

    /*function to create json object with corresponing entries */
    void makeJson(REQUEST_TYPE req,char [],char [],char [],char [],char []);
    
    
    extern char *arguments [HTTP_MAX_ARGS]; // Store Http GET arguments for HTTPServer request, defined in HTTP.c
    extern char *Buff_Json; // Buffer to store JSON object to send as response for HTTPServer, defined in HTTP.c
       

    /* string pointer array to hold JSON responses for data publish*/
    char *json_pub_arguments[JSON_OBJ_ARGS];
    char *Node_location="faculty_room"; //Node location to verify incoming queries
    /*arguments to be sent in JSON object for data publishing */
    char api_key[] ="apikey=feddce389dece00bf84cbd0f58e4d456f4b67bbc";
    char json_header[]="&data={\"location\":\"faculty_room\",\"data_channel\":              ,\"sid\":     ,\"timestamp\":             ,\"sampling_interval\":  ,\"data\":[";
    char json_end[]="]}\n";

    /*used to reply to HTTPServer queries for actuation and appliance state*/
    char status[]="{\n\"state\":[\n{\"location\":\"faculty_room\"},\n{\"appliance\":        },\n{\"aid\":    },\n{\"state\":     },\n{\"ERRCODE\":     }\n]\n}";

    /*ERROR strings, for any problem with incoming HTTPServer request */
    char invalid_query[]="{\n\"Error\":[\n{\"Description\":\"unkown query type\"},\n{\"ERRCODE\":\"5\"}\n]\n}";;
    char invalid_appliance[]="{\n\"Error\":[\n{\"Description\":\"No such appliance\"},\n{\"ERRCODE\":\"2\"}\n]\n}";
    char invalid_location[]="{\n\"Error\":[\n{\"Description\":\"Invalid location\"},\n{\"ERRCODE\":\"3\"}\n]\n}";
    char invalid_id[]= "{\n\"Error\":[\n{\"Description\":\"Invalid id\"},\n{\"ERRCODE\":\"4\"}\n]\n}";
    char unknown_error[]="{\n\"Error\":[\n{\"Description\":\"unknown\"},\n{\"ERRCODE\":\"404\"}\n]\n}";
  
    /*stores latest time stamp*/
    static DWORD Ntp_TimeStamp=0;

    unsigned short int flag_http_post=2; // flag to http post done
    unsigned short int flush_readings_flag=0; // flush readings or not
    
    char temp[8]; // to store temporary reading

    char timestamp[15]; // stores time stamp as string

    float adc_value;
    
    unsigned short int i,j;
    BYTE ip_num=0u;
    short int sense_num=-1;
    BYTE pb_counter=0u; // counter to keep track of when to publish
    BYTE pb_send_sec = 10u;

/**************************************************************************
 * function to convert frequency in decimals to corresponding integer value
 * check for all sensor if frequency conversion is requred
 * eg. (.5 -> 5)
 **************************************************************************/
void frequencyConvertor(){

    BYTE i = 0u;
    WORD freq;
    float arg_frq;
    
    for(i=0u ;i < NUM_SENSORS_ ; i++){
        if((sensors[i].samp_freq < 1) && (sensors[i].samp_freq > 0)){
            freq = 0;
            arg_frq = sensors[i].samp_freq;
            while(arg_frq != 0){
                arg_frq *= 10;
                freq = (freq*10) + (unsigned short int)arg_frq;
                arg_frq = (float)(arg_frq - (unsigned short int)arg_frq);
            }

            sensors[i].samp_freq_convr =  freq;
        }
        else{
            sensors[i].samp_freq_convr = 0;
        }

    }
}
/*******************************************************************************
 * Initialize pins for smart room configuration
 * Description :
 * AD1PCFGbits to be used to set digital i/p or analog i/p on a ADC channel
 *
 *      Example: (want to set analog channel 4 i.e PORTB pin 4 to accept PIR reading)
 *              do the following :
 *           1.    AD1PCFGbits.PCFG4=1 (set analog channel 4 to digital), PORTB pinRB4
 *           2.    _TRIS(PIR_1)=1; (set direction for PIR_1(B,4) as input)
 *
 *******************************************************************************/
void Initialize_Pins(void){

#ifdef OLD_BOARD
	AD1PCFGbits.PCFG4=1; // setting digital i/o for PIR sensor at AN4 , pin 2 on board

        AD1PCFGbits.PCFG3=1; // setting digital i/o for PIR sensor at AN3 , pin 3 on board

	AD1PCFGbits.PCFG2=1; // setting digital i/o for REED-1 sensor at AN2 , pin 4 on board

	AD1PCFGbits.PCFG1=1; // setting digital i/o for REED-2 sensor at AN1 , pin 5 on board
	AD1PCFGbits.PCFG0=0; // setting analog i/o on AN0, Pin 6 on board, for LM35-1
        AD1PCFGbits.PCFG9=0;// setting analog i/o on AN11, pin 7 on board, for LM35-2

        // end of input declarations........

	
#elif defined NEW_BOARD
        AD1PCFGbits.PCFG0=0; // setting analog i/o on AN0, Pin 6 on board, for LM35-1
        AD1PCFGbits.PCFG1=0;// setting analog i/o on AN11, pin 7 on board, for LM35-2
        ENC28_ADPCFGbit=1; //  setting digital i/o on AN2, for SS1 of SPI1 , ENC28J60
#endif
        _TRIS(PIR_1)=1;  // specify RB4, pin 2 as input for PIR
        _TRIS(PIR_2)=1;  // specify RB3, pin 2 as input for PIR
        _TRIS(DOOR_1)=1;  // specify AN3, pin 3 as input for REED-1
        _TRIS(DOOR_2)=1;  // specify AN2, pin 4 as input for REED-2
        
        //Output Declarations ............. set all pins as output
        _TRIS(FAN_1)=0;
        _TRIS(LIGHT_1)=0;
	_TRIS(PLUG_1)=0;
        _TRIS(FAN_2)=0;
	_TRIS(LIGHT_2)=0;
	_TRIS(PLUG_2)=0;
	_TRIS(FAN_1)=0;

        // SET all output pins as LOW
        Nop();
        _PORT(FAN_1)=0;
        _PORT(FAN_2)=0;
        _PORT(LIGHT_1)=0;
        _PORT(LIGHT_2)=0;
        _PORT(PLUG_1)=0;
        _PORT(PLUG_2)=0;

     ADCInit(); //initialize ADC module

     frequencyConvertor(); // convert frequencies for sensors
}

/* FUNCTIONS SPECIFIC TO COMPOSE RESPONSE FOR PUBLISH DATA TO SERVER */

/*******************************************************************************
 * Take reading for the sensor specified by sense_index and store the value in its
 * corresponding array.
 *
 * Parameter : sense_index (index of sensor for which reading has to be logged)
 *
 * Return :
 * none
 *******************************************************************************/

void take_Reading(unsigned short int sense_index){

    switch(sense_index){

        case 0 :{            adc_value = ReadADCData(Temp_Sensor_1);  //read adc data for temperature 1
                             adc_value = (adc_value*(.3))/6; //multiply and divide to caliberate, amplification=6
                             sprintf(temp,"%05.2f",adc_value); // convert to string
                             temp[5]=',';
                             temp[6]='\0';
                     
                  break;
                 }
        
        case 1 :{            adc_value = ReadADCData(Temp_Sensor_2);  //read adc data for temperature 1
                             adc_value = (adc_value*(.3))/6; //multiply and divide to caliberate, amplification=6
                             sprintf(temp,"%05.2f",adc_value); // convert to string
                             temp[5]=',';
                             temp[6]='\0';
                     
                  break;
        }
        case 2 :{   
                          if(_PORT(PIR_1)){
                              strcpy(temp,"1,");
                          }else{
                                strcpy(temp,"0,");
                          }

                  break;}
        case 3 :{
                          if(_PORT(PIR_2)){
                              strcpy(temp,"1,");
                          }else{
                              strcpy(temp,"0,");
                          }


                  break;}

        case 4 :{
                          if(_PORT(DOOR_1)){
                              strcpy(temp,"1,");
                           }else{
                                strcpy(temp,"0,");
                           }


                  break;}

        case 5 :{
                          if(_PORT(DOOR_1)){
                              strcpy(temp,"1,");
                          }else{
                                strcpy(temp,"0,");
                          }
                  break;
                        }

    }


    /*check for space to store reading, if not otherwise*/

    if((sensors[sense_index].size - strlen(sensors[sense_index].readings)) >= strlen(temp))
        strcat(sensors[sense_index].readings,temp);

    
}

/**************************************************************************************
 Description :
  Function to check sampling frequency for every sensor and take that much of readings
 Also stores time stamp for each sensor at the start of every sampling period
 */
void fillData(){

    unsigned short int i,j;
    
/*attach starting timestamp (in EPOCH )with every sensor*/
        if(pb_counter == 0) 
        {
            Ntp_TimeStamp = SNTPGetUTCSeconds();
            snprintf(timestamp,sizeof(timestamp)-1,"%lu",Ntp_TimeStamp);
             for(i=0; i< NUM_SENSORS_;i++){
                 strcpy(sensors[i].starttimestamp,timestamp);
             }
        }

    /*increment counter to keep track of publish time*/
    pb_counter++;

    /*take required numbers of reading for every sensor*/

    for(i=0u ; i< NUM_SENSORS_;i++){

        if(sensors[i].samp_freq_convr)
        {
        
         if((pb_counter % (pb_send_sec/sensors[i].samp_freq_convr))==0)
            take_Reading(i);
        }
        
        for( j= 0u ; j< (WORD)(sensors[i].samp_freq); j++){
            take_Reading(i);
        }
    }

}

/*******************************************************************************
 * Description : Function to make Json object for sensor represented by index
 *
 * Function :
 * 1. fill data in Json object header like sensor name, sid, time stamp, sampling rate
 * 2. attach pointer to json_pub_arguments[]
 *
 *******************************************************************************/
void makeJsonObject(unsigned short int index){

    char *temp_json = json_header;

    unsigned short int i,j,count=0;

    /*static to save time for next sensor*/
    static unsigned short int loc_sensor=0,loc_sid=0,loc_time=0,loc_rate=0;

    static unsigned short int len=0;
    unsigned short int len1=0;
    
    
    /*if location to fill is already known, jump to fill_data directly*/
    if((loc_sensor) && (loc_sid) && (loc_time) && (loc_rate)) 
        goto fill_data;

    // find locations to fill data
    len = strlen(temp_json);
       for(i=0;i<len;i++){
	    if(temp_json[i]==':'){
		count++;

		switch(count){
                        case 2: loc_sensor = i; break; // start frm 3rd ':'
                        case 3: loc_sid = i; break;     // start frm 4th ':'
                        case 4: loc_time=i; break;       // start frm 5th ':'
                        case 5: loc_rate=i; goto fill_data; //start frm 6th ':'
                }
            }
            
       }

   fill_data:
        /*fill sensor name in json header string*/
      len1 = strlen(sensors[index].name);
   
            if(len1 > 0){
                i = loc_sensor;
                temp_json[++i]='"';
                i++;
            for(j=0;j<len1;i++,j++)
                temp_json[i] = sensors[index].name[j];
                
                temp_json[i++]='"';

            while(temp_json[i]!=',')
            {
                temp_json[i++]=' ';
            }}

     /*fill sensor id*/
     i = loc_sid;
     temp_json[i+1]=sensors[index].id;
                
     /*insert starting timestamp*/

    len1 = strlen(sensors[index].starttimestamp);
      if(len1 > 0){
                i = loc_time;
                i++;
            for(j=0;j<len1;i++,j++)
                temp_json[i] = sensors[index].starttimestamp[j];

            while(temp_json[i]!=',')
            {
                temp_json[i++]=' ';
            }}

    char rate[3];
    itoa(rate,sensors[index].samp_freq,10);
    len1 = strlen(rate);
      if(len1 > 0){
                i = loc_rate;
                i++;
            for(j=0;j<len1;i++,j++)
                temp_json[i] = rate[j];

            while(temp_json[i]!=',')
            {
                temp_json[i++]=' ';
            }}

    /*attach arguments to sent as HTTP post in order
     [0] => api_key
     [1] => json_header
     [2] => readings
     [3] => json_end
     */
    json_pub_arguments[0] = &api_key[0]; // attach api_key to json[0]
    json_pub_arguments[1] = &json_header[0]; // attach json_header to json[0]
    json_pub_arguments[3] = &json_end[0];

    /*omit the last comma */
    WORD last_index = strlen(sensors[index].readings) -1 ;
       if(sensors[index].readings[last_index] == ',')
            sensors[index].readings[last_index] = '\0';
       
      json_pub_arguments[2] = &(sensors[index].readings[0]);
      
}

void Publish_Data(void){
    
     if(pb_counter >= pb_send_sec){
                   
        if(flag_http_post){ // if socket is available to post
            sense_num = (sense_num+1)%NUM_SENSORS_;
            makeJsonObject(sense_num);
            HTTPPostTask(ip_addresses[ip_num].addr,ip_addresses[ip_num].path); // post previous url for other IPs
        }

        /*once all sensor's data is posted just truncate the readings*/
        if(sense_num==(NUM_SENSORS_-1)){
            flush_readings_flag=1;
        }
        
        if(!flag_http_post){ // if not posted just post the previous

            HTTPPostTask(ip_addresses[ip_num].addr,ip_addresses[ip_num].path);
        }
    }

        
    if(flush_readings_flag && flag_http_post){

        pb_counter=0; // refresh counter for publish data
        unsigned short int k;
        
        for(k=0;k< NUM_SENSORS_;k++){
           strcpy(sensors[k].readings,"\0");
           
        }
        flush_readings_flag=0;
    }
   
}

/* FUNCTIONS SPECIFIC TO COMPOSE RESPONSE FOR HTTPSever REQUEST */


/******************************************************************************
   Make corresponsing JSON object for different error types
 ******************************************************************************/
void Make_Error_Json(ERROR_TYPE err){

    switch(err){
        case INVALID_LOCATION : Buff_Json = invalid_location; break;
        case INVALID_APPLIANCE : Buff_Json = invalid_appliance; break;
        case INVALID_ID : Buff_Json = invalid_id; break;
        case INVALID_REQUEST :Buff_Json = invalid_query; break;
        default : Buff_Json = unknown_error; break;
    };

}
/******************************************************************************
 * check the type of data request, appliance state and call MakeJson
 * with corresponding entries
 * 
 *****************************************************************************/
void checkStateAndMakeJson(REQUEST_TYPE request,unsigned short int num, unsigned short int id){

    char id_str[4];
  itoa(id_str,id,10); // convert id to string

  switch(request){
    case ACTUATE :
    case STATE :
    {
            switch(num){ //check appliance number

                case 0 : // FAN
                        switch(id){
                            case 1: //FAN_1
                                if(request==ACTUATE){
                                     if(!strcmp(arguments[4],"ON") && !_PORT(FAN_1))
                                         _PORT(FAN_1)=1;
                                     else if(!strcmp(arguments[4],"OFF") && _PORT(FAN_1))
                                         _PORT(FAN_1)=0;
                                }

                                if(_PORT(FAN_1)) // if high
                                    makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                else
                                    makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                break;
                            case 2: //FAN_2
                                if(request==ACTUATE){
                                     if(!strcmp(arguments[4],"ON")&& !_PORT(FAN_2))
                                         _PORT(FAN_2)=1;
                                     else if(!strcmp(arguments[4],"OFF")&& _PORT(FAN_2))
                                         _PORT(FAN_2)=0;
                                }
                                if(_PORT(FAN_2))
                                    makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                else
                                    makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                break;
                        }
                        break;

                case 1 : // LIGHT

                        switch(id){
                                case 1: //LIGHT_1
                                    if(request==ACTUATE){
                                         if(!strcmp(arguments[4],"ON")&& !_PORT(LIGHT_1))
                                             _PORT(LIGHT_1)=1;
                                         else if(!strcmp(arguments[4],"OFF")&& _PORT(LIGHT_1))
                                             _PORT(LIGHT_1)=0;
                                    }

                                        if(_PORT(LIGHT_1))
                                            makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                        else
                                            makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                        break;
                                case 2: //LIGHT_2
                                        if(request==ACTUATE){
                                             if(!strcmp(arguments[4],"ON")&& ! _PORT(LIGHT_2))
                                                _PORT(LIGHT_2)=1;
                                             else if(!strcmp(arguments[4],"OFF")&&_PORT(LIGHT_2))
                                                _PORT(LIGHT_2)=0;
                                        }

                                        if(_PORT(LIGHT_2))
                                            makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                        else
                                            makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                        break;
                        }
                        break;

                case 2 : // PLUG
                    
                        switch(id){
                            case 1: //PLUG_1
                                    if(request==ACTUATE){
                                             if(!strcmp(arguments[4],"ON")&& ! _PORT(PLUG_1))
                                                 _PORT(PLUG_1)=1;
                                             else if(!strcmp(arguments[4],"OFF")&& _PORT(PLUG_1))
                                                 _PORT(PLUG_1)=0;
                                    }

                                    if(_PORT(PLUG_1))
                                        makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                    else
                                        makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                    break;
                            case 2: //PLUG_2
                                    if(request==ACTUATE){
                                             if(!strcmp(arguments[4],"ON")&& ! _PORT(PLUG_2))
                                                 _PORT(PLUG_2)=1;
                                             else if(!strcmp(arguments[4],"OFF")&&! _PORT(PLUG_2))
                                                 _PORT(PLUG_2)=0;
                                    }
                                    if(_PORT(PLUG_2))
                                        makeJson(request,Node_location,appliances[num].app_name,id_str,"ON","0");
                                    else
                                        makeJson(request,Node_location,appliances[num].app_name,id_str,"OFF","0");
                                    break;
                        }
                        break;
            }; //end appliance check switch(num)
         break;
    }//end status request
    
      case INVALID : {Make_Error_Json(INVALID_REQUEST); break; }
    };
}

/******************************************************************************
 * Check appliance id specified in URL
 *
 * if appliance id == available appliance ids
 * checkArgumentsAndMakeJson(request,num,aid) [num : appliance number]
 *
 * else
 * flag invalid appliance id
 *
 *****************************************************************************/

 void Check_Id(REQUEST_TYPE request,unsigned short int num){
    unsigned short int aid=atoi(arguments[3]);
    if((aid>0)&&(aid <= APPLIANCE_NUM(num))){
        checkStateAndMakeJson(request,num,aid);
    }else{
        Make_Error_Json(INVALID_ID);
    }
}

/******************************************************************************
 * Check appliance specified in URL
 *
 * if appliance == available appliances
 * check_appliance_id()
 * else
 * flag unknown unknown appliance
 *
 *****************************************************************************/

void Check_Appliance(REQUEST_TYPE request){

    for(i=0;i<NUM_APPLIANCES;i++){
        if(strcmp(arguments[2],appliances[i].app_name)==0){
            Check_Id(request,i);
            return;
        }
    }
      Make_Error_Json(INVALID_APPLIANCE);
    
}
/******************************************************************************
 * Check location specified in URL
 *
 * location == Node_location
 * check_appliance()
 * else
 * flag unknown location
 *
 *****************************************************************************/

void Check_location(REQUEST_TYPE request){

    if(strcmp(arguments[1],Node_location)==0){
        
        if((request==STATE)||(request==ACTUATE))
            Check_Appliance(request);
    }else{
        Make_Error_Json(INVALID_LOCATION);
    }
      
}
/*******************************************************************************
 * Description :
 *      Main Entry point, called from HTTP SERVER module ,
 *      checks argument[0] and forward request type to check_location().
 * 
 * Author :
 * #A/M
 *
 *******************************************************************************/
void Build_Json_Response(void){

      if(strcmp(arguments[0],"actuate")==0){
          REQUEST_TYPE request = ACTUATE;
          Check_location(request);
      }

           
      else if(strcmp(arguments[0],"state")==0){
          REQUEST_TYPE request = STATE;
          Check_location(request);
      }
      
      else
          Make_Error_Json(INVALID_REQUEST);
}

/*******************************************************************************
 * Function to make a JSON object with supplied arguments and put in JSON buffer
 *
 * Parameters :
 *  REQUEST TYPE : DATA, ACTUATE or STATE
 *  str1 - str5  : strings to feed in the in Buff_Json which points to status[]
 * 
 * Return :
 * none
 *
 * Author :
 * #A/M
 *******************************************************************************/
void makeJson(REQUEST_TYPE req,char str1[],char str2[],char str3[],char str4[],char str5[]){


    switch(req){
        case ACTUATE :
        case STATE : Buff_Json = status; break;
    }

			BYTE i,j,count=0;
			BYTE len = strlen(Buff_Json);
                        
			for(i=0u ; i<len ;i++)
			{
                            if(Buff_Json[i]==':'){
                                count++;
                                i++;
                                /*insert from second ':' */
				switch(count){
                                    case 2u: {
                                        BYTE len1 = strlen(str1);
                                        if(len1 > 0u){
                                            Buff_Json[i++]='"';
                                            for(j=0u;j<len1;i++,j++)
                                                Buff_Json[i] = str1[j];
                                            Buff_Json[i++]='"';

                                            while(Buff_Json[i]!='}')
                                                Buff_Json[i++]=' ';
                                        }

                                        break;
                                    }

                                    case 3u: {
                                        BYTE len2 = strlen(str2);
                                        if(len2 > 0u){
                                                Buff_Json[i++]='"';

                                            for(j=0u;j<len2;i++,j++)
                                                Buff_Json[i] = str2[j];

                                            Buff_Json[i++]='"';
                                            
                                            while(Buff_Json[i]!='}')
                                                Buff_Json[i++]=' ';

                                        }
                                    break;
                                    }
                                    case 4u: {
                                        BYTE len3 = strlen(str3);
                                        if(len3 > 0u){
                                            Buff_Json[i++]='"';

                                            for(j=0u;j<len3;i++,j++)
                                                Buff_Json[i] = str3[j];
                                            Buff_Json[i++]='"';
                                            while(Buff_Json[i]!='}')
                                                Buff_Json[i++]=' ';

                                        }
                                        break;
                                    }

                                    case 5u: {
                                        BYTE len4  = strlen(str4);
                                        if(len4 > 0u){
                                            
                                                Buff_Json[i++]='"';
                                                
                                                for(j=0u;j<len4;i++,j++)
                                                    Buff_Json[i] = str4[j];
                                                Buff_Json[i++]='"';
                                                
                                                while(Buff_Json[i]!='}')
                                                    Buff_Json[i++]=' ';
        
                                        }
                                        break;
                                    }

                                    case 6u: {
                                        BYTE len5 =strlen(str5);
                                        if(len5 > 0u){
                                            Buff_Json[i++]='"';

                                            for(j=0u;j<len5;i++,j++)
                                                Buff_Json[i] = str5[j];

                                            Buff_Json[i++]='"';

                                            while(Buff_Json[i]!='}')
                                                Buff_Json[i++]=' ';
                                            
                                        }
                                        break;
                                    }

			        default : break;
                                } // end switch
                            } // end if
                        } // end for

  //  readeeprom(0x00,0x00,11,Buff_Json);
}

void ADCInit(){
		AD1CON1bits.ADON=0;
		AD1CON1 = 0x00E0; // SSRC<2:0> = 111 implies internal counter ends sampling and starts converting.
		AD1CSSL = 0;
		AD1CON3 = 0x1F02; // Sample time = 31Tad, Tad = 3Tcy
		AD1CON2 = 0;
		AD1CON1bits.ADON=1; //TURNING ON A/D MODULE
	}

double ReadADCData(unsigned int channel){
                int adc_value;

                        AD1CON1bits.ADON=0;
                        AD1CHS=(channel&0x000f);
                        AD1CON1bits.ADON=1;

			AD1CON1bits.SAMP=1; // enable=1 FOR SAMPLING
			while(AD1CON1bits.DONE==0); // wait till the sampling is complete


                        adc_value=ADC1BUF0;
                        adc_value=adc_value&(0x03ff); // trim the leading 6bits
			return(adc_value);
	}

