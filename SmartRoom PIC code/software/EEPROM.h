#ifndef __EEPROM_H
#define __EEPROM_H

#define EEPROM_CONTROL 0x8000		//I2C Control register value (see ucontroller datasheet)
#define EEPROM_BAUD 	0x25		//I2c Baud rate value (see ucontroller datasheet)
#define EEPROM_SLAVEADDR 0x50
#define WR	0
#define RD	1

struct PROFILE {
    unsigned char secretKey[33];
    unsigned char samplingRate;
    unsigned char publishingRate;
};

void openeeprom(unsigned int control, unsigned int baud);
int readeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data);
void writeeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data);
void writeProfileToEeprom(char *data, unsigned char length);
int readProfileFromEeprom(char *,unsigned char length);



#endif



