/*
 * -----------------------------------------------------
				HD44780 LCD DISPLAY DRIVER
 * -----------------------------------------------------
 */


#include "TCPIPConfig.h"
#include "TCPIP Stack/TCPIP.h"
#include "defines.h"
#include "stdio.h"
#include "hd44780.h"


//extern void delay_1s(void);
//extern void delay_1ms(unsigned int l);
//extern void delay_1us(unsigned int m);

#define HD44780_BUSYFLAG 0x80

/* Send one pulse to the E signal (enable).  Mind the timing
 	constraints.  If readback is set to true, read the HD44780 data 
	pins right before the falling edge of E, and return that value */


static inline unsigned int 
hd44780_pulse_e(unsigned int readback) __attribute__((always_inline));


static inline unsigned int hd44780_pulse_e(unsigned int readback)
{
  unsigned int x;

  HD44780_E		=	1;

  Delay10us(4);

  if (readback)
    x = HD44780_READ_D4 & 0xFF;
  else
    x = 0;
  HD44780_E		=	0;
	x=x>>1;
  return x;
}


/* Send one nibble out to the LCD controller */

static void hd44780_outnibble(unsigned int n, unsigned int rs)
{

  HD44780_RW	=	0;
  if (rs)
    HD44780_RS	=	1;
  else
    HD44780_RS	=	0;

  HD44780_D4	=	(((HD44780_D4)&0xFF00)|(n<<1));
  (void)hd44780_pulse_e(false);

}


/* Send one byte to the LCD controller.  As we are
	 in 4-bit mode, we have to send two nibbles */

void hd44780_outbyte(unsigned int b, unsigned int rs)
{
  hd44780_outnibble(b >> 4, rs);
  hd44780_outnibble(b & 0xFF, rs);
}


/* Read one nibble from the LCD controller */

static unsigned int hd44780_innibble(unsigned int rs)
{
  unsigned int x;

  HD44780_RW	=	1;
  HD44780_D4D	=	0xFF;
  if (rs)
    HD44780_RS	=	1;
  else
    HD44780_RS	=	0;
  x = hd44780_pulse_e(true);
  HD44780_D4D	=	0x00;
  HD44780_RW	=	0;

  return x;
}


/* Read one byte (i.e. two nibbles) from the LCD controller */

unsigned int hd44780_inbyte(unsigned int rs)
{
  unsigned int x;

  x = hd44780_innibble(rs) << 4;
  x |= hd44780_innibble(rs);

  return x;
}


/* Wait until the busy flag is cleared */

void hd44780_wait_ready(unsigned int longwait)
{
#if USE_BUSY_BIT
  while (hd44780_incmd() & HD44780_BUSYFLAG) ;
#else
  if (longwait)
    DelayMs(2);
  else
    Delay10us(37);
#endif
}


/* Initialize the LCD controller
 * The initialization sequence has a mandatory timing so the
 	controller can safely recognize the type of interface desired.
  	This is the only area where timed waits are really needed as
  	the busy flag cannot be probed initially */

void hd44780_init(void)
{
  HD44780_RSD	=	0;
  HD44780_RWD	=	0;
  HD44780_ED	=	0;
  HD44780_D4D	=	0x00;

  DelayMs(15);											// 40 ms needed for Vcc = 2.7 V

  hd44780_outnibble(HD44780_FNSET(1, 0, 0) >> 4, 0);		// FUNCTION SET 
  DelayMs(5);

  hd44780_outnibble(HD44780_FNSET(1, 0, 0) >> 4, 0);		// FUNCTION SET 
  Delay10us(10);

  hd44780_outnibble(HD44780_FNSET(1, 0, 0) >> 4, 0);		// FUNCTION SET 
  Delay10us(37);

  hd44780_outnibble(HD44780_FNSET(0, 1, 0) >> 4, 0);		// FUNCTION SET 
  hd44780_wait_ready(false);
  hd44780_outcmd(HD44780_FNSET(0, 1, 0));					// FUNCTION SET 
  hd44780_wait_ready(false);
  hd44780_outcmd(HD44780_DISPCTL(0, 0, 0));					// DISPLAY CONTROL 
  hd44780_wait_ready(false);
}

/* Prepare the LCD controller pins for powerdown */

void hd44780_powerdown(void)
{
  HD44780_D4	=	0;
  HD44780_RS	=	0;
  HD44780_RW	=	0;
  HD44780_E		=	0;
}
