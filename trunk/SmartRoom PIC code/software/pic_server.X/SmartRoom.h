#ifndef _SMARTROOM_H
#define _SMARTROOM_H

#include "string.h"
//#include "TCPIP Stack/SNTP.h"

#define SMART_ROOM

//#define OLD_BOARD
#define NEW_BOARD
//macros for easy pin handling
  // _TRIS defines direction of a pin (0 : output / 1 : input)
#define _TRIS(pin)          pin(_TRIS_F)
#define _TRIS_F(port,bit)   (TRIS ## port ## bits.TRIS ## port ## bit)

 // _PORT defined value on a Port
#define _PORT(pin)          pin(_PORT_F)
#define _PORT_F(port,bit)   (PORT ## port ## bits.R ## port ## bit)

    
// define sensors as macros where f(Port,Pin) is the pin.
#if defined OLD_BOARD
    #define PIR_1(f) f(B,4) //PORT B, pin 4
    #define PIR_2(f) f(B,3) //PORT B, pin 3
    #define DOOR_1(f) f(B,2) //PORT B, pin 2
    #define DOOR_2(f) f(B,1) //PORT B, pin 1


    #define Temp_Sensor_1 0 // AN0 handles temp_sensor_1
    #define Temp_Sensor_2 9 // AN9 handles temp_sensor_2

 // Define actuator PINS

    #define FAN_1(f)    f(G,14)                  //PORTGbits.RG14
    #define LIGHT_1(f)  f(A,7)                   //PORTAbits.RA7
    #define PLUG_1(f)   f(A,6)                   //PORTAbits.RA6

    #define FAN_2(f)    f(G,0)                   //PORTGbits.RG0
    #define LIGHT_2(f)  f(G,1)                //PORTGbits.RG1
    #define PLUG_2(f)   f(F,1)                //PORTFbits.RF1

#elif defined (NEW_BOARD)

    #define PIR_1(f) f(B,3) //PORT B, pin 3
    //#define PIR_2(f) f(B,9) //PORT B, pin 9
    #define DOOR_1(f) f(B,1) //PORT B, pin 1
   // #define DOOR_2(f) f(B,11) //PORT B, pin 11


    #define Temp_Sensor_1 0 // AN0 handles temp_sensor_1
   // #define Temp_Sensor_2 1 // AN9 handles temp_sensor_2

 // Define actuator PINS

    #define FAN_1(f)    f(F,1)                  //PORTGbits.RG14
    #define LIGHT_1(f)  f(D,7)                   //PORTAbits.RA7
    #define PLUG_1(f)   f(D,6)                   //PORTAbits.RA6

    #define FAN_2(f)    f(D,5)                   //PORTGbits.RG0
    #define LIGHT_2(f)  f(A,7)                //PORTGbits.RG1
    #define PLUG_2(f)   f(A,6)                //PORTFbits.RF1

#define ENC28_ADPCFGbit (AD1PCFGbits.PCFG2) //SPI1 SS1 bit connected to AN2 for new board

#endif

 
//Types of requests at Httpserver()
   typedef enum{
       DATA,
       ACTUATE, // to actuate an appliance
        STATE,   // to get present state of an appliance
        INVALID  // invalid request type
    }REQUEST_TYPE;

    // Types of errors in Http request
   typedef enum{
        INVALID_REQUEST, // invalid request type
        INVALID_APPLIANCE, // invalid appliance name
        INVALID_SENSOR,
        INVALID_LOCATION,  // invalid location
        INVALID_ID         // invalid appliance id
    }ERROR_TYPE;

   

    //#define JSON_OBJ_ARGS  23 // number of arguments to send in HttpADCPost()
#define JSON_OBJ_ARGS  23 // number of arguments to send in HttpADCPost()
    #define NUM_SENSORS_ 3   // Number of sensors attached to node

    
    extern char *json_pub_arguments[JSON_OBJ_ARGS];
    
void Initialize_Pins(void);// initialize sensor and relay pins
void Build_Json_Response(void); //JSON object builder
void Publish_Data(void);// Data url publisher
void fillData(); //To fill data to reading array, called from Maindemo.c

#endif
