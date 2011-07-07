#include "MainDemo.h"
#if defined(ADC)
void ADCInit()
{
			//000  Vr+=Vdd  Vr-=Vss 
	AD1CON2bits.VCFG2=0;
	AD1CON2bits.VCFG1=0;
	AD1CON2bits.VCFG0=0;

	// Select the analog conversion clock to match desired data rate with processor clock=00000000=Tcy

	// Select the appropriate sample/conversion sequence 
	
	AD1CON1bits.ASAM=0;
	AD1CON1bits.SAMP=0;
	AD1CON1bits.SSRC2=1;
	AD1CON1bits.SSRC1=1;
	AD1CON1bits.SSRC0=1;
	AD1CON3=0x1003;
	
	//SELECTING FOR OF THE O/P: integer here
	AD1CON1bits.FORM1=0;
	AD1CON1bits.FORM0=0;

	AD1CON1bits.ADON=1; //TURNING ON A/D MODULE
}

void SelectChannel(unsigned int I)
{
	AD1CHS=(I&0x000f);
}

float convert()
{
	float k = (ADC1BUF0<<6) >> 6; // trim the leading 6bits
	k=(k/1024.0)*5;  // convertion to voltage
	return k;
}

float ReadADCData() // converted value in voltage
{
		AD1CON1bits.SAMP=1; // enable=1 FOR SAMPLING
		while(AD1CON1bits.DONE==0);
		AD1CON1bits.DONE=0;
		float t=convert();
		return(t);
}
#endif