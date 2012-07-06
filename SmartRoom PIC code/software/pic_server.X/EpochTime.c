#include "EpochTime.h"
#include "lcd.h"


DWORD checkTime = 0;
DWORD previousTime=0;

/*
 This functino gets the current epoch time as a parameter. It checks if the time to sync is up or no.
 * If the time is up it checks if the ntpTime and rtc Time differ greater than + - 3 then it syncs up with the ntp time
 *else allows it to continue as its going on.
 */
void checkSync(DWORD currentTime) {         //recieves the current time
    if (currentTime > checkTime) {
        DWORD rtcTime = RtccRead(); //get current time from rtcc
        DWORD ntpTime = SNTPGetUTCSeconds(); //get time from ntp server

        if (rtcTime < ntpTime - 3 || rtcTime > ntpTime + 3) //checking sync condition if failed the rtcc is synced again with the current ntp time
        {

            sync_rtcc(ntpTime);                 //functino call to sync up rtcc with ntpTime
//            lcd_putchar1("                ");   //clears the lcd 1st line
//            lcd_putchar1("sync required");      //debuggin message

        }
//        else
//        {
//            lcd_putchar2("                ");   //clears line 2 of lcd
//            DelayMs(100);
//            lcd_putchar2("In sync");            //debugging message

//        }
setCheckTime(getCurrentTime());                 //sets the check time which is the current time plus checking duration
    }


}

void setCheckTime(DWORD currentTime) {
    checkTime = currentTime + DURATION;                //current time + sync check duration
}

int validate(DWORD time)
{

    if(time<=1341163864||time<previousTime)
        return 0;
    else
    {
        previousTime=time;
        return 1;
    }
}