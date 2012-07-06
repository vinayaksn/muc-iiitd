
#include "SmartRoom Config.h"
#include <p24FJ128GA010.h>

IP_ADDRESS ip_addresses[] = {
    {"192.168.1.250", "/upload/wavesegment"}

};

#define TOTAL_IP_PUBLISH sizeof(ip_addresses)/sizeof(ip_addresses[0])
char location[] = "MUCLab";


char apikey[] = "11aeb8ebc4414323944606e8103ccc21";
char devicename[] = "Multisensor";
char sensorname[15] = "";
char sensorid[5] = "";
char timestamp[11] = "";
char samplingperiod[4];
char channelname[] = "channel1";
char unit[5] = "";
char sreadings[100];// = "";
char temp[8];

char *json_object[] = {
    "{\"secretkey\":\"", apikey,
    "\",\"data\":",
    "{\"loc\":\"", location,
    "\",\"dname\":\"", devicename,
    "\",\"sname\":\"", sensorname,
    "\",\"sid\":", sensorid,
    ",\"timestamp\":\"", timestamp,
    "\",\"speriod\":", samplingperiod,
    ",\"channels\":",
    "[{\"cname\":\"", channelname,
    "\",\"unit\":\"", unit,
    "\",\"readings\":[", sreadings,
    "]}]}}\n"
};



/*used to reply to HTTPServer queries for actuation and appliance state*/
    char status[]="{\n\"state\":{\n\"location\":\"faculty_room\",\n\"appliance\":        ,\n\"aid\":    ,\n\"state\":     ,\n\"ERRCODE\":     \n}\n}";
    char data[]="{\n\"data\":{\n\"location\":\"faculty_room\",\n\"sensor\":              ,\n\"sid\":     ,\n\"reading\":          ,\n\"ERRCODE\":     \n}\n}";
    /*ERROR strings, for any problem with incoming HTTPServer request */
    char invalid_query[]="{\n\"Error\":{\n\"Description\":\"unkown query type\",\n\"ERRCODE\":5\n}\n}";;
    char invalid_appliance[]="{\n\"Error\":{\n\"Description\":\"No such appliance\",\n\"ERRCODE\":2\n}\n}";
    char invalid_sensor[]="{\n\"Error\":{\n\"Description\":\"No such sensor\",\n\"ERRCODE\":2\n}\n}";
    char invalid_location[]="{\n\"Error\":{\n\"Description\":\"Invalid location\",\n\"ERRCODE\":3\n}\n}";
    char invalid_id[]= "{\n\"Error\":{\n\"Description\":\"Invalid id\",\n\"ERRCODE\":4\n}\n}";
    char unknown_error[]="{\n\"Error\":{\n\"Description\":\"unknown\",\n\"ERRCODE\":404\n}\n}";

