/*
 * -------------------------------------------------
				LCD FUNCTIONS
 * -------------------------------------------------
*/

/* Initialize LCD controller.  Performs a software reset */

void	lcd_init(void);


/* Send characters to the LCD */

char	lcd_putchar1(char *buffer);
char	lcd_putchar2(char *buffer);
char 	lcd_clr_1_line(char *space);
char 	lcd_clr_2_line(char *space);
