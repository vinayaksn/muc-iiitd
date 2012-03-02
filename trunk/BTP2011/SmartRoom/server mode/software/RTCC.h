#ifndef __RTCC_H
#define __RTCC_H

#define RTCC_SLAVEADDR 0x68
#define WR 0
#define RD 1
#define RTC_CONTROL 0x8000		//I2C Control register value (see ucontroller datasheet)
#define RTC_BAUD 	0x27			//I2c Baud rate value (see ucontroller datasheet)

void RtcInit(void);
void RtccWrite(void);
unsigned char RtccRead();
unsigned char bcdtobin(unsigned char bcd);
unsigned char bintobcd(unsigned char bin);

#endif

