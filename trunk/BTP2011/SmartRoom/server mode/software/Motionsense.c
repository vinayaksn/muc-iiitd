//#define MOTIONSENSE

#if defined (MOTIONSENSE)

#include "TCPIPConfig.h"
#include "HardwareProfile.h"
#include "TCPIP Stack/TCPIP.h"
#include <libpic30.h>

#define TIME_OFFSET 19800
#define DEFAULT_SAMPLETIME_MOTION_INPUT 1	// one second
#define DEFAULT_OUTPUT_TIMEOUT 1	// 5 minutes
#define MOTION_SAMPLE_OFF 0u
#define MOTION_SAMPLE_ON 1u
#define MOTION_SWITCH_ON 1
#define MOTION_SWITCH_OFF 0
#define MOTION_INPUT_IO BUTTON3_IO
#define MOTION_OUTPUT_IO LED1_IO
#define EEPROM_READ_BUTTON BUTTON2_IO

#define EEPROM_MAX_SIZE 100
#define EEPROM_WRITE_MAX_SIZE 35

unsigned char UnitName[16]="Reader2 "; 


unsigned char RtcMessage=0;
unsigned int ConfigureTime[7]={96,8,3,04,11,30,00};

DWORD OutputDriveHighTimer=0;
DWORD CurrentTimeWhileSampling=0;
DWORD CurrentTimeWhileDriving=0;

void ReadEEPROMMotionData();
void MotionSensorInit();
void SampleMotionSensorInput();
void UpdateSNTPTime(DWORD CurrentTimeInseconds);
unsigned char WriteMotionDataEEPROM(unsigned char MotionStatus);

unsigned char IRTxTrigger=0;
DWORD LastTxTriggerTimer=0;
unsigned char EEPROMReadFlag=0;
DWORD CurrentTimeInSec=0;
BYTE TotalBytes = 0;
DWORD EEPROMPtr=0;
DWORD EEPROMReadPtr=0;
BYTE HttpPostPending = 0;
BYTE TotalReadBytes = 0;
	BYTE UartBuff[210];
	BYTE *UartBuffPtr;

extern void StartHTTPTimeStateMachine(void);

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

void MotionSensorInit()
{

	MOTION_OUTPUT_IO = MOTION_SWITCH_OFF;
	OutputDriveHighTimer = 0;
	__builtin_write_OSCCONL(OSCCON | 0x02);
	RCFGCALbits.RTCEN = 1;
	RCFGCALbits.RTCWREN = 0; 
	RCFGCALbits.RTCPTR = 3;
	RtcMessage=0;
	ConfigRTCC();
}

void SampleMotionSensorInput()
{
	if (HttpPostPending == 0)
	{
 	if(TickGet() - CurrentTimeWhileSampling >= (TICK_SECOND*DEFAULT_SAMPLETIME_MOTION_INPUT))
        {
          // ReadEEPROMMotionData(); 
            CurrentTimeWhileSampling = TickGet();
			if (MOTION_INPUT_IO == MOTION_SAMPLE_ON) 	// if button pressed
				{
				IRTxTrigger = 1; LastTxTriggerTimer = TickGet();
				if (OutputDriveHighTimer == 0)
				{
 				MOTION_OUTPUT_IO = MOTION_SWITCH_ON;		//light led
				OutputDriveHighTimer = DEFAULT_OUTPUT_TIMEOUT *TICK_MINUTE;
				CurrentTimeWhileDriving = CurrentTimeWhileSampling;
				WriteMotionDataEEPROM(MOTION_SWITCH_ON);
				}
				else
				{
				OutputDriveHighTimer = DEFAULT_OUTPUT_TIMEOUT *TICK_MINUTE;
				CurrentTimeWhileDriving = CurrentTimeWhileSampling;
				}
				}
		}
	
 	if(OutputDriveHighTimer != 0)
		{
	if((TickGet() - CurrentTimeWhileDriving) >= OutputDriveHighTimer)

		{
				OutputDriveHighTimer = 0;
				MOTION_OUTPUT_IO = MOTION_SWITCH_OFF;
				WriteMotionDataEEPROM(MOTION_SWITCH_OFF);	
			
        }

		}

	}
 

}

unsigned char WriteMotionDataEEPROM(unsigned char MotionStatus)
{
	unsigned char TempTime=0;
	BYTE *MotionDataBuffPtr;
	BYTE  MotionDataBuff[50];

	BYTE TempBytes;


	
	MotionDataBuffPtr = MotionDataBuff;
	*MotionDataBuffPtr++ = 'L';*MotionDataBuffPtr++ = 'o';
	*MotionDataBuffPtr++ = 'a';*MotionDataBuffPtr++ = 'd';
	if (MotionStatus == MOTION_SWITCH_ON)
	{
	*MotionDataBuffPtr++ = 'O';
	*MotionDataBuffPtr++ = 'N';
	*MotionDataBuffPtr++ = ' ';
	}
	if (MotionStatus == MOTION_SWITCH_OFF)
	{
	*MotionDataBuffPtr++ = 'O';
	*MotionDataBuffPtr++ = 'F';
	*MotionDataBuffPtr++ = 'F';
	}
	
		*MotionDataBuffPtr++ = ' ';
		ReadRTCCtime();
		DateTimeBCDtoASCII();
		while (*RTCPointer)
			{
				
				TempTime = *RTCPointer++;
				*MotionDataBuffPtr++ = TempTime;
				
			}

		//	*MotionDataBuffPtr++ = '\n';
			*MotionDataBuffPtr++ = '\r';		
		RTCPointer = &OutData1[0];
		TempBytes = MotionDataBuffPtr-MotionDataBuff;
		XEEBeginWrite(EEPROMPtr);
		XEEWriteArray(MotionDataBuff,TempBytes);
		EEPROMPtr = EEPROMPtr + TempBytes;
		XEEEndWrite();
		TotalBytes += TempBytes;
		if (TotalBytes >= EEPROM_WRITE_MAX_SIZE)
			{
			TotalReadBytes=TotalBytes;
			EEPROMPtr=0;
			EEPROMReadPtr=0;
			HttpPostPending = 1;
			StartHTTPTimeStateMachine();
			}
		return(0);
				
}

void ReadEEPROMMotionData()
{
unsigned char ReadBytes=0;
if ((EEPROM_READ_BUTTON == 0u) && (EEPROMReadFlag == 0))
	{
	 EEPROMReadFlag = 1;
	EEPROMReadPtr = 0;
	TotalReadBytes = TotalBytes;
	putrsUART("Data Begin \r\n");
	}
if (EEPROMReadFlag == 1)
{
	
while(TotalReadBytes != 0)
{
	
		if (TotalReadBytes <= 200)
			ReadBytes=TotalReadBytes;
		else 
			ReadBytes = 200;
		LED2_IO ^= 1;
		UartBuffPtr = UartBuff;
		XEEBeginRead(EEPROMReadPtr);
		XEEReadArray(EEPROMReadPtr,UartBuffPtr,ReadBytes);
		XEEEndRead();
		UartBuffPtr =UartBuff+ReadBytes;
		*UartBuffPtr = '\0';
		putrsUART(UartBuff);
		TotalReadBytes=TotalReadBytes-ReadBytes;
		putrsUART("\r\n");
		putrsUART("\r\n");		
		LED5_IO ^= 1;
		EEPROMReadPtr=EEPROMReadPtr +ReadBytes;
}
	putrsUART("\r\nData End\r\n");
	LED2_IO=0;
	EEPROMReadPtr=0;
	EEPROMPtr = 0;
	TotalBytes=0;
	EEPROMReadFlag = 0;
}

}

#endif
