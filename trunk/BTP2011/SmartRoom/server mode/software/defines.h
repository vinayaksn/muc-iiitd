/*
 * --------------------------------------------
			GENERAL DEFINES
 * --------------------------------------------
 */

/* CPU frequency */
#define F_CPU 4000000UL


/* HD44780 LCD port connections */
#define HD44780_RS LATEbits.LATE5	//	PORT F	-	12th PIN
#define HD44780_RW LATEbits.LATE6	//	PORT F	-	3rd PIN
#define HD44780_E  LATEbits.LATE7	//	PORT F	-	2nd PIN

/* HD44780 LCD port DRIRECTION SETTINGS */
#define HD44780_RSD TRISEbits.TRISE5	//	PORT F	-	12th PIN
#define HD44780_RWD TRISEbits.TRISE6	//	PORT F	-	3rd PIN
#define HD44780_ED  TRISEbits.TRISE7	//	PORT F	-	2nd PIN

/* The data bits have to be not only in ascending 
	order but also consecutive. */
#define HD44780_D4 LATC					//	PORT A - FOR WRITING INTO PIN
#define HD44780_READ_D4 PORTC			//	PORT A - FOR READING PIN
#define HD44780_D4D TRISC				//	PORT A - FOR DIRECTION SETTINGS

/* Whether to read the busy flag, or fall back to
	worst-time delays. */
#define USE_BUSY_BIT 1

/* LEDs FOR TESTING */
#define LED1_TRIS	TRISDbits.TRISD1
#define LED2_TRIS	TRISDbits.TRISD2
#define LED3_TRIS	TRISDbits.TRISD3
#define LED4_TRIS	TRISDbits.TRISD4

#define LED1	LATDbits.LATD1
#define LED2	LATDbits.LATD2
#define LED3	LATDbits.LATD3
#define LED4	LATDbits.LATD4

#define LED_ON 1
#define LED_OFF 0



#define	true	1
#define	false	0

