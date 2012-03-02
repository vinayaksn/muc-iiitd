#include "TCPIPConfig.h"
#include "I2C.h"
#include "defines.h"

/******************************************************************************
Function Prototype : void OpenI2C(unsigned int config1, unsigned int config2)

Include            : i2c.h
 
Description        : Configures the I2C module
 
Arguments          : config1 - Control register. (see ucontroller datasheet)
					 config2 - Baud rate. (see ucontroller datasheet)
	 
Return Value      :  None
					 
Remarks           :  This function configures the I2C Control register and I2C 
                     Baud Rate Generator register
*******************************************************************************/
void OpenI2C1(unsigned int config1,unsigned int config2)
{
    I2C1BRG = config2;
    I2C1CON = config1;
}

/*********************************************************************
Function Prototype : void CloseI2C(void)

Include            : i2c.h 

Description        : This function turns off the I2C module 

Arguments          : None 

Return Value       : None 

Remarks            : This function disables the I2C module and clears the
                      and Slave Interrupt Enable and Flag bits.
*********************************************************************/
void CloseI2C1(void)
{
    /* clear the I2CEN bit */
    I2C1CONbits.I2CEN = 0;

    /* clear the SI2C & MI2C Interrupt enable bits */
    IEC1bits.SI2C1IE = 0;
    IEC1bits.MI2C1IE = 0;

    /* clear the SI2C & MI2C Interrupt flag bits */
    IFS1bits.SI2C1IF = 0;
    IFS1bits.MI2C1IF = 0;
}


/******************************************************************************
Function Prototype : unsigned char ReadI2C(void)
 
Include            : i2c.h
 
Description        : This function is used to read a single byte from I2C bus
 
Arguments          : None
 
Return Value       : The return value is the data byte read from the I2C bus.
 
Remarks            : This function reads in a single byte from the I2C bus.
                     This function performs the same function as MastergetcI2C.
********************************************************************************/

unsigned char ReadI2C1(void)
{
    I2C1CONbits.RCEN = 1;
    while(I2C1CONbits.RCEN);
    I2C1STATbits.I2COV = 0;
    return(I2C1RCV);
}

/************************************************************************************************
Function Prototype : char WriteI2C(unsigned char data_out)

Include            : i2c.h
 
Description        : This function is used to write out a single data byte to the I2C device.
 
Arguments          : data_out - A single data byte to be written to the I2C bus device.
 
Return Value       : This function returns -1 if there was a write collision else it returns a 0.
 
Remarks            : This function writes  a single byte to the I2C bus.
                     This function performs the same function as MasterputcI2C.
**************************************************************************************************/

char WriteI2C1(unsigned char data_out)
{
    I2C1TRN = data_out;

    if(I2C1STATbits.IWCOL)        /* If write collision occurs,return -1 */
        return -1;
    else
    {
        return 0;
    }
}

/**********************************************************************************************
Function Prototype : void IdleI2C1(void) 

Include            : i2c.h 

Description        : This function generates Wait condition until I2C bus is Idle. 

Arguments          : None 

Return Value       : None 

Remarks            : This function will be in a wait state until Start Condition Enable bit,
                     Stop Condition Enable bit, Receive Enable bit, Acknowledge Sequence
                     Enable bit of I2C Control register and Transmit Status bit I2C Status
                     register are clear. The IdleI2C function is required since the hardware
                     I2C peripheral does not allow for spooling of bus sequence. The I2C
                     peripheral must be in Idle state before an I2C operation can be initiated
                     or write collision will be generated.
***********************************************************************************************/

void IdleI2C1(void)
{
    /* Wait until I2C Bus is Inactive */
    while(I2C1CONbits.SEN || I2C1CONbits.RSEN || I2C1CONbits.PEN || I2C1CONbits.RCEN ||
          I2C1CONbits.ACKEN || I2C1STATbits.TRSTAT);  
}

void OpenI2C2(unsigned int config1,unsigned int config2)
{
    I2C2BRG = config2;
    I2C2CON = config1;
	//IEC3bits.MI2C2IE = 1;
}

/*********************************************************************
Function Prototype : void CloseI2C(void)

Include            : i2c.h 

Description        : This function turns off the I2C module 

Arguments          : None 

Return Value       : None 

Remarks            : This function disables the I2C module and clears the
                      and Slave Interrupt Enable and Flag bits.
*********************************************************************/
void CloseI2C2(void)
{
    /* clear the I2CEN bit */
    I2C2CONbits.I2CEN = 0;

    /* clear the SI2C & MI2C Interrupt enable bits */
    IEC3bits.SI2C2IE = 0;
    IEC3bits.MI2C2IE = 0;

    /* clear the SI2C & MI2C Interrupt flag bits */
    IFS3bits.SI2C2IF = 0;
    IFS3bits.MI2C2IF = 0;
}


/******************************************************************************
Function Prototype : unsigned char ReadI2C(void)
 
Include            : i2c.h
 
Description        : This function is used to read a single byte from I2C bus
 
Arguments          : None
 
Return Value       : The return value is the data byte read from the I2C bus.
 
Remarks            : This function reads in a single byte from the I2C bus.
                     This function performs the same function as MastergetcI2C.
********************************************************************************/

unsigned char ReadI2C2(void)
{
	I2C2CONbits.RCEN = 1;		//Receive enable
    while(I2C2CONbits.RCEN);	//Wait for receive enable to clear
    I2C2STATbits.I2COV = 0;		//clear over flow flag
	return(I2C2RCV);			//Return receive buffer
}

/************************************************************************************************
Function Prototype : char WriteI2C(unsigned char data_out)

Include            : i2c.h
 
Description        : This function is used to write out a single data byte to the I2C device.
 
Arguments          : data_out - A single data byte to be written to the I2C bus device.
 
Return Value       : This function returns -1 if there was a write collision else it returns a 0.
 
Remarks            : This function writes  a single byte to the I2C bus.
                     This function performs the same function as MasterputcI2C.
**************************************************************************************************/

char WriteI2C2(unsigned char data_out)
{
    I2C2TRN = data_out;
	return(0);
}

/**********************************************************************************************
Function Prototype : void IdleI2C1(void) 

Include            : i2c.h 

Description        : This function generates Wait condition until I2C bus is Idle. 

Arguments          : None 

Return Value       : None 

Remarks            : This function will be in a wait state until Start Condition Enable bit,
                     Stop Condition Enable bit, Receive Enable bit, Acknowledge Sequence
                     Enable bit of I2C Control register and Transmit Status bit I2C Status
                     register are clear. The IdleI2C function is required since the hardware
                     I2C peripheral does not allow for spooling of bus sequence. The I2C
                     peripheral must be in Idle state before an I2C operation can be initiated
                     or write collision will be generated.
***********************************************************************************************/

void IdleI2C2(void)
{
    /* Wait until I2C Bus is Inactive */
    while(I2C2CONbits.SEN || I2C2CONbits.RSEN || I2C2CONbits.PEN || I2C2CONbits.RCEN ||
          I2C2CONbits.ACKEN || I2C2STATbits.TRSTAT);  
}



