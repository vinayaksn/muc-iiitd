#ifndef __I2C_H
#define __I2C_H

#define STARTI2C1 	(I2C1CONbits.SEN = 1)
#define STOPI2C1 	(I2C1CONbits.PEN = 1)
#define RESTARTI2C1	(I2C1CONbits.RSEN = 1)
#define STARTI2C2 	(I2C2CONbits.SEN = 1)
#define STOPI2C2 	(I2C2CONbits.PEN = 1)
#define RESTARTI2C2	(I2C2CONbits.RSEN = 1)

void OpenI2C1(unsigned int config1,unsigned int config2);
void CloseI2C1(void);
unsigned char ReadI2C1(void);
char WriteI2C1(unsigned char data_out);
void IdleI2C1(void);

void OpenI2C2(unsigned int config1,unsigned int config2);
void CloseI2C2(void);
unsigned char ReadI2C2(void);
char WriteI2C2(unsigned char data_out);
void IdleI2C2(void);


#endif

