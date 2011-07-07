#include "TCPIP Stack/TCPIP.h"
//#define IRReader

#if defined IRReader
///////DATA RECEPTION VARIABLES

#include "TCPIPConfig.h"
#include "HardwareProfile.h"
#include "TCPIP Stack/TCPIP.h"
#include <libpic30.h>



#define READERID 0x0100
//#define TICK_IR_DURATION (QWORD)((((TICKS_PER_SECOND)/1000ul)*320)/1000ul)
//#define TICK_IR_DURATION ((QWORD)TICK_SECOND)*(.000320)#define TICK_IR_DURATION 500

void IRTxRxInit();
//void IRTransmitter();
void IRReceiver();

unsigned char IRTxTrigger=0;
DWORD LastTxTriggerTimer=0;


/////// DATA TRANSMIT VARIABLES

#define IRTXSTARTBIT 0
#define IRTXDATABIT	1
#define IRTXSTOPBIT  2

#define IRSTARTBIT 0
#define IRSTOPBIT 1
#define IRSTARTBITRX 1
#define IRSTOPBITRX 0

#define IRTXSTARTBITLENGTH	1
#define IRTXSTOPBITLENGTH   20
#define IRTXDATABITLENGTH	16

unsigned char IRTXStartbitcounter=0;			//length of start stop and data bits
unsigned char IRTXStopbitcounter=0;
unsigned char IRTXDatabitcounter=0;
unsigned char IRTxStartTransmit=0;
unsigned char IRTxStateMachine=IRTXSTOPBIT;
unsigned char IRTXValidcount=0;
unsigned int TxDataVariable=IRSTOPBIT;
unsigned char Timerflag =0;
DWORD LastTxTimer=0;

#define IRRXVALIDCOUNTNUMBER 2
#define IRRXDATABITLENGTH 16
#define IRRXSTOPBITLENGTH 2

#define IRSTARTBITLATCH 0
#define IRDATABITLATCH  1
#define IRSTOPBITLATCH  2
#define IRVALIDDATA     3

#define HALFBITTIMERLSB 0x00
#define HALFBITTIMERMSB 0xA0
#define ONEBITTIMERLSB 0X01			///320 uS
#define ONEBITTIMERMSB 0X40			/// one timer clock =  1uS(1*320)
#define LONGBITTIMERLSB 0X00			///320 uS
#define LONGBITTIMERMSB 0X00
#define READER_TX_TIME TICK_SECOND*8
#define STOP_RX_DURATION TICK_SECOND+100


#define EXT_INT_TRIS	    (TRISEbits.TRISE8)  // INT1
#define EXT_INT_IO			(PORTEbits.RE8)
#define EXT_INT_IE			(IEC1bits.INT1IE)
#define EXT_INT_IF			(IFS1bits.INT1IF)
#define EXT_INT_EDGE		(INTCON2bits.INT1EP)
#define _XTAL_FREQ 4000000


unsigned char IRRxStartReceive=0;				//// set on IO interrupt
unsigned char IRRXstartbits = 0x00;			
unsigned int IRRXdatabits = 0x0000;
unsigned char IRRXstopbits = 0x00;
unsigned char IRRxStateMachine = 0;
unsigned char IRRXdatabitcounter=0;
unsigned char IRRXstopbitcounter = 6;
unsigned int IRRXpreviousdata = 0;
unsigned char IRRXvalidcount = 0;
unsigned char i;
unsigned char Longtimer = 0;
unsigned char InputData=0;
unsigned char IRRxTrigger = 0;
unsigned char EdgeInterruptOccured = 0;

unsigned char ResumeRxCount = 0;
unsigned char ReaderRxStopped = 0;
DWORD StopRxCount=0;

BYTE *TagDataBuffPtr;
BYTE  TagDataBuff[200];
BYTE HttpTagPostPending=0;

 
#define TICK_RX_DURATION 1
#define TICK_RX_STOP_DURATION 1

DWORD TimerValueToCheck=0;
DWORD RxTimeValue=0;

extern void StartHTTPTimeStateMachine(void);
extern unsigned char OutData1[];
extern unsigned char *RTCPointer;
extern void ReadRTCCtime(void);
unsigned char WriteTagData(unsigned int TagIDRxed);
extern void DateTimeBCDtoASCII();

unsigned char RtcMessage=0;
unsigned int ConfigureTime[7]={96,8,3,04,11,30,00};
void UpdateSNTPTime(DWORD CurrentTimeInseconds);
#define TIME_OFFSET 19800
void ConfigRTCC(void);
void IRTxRxInit()
{
	__builtin_write_OSCCONL(OSCCON | 0x02);
	RCFGCALbits.RTCEN = 1;
	RCFGCALbits.RTCWREN = 0; 
	RCFGCALbits.RTCPTR = 3;
	RtcMessage=0;
	ConfigRTCC();
	// enable timer2 for 38khz clock in pwm mode
	// Period register
	PR2 = 415;		//38 khz clock
	// Clear counter
	TMR2 = 0;
//	OC2R = 0x0000;
	OC2RS = 0xcf;		// 50% duty cycle of 38kHZ
	OC2CONbits.OCM2=1;	//OUTPUT COMAPRE IN PWM 
	OC2CONbits.OCM1=1;
	T2CONbits.TGATE=1;
	// Start timer2
	T2CONbits.TON = 1;

	EXT_INT_EDGE = 0;		//int1 positive edge
	EXT_INT_TRIS = 1;		//configured as input
	EXT_INT_IF = 0;			//interupt flag cleared
	EXT_INT_IE = 1;			//interrupt enabled
	

}

/*void IRTransmitter()
{
DWORD t;

if(IRTxTrigger == 1)			// switched on by motion sensor
	{
		EXT_INT_IF = 0;    //clear the interrupt bit
   		EXT_INT_IE = 0;
		t = TickGet();
	if((t - LastTxTimer) >= TICK_IR_DURATION)	//every 32msec (baud rate of IR)
	{

		IRTxStartTransmit=1;
		LastTxTimer = t;
	}
	if ((t- LastTxTriggerTimer) >= READER_TX_TIME) 	// switch off after one minute
	{
		IRTxTrigger = 0;
		T2CONbits.TGATE=1;
		EXT_INT_IF = 0;    //clear the interrupt bit
   		EXT_INT_IE = 1;		// switch on receiver
		
	}
	
	}

if(IRTxStartTransmit ==1)               
			{
				IRTxStartTransmit = 0;											////IO interrupt enabled to zero
				switch(IRTxStateMachine)
				{
					case IRTXSTARTBIT:					/// run the timer
					{	
						//LED1_IO=1;
						LED4_IO=0;
						TxDataVariable = IRSTARTBIT;	
						IRTxStateMachine = IRTXDATABIT;								
						break;		
					}
					case IRTXDATABIT:					///transmit the start and stop bits..
					{
				
				 		if((IRTXDatabitcounter <IRTXDATABITLENGTH))
						{ 
							//LED1_IO=0;
							LED2_IO=1;
						
							TxDataVariable = ((READERID>>((IRTXDATABITLENGTH-1)-(IRTXDatabitcounter))) & 0x01); /// RIGHT SHIFT DATA BY ONE BIT AND ANDED WITH 1(DUMMY_VALUE)--> 16 TIMES
							IRTXDatabitcounter++;
							break;
						}
						else 
						{
						
							LED2_IO=0;LED3_IO=1;
							TxDataVariable = IRSTOPBIT; ///// STOP BIT
							IRTxStateMachine = IRTXSTOPBIT;
							IRTXStopbitcounter++;	
							break;
						}
					}
					case IRTXSTOPBIT:
					{
						
						if(IRTXStopbitcounter < IRTXSTOPBITLENGTH)
						{
							IRTXStopbitcounter++;
							TxDataVariable = IRSTOPBIT; ///// STOP BIT
							IRTxStateMachine = IRTXSTOPBIT;
							break;
						}
						else
						{
							IRTXValidcount++;
					 		IRTXStartbitcounter = 0;
							IRTXStopbitcounter = 0;
							IRTXDatabitcounter = 0;
							TxDataVariable = IRSTARTBIT;
							IRTxStateMachine = IRTXDATABIT;
							LED3_IO = 0;
							break;
						}
					}
					default:
							IRTXStartbitcounter = 0;
							IRTXStopbitcounter = 0;
							IRTXDatabitcounter = 0;
							IRTxStateMachine = IRTXSTARTBIT;
							TxDataVariable = 0;
							LED4_IO=1;			//error
							break;
				}
		
		
			if (TxDataVariable == 0) T2CONbits.TGATE=1;			// control the 32khz output
			else T2CONbits.TGATE=0;
			}



}
*/
	////////////////////IR RECIEVE SECTION
void IRReceiver()
{

DWORD t;
if(IRRxTrigger == 1)			//triggered in edge interrupt 
	{
	
	if (EdgeInterruptOccured == 1) RxTimeValue = TickGet();
	EdgeInterruptOccured = 0;
 		t = TickGet();
		if ((t - RxTimeValue) >= TimerValueToCheck)		//every 8msec
			{
				IRRxStartReceive = 1;
				RxTimeValue = t;
			}
	}
if (Longtimer == 1)
	{
		t = TickGet();
		if (t-StopRxCount >= STOP_RX_DURATION)
		{
			
			LED1_IO = 0;LED2_IO = 0;LED4_IO = 1;LED5_IO = 0;LED6_IO=0;//LED3_IO = 0;
		
			EXT_INT_IF = 0;
			EXT_INT_IE = 1;
			IRRXvalidcount = 0;
			Longtimer = 0;
			IRRXdatabits = 0;
			IRRXstopbits = 0;
			IRRXvalidcount =0;
			IRRxStateMachine = IRSTARTBITLATCH;
			IRRxTrigger = 0;
			IRRXstopbitcounter = 0;
			IRRXdatabitcounter= 0;
		}
	}




	
		
		if(IRRxStartReceive == 1)
		{
			LED4_IO=0;
		
			TimerValueToCheck = TICK_IR_DURATION;
			IRRxStartReceive = 0;
			InputData = EXT_INT_IO&0x01;
		
			switch(IRRxStateMachine)
			{
				
				case IRSTARTBITLATCH:////////////////////// receive start bit
				{  
					
					if(InputData == IRSTARTBITRX)
					{
						LED7_IO=0;LED5_IO=1;	
						IRRxStateMachine = IRDATABITLATCH;
						IRRXdatabits = 0;
						break;
					}
					
					else
					{
						LED5_IO=0;	
						IRRxStateMachine = IRSTARTBITLATCH;
						IRRxTrigger = 0;
						EXT_INT_IF = 0;
						EXT_INT_IE = 1;	
						
						break;
					}
			

				}
				case IRDATABITLATCH://///////////////////// recieve data bit
				{  
				
					if(IRRXdatabitcounter < IRRXDATABITLENGTH)
					{
						
						LED5_IO=0;LED6_IO=1;
						IRRXdatabits = (IRRXdatabits<<1)+InputData;
						IRRXdatabitcounter++;
						break;
						
					}
					else
					{
						IRRXdatabits ^= 0xffff;
						IRRXstopbits = (IRRXstopbits<<1)+(InputData);
						IRRXstopbitcounter++;
						IRRXdatabitcounter= 0;
						IRRxStateMachine = IRSTOPBITLATCH;
						break;
					}
						
						
				}
			
				case IRSTOPBITLATCH://////////////////////////// recieve stop bit
				{  
			
					if(IRRXstopbitcounter < IRRXSTOPBITLENGTH)
					{
						IRRXstopbits = (IRRXstopbits<<1)+(InputData);
						IRRXstopbitcounter++;
						break;
					
					}
					else
					{
						IRRXstopbitcounter = 0;
						IRRxStateMachine = IRVALIDDATA;
						IRRxStartReceive = 1;
						LED6_IO=0;
						break;
					}
				}
				case IRVALIDDATA:
				{
					IRRxTrigger = 0;
					if((IRRXstopbits == 0) && IRRXdatabits !=0 && ((IRRXdatabits &0xff00) == 0))	// Check for Tag ID
					{
						if(IRRXdatabits == 0x0001) {LED2_IO=1;}
						else LED2_IO=0;
						IRRXstopbits = 0;
						if(IRRXvalidcount != 0 )
						{
							if(IRRXdatabits == IRRXpreviousdata)
							{	
								IRRXdatabits = 0;
								IRRxStateMachine = IRSTARTBITLATCH;
								EXT_INT_IF = 0;
								EXT_INT_IE = 1;
								IRRXvalidcount++;
								if ((IRRXvalidcount >=IRRXVALIDCOUNTNUMBER))
								{
									LED3_IO ^= 1;
									WriteTagData(IRRXpreviousdata);
									IRRXvalidcount = 0;
									if (Longtimer == 1)
										{
											EXT_INT_IE = 0;
											IRRxTrigger = 0;
											break;
										}
									else 
										{
											Longtimer = 1;
											EXT_INT_IE = 0;
											IRRxTrigger = 0;
											StopRxCount = TickGet();
											break;		

										}
				
								}
							 	break;
							}
							else
							{
								IRRXdatabits = 0;
								IRRXvalidcount =0;
								IRRxStateMachine = IRSTARTBITLATCH;
								EXT_INT_IF = 0;
								EXT_INT_IE = 1;
								break;
							}
						}
						else
						{
							IRRXpreviousdata = IRRXdatabits;
							IRRXdatabits = 0;
							IRRXvalidcount++;
							IRRxStateMachine = IRSTARTBITLATCH;
							EXT_INT_IF = 0;
							EXT_INT_IE = 1;
							break;
						}
					}
					else
					{	
						IRRXdatabits = 0;
						IRRXstopbits=0;
						IRRXvalidcount = 0;
						IRRxStateMachine = IRSTARTBITLATCH;
						EXT_INT_IF = 0;
						EXT_INT_IE = 1;
					
					}
				}
			}
	}	

}
void _ISRFAST __attribute__((__no_auto_psv__))_INT1Interrupt (void) {
   
		EXT_INT_IF = 0;    //clear the interrupt bit
   		EXT_INT_IE = 0;
		IRRxTrigger = 1;
		RxTimeValue = 0;
		TimerValueToCheck = TICK_IR_DURATION/3;
		EdgeInterruptOccured = 1;
		Longtimer = 1;
		StopRxCount = TickGet();
	
 }

unsigned char WriteTagData(unsigned int TagIDRxed)
{
	unsigned char TempTime=0;


	TagDataBuffPtr = TagDataBuff;
	*TagDataBuffPtr++ = 'R';*TagDataBuffPtr++ = 'E';*TagDataBuffPtr++ = 'A';
	*TagDataBuffPtr++ = 'D';*TagDataBuffPtr++ = 'E';*TagDataBuffPtr++ = 'R';
	*TagDataBuffPtr++ = 'I';*TagDataBuffPtr++ = 'D';
	*TagDataBuffPtr++ = ':';*TagDataBuffPtr++ = ' ';
	*TagDataBuffPtr++ = (READERID>>12&0x0f)+0x30;	//ascii value of msb nibble of tag ID
	*TagDataBuffPtr++ = (READERID>>8&0x0f)+0x30;		//ascii value of lsb nibble of tag id
	*TagDataBuffPtr++ = '\t';
	*TagDataBuffPtr++ = 'T';*TagDataBuffPtr++ = 'A';*TagDataBuffPtr++ = 'G';
	*TagDataBuffPtr++ = 'I';*TagDataBuffPtr++ = 'D';*TagDataBuffPtr++ = ':';
	*TagDataBuffPtr++ = ' ';
	*TagDataBuffPtr++ = (TagIDRxed>>4&0x0f)+0x30;	//ascii value of msb nibble of tag ID
	*TagDataBuffPtr++ = (TagIDRxed&0x0f)+0x30;		//ascii value of lsb nibble of tag id
	
	
	
		*TagDataBuffPtr++ = '\t';
		ReadRTCCtime();
		DateTimeBCDtoASCII();
		while (*RTCPointer)
			{
				
				TempTime = *RTCPointer++;
				*TagDataBuffPtr++ = TempTime;
				
			}

		//	*TagDataBuffPtr++ = '\n';
			*TagDataBuffPtr++ = '\r';
	//		*TagDataBuffPtr++ = '\n';		
		RTCPointer = &OutData1[0];
	/*	TempBytes = TagDataBuffPtr-TagDataBuff;
		XEEBeginWrite(EEPROMPtr);
		XEEWriteArray(TagDataBuff,TempBytes);
		EEPROMPtr = EEPROMPtr + TempBytes;
		XEEEndWrite();
		TotalBytes += TempBytes;
		if (TotalBytes >= EEPROM_WRITE_MAX_SIZE)
			{
			TotalReadBytes=TotalBytes;
			EEPROMPtr=0;
			EEPROMReadPtr=0;*/
			HttpTagPostPending = 1;
			StartHTTPTimeStateMachine();
		//	}
		return(0);
				
}

typedef union
   {
   struct
       {
       int BinYear;         //Bin year 07-99
       int BinFill;         //Not used
       int BinDay;          //Bin day 01-31
       int BinMonth;        //Bin month 01-12
       int BinHour;         //Bin hour 00-24
       int BinDOW;          //Bin day of week 00-06
       int BinSec;          //Bin second 00-59
       int BinMin;          //Bin minutes 00-59
       } BinField;          //Field access
   unsigned int BinData[8]; //Array to loop thru date/time values
   } BinDateTime; 
typedef union
   {
   struct
       {
       unsigned char BCDYear;  //BCD Year
       unsigned char BCDFill;  //Not used - End of Year register
       unsigned char BCDDay;   //BCD day
       unsigned char BCDMonth; //BCD Month - End of MTHDY register
       unsigned char BCDHour;  //BCD hours
       unsigned char BCDDOW;   //BCD day of week - End of WKDYHR register
       unsigned char BCDSec;   //BCD seconds
       unsigned char BCDMin;   //BCD minutes - End of MINSEC register
       } BCDField;
   unsigned char BCDReg8[8];   //Array to loop thru each field
   unsigned int BCDReg16[4];   //Array to load/read entire register
   } BCDDateTime;

BinDateTime datetime;
BCDDateTime BCDdatetime;


unsigned char OutData1[] = {"Time:00:00:00 : 00/00/2000"};
unsigned char *RTCPointer = &OutData1[0];
#define Offsethour    5   // offset in OutData : position de la val de Heure, +3 pour min, +6 pour sec
#define OffsetDate      16  // offset in OutData : position de la val de Date


/*
This routine is called once every second. 
This sends the polling command to teridian.
On reset it is in INIT state and it sends the carriage return command to teridian to
set the communication channel between Teridian and Microchip. After that it
goes to CONFIGURE state in which it sends command for event register and
RTC register.

*/
void BinToBCD( BinDateTime *pBinDateTime, BCDDateTime *pBCDDateTime) //Convert binary time to BCD time
{
unsigned int d;
   d=(pBinDateTime->BinField.BinYear)/10;
   pBCDDateTime->BCDField.BCDYear=    (d << 4) |(pBinDateTime->BinField.BinYear -d*10);
   d=(pBinDateTime->BinField.BinMonth)/10;
   pBCDDateTime->BCDField.BCDMonth= (d << 4) |(pBinDateTime->BinField.BinMonth -d*10);

   d=(pBinDateTime->BinField.BinDay)/10;
   pBCDDateTime->BCDField.BCDDay= (d << 4) |(pBinDateTime->BinField.BinDay -d*10);
   pBCDDateTime->BCDField.BCDDOW= pBinDateTime->BinField.BinDOW;

   d=(pBinDateTime->BinField.BinHour)/10;
   pBCDDateTime->BCDField.BCDHour= (d << 4) |(pBinDateTime->BinField.BinHour -d*10);
   d=(pBinDateTime->BinField.BinMin)/10;
   pBCDDateTime->BCDField.BCDMin= (d << 4) |(pBinDateTime->BinField.BinMin -d*10);
   d=(pBinDateTime->BinField.BinSec)/10;
   pBCDDateTime->BCDField.BCDSec= (d << 4) |(pBinDateTime->BinField.BinSec -d*10);
} 
void ReadRTCCtime(void){
 
   BCDDateTime BCDNow, BCDNow_1; //BCD date/time typedef
   unsigned char Ctr;            //Index counter

// Read the Date and time from the RTCVAL registers twice et compare ==, sinon relire
   do {
       RCFGCALbits.RTCPTR = 3;               //Set the RTCC pointer.
       for (Ctr=0; Ctr<4; Ctr++)             //Loop thru and set RTCVAL registers
            BCDNow_1.BCDReg16[Ctr] = RTCVAL;
       // reading twice and compare
       RCFGCALbits.RTCPTR = 3;               //Set the RTCC pointer.
       for (Ctr=0; Ctr<4; Ctr++)             //Loop thru and set RTCVAL registers
            BCDNow.BCDReg16[Ctr] = RTCVAL;

   }while(BCDNow.BCDField.BCDSec != BCDNow.BCDField.BCDSec); // make sure we have les memes Secondes

   BCDdatetime=BCDNow;    // update user's data
}

//-----------------------------------------------------------------------------
// SetDateTime(BinDateTime *)                                 
//                                                             
// - Audit binary date/time data                               
// - Convert binary date/time to binary coded decimal (BCD)   
// - Write enable RTCC registers by setting RTCWREN in RCFGCAL
// - Disable interrupts and the RTCC module                   
// - Update RTCVAL registers with BCD date/time               
// - Re-enable interrupts and the RTCC module                 
//-----------------------------------------------------------------------------
unsigned char SetDateTime(BinDateTime *pBinDateTime){
 
  BCDDateTime BCDNow;        //BCD date/time typedef
  BCDDateTime *pBCDDateTime; //Pointer to access BCD typedef
  int CurrentIPL;            //Storage for interrupt priority macros
  unsigned char Ctr;         //Index counter
  unsigned char ErrRtn=0;    //Error return ind

  //-------------------------------------------------------
  // Audit the date time values passed to this function
  // for the proper range
  //-------------------------------------------------------
// debug
  if (pBinDateTime->BinField.BinYear < 4 ||
      pBinDateTime->BinField.BinYear > 99 ||
      pBinDateTime->BinField.BinMonth > 12 ||
      pBinDateTime->BinField.BinDay > 31 ||
      pBinDateTime->BinField.BinDOW > 6 ||
      pBinDateTime->BinField.BinHour > 24 ||
      pBinDateTime->BinField.BinMin > 59 ||
      pBinDateTime->BinField.BinSec > 59){
     
      ErrRtn = 1;
      return (ErrRtn);
  }

  //-------------------------------------------------------
  // Convert binary date and time to binary coded decimal
  //-------------------------------------------------------
 pBCDDateTime = &BCDNow; //Refrence BCD typedef
 BinToBCD(pBinDateTime, pBCDDateTime); //Convert binary time to BCD time

  // **Write enable the RTCC register RCFGCAL**
  // Turn on bit RTCWEN to allow updates to the RTCC register
 __builtin_write_RTCWEN();   // A new builtin was released with C30 V3.02 to unlock and write enable the RTCC

// Initialize the Date and time in the RTCVAL registers
// These registers employ the RTCPTR from the RCFGCAL
// register. Each write instruction to the RTCVAL register
// decrements the pointer to the next RTCVAL register
// RTCPTR RTCVAL<15:8> RTCVAL<7:0>
// 11 ---- Year
// 10 Month Day
// 01 Weekday Hours
// 00 Minutes Seconds
//--------------------------------------------------------
 SET_AND_SAVE_CPU_IPL(CurrentIPL,7); //Disable global interrupts
 RCFGCALbits.RTCEN = 0; //Disable the RTCC
 RCFGCALbits.RTCPTR = 3; //Set the RTCC pointer.
 
 for (Ctr=0; Ctr<4; Ctr++) //Loop thru and set RTCVAL registers
      RTCVAL = pBCDDateTime->BCDReg16[Ctr];

 RCFGCALbits.RTCEN = 1; //Enable the RTCC
 RCFGCALbits.RTCWREN = 0; //Lock settings (turn off write enable bit)
 RESTORE_CPU_IPL(CurrentIPL); //Enable global interrupts
 return (ErrRtn);
}


#if defined(STACK_USE_SNTP_CLIENT)
//*****************************************************************************
 // offtime() takes a time_t value and generates the corresponding tm time
 // structure taking in account leap years. It also takes an offset value
 // as argument to facilitate correction for Time Zone and Day Light Savings
 // Time.
 //
 // Three character representation of month names
 ROM char *month_str[] = { 
   "Jan", "Feb", "Mar", "Apr", "May", "Jun",
   "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
     };
 
 // Three character representation of the day of the week
 ROM char *wday_str[] = { "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat" };
 
 // The following table is used to construct the string with different
 // formats produced by asctime(), each group represents a time format
 // that is composed by a sequence of 1 to 4 smaller character strings.
 ROM char tformat[9][4] = {
   { 1, 2, 3, 4 }, { 2, 3, 0, 0 }, { 3, 0, 0, 0 }, { 5, 0, 0, 0 },
   { 3, 5, 0, 0 }, { 5, 3, 0, 0 }, { 6, 0, 0, 0 }, { 5, 6, 0, 0 },
   { 6, 5, 0, 0 }
     };
 

 
 // Days on each month for regular and leap years
 ROM char days_month[2][12] = {
   { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 },
   { 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
     };
 
 // isleap() takes the argument year and returns a non zero value if it is a
 // leap year. 
 //
 int isleap(int year) {
   BYTE y;
 
   y = (( year % 4 == 0 ) && ( year % 100 != 0 || year % 400 == 0 ));
   return(y);
     }
 


 void offtime(DWORD t, long offset) {
   long days, j;
   int i, k;

#define START_WDAY 4
#define START_YEAR 70
 
   t += offset;                               // Correct for TZ/DST offset
   days = t / 86400;                          // Integer number of days
   j = t % 86400;                             // Fraction of a day
   datetime.BinField.BinHour = j / 3600;                    // Integer number of hours
   j %= 3600;                                 // Fraction of hour
   datetime.BinField.BinMin = j / 60;                       // Integer number of minutes
   datetime.BinField.BinSec = j % 60;                       // Remainder seconds
   datetime.BinField.BinDOW = ( days + START_WDAY ) % 7;   // Day of the week
 
   i = START_YEAR;
 
   // Count the number of days per year taking in account leap years
   // to determine the year number and remaining days
   while(days >= (j = isleap(i) ? 366 : 365) ) {
     i++;
     days -= j;
     }
 
   while(days < 0) {
     i--;
     days += isleap(i) ? 366 : 365;
     }
 
   datetime.BinField.BinYear = i % 100;                           // We have the year  
 
                        // And the number of days
 
   i = isleap(i);
 
   // Count the days for each month in this year to determine the month
   for(k=0; days >= days_month[i][k] ; ++k ) {
     days -= days_month[i][k];
     }
 
 	datetime.BinField.BinMonth = k+1;                            // We have the month
	datetime.BinField.BinDay = days;   
                    // And the day of the month
     }
 
 
void DateTimeBCDtoASCII(){

   OutData1[Offsethour  ]=(BCDdatetime.BCDField.BCDHour >> 4) + 0x30;
   OutData1[Offsethour+1]=(BCDdatetime.BCDField.BCDHour & 0xF) + 0x30;
   OutData1[Offsethour+3]=(BCDdatetime.BCDField.BCDMin >> 4) + 0x30;
   OutData1[Offsethour+4]=(BCDdatetime.BCDField.BCDMin & 0xF) + 0x30;
   OutData1[Offsethour+6]=(BCDdatetime.BCDField.BCDSec >> 4) + 0x30;
   OutData1[Offsethour+7]=(BCDdatetime.BCDField.BCDSec & 0xF) + 0x30;

   OutData1[OffsetDate  ]=(BCDdatetime.BCDField.BCDDay >> 4) + 0x30;
   OutData1[OffsetDate+1]=(BCDdatetime.BCDField.BCDDay & 0xF) + 0x30;
   OutData1[OffsetDate+3]=(BCDdatetime.BCDField.BCDMonth >> 4) + 0x30;
   OutData1[OffsetDate+4]=(BCDdatetime.BCDField.BCDMonth & 0xF) + 0x30;
   OutData1[OffsetDate+8]=(BCDdatetime.BCDField.BCDYear >> 4) + 0x30;
   OutData1[OffsetDate+9]=(BCDdatetime.BCDField.BCDYear & 0xF) + 0x30;
}

void UpdateSNTPTime(DWORD CurrentTimeInseconds)
{
offtime(CurrentTimeInseconds,TIME_OFFSET);
RtcMessage = SetDateTime( & datetime);
}
#endif

void ConfigRTCC(void){
   unsigned char k=0;

   datetime.BinField.BinYear=   ConfigureTime[k++];    //2008
   datetime.BinField.BinMonth=  ConfigureTime[k++];    //fev
   datetime.BinField.BinDay=    ConfigureTime[k++]; 
	datetime.BinField.BinDOW=    ConfigureTime[k++];   
   datetime.BinField.BinHour=   ConfigureTime[k++];   
   datetime.BinField.BinMin=    ConfigureTime[k++];    
   datetime.BinField.BinSec=    ConfigureTime[k++];    

   RtcMessage = SetDateTime( & datetime);
}   




#endif
