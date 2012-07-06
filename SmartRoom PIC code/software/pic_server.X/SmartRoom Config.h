#ifndef SMARTROOM_CONFIG
#define SMARTROOM_CONFIG


#define SMART_ROOM
//#define OLD_BOARD

#define NEW_BOARD

#define ENC28_ADPCFGbit (AD1PCFGbits.PCFG2) //SPI1 SS1 bit connected to AN2 for new board
//macros for easy pin handling
// _TRIS defines direction of a pin (0 : output / 1 : input)
#define _TRIS(pin)          pin(_TRIS_F)
#define _TRIS_F(port,bit)   (TRIS ## port ## bits.TRIS ## port ## bit)

// _PORT defined value on a Port
#define _PORT(pin)          pin(_PORT_F)
#define _PORT_F(port,bit)   (PORT ## port ## bits.R ## port ## bit)


   typedef struct{
        char addr[16];
        char path[20];
   }IP_ADDRESS;

  extern IP_ADDRESS ip_addresses[];
  extern char data[];
  extern char state[];
  
#define INTERRUPT_PERIOD (.5f) // in seconds
#define PUBLISH_PERIOD 10
#define PUBLISH_INTERRUPTS 20
void timerInit();

extern char apikey[] ;
   extern char location[];
   extern char devicename[];
   extern char sensorname[15];
   extern char sensorid[5] ;
   extern char timestamp[11];
   extern char samplingperiod[4];
   extern char channelname[];
   extern char unit[5] ;
    extern char sreadings[];
    extern char *json_header;
    extern char json_end[];

   extern char *json_object[] ;



    /*used to reply to HTTPServer queries for actuation and appliance state*/
   extern char status[];
    extern char data[];

    /*ERROR strings, for any problem with incoming HTTPServer request */

   extern char invalid_query[];
   extern char invalid_appliance[];
    extern char invalid_sensor[];

   extern char invalid_location[];
    extern char invalid_id[];
    extern char unknown_error[];


#endif

