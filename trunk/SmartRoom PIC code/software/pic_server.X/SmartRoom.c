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
#include "Sensors.h"
#include "Actuators.h"
#include "SmartRoom Config.h"
#include "lcd.h"
#include "RTCC.h"


#define TOTAL_IP_PUBLISH 1

char timestamp1[20];

#define NUM_APPLIANCES sizeof(appliances)/sizeof(appliances[0])
#define APPLIANCE_NUM(num) appliances[num].app_num

extern void HTTPPostTask(BYTE* ServerName, BYTE* ServerPath); // HTTP post
void ADCInit(); // initialize adc module

/*function to create json object with corresponing entries */
void makeJson(REQUEST_TYPE req, char [], char [], char [], char [], char []);


extern char *arguments [HTTP_MAX_ARGS]; // Store Http GET arguments for HTTPServer request, defined in HTTP.c
extern char *Buff_Json; // Buffer to store JSON object to send as response for HTTPServer, defined in HTTP.c


/* string pointer array to hold JSON responses for data publish*/
char *json_pub_arguments[JSON_OBJ_ARGS];
/*stores latest time stamp*/
static DWORD Ntp_TimeStamp = 0; //variable to store the epoch time

unsigned short int flag_http_post = 2; // flag to http post done
unsigned short int flush_readings_flag = 0; // flush readings or not


unsigned short int i, j;
BYTE ip_num = 0u;
short int sense_num = -1; //intilisation
short int pb_counter = 0; // counter to keep track of when to publish
short int pb_send_sec = 6; //time to publish data in secs


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

/**************************************************************************************
 Description :
  Function to check sampling frequency for every sensor and take that much of readings
 Also stores time stamp for each sensor at the start of every sampling period
 */
void fillData() {

    unsigned short int i; //local counter
    unsigned short static call = 0; //No of calls made to fill data function


    if (call == pb_send_sec * (int) (1.0f / INTERRUPT_PERIOD)) {
        call = 0;
    }

    /*attach starting timestamp (in EPOCH )with every sensor*/
    if (pb_counter == 0) {
        Ntp_TimeStamp = getCurrentTime();
         if(validate(Ntp_TimeStamp));
        Ntp_TimeStamp=SNTPGetUTCSeconds();

        checkSync(Ntp_TimeStamp);

        
        sprintf(timestamp, "rtc ""%lu", Ntp_TimeStamp);
        //Ntp_TimeStamp = SNTPGetUTCSeconds();
        snprintf(timestamp, sizeof (timestamp) - 1, "%lu", Ntp_TimeStamp);
        for (i = 0; i < NUM_SENSORS_; i++) {
            strcpy(sensors[i].starttimestamp, timestamp);
            
            
        }
    }

    /*increment counter to keep track of publish time with respect to the sampling period*/
    if ((call % (int) ((1.0f / INTERRUPT_PERIOD))) == 0) {
        pb_counter++;
    }

    /*take required numbers of reading for every sensor depending on the sampling period*/
    for (i = 0u; i < NUM_SENSORS_; i++) {
        if (call % (int) (sensors[i].interrupts_per_reading) == 0) {
            takeReading(i);
        }

    }
    call++; //increment the call counter
}

void Publish_Data(void) {

    /*
     If publish counter is greqter than equal to the pb_send_sec then creates the kson object and
     calls the http post function.
     */
    if (pb_counter >= pb_send_sec) {
        flag_http_post = 1; //to post every time it enters the publish_data function even if the post is not being listened to
        if (flag_http_post) { // if socket is available to post
            sense_num = (sense_num + 1) % NUM_SENSORS_; //sense_num is the sensor no of whose data is to be converted to a json object
            makeJsonObject(sense_num);
            HTTPPostTask(ip_addresses[ip_num].addr, ip_addresses[ip_num].path); // post previous url for other IPs
        }

        /*once all sensor's data is posted just truncate the readings*/
        if (sense_num == (NUM_SENSORS_ - 1)) {
            flush_readings_flag = 1;
        }

        if (!flag_http_post) { // if not posted just post the previous

            HTTPPostTask(ip_addresses[ip_num].addr, ip_addresses[ip_num].path);
        }
    }

    /*
     if the post is successful and the data of all the sensors is posted then enter the if block
     It flushes the readings array for all the sensors and resets the pb_counter.
     and sets the flush flag to zero.
     */
    if (flush_readings_flag && flag_http_post) {

        pb_counter = 0; // refresh counter for publish data
        unsigned short int k;

        for (k = 0; k < NUM_SENSORS_; k++) {
            strcpy(sensors[k].readings, "\0");

        }
        flush_readings_flag = 0;
    }

}

/* FUNCTIONS SPECIFIC TO COMPOSE RESPONSE FOR HTTPSever REQUEST */

/******************************************************************************
   Make corresponsing JSON object for different error types
 ******************************************************************************/
void Make_Error_Json(ERROR_TYPE err) {

    switch (err) {
        case INVALID_LOCATION: Buff_Json = invalid_location;
            break;
        case INVALID_APPLIANCE: Buff_Json = invalid_appliance;
            break;
        case INVALID_ID: Buff_Json = invalid_id;
            break;
        case INVALID_REQUEST:Buff_Json = invalid_query;
            break;
        case INVALID_SENSOR: Buff_Json = invalid_sensor;
            break;
        default: Buff_Json = unknown_error;
            break;
    };

}

/******************************************************************************
 * check the type of data request, appliance state and call MakeJson
 * with corresponding entries
 * 
 *****************************************************************************/
void checkStateAndMakeJson(REQUEST_TYPE request, unsigned short int num, unsigned short int id) {

    float adc_value;

    char id_str[4];
    itoa(id_str, id, 10); // convert id to string

    switch (request) {
        case ACTUATE:
        case STATE:
        {
            switch (num) { //check appliance number

                case 0: // FAN
                    switch (id) {
                        case 1: //FAN_1
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(FAN_1))
                                    _PORT(FAN_1) = 1;
                                else if (!strcmp(arguments[4], "OFF") && _PORT(FAN_1))
                                    _PORT(FAN_1) = 0;
                            }

                            if (_PORT(FAN_1)) // if high
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                        case 2: //FAN_2
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(FAN_2))
                                    _PORT(FAN_2) = 1;
                                else if (!strcmp(arguments[4], "OFF") && _PORT(FAN_2))
                                    _PORT(FAN_2) = 0;
                            }
                            if (_PORT(FAN_2))
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                    }
                    break;

                case 1: // LIGHT

                    switch (id) {
                        case 1: //LIGHT_1
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(LIGHT_1))
                                    _PORT(LIGHT_1) = 1;
                                else if (!strcmp(arguments[4], "OFF") && _PORT(LIGHT_1))
                                    _PORT(LIGHT_1) = 0;
                            }

                            if (_PORT(LIGHT_1))
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                        case 2: //LIGHT_2
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(LIGHT_2))
                                    _PORT(LIGHT_2) = 1;
                                else if (!strcmp(arguments[4], "OFF") && _PORT(LIGHT_2))
                                    _PORT(LIGHT_2) = 0;
                            }

                            if (_PORT(LIGHT_2))
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                    }
                    break;

                case 2: // PLUG

                    switch (id) {
                        case 1: //PLUG_1
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(PLUG_1))
                                    _PORT(PLUG_1) = 1;
                                else if (!strcmp(arguments[4], "OFF") && _PORT(PLUG_1))
                                    _PORT(PLUG_1) = 0;
                            }

                            if (_PORT(PLUG_1))
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                        case 2: //PLUG_2
                            if (request == ACTUATE) {
                                if (!strcmp(arguments[4], "ON") && !_PORT(PLUG_2))
                                    _PORT(PLUG_2) = 1;
                                else if (!strcmp(arguments[4], "OFF") && !_PORT(PLUG_2))
                                    _PORT(PLUG_2) = 0;
                            }
                            if (_PORT(PLUG_2))
                                makeJson(request, location, appliances[num].app_name, id_str, "ON", "0");
                            else
                                makeJson(request, location, appliances[num].app_name, id_str, "OFF", "0");
                            break;
                    }
                    break;
            }; //end appliance check switch(num)
            break;
        }//end status request
        case DATA:
        {
            switch (num) {
                case 1: // PIR

                    if (_PORT(PIR_1)) {
                        makeJson(request, location, sensors[num].name, id_str, "1", "0");
                    } else {
                        makeJson(request, location, sensors[num].name, id_str, "0", "0");
                    }

                    break;

                case 2: // door

                    if (_PORT(DOOR_1))
                        makeJson(request, location, sensors[num].name, id_str, "1", "0");
                    else
                        makeJson(request, location, sensors[num].name, id_str, "0", "0");
                    break;

                case 0: // Temperature

                    //Reading temperature for temperature sensor 1
                    adc_value = readADCData(Temp_Sensor_1);
                    char temp1[8];
                    adc_value = (adc_value * (.3)) / 6;
                    sprintf(temp1, "%05.2f", adc_value); // convert to string
                    temp1[5] = '\0';
                    makeJson(request, location, sensors[num].name, id_str, temp1, "0");

                    break; //end case temperature
            }; //end switch(num) sensor check

            break;
        } //end data request

        case INVALID:
        {
            Make_Error_Json(INVALID_REQUEST);
            break;
        }
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

void Check_Id(REQUEST_TYPE request, unsigned short int num) {
    unsigned short int aid = atoi(arguments[3]);
    if ((aid > 0) && (aid <= APPLIANCE_NUM(num))) {
        checkStateAndMakeJson(request, num, aid);
    } else {
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

void Check_Appliance(REQUEST_TYPE request) {

    for (i = 0; i < NUM_APPLIANCES; i++) {
        if (strcmp(arguments[2], appliances[i].app_name) == 0) {
            Check_Id(request, i);
            return;
        }
    }
    Make_Error_Json(INVALID_APPLIANCE);

}

/******************************************************************************
 * Check sensor specified in URL
 *
 * if sensor name and sensor id existsd
 * checkStateAndMakeJson(request, i, ((sensors[i].id) - '0'));
 * else
 * flag unknown unknown appliance
 *
 *****************************************************************************/
void Check_Sensor(REQUEST_TYPE request) {

    for (i = 0; i < NUM_SENSORS_; i++) {
        if ((strcmp(arguments[2], sensors[i].name) == 0) && (arguments[3][0] == sensors[i].id)) {
            checkStateAndMakeJson(request, i, ((sensors[i].id) - '0'));
            return;
        }
    }
    Make_Error_Json(INVALID_SENSOR);

}

/******************************************************************************
 * Check location specified in URL
 *
 * location == location
 * check_appliance()
 * else
 * flag unknown location
 *
 *****************************************************************************/

void Check_location(REQUEST_TYPE request) {

    if (strcmp(arguments[1], location) == 0) {

        if ((request == STATE) || (request == ACTUATE))
            Check_Appliance(request);
        if (request == DATA)
            Check_Sensor(request);
    } else {
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
void Build_Json_Response(void) {

    if (strcmp(arguments[0], "actuate") == 0) {
        REQUEST_TYPE request = ACTUATE;
        Check_location(request);
    } else if (strcmp(arguments[0], "state") == 0) {
        REQUEST_TYPE request = STATE;
        Check_location(request);
    } else if (strcmp(arguments[0], "data") == 0) {
        REQUEST_TYPE request = DATA;
        Check_location(request);
    } else
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
void makeJson(REQUEST_TYPE req, char str1[], char str2[], char str3[], char str4[], char str5[]) {


    switch (req) {
        case ACTUATE:
        case STATE: Buff_Json = status;
            break;
        case DATA: Buff_Json = data;
    }

    BYTE i, j, count = 0;
    BYTE len = strlen(Buff_Json);

    for (i = 0u; i < len; i++) {
        if (Buff_Json[i] == ':') {
            count++;
            i++;
            /*insert from second ':' */
            switch (count) {
                case 2u:
                {
                    BYTE len1 = strlen(str1);
                    if (len1 > 0u) {
                        Buff_Json[i++] = '"';
                        for (j = 0u; j < len1; i++, j++)
                            Buff_Json[i] = str1[j];
                        Buff_Json[i++] = '"';
                        Buff_Json[i++] = ',';

                        while (Buff_Json[i] != '\n')
                            Buff_Json[i++] = ' ';
                    }

                    break;
                }

                case 3u:
                {
                    BYTE len2 = strlen(str2);
                    if (len2 > 0u) {
                        Buff_Json[i++] = '"';

                        for (j = 0u; j < len2; i++, j++)
                            Buff_Json[i] = str2[j];

                        Buff_Json[i++] = '"';
                        Buff_Json[i++] = ',';
                        while (Buff_Json[i] != '\n')
                            Buff_Json[i++] = ' ';

                    }
                    break;
                }
                case 4u:
                {
                    BYTE len3 = strlen(str3);
                    if (len3 > 0u) {
                        //                        Buff_Json[i++] = '"';

                        for (j = 0u; j < len3; i++, j++)
                            Buff_Json[i] = str3[j];
                        //                        Buff_Json[i++] = '"';
                        Buff_Json[i++] = ',';
                        while (Buff_Json[i] != '\n')
                            Buff_Json[i++] = ' ';

                    }
                    break;
                }

                case 5u:
                {
                    BYTE len4 = strlen(str4);
                    if (len4 > 0u) {

                        if (req == STATE || req == ACTUATE)
                            Buff_Json[i++] = '"';


                        for (j = 0u; j < len4; i++, j++)
                            Buff_Json[i] = str4[j];
                        if (req == STATE || req == ACTUATE)
                            Buff_Json[i++] = '"';
                        Buff_Json[i++] = ',';

                        while (Buff_Json[i] != '\n')
                            Buff_Json[i++] = ' ';

                    }
                    break;
                }

                case 6u:
                {
                    BYTE len5 = strlen(str5);
                    if (len5 > 0u) {
                        //          Buff_Json[i++] = '"';

                        for (j = 0u; j < len5; i++, j++)
                            Buff_Json[i] = str5[j];

                        //        Buff_Json[i++] = '"';

                        while (Buff_Json[i] != '\n')
                            Buff_Json[i++] = ' ';

                    }
                    break;
                }

                default: break;
            } // end switch
        } // end if
    } // end for

    //  readeeprom(0x00,0x00,11,Buff_Json);
}

/*******************************************************************************
 * Description : Function to make Json object for sensor represented by index
 *
 * Function :
 * 1. fill data in Json object header like sensor name, sid, time stamp, sampling rate
 * 2. attach pointer to json_pub_arguments[]
 *
 *******************************************************************************/
void makeJsonObject(unsigned short int index) {


    strcpy(sensorname, sensors[index].name); //copy the sensor name into sensorname variable initialise in SmartRoomConfig.c

    sensorid[0] = sensors[index].id; //store the sensor id in sensorid[0] initialise in SmartRoomConfig.c
    sensorid[1] = '\0';

    char period[3]; //variable to store sampling period

    sprintf(period, "%2.1f", sensors[index].samp_period); //converts the floating value of samploing period of the specific sensor to string and stores it in period.
    strcpy(samplingperiod, period); //copies the string in period to samplingperiod.

    /*omit the last comma */
    WORD last_index = strlen(sensors[index].readings) - 1; //calculate the index of the last element in the string
    /* if the last element in the string is a , then replace it withh end of string*/
    if (sensors[index].readings[last_index] == ',')
        sensors[index].readings[last_index] = '\0';

    strcpy(sreadings, sensors[index].readings); //copy all the readings collected of the sensor to sreadings variable
    strcpy(timestamp, sensors[index].starttimestamp); //copy the timestamp of the sensor.


    /* copy all the elements of json_object to json_pub_arguments*/
    for (i = 0; i < JSON_OBJ_ARGS; i++) {
        json_pub_arguments[i] = json_object[i];
    }
}
