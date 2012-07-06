#ifndef __RTCC_H
#define __RTCC_H


#define RTCC_SLAVEADDR 0x68
#define WR 0
#define RD 1
#define RTC_CONTROL 0x8000		//I2C Control register value (see ucontroller datasheet)
#define RTC_BAUD 	0x9D			//I2c Baud rate value (see ucontroller datasheet)
#include <time.h>
#include "GenericTypeDefs.h"

void RtcInit(void);
void RtccWrite(void);
DWORD RtccRead();
unsigned char bcdtobin(unsigned char bcd);
unsigned char bintobcd(unsigned char bin);
void setRtccTime(struct tm *sync_time);
DWORD date_to_epoch(unsigned char get_year, unsigned char get_month, unsigned char get_day, unsigned char get_hour, unsigned char get_min, unsigned char get_sec);
DWORD getCurrentTime();
void sync_rtcc(DWORD time);
char* epoch_to_date(DWORD time);
void update_rtcc();

#endif