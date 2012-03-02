#ifndef __EEPROM_H
#define __EEPROM_H

#define EEPROM_CONTROL 0x8000		//I2C Control register value (see ucontroller datasheet)
#define EEPROM_BAUD 	0x09		//I2c Baud rate value (see ucontroller datasheet)
#define EEPROM_SLAVEADDR 0x50
#define WR	0
#define RD	1

void openeeprom(unsigned int control,unsigned int baud);
void readeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data);
void writeeeprom(unsigned char haddress,unsigned char laddress, unsigned char *data);


#endif



