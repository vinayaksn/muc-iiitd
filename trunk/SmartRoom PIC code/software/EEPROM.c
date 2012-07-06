#include "p24FJ128GA010.h"
#include "EEPROM.h"
#include "defines.h"
#include "I2C.h"
#include "lcd.h"
#define DEBUG 0

void openeeprom(unsigned int control, unsigned int baud) {
    OpenI2C1(control, baud);
}

int readeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data) {
    char test[10]; //test array to see the output in lcd
    char cnt[10];
    char trial[10];
    char csum[3];
    int checksum = 0;
    int verifycsum = 0;
    IdleI2C1();
    STARTI2C1; //start sequence
    IdleI2C1(); //wait for start to complete

    WriteI2C1((EEPROM_SLAVEADDR << 1) | WR); // Write Slave address and set master for transmission
    IdleI2C1(); // wait for write to complete

    WriteI2C1(haddress); // write and wait till address is written
    IdleI2C1(); // wait for write to complete

    WriteI2C1(laddress); // write and wait till address is written
    IdleI2C1(); // wait for write to complete

    RESTARTI2C1; // Restart the sequence
    IdleI2C1(); // wait for restart to complete

    WriteI2C1((EEPROM_SLAVEADDR << 1) | RD); //Write Slave address and set master for Reception
    IdleI2C1(); // wait for write to complete

    /*
  loop to read the string from the address specified.
     */
    length += 1;                //increases the length to accomodate the checksum
    while (length) {
        if (length > 2) { //if the length is greater than 2 then the value being read belongs to the string else its the checksum
            *data = ReadI2C1(); // Read the register value
            checksum += *data; //add the ascci of the values being read to calculate the checksum
            data++; //increment the data counter to store the next byte
            length--; //decrement the length
        } else {
            length = length - 1; //decreases the length
            csum[length] = ReadI2C1(); // read the checksum bytes added while writing and store the two bytes in an array
        }

        if (length == 0)
            I2C1CONbits.ACKDT = 1;
        else
            I2C1CONbits.ACKDT = 0;

        I2C1CONbits.ACKEN = 1;

        IdleI2C1(); //wait for the read
    }



    STOPI2C1; // Stop sequence
    IdleI2C1(); // wait for stop to complete


    *data = '\0'; //fnished reading add the null character


    verifycsum = csum[0]&0x00FF; //masking csum[0] so as to avoid anu errors. The hardware once gave two bytes in a character
    verifycsum = (csum[1] << 8) + verifycsum; //verifycsum calculates the read checksum byshifting csum[1] by 8 to left and ading csum[0] to it


    if (DEBUG) {
        int len = strlen(data); //
        int temp = 0;
        sprintf(test, "%d"" %d"" %d    ", length, len, temp);
        sprintf(cnt, "hi %x "" %x", checksum, verifycsum);
        lcd_putchar2(data);
        lcd_putchar1(cnt);
    }

    if (checksum == verifycsum)
        return 0;
    else
        return 1;

}

void writeeeprom(unsigned char haddress, unsigned char laddress, unsigned char length, unsigned char *data) {
    //char test[10];
    int csum = 0;
    STARTI2C1; // start the sequence
    IdleI2C1(); // wait for start to complete

    WriteI2C1((EEPROM_SLAVEADDR << 1) | WR); // Write Slave address and set master for transmission
    IdleI2C1(); // wait for write to complete

    WriteI2C1(haddress); // write and wait till address is written
    IdleI2C1(); // wait for write to complete

    WriteI2C1(laddress); // write and wait till address is written
    IdleI2C1(); // wait for write to complete

    while (--length) // Loop to write to all the RTCC registers
    {
        csum += *data; //keep adding the ascii of the characters being written to calculate the checksum
        WriteI2C1(*data); //write the value.
        data++;
        IdleI2C1(); // wait for write to complete
    }
    WriteI2C1((unsigned char) (csum >> 8)); //write the higher bytes of checksum to the memory
    IdleI2C1();
    WriteI2C1((unsigned char) (csum)); //write the lower bytes of checksum to the memory
    IdleI2C1();

    STOPI2C1; // Stop sequence
    IdleI2C1(); // wait for stop to complete

    if (DEBUG) {
        char test[20];
        sprintf(test, "hi"" %x"" %x"" %d    ", csum >> 8, csum, length);
        lcd_putchar1(test);
        lcd_putchar2("reached write end");
    }
}

int readProfileFromEeprom(char *data, unsigned char length) {
    int address = 20; //address from where the ip is to be read
    int flag = true; //flag set to true to enter the while loop
    int cnt = 0;     //counter which counts the no of time the read function is being calles
    while (flag) {
        flag = readeeprom(address >> 8, address, length, data); //read the data and if the checksum is valid the flag gets 0 else 1
        cnt++;       //increases the counter at every reapeeprom call

        if (DEBUG) {
            if (flag == 1) // if flag is 1 reenter the loop and read the eeprom again
                lcd_putchar1("reading eeprom");
        }

        if (cnt == 3)       //if the checksum  does not match even after 3 read eeprom calls return a false and exit the function
            return 0;
    }

//    if (DEBUG) {
//        lcd_putchar2(data);
//    }
    return 1;              // if the funciton reachhes this point it returns a true
}

void writeProfileToEeprom(char *data, unsigned char length) {
    int address = 20; //address where the ip is to be written
    writeeeprom(address >> 8, address, length, data); //calling the write command.
}
