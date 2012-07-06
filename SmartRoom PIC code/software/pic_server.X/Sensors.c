
#include "Sensors.h"
#include "lcd.h"
#include <p24FJ128GA010.h>
#include <string.h>

/* define new sensor specifications*/

char temp1_reading[ADC_READING_SIZE]; // array to store readings for temperature 1
//unsigned char temp2_reading[ADC_READING_SIZE]; // array to store readings for temperature 2
char pir1_reading[BIN_READING_SIZE]; // array to store readings for pir 1
// unsigned char  pir2_reading[BIN_READING_SIZE]; // array to store readings for pir 2
char reed1_reading[BIN_READING_SIZE]; // array to store readings for reed 1
// unsigned char reed2_reading[BIN_READING_SIZE]; // array to store readings for reed 2

SENSOR sensors[] = {
    {"temperature", '1', "0", ADC_READING_SIZE, (char *) temp1_reading, (float) 2, 0},
    {"pir", '1', "0", BIN_READING_SIZE, (char *) pir1_reading, (float) 1, 0},
    {"reed", '1', "0", BIN_READING_SIZE, (char *) reed1_reading, (float) 0.5, 0}
};

float adc_value;
// #define NUM_SENSORS (sizeof(sensors)/sizeof(sensors[0]))   // Number of sensors attached to node

void initializeSensors() {

#ifdef OLD_BOARD
    AD1PCFGbits.PCFG4 = 1; // setting digital i/o for PIR sensor at AN4 , pin 2 on board

    AD1PCFGbits.PCFG3 = 1; // setting digital i/o for PIR sensor at AN3 , pin 3 on board

    AD1PCFGbits.PCFG2 = 1; // setting digital i/o for REED-1 sensor at AN2 , pin 4 on board

    AD1PCFGbits.PCFG1 = 1; // setting digital i/o for REED-2 sensor at AN1 , pin 5 on board
    AD1PCFGbits.PCFG0 = 0; // setting analog i/o on AN0, Pin 6 on board, for LM35-1
    AD1PCFGbits.PCFG9 = 0; // setting analog i/o on AN11, pin 7 on board, for LM35-2

    // end of input declarations........
#elif defined NEW_BOARD

    AD1PCFGbits.PCFG0 = 0; // setting analog i/o on AN0, Pin 6 on board, for LM35-1
    //AD1PCFGbits.PCFG1=0;// setting analog i/o on AN11, pin 7 on board, for LM35-2
    AD1PCFGbits.PCFG1 = 1; // setting digital i/o on AN1 for Door 1
    AD1PCFGbits.PCFG3 = 1; // setting digital i/o on AN3 for PIR 1
    ENC28_ADPCFGbit = 1; //  setting digital i/o on AN2, for SS1 of SPI1 , ENC28J60



    _TRIS(PIR_1) = 1; // input for PIR1
    //_TRIS(PIR_2)=1;  // input for PIR2
    _TRIS(DOOR_1) = 1; // for REED-1
    //  _TRIS(DOOR_2)=1;  // for REED-2
#endif

    adcInit(); //initialize ADC module

    short int i;
    for (i = 0; i < NUM_SENSORS; i++)
        sensors[i].interrupts_per_reading = (sensors[i].samp_period / INTERRUPT_PERIOD);
}

/*******************************************************************************
 * Take reading for the sensor specified by sense_index and store the value in its
 * corresponding array.
 *
 * Parameter : sense_index (index of sensor for which reading has to be logged)
 *
 * Return :
 * none
 *******************************************************************************/

void takeReading(unsigned short int sense_index) {
    char temp[8];
    switch (sense_index) {

        case 0:
        {
#if defined Temp_Sensor_1
            adc_value = readADCData(Temp_Sensor_1); //read adc data for temperature 1
            adc_value = (adc_value * (.3)) / 6; //multiply and divide to caliberate, amplification=6
            sprintf(temp, "%4.1f,", adc_value); // convert to string
            
#endif
            break;
        }
        case 1:
        {
#if defined PIR_1
            if (_PORT(PIR_1)) {
                strcpy(temp, "1,");
            } else {
                strcpy(temp, "0,");
            }
#endif
            break;
        }

        case 2:
        {
#if defined DOOR_1
            if (_PORT(DOOR_1)) {
                strcpy(temp, "1,");
            } else {
                strcpy(temp, "0,");
            }
#endif

            break;
        }

        case 3:
        {
#if defined PIR_2
            if (_PORT(PIR_2)) {
                strcpy(temp, "1,");
            } else {
                strcpy(temp, "0,");
            }
#endif

            break;

        }
        case 4:
        {
#if defined Temp_Sensor_2
            adc_value = readADCData(Temp_Sensor_2); //read adc data for temperature 1
            adc_value = (adc_value * (.3)) / 6; //multiply and divide to caliberate, amplification=6
            sprintf(temp, "%05.2f", adc_value); // convert to string
            temp[5] = ',';
            temp[6] = '\0';
#endif

            break;
        }

        case 5:
        {
#if defined DOOR_2
            if (_PORT(DOOR_2)) {
                strcpy(temp, "1,");
            } else {
                strcpy(temp, "0,");
            }

#endif
            break;


        }

    }//end switch


    /*check for space to store reading, if not otherwise*/

    if ((sensors[sense_index].size - strlen(sensors[sense_index].readings)) >= strlen(temp))
        strcat(sensors[sense_index].readings, temp);


}

void adcInit() {
    AD1CON1bits.ADON = 0;
    AD1CON1 = 0x00E0; // SSRC<2:0> = 111 implies internal counter ends sampling and starts converting.
    AD1CSSL = 0;
    AD1CON3 = 0x1F02; // Sample time = 31Tad, Tad = 3Tcy
    AD1CON2 = 0;
    AD1CON1bits.ADON = 1; //TURNING ON A/D MODULE
}

int readADCData(unsigned int channel) {
    int adc_value;
    AD1CON1bits.ADON = 0;
    AD1CHS = (channel & 0x000f);
    AD1CON1bits.ADON = 1;

    AD1CON1bits.SAMP = 1; // enable=1 FOR SAMPLING
    while (AD1CON1bits.DONE == 0); // wait till the sampling is complete


    adc_value = ADC1BUF0;
    adc_value = adc_value & (0x03ff); // trim the leading 6bits

    return (adc_value);
}

