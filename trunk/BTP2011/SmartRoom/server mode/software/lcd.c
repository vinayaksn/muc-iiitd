/*
 * -----------------------------------------------------
					LCD	INITIALIZE
 * -----------------------------------------------------
 */

#include "defines.h"
#include "stdio.h"
#include "TCPIPConfig.h"
#include "hd44780.h"
#include "lcd.h"

extern void DelayMs();

/* Setup the LCD controller.  First, call the hardware initialization
 	 function, then adjust the display attributes we want. */

void lcd_init(void)
{

  hd44780_init();

  /* Clear the display */

  hd44780_outcmd(HD44780_CLR);
  hd44780_wait_ready(0);


  /* Entry mode: auto-increment address counter, no display shift in effect */

  hd44780_outcmd(HD44780_ENTMODE(1, 0));
  hd44780_wait_ready(0);

  /* Enable display, activate non-blinking cursor */
  hd44780_outcmd(HD44780_DISPCTL(1, 1, 1));

  hd44780_wait_ready(0);

}

/* Send a character to the LCD display.  After a '\n' has been seen,
 		the next character will first clear the display */

char lcd_putchar1(char *buffer)
{
  //char	spaceptr[18] = "                ";	//	16 spaces to clear the one line in the lcd display
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_HOME);
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_DDADDR(0));

  while(*buffer)
    {
      hd44780_wait_ready(0);
      hd44780_outdata(*buffer);
      *buffer++;
    }

  return 0;
}

char lcd_putchar2(char *buffer)
{
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_HOME);
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_DDADDR(0x40));

  while(*buffer)
    {
      hd44780_wait_ready(0);
      hd44780_outdata(*buffer);
      *buffer++;
    }

  return 0;
}

char lcd_clr_1_line(char *space)
{
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_HOME);
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_DDADDR(0));

  while(*space)
    {
      hd44780_wait_ready(0);
      hd44780_outdata(*space);
      *space++;
    }

  return 0;
}
char lcd_clr_2_line(char *space)
{
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_HOME);
  hd44780_wait_ready(0);
  hd44780_outcmd(HD44780_DDADDR(0x40));

  while(*space)
    {
      hd44780_wait_ready(0);
      hd44780_outdata(*space);
      *space++;
    }

  return 0;
}
