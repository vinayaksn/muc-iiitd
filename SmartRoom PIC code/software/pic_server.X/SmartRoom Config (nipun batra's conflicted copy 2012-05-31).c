
#include "SmartRoom Config.h"
#include <p24FJ128GA010.h>

         IP_ADDRESS ip_addresses[]={
            //{"192.168.9.35",""}
            {"192.168.0.3","/upload/wavesegment"}
            //{"192.168.1.174","/upload/wavesegment"}
            //{"192.168.1.122","/upload"}
            //{"192.168.0.3","/upload"}
          };

         #define TOTAL_IP_PUBLISH sizeof(ip_addresses)/sizeof(ip_addresses[0])

    char apikey[] = "01aeb8ebc4414323944606e8103ccc21";
    char location[] = "Facultyroom";
    char devicename[] = "PhDLab";
    char sensorname[15] = "";
    char sensorid[5] = "";
    char timestamp[11] = "";
    char samplingperiod[3] = "";
    char channelname[] = "channel1";
    char unit[5] = "";
    char sreadings[]="";

    char *json_object[] = {
        "{secretkey:\"", apikey,
        "\",data:",
        "{loc:\"",location,
        "\",dname:\"",devicename,
        "\",sname:\"",sensorname,
        "\",sid:\"",sensorid,
        "\",timestamp:\"",timestamp,
        "\",speriod:\"",samplingperiod,
        "\",channels:",
        "[{cname:\"",channelname,
        "\",unit:\"",unit,
        "\",readings:[",sreadings,
        "]}]}}\n"
    };



    /*used to reply to HTTPServer queries for actuation and appliance state*/
    char status[]="{\n\"state\":[\n{\"location\":\"faculty_room\"},\n{\"appliance\":        },\n{\"aid\":    },\n{\"state\":     },\n{\"ERRCODE\":     }\n]\n}";
    char data[]="{\n\"data\":[\n{\"location\":\"faculty_room\"},\n{\"sensor\":              },\n{\"sid\":     },\n{\"reading\":          },\n{\"ERRCODE\":     }\n]\n}";

    /*ERROR strings, for any problem with incoming HTTPServer request */

    char invalid_query[]="{\n\"Error\":[\n{\"Description\":\"unkown query type\"},\n{\"ERRCODE\":\"5\"}\n]\n}";;
    char invalid_appliance[]="{\n\"Error\":[\n{\"Description\":\"No such appliance\"},\n{\"ERRCODE\":\"2\"}\n]\n}";
    char invalid_sensor[]="{\n\"Error\":[\n{\"Description\":\"No such sensor\"},\n{\"ERRCODE\":\"2\"}\n]\n}";

    char invalid_location[]="{\n\"Error\":[\n{\"Description\":\"Invalid location\"},\n{\"ERRCODE\":\"3\"}\n]\n}";
    char invalid_id[]= "{\n\"Error\":[\n{\"Description\":\"Invalid id\"},\n{\"ERRCODE\":\"4\"}\n]\n}";
    char unknown_error[]="{\n\"Error\":[\n{\"Description\":\"unknown\"},\n{\"ERRCODE\":\"404\"}\n]\n}";

/* **************************************************************************************
 * Initialize timer/conter 2 for interrupt generation at every .5 second to
 * log sensor readings.
 *
 * Clock frequency for Timer/counter2 = 32 MHZ / (2*256) = 62500 HZ
 *
 * comparator value (PR2) = 62500/2 = 31250 = 0x7A12, to generate interrupt every .5 second
 *
 *****************************************************************************************/

void timerInit(void) {

    PR2 = 0x7A12; // comparator value

    IPC1bits.T2IP = 1; //set interrupt priority

    T2CON = 0b1000000000000000; //enable timer2

    T2CONbits.TCKPS = 3; //prescale (1:256)

    IFS0bits.T2IF = 0; //This flag should be cleared once initilization has been done

    IEC0bits.T2IE = 1; //turn on the timer2 interrupt
}



