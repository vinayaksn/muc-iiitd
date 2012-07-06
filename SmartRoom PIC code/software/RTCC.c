#include <p24FJ128GA010.h>
#include "GenericTypeDefs.h"
#include "lcd.h"
#include "defines.h"
#include "stdio.h"
#include "string.h"
#include "RTCC.h"
#include "pic_server.X/EpochTime.h"
#include "I2C.h"

#include <time.h>
#include "pic_server.X/SmartRoom.h"
#include "TCPIP Stack/TCPIP.h"




#define DEBUG 0
#define OFFSET 19800                                //GTM + 5:30 offset in seconds

unsigned char sec, minute, hour, day, date, month, year;    //variables to store the values read from rtcc
unsigned char RtccTime[20] = {10, 0, 0, 0, 0, 0, 0, 0, 0};  //array to write the initial time into the rtcc
extern void delay_1ms(unsigned char l);

/*Initialise the RTCC module*/
void RtcInit(void) {
    OpenI2C2(RTC_CONTROL, RTC_BAUD);
}

/*
 * Function to set the initial time of the rtcc to sync it up to the current time
 * The order is important as the rtcc takes input in the same order to set the parameters
 * of date and time
 */

void setRtccTime(struct tm *sync_time) {
    RtccTime[0] = sync_time->tm_sec;
    RtccTime[1] = sync_time->tm_min;
    RtccTime[2] = sync_time->tm_hour;
    RtccTime[3] = sync_time->tm_wday;
    RtccTime[4] = sync_time->tm_mday;
    RtccTime[5] = sync_time->tm_mon + 1;
    RtccTime[6] = sync_time->tm_year + 1900 - 2000;
}

/*
 * This function writes the values in RtccTIme array into the rtcc to sync it up and the clock
 * starts from the value written in to the rtcc
 */

void RtccWrite(void) {
    unsigned char temp, i, j = 0;
    STARTI2C2; // start the sequence
    IdleI2C2(); // wait for start to complete

    WriteI2C2((RTCC_SLAVEADDR << 1) | WR); // Write Slave address and set master for transmission
    IdleI2C2(); // wait for write to complete

    WriteI2C2(0x00); // write and wait till address is written
    IdleI2C2(); // wait for write to complete

    for (i = 0; i < 7; i++) // Loop to write to all the RTCC registers
    {
        temp = bintobcd(RtccTime[j++]); // convert the binary value to BCD
        WriteI2C2(temp); //write the value.
        IdleI2C2(); // wait for write to complete
    }

    STOPI2C2; // Stop sequence
    IdleI2C2(); // wait for stop to complete

}

/*Reads the register
 and converts the date and time obtained to epoch time abd returns the obtained epoch time
 */
DWORD RtccRead() {
    unsigned char temp;

    IdleI2C2();
    STARTI2C2; //start sequence
    IdleI2C2(); //wait for start to complete

    WriteI2C2((RTCC_SLAVEADDR << 1) | WR); // Write Slave address and set master for transmission
    IdleI2C2(); // wait for write to complete

    WriteI2C2(0x00); // write and wait till address is written
    IdleI2C2(); // wait for write to complete

    RESTARTI2C2; // Restart the sequence
    IdleI2C2(); // wait for restart to complete

    WriteI2C2((RTCC_SLAVEADDR << 1) | RD); //Write Slave address and set master for Reception
    IdleI2C2(); // wait for write to complete

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    sec = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    minute = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    hour = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    day = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    date = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    month = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 0; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear

    temp = ReadI2C2();
    //lcd_putchar1(temp);// Read the register value
    year = bcdtobin(temp); // Bcd to binary conversion
    I2C2CONbits.ACKDT = 1; // Acknowledgement data bit
    I2C2CONbits.ACKEN = 1; // Enable acknowledgement
    IdleI2C2(); // wait for ACKEN to clear
    I2C1CONbits.ACKDT = 0; // Acknowledgement data bit

    STOPI2C2; // Stop sequence
    while (I2C2CONbits.PEN); // wait for stop to complete

//finished reaading the registers and now the date and time are stored in the variables we declared above
/*
    time_t epoch_time; //time_t is typedef of long variable declaration to store epoch time
    struct tm local_time; //structure to store local time.
    DWORD  converted_time=0; //variable to store the epoch time.

    local_time.tm_year = 2000 + year - 1900; //store the year obtained in the parameter the year in the parameter are the last two digits hence add 2000 and subtract 1900 so that the predefined function mktime gives the correct output.
    local_time.tm_mon = month - 1; //store the month and subtract one so that the predefined mktime function gives proper output.
    local_time.tm_mday = date; //day of the month.
    local_time.tm_hour = hour; //hour of the day.
    local_time.tm_min = minute; //min .
    local_time.tm_sec = sec; // seconds.
    local_time.tm_isdst = -1; //day light saving option negative if unknown.


    epoch_time = mktime(&local_time); //function converts local date and time stored in tm structure to UTC time.
*/
       DWORD  final_time=0; //variable to store the epoch time.
       final_time =date_to_epoch(year,month,date,hour,minute,sec);//-OFFSET; //adding offset to mkae it equivalent with GTM 5:30.



    if(DEBUG)
    {
        char test[13];
        sprintf(test, "hi ""%ld", final_time);
        snprintf(RtccTime, 13, "%02d""%02d""%02d""%02d""%02d""%02d", sec, minute, hour, date, month, year);
        lcd_putchar1(RtccTime);
        lcd_putchar2(test);
    }

    return final_time;

}

/*Binary coded decimal to binary conversion*/
unsigned char bcdtobin(unsigned char bcd) {
    unsigned char bin;
    bin = ((bcd & 0xF0) >> 4)*10 + (bcd & 0x0F);
    return bin;

}

/*Binary to Binary coded decimal conversion*/
unsigned char bintobcd(unsigned char bin) {
    unsigned char bcd;
    bcd = (((bin / 10) << 4) + (bin % 10));
    return bcd;

}



/******************************************************************************
Function Prototype : unsigned long int date_to_epoch(unsigned char get_year,unsigned char get_month,unsigned char get_day,unsigned char get_hour,unsigned char get_min,unsigned char get_sec)

Include            : time_conversion.h
                     time.h

Description        : Converts local time in the format dd/mm/yy hr/min/sec to epoch time.

Arguments          : year(last two digits), month, day_of_the_month, hour, minutes, sec.

Return Value      :  unsigned long int type epoch time.

Remarks           :  This function takes input of rtcc read whic gives year month day
 *                   hour mins sec and converts it to no fo seconds form
 *                   jan 1 1970 midnight.
 *******************************************************************************/

DWORD date_to_epoch(unsigned char get_year, unsigned char get_month, unsigned char get_day, unsigned char get_hour, unsigned char get_min, unsigned char get_sec) {
    time_t epoch_time; //time_t is typedef of long variable declaration to store epoch time
    struct tm local_time; //structure to store local time.
    DWORD  converted_time;

    char test[13];


/*     FILL THE tm STRUCTURE WITH THE INFORMATION OF THE LOCAL TIME WHICH WILL THEN BE PASSED
     * AS PARAMETER TO mktime() FUNCITON WHIC CONVERTS LOCAL TIME TO EPOCH TIME RETURNS IT AS time_t
     * time_t IS TYPEDEF OF long
     */
    local_time.tm_year = 2000 + get_year - 1900; //store the year obtained in the parameter the year in the parameter are the last two digits hence add 2000 and subtract 1900 so that the predefined function mktime gives the correct output.
    local_time.tm_mon = get_month - 1; //store the month and subtract one so that the predefined mktime function gives proper output.
    local_time.tm_mday = get_day; //day of the month.
    local_time.tm_hour = get_hour; //hour of the day.
    local_time.tm_min = get_min; //min .
    local_time.tm_sec = get_sec; // seconds.
    //local_time.tm_wday = 6; // weekday optional not required for conversion.
    local_time.tm_isdst = -1; //day light saving option negative if unknown.
    local_time.tm_yday = 25; //yesterday optional.

    epoch_time = mktime(&local_time); //function converts local date and time stored in tm structure to UTC time.

    converted_time = epoch_time - OFFSET; //adding offset to mkae it equivalent with GTM 5:30.
    sprintf(test,"hi ""%ld", converted_time);
   //lcd_putchar1(test);
    return converted_time;

}


/******************************************************************************
Function Prototype : char* epoch_to_date(unsigned long int epochTime)

Include            : time_conversion.h
                     time.h

Description        : Converts epoch time to local time format dd/mm/yy hr/min/sec.

Arguments          : epochTime of type unsigned long int.

Return Value      :  char*.

Remarks           :  This function takes in epoch time and converts it to local time
 *                   format and returns the local date and time as string.
 *
 *******************************************************************************/

char* epoch_to_date(DWORD time) {
    struct tm *local_time;                  //declare structure to recive local time
    local_time = localtime(&time);     //converts epoch time to local date and time and returns the values to structure

    return asctime(local_time);             //asctime(tm *) converts the pointer structure to string and returns local date and time as char *
}



/******************************************************************************
Function Prototype : void sync_rtcc(unsigned long int epochTime)

Include            : time_conversion.h
                     time.h
                     RTCC.h

Description        : This function syncs the RTCC with the epoch time obtained from NTP server.

Arguments          : epochTime of type unsigned long int.

Return Value      :  void.

Remarks           :  This function takes in epoch time and converts it to local time
 *                   format and writes the required data into RtccTime[] buffer whic is then written
 *                   into RTCC chip so as to set the date and time recieved in the argument.
 *
 *******************************************************************************/

void sync_rtcc(DWORD time) {
    struct tm *sync_time;                           //tm * structurte to recieve the local time
    time_t q = time + OFFSET;                  //adding offset to make it equivalent to GTM 5:30
    sync_time = localtime(&q);                      //localtime converts epoch time to local date time structure
    setRtccTime(sync_time);                         //the obtianed structure is passed into setRtccTime function which fills the RtccTime buffer with the appropiate data.
    RtccWrite();                                    //issues the RtccWrite function which writes RtccTIme buffer into Rtcc to set time and date
}


/******************************************************************************
Function Prototype : void update_rtcc()

Include            : #include "pic_server.X/SmartRoom.h"
                     #include "TCPIP Stack/TCPIP.h"
                     RTCC.h
                     EpochTime.h

Description        : This function rpeatedly calls ntp server until it gets the correct epoch time
                     and then syncs the rtc with the correct time and sets the checkTime

Arguments          : none

Return Value      :  void.

Remarks           :  ------
 *
 *******************************************************************************/

void update_rtcc() {

    DWORD time;
    DWORD validtime=1340618655;

 while (1) {                                    //loop to obtain the correct ntp time
        StackTask();                            //stack calls to obtian the ntp time
        StackApplications();
        time = SNTPGetUTCSeconds();             //function call to get the ntp seconds
        if(time>validtime)                      //break condition
            break;
    }

    sync_rtcc(time);                            //on obtaining the valid epoch time sync the rtcc
    setCheckTime(time);                         //sets the check time the duration after which the time sync must be checked
}



/******************************************************************************
Function Prototype : DWORD getCurrentTime()

Include            : RTCC.h

Description        : This function calls the rtccRead function which reads the
                     current time and converts into the epoch time and rteturns it.

Arguments          : none

Return Value      :  DWORD.

Remarks           :  ------
 *
 *******************************************************************************/

DWORD getCurrentTime()
{
    DWORD time=RtccRead();                      //
    return time;
}
