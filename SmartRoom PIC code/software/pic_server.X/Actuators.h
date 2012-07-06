#ifndef _ACTUATORS_H
    #define _ACTUATORS_H

#include "SmartRoom Config.h"
#include <p24FJ128GA010.h>

#if defined OLD_BOARD

// Define actuator PINS for old board

#define FAN_1(f)    f(G,14)                  //PORTGbits.RG14
#define LIGHT_1(f)  f(A,7)                   //PORTAbits.RA7
#define PLUG_1(f)   f(A,6)                   //PORTAbits.RA6

#define FAN_2(f)    f(G,0)                   //PORTGbits.RG0
#define LIGHT_2(f)  f(G,1)                //PORTGbits.RG1
#define PLUG_2(f)   f(F,1)                //PORTFbits.RF1

#elif defined (NEW_BOARD)

// Define actuator PINS for new board

        #define FAN_1(f)    f(F,1)                  //PORTGbits.RG14
        #define LIGHT_1(f)  f(D,7)                   //PORTAbits.RA7
        #define PLUG_1(f)   f(D,6)                   //PORTAbits.RA6

        #define FAN_2(f)    f(D,5)                   //PORTGbits.RG0
        #define LIGHT_2(f)  f(A,7)                //PORTGbits.RG1
        #define PLUG_2(f)   f(A,6)                //PORTFbits.RF1

#endif // OLD_BOARD/NEWBOARD

/* define appliances to actutate */
    typedef struct{
        char app_name[15];
        unsigned short int app_num;
    }APPLIANCE;
 extern APPLIANCE appliances[1];
    void initializeActuators();


#endif // _ACTUATORS_H


    


    