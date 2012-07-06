#ifndef _SMARTROOMSENSORS_H
    #define _SMARTROOMSENSORS_H

#include "SmartRoom Config.h"
#include <p24FJ128GA010.h>

/* *****************************************************************\
 * define pins for various sensors attached
 * for digital, give definition like PIR_1
 * for analog,  just define analog channel like in temp_sensor_1
 * f(port,pin) is used here as a macro function
 *******************************************************************/

#if defined OLD_BOARD
        #define PIR_1(f) f(B,4) //PORT B, pin 4
        #define PIR_2(f) f(B,3) //PORT B, pin 3
        #define DOOR_1(f) f(B,2) //PORT B, pin 2
        #define DOOR_2(f) f(B,1) //PORT B, pin 1


        #define Temp_Sensor_1 0 // AN0 handles temp_sensor_1
        #define Temp_Sensor_2 9 // AN9 handles temp_sensor_2

#elif defined (NEW_BOARD)

        #define PIR_1(f) f(B,3) //PORT B, pin 3
        //#define PIR_2(f) f(B,9) //PORT B, pin 9
        #define DOOR_1(f) f(B,1) //PORT B, pin 1
        // #define DOOR_2(f) f(B,11) //PORT B, pin 11
        #define Temp_Sensor_1 0 // AN0 handles temp_sensor_1
        // #define Temp_Sensor_2 1 // AN9 handles temp_sensor_2
#endif // old or new board

//structure to handle information for different sensors

    typedef struct{
       char                 name[15];    //sensor name
       unsigned char        id;          // sensor id
       char                 starttimestamp[25]; // starting time stamp
       unsigned short int   size;      // size of reading array associated
       char*                readings;  // pointer to array to store readings
       float                samp_period; // Main sampling period in seconds. (eg.  .5 -> sample every half second)
      short int            interrupts_per_reading; // samp_period/interrupt_period
     }SENSOR;
     
#define NUM_SENSORS 3
#define ADC_READING_SIZE 300 // array size to store adc type readings eg. temperature
#define BIN_READING_SIZE 100 // array size to store binary type readings eg. pir

     //expose arrays for RW operations , defined in sensors.c
     extern SENSOR sensors[NUM_SENSORS];
     //extern char temp[8];

     extern  char temp1_reading[ADC_READING_SIZE]; // array to store readings for temperature 1
     //unsigned char temp2_reading[ADC_READING_SIZE]; // array to store readings for temperature 2
     extern  char  pir1_reading[BIN_READING_SIZE]; // array to store readings for pir 1
    // unsigned char  pir2_reading[BIN_READING_SIZE]; // array to store readings for pir 2
     extern  char reed1_reading[BIN_READING_SIZE]; // array to store readings for reed 1
    // unsigned char reed2_reading[BIN_READING_SIZE]; // array to store readings for reed 2
void initializeSensors();
void takeReading(unsigned short int );
void adcInit();
int readADCData(unsigned int);

#endif //end _SMARTROOMSENSORS_H