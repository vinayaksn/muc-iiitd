#include "TCPIPConfig.h"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
#include "I2C.h"
#include "EEPROM.h"
#include "defines.h"


void openeeprom(unsigned int control,unsigned int baud)
{
	OpenI2C1(control,baud);
}
void readeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data)
{
	IdleI2C1();
	STARTI2C1;						//start sequence
	IdleI2C1();						//wait for start to complete

	WriteI2C1((EEPROM_SLAVEADDR<<1)|WR);	// Write Slave address and set master for transmission
	IdleI2C1();						// wait for write to complete

	WriteI2C1(haddress);					// write and wait till address is written
	IdleI2C1();						// wait for write to complete

	WriteI2C1(laddress);					// write and wait till address is written
	IdleI2C1();						// wait for write to complete

	RESTARTI2C1;						// Restart the sequence
	IdleI2C1();						// wait for restart to complete

	WriteI2C1((EEPROM_SLAVEADDR<<1)|RD); 	//Write Slave address and set master for Reception
	IdleI2C1();						// wait for write to complete

	while(length)
	{
		*data = ReadI2C1();				// Read the register value
		data++;
		length--;
		if(length == 0)		I2C1CONbits.ACKDT = 1;
		else				I2C1CONbits.ACKDT = 0;
    	I2C1CONbits.ACKEN = 1;
		IdleI2C1();
	}			

	STOPI2C1;						// Stop sequence
	IdleI2C1();						// wait for stop to complete
}
void writeeeprom(unsigned char haddress,unsigned char laddress, unsigned char *data)
{
	STARTI2C1;						// start the sequence
	IdleI2C1();						// wait for start to complete

	WriteI2C1((EEPROM_SLAVEADDR<<1)|WR); 	// Write Slave address and set master for transmission
	IdleI2C1();						// wait for write to complete

	WriteI2C1(haddress);				// write and wait till address is written
	IdleI2C1();						// wait for write to complete

	WriteI2C1(laddress);				// write and wait till address is written
	IdleI2C1();						// wait for write to complete

	while(*data)					// Loop to write to all the RTCC registers
	{
		WriteI2C1(*data);			//write the value.
		data++;
		IdleI2C1();					// wait for write to complete
	}

	STOPI2C1;							// Stop sequence
	IdleI2C1();							// wait for stop to complete
}

