
#include "Actuators.h"


APPLIANCE appliances[] = {
    {"fan", 1}
    //  {{"light"},2},
    //   {{"plug"},2}
};

void initializeActuators() {

    //Output Declarations ............. set all pins as output
    _TRIS(FAN_1) = 0;
    //_TRIS(LIGHT_1)=0;
    //_TRIS(PLUG_1)=0;
    //  _TRIS(FAN_2)=0;
    //_TRIS(LIGHT_2)=0;
    //_TRIS(PLUG_2)=0;
    //_TRIS(FAN_1)=0;

    // SET all output pins as LOW

    _PORT(FAN_1) = 0;
    //  _PORT(FAN_2)=0;
    //   _PORT(LIGHT_1)=0;
    //   _PORT(LIGHT_2)=0;
    //  _PORT(PLUG_1)=0;
    //   _PORT(PLUG_2)=0;


}