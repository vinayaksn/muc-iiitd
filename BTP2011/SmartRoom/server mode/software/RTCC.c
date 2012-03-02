#include "TCPIPConfig.h"
#include "defines.h"
#include "stdio.h"
#include "string.h"
#include"RTCC.h"
#include "I2C.h"

unsigned char sec,minute,hour,day,date,month,year;
unsigned char RtccTime[20]={0,0,0,0,0,0,0,0,0};
extern void delay_1ms(unsigned char l);

/*Initialise the RTCC module*/
void RtcInit(void)
{
	OpenI2C2(RTC_CONTROL, RTC_BAUD);
}

void RtccWrite(void)
{
	unsigned char temp, i,j=0;
	STARTI2C2;								// start the sequence
	IdleI2C2();								// wait for start to complete

	WriteI2C2((RTCC_SLAVEADDR<<1)|WR); 			// Write Slave address and set master for transmission
	IdleI2C2();								// wait for write to complete

	WriteI2C2(0x00);							// write and wait till address is written
	IdleI2C2();								// wait for write to complete

	for(i=0;i<7;i++)						// Loop to write to all the RTCC registers
	{
		temp 	=  bintobcd(RtccTime[j++]);	// convert the binary value to BCD
		WriteI2C2(temp);						//write the value.
		IdleI2C2();							// wait for write to complete
	}

	STOPI2C2;								// Stop sequence
	IdleI2C2();								// wait for stop to complete

}

/*Reads the register*/
unsigned char RtccRead()
{
	unsigned char temp;
	IdleI2C2();
	STARTI2C2;						//start sequence
	IdleI2C2();						//wait for start to complete

	WriteI2C2((RTCC_SLAVEADDR<<1)|WR);	// Write Slave address and set master for transmission
	IdleI2C2();						// wait for write to complete

	WriteI2C2(0x00);					// write and wait till address is written
	IdleI2C2();						// wait for write to complete
	
	RESTARTI2C2;						// Restart the sequence
	IdleI2C2();						// wait for restart to complete

	WriteI2C2((RTCC_SLAVEADDR<<1)|RD); 	//Write Slave address and set master for Reception
	IdleI2C2();						// wait for write to complete

	temp = ReadI2C2();				// Read the register value
	sec = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	minute = bcdtobin(temp);		// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
	I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	hour = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	day = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	date = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	month = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 0;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear

	temp = ReadI2C2();				// Read the register value
	year = bcdtobin(temp);			// Bcd to binary conversion
	I2C2CONbits.ACKDT = 1;			// Acknowledgement data bit
    I2C2CONbits.ACKEN = 1;			// Enable acknowledgement
	IdleI2C2();						// wait for ACKEN to clear
	I2C1CONbits.ACKDT = 0;			// Acknowledgement data bit

	STOPI2C2;						// Stop sequence
	while(I2C2CONbits.PEN);			// wait for stop to complete

	sprintf(RtccTime,"%02d""%02d""%02d""%02d""%02d""%02d",sec,minute,hour,date,month,year); 
	return 0;
}

/*Binary coded decimal to binary conversion*/
unsigned char bcdtobin(unsigned char bcd)
{
	unsigned char bin;
	bin = ((bcd & 0xF0) >> 4)*10 + (bcd & 0x0F);
	return bin;

}
/*Binary to Binary coded decimal conversion*/
unsigned char bintobcd(unsigned char bin)
{
	unsigned char bcd;
	bcd = (((bin/10)<<4) + (bin%10));
	return bcd;

}

