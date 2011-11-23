/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: Microchip TCP/IP Stack Help (TCPIP Stack Help.chm)
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.11b or higher
 *					Microchip C30 v3.24 or higher
 *					Microchip C18 v3.36 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author              Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti		4/19/01		Original (Rev. 1.0)
 * Nilesh Rajbharti		2/09/02		Cleanup
 * Nilesh Rajbharti		5/22/02		Rev 2.0 (See version.log for detail)
 * Nilesh Rajbharti		7/9/02		Rev 2.1 (See version.log for detail)
 * Nilesh Rajbharti		4/7/03		Rev 2.11.01 (See version log for detail)
 * Howard Schlunder		10/1/04		Beta Rev 0.9 (See version log for detail)
 * Howard Schlunder		10/8/04		Beta Rev 0.9.1 Announce support added
 * Howard Schlunder		11/29/04	Beta Rev 0.9.2 (See version log for detail)
 * Howard Schlunder		2/10/05		Rev 2.5.0
 * Howard Schlunder		1/5/06		Rev 3.00
 * Howard Schlunder		1/18/06		Rev 3.01 ENC28J60 fixes to TCP,
 *									UDP and ENC28J60 files
 * Howard Schlunder		3/01/06		Rev. 3.16 including 16-bit micro support
 * Howard Schlunder		4/12/06		Rev. 3.50 added LCD for Explorer 16
 * Howard Schlunder		6/19/06		Rev. 3.60 finished dsPIC30F support, added PICDEM.net 2 support
 * Howard Schlunder		8/02/06		Rev. 3.75 added beta DNS, NBNS, and HTTP client (GenericTCPClient.c)

services
 * Howard Schlunder		12/28/06	Rev. 4.00RC added SMTP, Telnet, substantially modified TCP layer
 * Howard Schlunder		04/09/07	Rev. 4.02 added TCPPerformanceTest, UDPPerformanceTest, Reboot and fixed

some bugs
 * Howard Schlunder		xx/xx/07	Rev. 4.03
 * HSchlunder & EWood	08/27/07	Rev. 4.11
 * HSchlunder & EWood	10/08/07	Rev. 4.13
 * HSchlunder & EWood	11/06/07	Rev. 4.16
 * HSchlunder & EWood	11/08/07	Rev. 4.17
 * HSchlunder & EWood	11/12/07	Rev. 4.18
 * HSchlunder & EWood	02/11/08	Rev. 4.19
 * HSchlunder & EWood   04/26/08    Rev. 4.50 Moved most code to other files for clarity
 * KHesky               07/07/08    Added ZG2100-specific support
 * HSchlunder & EWood   07/24/08    Rev. 4.51
 * Howard Schlunder		11/10/08    Rev. 4.55
 * Howard Schlunder		04/14/09    Rev. 5.00
 * Howard Schlunder		07/10/09    Rev. 5.10
 * Howard Schlunder		11/18/09    Rev. 5.20
 * Howard Schlunder		04/28/10    Rev. 5.25
 * Howard Schlunder		10/19/10	Rev. 5.31
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
//#define MOTIONSENSE

#if defined(STACK_USE_HTTP_SERVER)
#include "TCPIP Stack/HTTP.h"
#endif
static int counter=0;
#define THIS_IS_STACK_APPLICATION
#define myADC
// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP Stack/TCPIP.h"
//static int count=6500;
#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "TCPIP Stack/ZeroconfLinkLocal.h"
#endif
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "TCPIP Stack/ZeroconfMulticastDNS.h"
#endif

// Include functions specific to this stack application
#include "MainDemo.h"

// Used for Wi-Fi assertions
//#define WF_MODULE_NUMBER   WF_MODULE_MAIN_DEMO

// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG AppConfig;
static unsigned short wOriginalAppConfigChecksum;	// Checksum of the ROM defaults for AppConfig
BYTE AN0String[8];

// Use UART2 instead of UART1 for stdout (printf functions).  Explorer 16
// serial port hardware is on PIC UART2 module.
#if defined(EXPLORER_16) || defined(PIC24FJ256DA210_DEV_BOARD)
	int __C30_UART = 2;
#endif


// Private helper functions.
// These may or may not be present in all applications.
static void InitAppConfig(void);
static void InitializeBoard(void);
static void ProcessIO3(void);
void ProcessIO2(void);

#if defined(WF_CS_TRIS)
    static void WF_Connect(void);
#endif


#if defined (MOTIONSENSE)
	extern void MotionSensorInit();
	extern void SampleMotionSensorInput();
	extern void HTTPPostTask(void);
	extern BYTE HttpPostPending;
#endif
#if defined (STACK_USE_HTTP_SERVER)
    extern WORD HTTPGetVar(BYTE var, WORD ref, BYTE* val);
    extern void HTTPExecCmd(BYTE** argv, BYTE argc);
    char *arguments [HTTP_MAX_ARGS];
    void MakeJson(int id,char [],char [],char [],char [],char []);
    //char actuate[]="{\n\"actuate\":[\n{\"location\":*       },\n{\"appliance\":*     },\n{\"aid\":*   },\n{\"state\":*    },\n{\"ERRCODE\":*  }\n]\n}";
    char data[]="{\n\"data\":[\n{\"location\":       },\n{\"sensor\":              },\n{\"sid\":     },\n{\"reading\":          },\n{\"ERRCODE\":     }\n]\n}";
    //char status[]="{\n\"}";
    //char status[]="{\n\"status\":[\n{\"location\":*       },\n{\"appliance\":*   },\n{\"aid\":*   },\n{\"state\":*    },\n{\"ERRCODE\":*    }\n]\n}";
      char invalid_query[]="invalid query";
      char data_url[] = "/data/lab5/temperature/1/1/";
#endif

#if defined (myADC)
	//char override[10];
	int apptime;
	DWORD ADCLoadTime=0;
	//int PIR,REED1,REED2,LM,LDR,PIROUT;
	char temp[10];
	char* buff;
        char *buff_url;
	float s;
        int i,j;
        double Avg;
	//#define ADC_SAMPLE_TIME TICK_SECOND*10
	//extern void WriteADCbuff();
	extern void IRTxRxInit();
	extern unsigned char HttpADCPostPending;
	extern void HTTPADCPostTask(void);
	extern void ADCInit();
	extern void SelectChannel(unsigned int);
	void number2(float,int);
	double convert();
	double ReadADCData();
	//extern void TCPRecvTask(void);
#endif



#if defined (IRREADER)
	extern void IRTxRxInit();
	//extern void IRTransmitter();
	extern void IRReceiver();
	//extern unsigned char IRTxTrigger;
	extern unsigned char IRRxTrigger;
	//extern DWORD LastTxTriggerTimer;
	//extern unsigned char IRTxStartTransmit;
	//extern unsigned char IRTxStateMachine;
	//extern DWORD LastTxTimer;
	//#define IRTXSTARTBIT 0
	extern unsigned char HttpTagPostPending;
	extern void HTTPTagPostTask(void);
#endif


//
// PIC18 Interrupt Service Routines
//
// NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
// The interruptlow keyword is used to work around the bug when using C18
#if defined(__18CXX)
	#if defined(HI_TECH_C)
	void interrupt low_priority LowISR(void)
	#else
	#pragma interruptlow LowISR
	void LowISR(void)
	#endif
	{
	    TickUpdate();
	}

	#if defined(HI_TECH_C)
	void interrupt HighISR(void)
	#else
	#pragma interruptlow HighISR
	void HighISR(void)
	#endif
	{
	    #if defined(STACK_USE_UART2TCP_BRIDGE)
			UART2TCPBridgeISR();
		#endif

		#if defined(WF_CS_TRIS)
			WFEintISR();
		#endif // WF_CS_TRIS
	}

	#if !defined(HI_TECH_C)
	#pragma code lowVector=0x18
	void LowVector(void){_asm goto LowISR _endasm}
	#pragma code highVector=0x8
	void HighVector(void){_asm goto HighISR _endasm}
	#pragma code // Return to default code section
	#endif

// C30 and C32 Exception Handlers
// If your code gets here, you either tried to read or write
// a NULL pointer, or your application overflowed the stack
// by having too many local variables or parameters declared.
#elif defined(__C30__)
	void _ISR __attribute__((__no_auto_psv__)) _AddressError(void)
	{
	    Nop();
		Nop();
	}
	void _ISR __attribute__((__no_auto_psv__)) _StackError(void)
	{
	    Nop();
		Nop();
	}

#elif defined(__C32__)
	void _general_exception_handler(unsigned cause, unsigned status)
	{
		Nop();
		Nop();
	}
#endif
 // reset timer count to zero

//
// Main application entry point.
//
#if defined(__18CXX)
void main(void)
#else
int main(void)
#endif
{
    PORTGbits.RG14=1;
	apptime=10;
	//char d[]="PIR=0&PIROUT=0&REED1=0&REED2=0&LM=0.0000&LDR=0.0000";  // main sting to be tranferred as POST data
	//sprintf(override,"2override");
	//PIR=4;	PIROUT=13;	REED1=21; // the locations of various data insertions
	//REED2=29;	LM=34;	LDR=45;	  // in the main string being transferred by POST method
	//buff=d;
	static DWORD t = 0;
//	static DWORD dwLastIP = 0;

	// Initialize application specific hardware
	InitializeBoard();
	LED0_IO=1;
	#if defined(USE_LCD)
	// Initialize and display the stack version on the LCD
	//	LCDInit();
	//	DelayMs(100);
	//	strcpypgm2ram((char*)LCDText, "TCPStack " TCPIP_STACK_VERSION "  "
	//		"                ");
	//	LCDUpdate();
	#endif

	// Initialize stack-related hardware components that may be
	// required by the UART configuration routines
    TickInit();
    InitAppConfig();
	#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
	MPFSInit();
	#endif

#if defined (STACK_USE_HTTP_SERVER)
        HTTPInit();
        HTTPServer();
	// Initialize Stack and application related NV variables into AppConfig.
	
#endif
    // Initiates board setup process if button is depressed
	// on startup
/*   if(BUTTON0_IO == 0u)
    {
		#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
		// Invalidate the EEPROM contents if BUTTON0 is held down for more than 4 seconds
		DWORD StartTime = TickGet();
		LED_PUT(0x00);

		while(BUTTON0_IO == 0u)
		{
//			putrsUART("\r\ntest: \r\n");
			if(TickGet() - StartTime > 4*TICK_SECOND)
			{
				#if defined(EEPROM_CS_TRIS)
			    XEEBeginWrite(0x0000);
			    XEEWrite(0xFF);
			    XEEWrite(0xFF);
			    XEEEndWrite();
			    #elif defined(SPIFLASH_CS_TRIS)
			    SPIFlashBeginWrite(0x0000);
			    SPIFlashWrite(0xFF);
			    SPIFlashWrite(0xFF);
			    #endif

				#if defined(STACK_USE_UART)
				//putrsUart("\r\n\r\nBUTTON0 held for more than 4 seconds.  Default settings restored.\r\n

\r\n");
				#endif

				LED_PUT(0x0F);
				while((LONG)(TickGet() - StartTime) <= (LONG)(9*TICK_SECOND/2));
				LED_PUT(0x00);
				while(BUTTON0_IO == 0u);
				Reset();
				break;
			}
		}
		#endif

		#if defined(STACK_USE_UART)
        DoUARTConfig();
		#endif
    }
*/
	// Initialize core stack layers (MAC, ARP, TCP, UDP) and
	// application modules (HTTP, SNMP, etc.)
	LED2_IO=1;
    StackInit();

    #if defined(WF_CS_TRIS)
    WF_Connect();
    #endif

	// Initialize any application-specific modules or functions/
	// For this demo application, this only includes the
	// UART 2 TCP Bridge
	#if defined(STACK_USE_UART2TCP_BRIDGE)
	UART2TCPBridgeInit();
	#endif

	#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
    ZeroconfLLInitialize();
	#endif

	#if defined(STACK_USE_ZEROCONF_MDNS_SD)
	mDNSInitialize(MY_DEFAULT_HOST_NAME);
	mDNSServiceRegister(
		(const char *) "DemoWebServer",	// base name of the service
		"_http._tcp.local",			    // type of the service
		80,				                // TCP or UDP port, at which this service is available
		((const BYTE *)"path=/index.htm"),	// TXT info
		1,								    // auto rename the service when if

needed
		NULL,							    // no callback function
		NULL							    // no application context
		);

    mDNSMulticastFilterRegister();
	#endif

	#if defined (MOTIONSENSE)
	MotionSensorInit();
	#endif

	#if defined (IRREADER)
	IRTxRxInit();
	#endif

	#if defined (myADC)
	ADCInit();
	#endif
	# if defined (ADC)
	ADCInit();
	#endif


	// Now that all items are initialized, begin the co-operative
	// multitasking loop.  This infinite loop will continuously
	// execute all stack-related tasks, as well as your own
	// application's functions.  Custom functions should be added
	// at the end of this loop.
    // Note that this is a "co-operative mult-tasking" mechanism
    // where every task performs its tasks (whether all in one shot
    // or part of it) and returns so that other tasks can do their
    // job.
    // If a task needs very long time to do its job, it must be broken
    // down into smaller pieces so that other tasks can have CPU time.

//	PORTFbits.RF1=1;
    while(1)
    {
		//buff=d;
        // Blink LED0 (right most one) every second.
        if(TickGet() - t >= TICK_SECOND/2ul)
        {
            t = TickGet();
            LED0_IO ^= 1;
            if((counter<2000))
			counter++;

        }
		/*#if defined (ADC)
		if(TickGet() - ADCLoadTime >= ADC_SAMPLE_TIME)
			{
				ADCLoadTime = TickGet();
			//	WriteADCbuff();
			}
		#endif
		*/
        // This task performs normal stack task including checking
        // for incoming packet, type of packet and calling
        // appropriate stack entity to process it.
        StackTask();

        // This tasks invokes each of the core stack application tasks
        StackApplications();

        #if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
		ZeroconfLLProcess();
        #endif

        #if defined(STACK_USE_ZEROCONF_MDNS_SD)
        mDNSProcess();
		// Use this function to exercise service update function
		// HTTPUpdateRecord();
        #endif

		// Process application specific tasks here.
		// For this demo app, this will include the Generic TCP
		// client and servers, and the SNMP, Ping, and SNMP Trap
		// demos.  Following that, we will process any IO from
		// the inputs on the board itself.
		// Any custom modules or processing you need to do should
		// go here.
		#if defined(STACK_USE_GENERIC_TCP_CLIENT_EXAMPLE)
		GenericTCPClient();
		#endif

		#if defined(STACK_USE_GENERIC_TCP_SERVER_EXAMPLE)
		GenericTCPServer();
		#endif

		#if defined(STACK_USE_SMTP_CLIENT)
		SMTPDemo();
		#endif

		#if defined(STACK_USE_ICMP_CLIENT)
		PingDemo();
		#endif

		#if defined(STACK_USE_SNMP_SERVER) && !defined(SNMP_TRAP_DISABLED)
		//User should use one of the following SNMP demo
		// This routine demonstrates V1 or V2 trap formats with one variable binding.
		SNMPTrapDemo();

		#if defined(SNMP_STACK_USE_V2_TRAP) || defined(SNMP_V1_V2_TRAP_WITH_SNMPV3)
		//This routine provides V2 format notifications with multiple (3) variable bindings
		//User should modify this routine to send v2 trap format notifications with the required varbinds.
		//SNMPV2TrapDemo();
		#endif
		if(gSendTrapFlag)
			SNMPSendTrap();
		#endif

		#if defined(STACK_USE_BERKELEY_API)
		BerkeleyTCPClientDemo();
		BerkeleyTCPServerDemo();
		BerkeleyUDPClientDemo();
		#endif

		//ProcessIO();

		#if defined (MOTIONSENSE)
		SampleMotionSensorInput();
		if (HttpPostPending == 1) HTTPPostTask();
		#endif

		#if defined (IRREADER)
	/*	if (IRTxTrigger == 0)
		{
		LED1_IO = 0;LED2_IO=0;LED3_IO=0;
		if (BUTTON3_IO == 0)
			{
			IRTxTrigger=1;LastTxTriggerTimer = TickGet();
			IRRxTrigger = 0;
			LastTxTimer = LastTxTriggerTimer;
			IRTxStateMachine=IRTXSTARTBIT;
			LED1_IO = 1;
			}
		}
		IRTransmitter();*/
		IRReceiver();
		if (HttpTagPostPending == 1) HTTPTagPostTask();
		#endif

		#if defined (ADC)
		if(HttpADCPostPending == 1) HTTPADCPostTask();
		#endif

        // If the local IP address has changed (ex: due to DHCP lease change)
        // write the new IP address to the LCD display, UART, and Announce
        // service
		/*
		if(dwLastIP != AppConfig.MyIPAddr.Val)
		{
			dwLastIP = AppConfig.MyIPAddr.Val;

			#if defined(STACK_USE_UART)
				putrsUart((ROM char*)"\r\nNew IP Address: ");
			#endif

			DisplayIPValue(AppConfig.MyIPAddr);

			#if defined(STACK_USE_UART)
				putrsUart((ROM char*)"\r\n");
			#endif


			#if defined(STACK_USE_ANNOUNCE)
				AnnounceIP();
			#endif

            #if defined(STACK_USE_ZEROCONF_MDNS_SD)
				mDNSFillHostRecord();
			#endif
		}
		*/
	}
}

#if defined(WF_CS_TRIS)
/*****************************************************************************
 * FUNCTION: WF_Connect
 *
 * RETURNS:  None
 *
 * PARAMS:   None
 *
 *  NOTES:   Connects to an 802.11 network.  Customize this function as needed
 *           for your application.
 *****************************************************************************/
static void WF_Connect(void)
{
    UINT8 ConnectionProfileID;
    UINT8 channelList[] = MY_DEFAULT_CHANNEL_LIST;
    #if defined(WF_USE_POWER_SAVE_FUNCTIONS)
    BOOL  PsPollEnabled;
    #endif

    /* create a Connection Profile */
    WF_CPCreate(&ConnectionProfileID);

    #if defined(STACK_USE_UART)
    //putrsUart("Set SSID (");
    putsUART(AppConfig.MySSID);
    putrsUART(")\r\n");
    #endif
    WF_CPSetSsid(ConnectionProfileID,
                 AppConfig.MySSID,
                 AppConfig.SsidLength);

    #if defined(STACK_USE_UART)
    putrsUART("Set Network Type\r\n");
	#endif
    WF_CPSetNetworkType(ConnectionProfileID, MY_DEFAULT_NETWORK_TYPE);

	#if defined(STACK_USE_UART)
	putrsUART("Set Scan Type\r\n");
	#endif
    WF_CASetScanType(MY_DEFAULT_SCAN_TYPE);

    #if defined(STACK_USE_UART)
    putrsUART("Set Channel List\r\n");
    #endif
    WF_CASetChannelList(channelList, sizeof(channelList));

    #if defined(STACK_USE_UART)
    putrsUART("Set list retry count\r\n");
    #endif
    WF_CASetListRetryCount(MY_DEFAULT_LIST_RETRY_COUNT);

    #if defined(STACK_USE_UART)
    putrsUART("Set Event Notify\r\n");
    #endif
    WF_CASetEventNotificationAction(MY_DEFAULT_EVENT_NOTIFICATION_LIST);

#if defined(WF_USE_POWER_SAVE_FUNCTIONS)
    PsPollEnabled = (MY_DEFAULT_PS_POLL == WF_ENABLED);
    if (!PsPollEnabled)
    {
        /* disable low power (PS-Poll) mode */
        #if defined(STACK_USE_UART)
        putrsUART("Disable PS-Poll\r\n");
        #endif
        WF_PsPollDisable();
    }
    else
    {
        /* Enable low power (PS-Poll) mode */
        #if defined(STACK_USE_UART)
        putrsUART("Enable PS-Poll\r\n");
        #endif
        WF_PsPollEnable(TRUE);
    }
#endif

    #if defined(STACK_USE_UART)
    putrsUART("Set Beacon Timeout\r\n");
    #endif
    WF_CASetBeaconTimeout(40);

    /* Set Security */
    #if (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (Open)\r\n");
        #endif
    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WEP40)\r\n");
        #endif
    #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104)
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WEP104)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with key)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA2 with key)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with pass phrase)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA2 with pass phrase)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with key, auto-select)\r\n");
        #endif
    #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE
        #if defined(STACK_USE_UART)
        putrsUART("Set Security (WPA with pass phrase, auto-select)\r\n");
        #endif
    #endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

    WF_CPSetSecurity(ConnectionProfileID,
                     AppConfig.SecurityMode,
                     AppConfig.WepKeyIndex,   /* only used if WEP enabled */
                     AppConfig.SecurityKey,
                     AppConfig.SecurityKeyLength);
    #if defined(STACK_USE_UART)
    putrsUART("Start WiFi Connect\r\n");
    #endif
    WF_CMConnect(ConnectionProfileID);
}
#endif /* WF_CS_TRIS */



// Writes an IP address to the ethernet to be read by php script on the other end
void DisplayIPValue(IP_ADDR IPVal)
{
/*
//	printf("%u.%u.%u.%u", IPVal.v[0], IPVal.v[1], IPVal.v[2], IPVal.v[3]);
    BYTE IPDigit[4];
	BYTE i;
#ifdef USE_LCD
	BYTE j;
	//BYTE LCDPos=16;
#endif
	int k=3;
	char buf[30];
	buf[0]='I';buf[1]='P';buf[2]='=';
	for(i = 0; i < sizeof(IP_ADDR); i++)
	{
	    uitoa((WORD)IPVal.v[i], IPDigit);
		for(j = 0; j < strlen((char*)IPDigit); j++)
		{
				buf[k++] = IPDigit[j];
		}
		if(i == sizeof(IP_ADDR)-1)
			break;
		buf[k++] = '.';
		#if defined(STACK_USE_UART)
			putsUART((char *) IPDigit);
		#endif

		#ifdef USE_LCD
			for(j = 0; j < strlen((char*)IPDigit); j++)
			{
				LCDText[LCDPos++] = IPDigit[j];
			}
			if(i == sizeof(IP_ADDR)-1)
				break;
			LCDText[LCDPos++] = '.';
		#else
			if(i == sizeof(IP_ADDR)-1)
				break;
		#endif

		#if defined(STACK_USE_UART)
			while(BusyUART());
			WriteUART('.');
		#endif
		
	}



//	HTTPADCPostTask();//defined in HTTPPost.c



	#ifdef USE_LCD
		if(LCDPos < 32u)
			LCDText[LCDPos] = 0;
		LCDUpdate();
	#endif
*/
}


/****************************************************************************
  Function:
    static void ProcessIO(void)

  Description:
    Performs the task of reading the inputs and deciding the output accordingly

  Precondition:
    All initializations must be done

  Parameters:
    None - None

  Returns:
    None
  ***************************************************************************/
/*static void ProcessIO(void)
{
	int k;
	if(override[0]=='2')
	{
		//managing PIR
 		if(PORTBbits.RB4 ==1)
		{
			buff[PIROUT]='1';
			buff[PIR]='1';
			counter=0;
			PORTGbits.RG14=1;
		}
		else
		{
			buff[PIR]='0';
			if(counter>=(2*apptime))
			{
				buff[PIROUT]='0';
				PORTGbits.RG14=0;
				counter=0;
			}
		}
		//END of PIR
	
		//REED SENSOR 1
		if(PORTBbits.RB3==1)
		{
			buff[REED1]='1';
			PORTAbits.RA7=1;
		}
		else
		{
			buff[REED1]='0';
			PORTAbits.RA7=0;
		}
		//END
		
		//REED SENSOR 2
		if(PORTBbits.RB2==1)
		{
			buff[REED2]='1';
			PORTAbits.RA6=1;
		}
		else
		{
			buff[REED2]='0';
			PORTAbits.RA6=0;
		}
		//END

		//Reading temperature from AN1
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		s=s*16.67;
		sprintf(temp,"%f",s);
		for(k=LM;k<(LM+4);k++)
			buff[k]=temp[k-LM];
		//END

		//CURRENT Reading
		SelectChannel(0);
		s=ReadADCData();
		sprintf(temp,"%f",s);
		for(k=LDR;k<(LDR+4);k++)
			buff[k]=temp[k-LDR];
	}
	else
	{
		//managing PIR
 		if(PORTBbits.RB4 ==1)
		{
			buff[PIROUT]='1';
			buff[PIR]='1';
			counter=0;
		}
		else
		{
			buff[PIR]='0';
			if(counter>=(2*apptime))
			{
				buff[PIROUT]='0';
				counter=0;
			}
		}
		//END of PIR
	
		//REED SENSOR 1
		if(PORTBbits.RB3==1)
		{
			buff[REED1]='1';
		}
		else
		{
			buff[REED1]='0';
		}
		//END
		
		//REED SENSOR 2
		if(PORTBbits.RB2==1)
		{
			buff[REED2]='1';
		}
		else
		{
			buff[REED2]='0';
		}
		//END

		//Reading temperature from AN1
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		s=s*16.67;
		sprintf(temp,"%f",s);
		for(k=LM;k<(LM+4);k++)
			buff[k]=temp[k-LM];
		//END

		//CURRENT Reading
		SelectChannel(0);
		s=ReadADCData();
		sprintf(temp,"%f",s);
		for(k=LDR;k<(LDR+4);k++)
			buff[k]=temp[k-LDR];
		//END
		if(override[0]=='1')  //SET output to 1 as per override
		{
			PORTGbits.RG14=1;
		}
		else if(override[0]=='0')  //SET output to 0 as per override
		{
			PORTGbits.RG14=0;
		}
	}
	//TCPRecvTask();
	//StackTask();
	//StackApplications();
	//HTTPADCPostTask();
}*/

static void ProcessIO3(void)
{
     Avg = 0;
    for(j=0;j<50;j++){
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		//s=s*16.67;

              Avg +=s;
        }
              Avg = Avg/50;
              Avg = Avg*(.3);
		sprintf(temp,"%f",Avg);
                temp[6]='\0';
                char *cpy = (char *)malloc(sizeof(data_url)+sizeof(temp)+2);

                strcpy(cpy,data_url);
                strcat(cpy,temp);
                buff1 = cpy;
	StackTask();
	StackApplications();
	HTTPADCPostTask();
}
void ProcessIO2(void)
{
    if(strcmp(arguments[0],"actuate")==0)
    MakeJson(1,arguments[0],arguments[1],arguments[2],arguments[3],arguments[4]);

    else if(strcmp(arguments[0],"data")==0){
        if(strcmp(arguments[2],"temperature")==0){

            Avg = 0;
        //Reading temperature from AN1
        for(i=0;i<50;i++){
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		//s=s*16.67;

              Avg +=s;
        }
              Avg = Avg/50;
              Avg = Avg*(.3);
		sprintf(temp,"%f",Avg);
                temp[6]='\0';

          MakeJson(2,arguments[1],arguments[2],arguments[3],temp,"0");
    }else if(strcmp(arguments[2],"PIR")==0){
        if(PORTBbits.RB4 == 1)
		{
                    MakeJson(2,arguments[1],arguments[2],arguments[3],"1","0");
			counter=0;
		}
		else
		{
                        sprintf(temp,"%d",counter);
                                temp[3]='\0';
			///	MakeJson(2,arguments[1],arguments[2],arguments[3],temp,"0");
		if(counter>=(2*apptime))
			{
                             //sprintf(temp,"%d",counter);
                               // temp[3]='\0';
		MakeJson(2,arguments[1],arguments[2],arguments[3],"0 ",temp);
				
			}else
                    MakeJson(2,arguments[1],arguments[2],arguments[3],"1 ",temp);
		}
		//END of PIR
    }
    }
    else if(strcmp(arguments[0],"status")==0)
    
        MakeJson(3,arguments[2],arguments[3],arguments[4],arguments[5],arguments[6]);
    else
    
        buff = invalid_query;
    


}
    /*	if(override[0]=='2')
	{
		//managing PIR
 		if(PORTBbits.RB4 ==1)
		{
			buff[PIROUT]='1';
			buff[PIR]='1';
			counter=0;
			PORTGbits.RG14=1;
		}
		else
		{
			buff[PIR]='0';
			if(counter>=(2*apptime))
			{
				buff[PIROUT]='0';
				PORTGbits.RG14=0;
				counter=0;
			}
		}
		//END of PIR

		//REED SENSOR 1
		if(PORTBbits.RB3==1)
		{
			buff[REED1]='1';
			PORTAbits.RA7=1;
		}
		else
		{
			buff[REED1]='0';
			PORTAbits.RA7=0;
		}
		//END

		//REED SENSOR 2
		if(PORTBbits.RB2==1)
		{
			buff[REED2]='1';
			PORTAbits.RA6=1;
		}
		else
		{
			buff[REED2]='0';
			PORTAbits.RA6=0;
		}
		//END

		//Reading temperature from AN1
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		s=s*16.67;
		sprintf(temp,"%f",s);
		for(k=LM;k<(LM+4);k++)
			buff[k]=temp[k-LM];
		//END

		//CURRENT Reading
		SelectChannel(0);
		s=ReadADCData();
		sprintf(temp,"%f",s);
		for(k=LDR;k<(LDR+4);k++)
			buff[k]=temp[k-LDR];
	}
	else
	{
		//managing PIR
 		if(PORTBbits.RB4 ==1)
		{
			buff[PIROUT]='1';
			buff[PIR]='1';
			counter=0;
		}
		else
		{
			buff[PIR]='0';
			if(counter>=(2*apptime))
			{
				buff[PIROUT]='0';
				counter=0;
			}
		}
		//END of PIR

		//REED SENSOR 1
		if(PORTBbits.RB3==1)
		{
			buff[REED1]='1';
		}
		else
		{
			buff[REED1]='0';
		}
		//END

		//REED SENSOR 2
		if(PORTBbits.RB2==1)
		{
			buff[REED2]='1';
		}
		else
		{
			buff[REED2]='0';
		}
		//END

		//Reading temperature from AN1
		SelectChannel(1);
		s=ReadADCData();  //milivolts divided by 10 for abs temp value
		s=s*16.67;
		sprintf(temp,"%f",s);
		for(k=LM;k<(LM+4);k++)
			buff[k]=temp[k-LM];
		//END

		//CURRENT Reading
		SelectChannel(0);
		s=ReadADCData();
		sprintf(temp,"%f",s);
		for(k=LDR;k<(LDR+4);k++)
			buff[k]=temp[k-LDR];
		//END
		if(override[0]=='1')  //SET output to 1 as per override
		{
			PORTGbits.RG14=1;
		}
		else if(override[0]=='0')  //SET output to 0 as per override
		{
			PORTGbits.RG14=0;
		}
	}
	//TCPRecvTask();
//	StackTask();
//	StackApplications();
//	HTTPADCPostTask();
     */


/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
  ***************************************************************************/
static void InitializeBoard(void)
{
	// LEDs
	LED0_TRIS = 0;
	LED1_TRIS = 0;
	LED2_TRIS = 0;
	LED3_TRIS = 0;
	LED4_TRIS = 0;
	LED5_TRIS = 0;
	LED6_TRIS = 0;
	LED7_TRIS = 0;
	LED_PUT(0x00);

#if defined(__18CXX)
	// Enable 4x/5x/96MHz PLL on PIC18F87J10, PIC18F97J60, PIC18F87J50, etc.
    OSCTUNE = 0x40;

	// Set up analog features of PORTA

	// PICDEM.net 2 board has POT on AN2, Temp Sensor on AN3
	#if defined(PICDEMNET2)
		ADCON0 = 0x09;		// ADON, Channel 2
		ADCON1 = 0x0B;		// Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are analog
	#elif defined(PICDEMZ)
		ADCON0 = 0x81;		// ADON, Channel 0, Fosc/32
		ADCON1 = 0x0F;		// Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are all digital
	#elif defined(__18F87J11) || defined(_18F87J11) || defined(__18F87J50) || defined(_18F87J50)
		ADCON0 = 0x01;		// ADON, Channel 0, Vdd/Vss is +/-REF
		WDTCONbits.ADSHR = 1;
		ANCON0 = 0xFC;		// AN0 (POT) and AN1 (temp sensor) are anlog
		ANCON1 = 0xFF;
		WDTCONbits.ADSHR = 0;
	#else
		ADCON0 = 0x01;		// ADON, Channel 0
		ADCON1 = 0x0E;		// Vdd/Vss is +/-REF, AN0 is analog
	#endif
    // Enable internal PORTB pull-ups
	ADCON2 = 0xBE;		// Right justify, 20TAD ACQ time, Fosc/64 (~21.0kHz)


    INTCON2bits.RBPU = 0;

	// Configure USART
    TXSTA = 0x20;
    RCSTA = 0x90;

	// See if we can use the high baud rate setting
	#if ((GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1) <= 255
		SPBRG = (GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1;
		TXSTAbits.BRGH = 1;
	#else	// Use the low baud rate setting
		SPBRG = (GetPeripheralClock()+8*BAUD_RATE)/BAUD_RATE/16 - 1;
	#endif


	// Enable Interrupts
	RCONbits.IPEN = 1;		// Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;

    // Do a calibration A/D conversion
	#if defined(__18F87J10) || defined(__18F86J15) || defined(__18F86J10) || defined(__18F85J15) || defined(__18F85J10)

|| defined(__18F67J10) || defined(__18F66J15) || defined(__18F66J10) || defined(__18F65J15) || defined(__18F65J10) ||

defined(__18F97J60) || defined(__18F96J65) || defined(__18F96J60) || defined(__18F87J60) || defined(__18F86J65) || defined

(__18F86J60) || defined(__18F67J60) || defined(__18F66J65) || defined(__18F66J60) || \
	     defined(_18F87J10) ||  defined(_18F86J15) || defined(_18F86J10)  ||  defined(_18F85J15) ||  defined(_18F85J10)

||  defined(_18F67J10) ||  defined(_18F66J15) ||  defined(_18F66J10) ||  defined(_18F65J15) ||  defined(_18F65J10) ||

defined(_18F97J60) ||  defined(_18F96J65) ||  defined(_18F96J60) ||  defined(_18F87J60) ||  defined(_18F86J65) ||  defined

(_18F86J60) ||  defined(_18F67J60) ||  defined(_18F66J65) ||  defined(_18F66J60)
		ADCON0bits.ADCAL = 1;
	    ADCON0bits.GO = 1;
		while(ADCON0bits.GO);
		ADCON0bits.ADCAL = 0;
	#elif defined(__18F87J11) || defined(__18F86J16) || defined(__18F86J11) || defined(__18F67J11) || defined

(__18F66J16) || defined(__18F66J11) || \
		   defined(_18F87J11) ||  defined(_18F86J16) ||  defined(_18F86J11) ||  defined(_18F67J11) ||  defined

(_18F66J16) ||  defined(_18F66J11) || \
		  defined(__18F87J50) || defined(__18F86J55) || defined(__18F86J50) || defined(__18F67J50) || defined

(__18F66J55) || defined(__18F66J50) || \
		   defined(_18F87J50) ||  defined(_18F86J55) ||  defined(_18F86J50) ||  defined(_18F67J50) ||  defined

(_18F66J55) ||  defined(_18F66J50)
		ADCON1bits.ADCAL = 1;
	    ADCON0bits.GO = 1;
		while(ADCON0bits.GO);
		ADCON1bits.ADCAL = 0;
	#endif

#else	// 16-bit C30 and and 32-bit C32
	#if defined(__PIC32MX__)
	{
		// Enable multi-vectored interrupts
		INTEnableSystemMultiVectoredInt();

		// Enable optimal performance
		SYSTEMConfigPerformance(GetSystemClock());
		mOSCSetPBDIV(OSC_PB_DIV_1);				// Use 1:1 CPU Core:Peripheral clocks

		// Disable JTAG port so we get our I/O pins back, but first
		// wait 50ms so if you want to reprogram the part with
		// JTAG, you'll still have a tiny window before JTAG goes away.
		// The PIC32 Starter Kit debuggers use JTAG and therefore must not
		// disable JTAG.
		DelayMs(50);
		#if !defined(__MPLAB_DEBUGGER_PIC32MXSK) && !defined(__MPLAB_DEBUGGER_FS2)
			DDPCONbits.JTAGEN = 0;
		#endif
		LED_PUT(0x00);				// Turn the LEDs off

		CNPUESET = 0x00098000;		// Turn on weak pull ups on CN15, CN16, CN19 (RD5, RD7, RD13), which is

connected to buttons on PIC32 Starter Kit boards
	}
	#endif

	#if defined(__dsPIC33F__) || defined(__PIC24H__)
		// Crank up the core frequency
		PLLFBD = 38;				// Multiply by 40 for 160MHz VCO output (8MHz XT oscillator)
		CLKDIV = 0x0000;			// FRC: divide by 2, PLLPOST: divide by 2, PLLPRE: divide by 2

		// Port I/O
		AD1PCFGHbits.PCFG23 = 1;	// Make RA7 (BUTTON1) a digital input
		AD1PCFGHbits.PCFG20 = 1;	// Make RA12 (INT1) a digital input for MRF24WB0M PICtail Plus interrupt

		// ADC
	    AD1CHS0 = 0;				// Input to AN0 (potentiometer)
		AD1PCFGLbits.PCFG5 = 0;		// Disable digital input on AN5 (potentiometer)
		AD1PCFGLbits.PCFG4 = 0;		// Disable digital input on AN4 (TC1047A temp sensor)
	#else	//defined(__PIC24F__) || defined(__PIC32MX__)
		#if defined(__PIC24F__)
			CLKDIVbits.RCDIV = 0;		// Set 1:1 8MHz FRC postscalar
		#endif

		// ADC
	    #if defined(__PIC24FJ256DA210__) || defined(__PIC24FJ256GB210__)
	    	// Disable analog on all pins
	    	ANSA = 0x0000;
	    	ANSB = 0x0000;
	    	ANSC = 0x0000;
	    	ANSD = 0x0000;
	    	ANSE = 0x0000;
	    	ANSF = 0x0000;
	    	ANSG = 0x0000;
		#else
		    AD1CHS = 0;					// Input to AN0 (potentiometer)
			AD1PCFGbits.PCFG4 = 0;		// Disable digital input on AN4 (TC1047A temp sensor)
			#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and

PIC32MX795F512L PIMs has different pinout to accomodate USB module
				AD1PCFGbits.PCFG2 = 0;		// Disable digital input on AN2 (potentiometer)
			#else
				AD1PCFGbits.PCFG5 = 0;		// Disable digital input on AN5 (potentiometer)
			#endif
		#endif
	#endif

	// ADC
	AD1CON1 = 0x84E4;			// Turn on, auto sample start, auto-convert, 12 bit mode (on parts with a 12bit A/D)
	AD1CON2 = 0x0404;			// AVdd, AVss, int every 2 conversions, MUXA only, scan
	AD1CON3 = 0x1003;			// 16 Tad auto-sample, Tad = 3*Tcy
	#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and PIC32MX795F512L PIMs has different pinout to accomodate USB module
		AD1CSSL = 1<<2;				// Scan pot
	#else
		AD1CSSL = 1<<5;				// Scan pot
	#endif

	// UART
	#if defined(STACK_USE_UART)
		UARTTX_TRIS = 0;
		UARTRX_TRIS = 1;
		UMODE = 0x8000;			// Set UARTEN.  Note: this must be done before setting UTXEN

		#if defined(__C30__)
			USTA = 0x0400;		// UTXEN set
			#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
			#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
		#else	//defined(__C32__)
			USTA = 0x00001400;		// RXEN set, TXEN set
			#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
			#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
		#endif

		#define BAUD_ERROR ((BAUD_ACTUAL > BAUD_RATE) ? BAUD_ACTUAL-BAUD_RATE : BAUD_RATE-BAUD_ACTUAL)
		#define BAUD_ERROR_PRECENT	((BAUD_ERROR*100+BAUD_RATE/2)/BAUD_RATE)
		#if (BAUD_ERROR_PRECENT > 3)
			#warning UART frequency error is worse than 3%
		#elif (BAUD_ERROR_PRECENT > 2)
			#warning UART frequency error is worse than 2%
		#endif

		UBRG = CLOSEST_UBRG_VALUE;
	#endif

#endif

// Deassert all chip select lines so there isn't any problem with
// initialization order.  Ex: When ENC28J60 is on SPI2 with Explorer 16,
// MAX3232 ROUT2 pin will drive RF12/U2CTS ENC28J60 CS line asserted,
// preventing proper 25LC256 EEPROM operation.
#if defined(ENC_CS_TRIS)
	ENC_CS_IO = 1;
	ENC_CS_TRIS = 0;
#endif
#if defined(ENC100_CS_TRIS)
	ENC100_CS_IO = (ENC100_INTERFACE_MODE == 0);
	ENC100_CS_TRIS = 0;
#endif
#if defined(EEPROM_CS_TRIS)
	EEPROM_CS_IO = 1;
	EEPROM_CS_TRIS = 0;
#endif
#if defined(SPIRAM_CS_TRIS)
	SPIRAM_CS_IO = 1;
	SPIRAM_CS_TRIS = 0;
#endif
#if defined(SPIFLASH_CS_TRIS)
	SPIFLASH_CS_IO = 1;
	SPIFLASH_CS_TRIS = 0;
#endif
#if defined(WF_CS_TRIS)
	WF_CS_IO = 1;
	WF_CS_TRIS = 0;
#endif

#if defined(PIC24FJ64GA004_PIM)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Remove some LED outputs to regain other functions
	LED1_TRIS = 1;		// Multiplexed with BUTTON0
	LED5_TRIS = 1;		// Multiplexed with EEPROM CS
	LED7_TRIS = 1;		// Multiplexed with BUTTON1

	// Inputs
	RPINR19bits.U2RXR = 19;			//U2RX = RP19
	RPINR22bits.SDI2R = 20;			//SDI2 = RP20
	RPINR20bits.SDI1R = 17;			//SDI1 = RP17

	// Outputs
	RPOR12bits.RP25R = U2TX_IO;		//RP25 = U2TX
	RPOR12bits.RP24R = SCK2OUT_IO; 	//RP24 = SCK2
	RPOR10bits.RP21R = SDO2_IO;		//RP21 = SDO2
	RPOR7bits.RP15R = SCK1OUT_IO; 	//RP15 = SCK1
	RPOR8bits.RP16R = SDO1_IO;		//RP16 = SDO1

	AD1PCFG = 0xFFFF;				//All digital inputs - POT and Temp are on same pin as SDO1/SDI1,

which is needed for ENC28J60 commnications

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256DA210__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Inputs
	RPINR19bits.U2RXR = 11;	// U2RX = RP11
	RPINR20bits.SDI1R = 0;	// SDI1 = RP0
	RPINR0bits.INT1R = 34;	// Assign RE9/RPI34 to INT1 (input) for MRF24WB0M Wi-Fi PICtail Plus interrupt

	// Outputs
	RPOR8bits.RP16R = 5;	// RP16 = U2TX
	RPOR1bits.RP2R = 8; 	// RP2 = SCK1
	RPOR0bits.RP1R = 7;		// RP1 = SDO1

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GB210__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Configure SPI1 PPS pins (ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus cards)
	RPOR0bits.RP0R = 8;		// Assign RP0 to SCK1 (output)
	RPOR7bits.RP15R = 7;	// Assign RP15 to SDO1 (output)
	RPINR20bits.SDI1R = 23;	// Assign RP23 to SDI1 (input)

	// Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16)
	RPOR10bits.RP21R = 11;	// Assign RG6/RP21 to SCK2 (output)
	RPOR9bits.RP19R = 10;	// Assign RG8/RP19 to SDO2 (output)
	RPINR22bits.SDI2R = 26;	// Assign RG7/RP26 to SDI2 (input)

	// Configure UART2 PPS pins (MAX3232 on Explorer 16)
	#if !defined(ENC100_INTERFACE_MODE) || (ENC100_INTERFACE_MODE == 0) || defined

(ENC100_PSP_USE_INDIRECT_RAM_ADDRESSING)
	RPINR19bits.U2RXR = 10;	// Assign RF4/RP10 to U2RX (input)
	RPOR8bits.RP17R = 5;	// Assign RF5/RP17 to U2TX (output)
	#endif

	// Configure INT1 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 1)
	RPINR0bits.INT1R = 33;	// Assign RE8/RPI33 to INT1 (input)

	// Configure INT3 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 2)
	RPINR1bits.INT3R = 40;	// Assign RC3/RPI40 to INT3 (input)

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GA110__)
	__builtin_write_OSCCONL(OSCCON & 0xBF);  // Unlock PPS

	// Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16 and ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus

//cards)
	// Note that the ENC28J60/ENCX24J600/MRF24WB0M PICtails SPI PICtails must be inserted into the middle SPI2 socket,

//not the topmost SPI1 slot as normal.  This is because PIC24FJ256GA110 A3 silicon has an input-only RPI PPS pin in the

//ordinary SCK1 location.  Silicon rev A5 has this fixed, but for simplicity all demos will assume we are using SPI2.
	RPOR10bits.RP21R = 11;	// Assign RG6/RP21 to SCK2 (output)
	RPOR9bits.RP19R = 10;	// Assign RG8/RP19 to SDO2 (output)
	RPINR22bits.SDI2R = 26;	// Assign RG7/RP26 to SDI2 (input)

	// Configure UART2 PPS pins (MAX3232 on Explorer 16)
	RPINR19bits.U2RXR = 10;	// Assign RF4/RP10 to U2RX (input)
	RPOR8bits.RP17R = 5;	// Assign RF5/RP17 to U2TX (output)

	// Configure INT3 PPS pin (MRF24WB0M PICtail Plus interrupt signal)
	RPINR1bits.INT3R = 36;	// Assign RA14/RPI36 to INT3 (input)

	__builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif


#if defined(DSPICDEM11)
	// Deselect the LCD controller (PIC18F252 onboard) to ensure there is no SPI2 contention
	LCDCTRL_CS_TRIS = 0;
	LCDCTRL_CS_IO = 1;

	// Hold the codec in reset to ensure there is no SPI2 contention
	CODEC_RST_TRIS = 0;
	CODEC_RST_IO = 0;
#endif

#if defined(SPIRAM_CS_TRIS)
	SPIRAMInit();
#endif
#if defined(EEPROM_CS_TRIS)
	XEEInit();
#endif
#if defined(SPIFLASH_CS_TRIS)
	SPIFlashInit();
#endif


// my declarations not in the original demo code
// input declarations ......
	AD1PCFGbits.PCFG4=1; // setting digital i/p for PIR sensor at AN4 , pin 2 on board
	TRISBbits.TRISB4=1;  // specify AN4, pin 2 as input for PIR
	AD1PCFGbits.PCFG3=1; // setting digital i/p for REED-1 sensor at AN3 , pin 3 on board
	TRISBbits.TRISB3=1;  // specify AN3, pin 3 as input for REED-1
	AD1PCFGbits.PCFG2=1; // setting digital i/p for REED-2 sensor at AN2 , pin 4 on board
	TRISBbits.TRISB2=1;  // specify AN2, pin 4 as input for REED-2
	AD1PCFGbits.PCFG1=0; // setting analog input on AN1, Pin 5 on board, for LM35
//	TRISBbits.TRISB3=1;  // specify AN1 as input for temperature..
	AD1PCFGbits.PCFG0=0; // setting AN0, pin 6 on board, analog for LDR sensor
//	TRISBbits.TRISB0=1;  // specify AN0 as input for LDR
	// end of input declarations........
	AD1PCFGbits.PCFG11=1;
	TRISBbits.TRISB11=0;
	PORTBbits.RB11=1;
	TRISFbits.TRISF1=0;
	PORTFbits.RF1=1;
	//Output Declarations .............
	TRISGbits.TRISG14=0; // output on RG14 for PIR sensor
	TRISAbits.TRISA7=0; // output on RA7 for REED-1
	TRISAbits.TRISA6=0; // output on RA6 for REED-2
	TRISGbits.TRISG0=0; // output on RG0 for LM35
	TRISGbits.TRISG1=0; // output on RG1 for current
	// end of output declarations .......


}

/*********************************************************************
 * Function:        void InitAppConfig(void)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
// MAC Address Serialization using a MPLAB PM3 Programmer and
// Serialized Quick Turn Programming (SQTP).
// The advantage of using SQTP for programming the MAC Address is it
// allows you to auto-increment the MAC address without recompiling
// the code for each unit.  To use SQTP, the MAC address must be fixed
// at a specific location in program memory.  Uncomment these two pragmas
// that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C
// Compiler for PIC18 MCUs. Syntax will vary for other compilers.
//#pragma romdata MACROM=0x1FFF0
static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3,

MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
//#pragma romdata

static void InitAppConfig(void)
{
#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
	unsigned char vNeedToSaveDefaults = 0;
#endif

	while(1)
	{

		// Start out zeroing all AppConfig bytes to ensure all fields are
		// deterministic for checksum generation
		memset((void*)&AppConfig, 0x00, sizeof(AppConfig));

		AppConfig.Flags.bIsDHCPEnabled = TRUE;
		AppConfig.Flags.bInConfigMode = TRUE;
		memcpypgm2ram((void*)&AppConfig.MyMACAddr, (ROM void*)SerializedMACAddress, sizeof(AppConfig.MyMACAddr));
//		{
//			_prog_addressT MACAddressAddress;
//			MACAddressAddress.next = 0x157F8;
//			_memcpy_p2d24((char*)&AppConfig.MyMACAddr, MACAddressAddress, sizeof(AppConfig.MyMACAddr));
//		}
		AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2<<8ul |

MY_DEFAULT_IP_ADDR_BYTE3<<16ul | MY_DEFAULT_IP_ADDR_BYTE4<<24ul;
		AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
		AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2<<8ul | MY_DEFAULT_MASK_BYTE3<<16ul |

MY_DEFAULT_MASK_BYTE4<<24ul;
		AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
		AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2<<8ul | MY_DEFAULT_GATE_BYTE3<<16ul

| MY_DEFAULT_GATE_BYTE4<<24ul;
		AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2<<8ul  |

MY_DEFAULT_PRIMARY_DNS_BYTE3<<16ul  | MY_DEFAULT_PRIMARY_DNS_BYTE4<<24ul;
		AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2<<8ul  |

MY_DEFAULT_SECONDARY_DNS_BYTE3<<16ul  | MY_DEFAULT_SECONDARY_DNS_BYTE4<<24ul;


		// SNMP Community String configuration
		#if defined(STACK_USE_SNMP_SERVER)
		{
			BYTE i;
			static ROM char * ROM cReadCommunities[] = SNMP_READ_COMMUNITIES;
			static ROM char * ROM cWriteCommunities[] = SNMP_WRITE_COMMUNITIES;
			ROM char * strCommunity;

			for(i = 0; i < SNMP_MAX_COMMUNITY_SUPPORT; i++)
			{
				// Get a pointer to the next community string
				strCommunity = cReadCommunities[i];
				if(i >= sizeof(cReadCommunities)/sizeof(cReadCommunities[0]))
					strCommunity = "";

				// Ensure we don't buffer overflow.  If your code gets stuck here,
				// it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
				// is either too small or one of your community string lengths
				// (SNMP_READ_COMMUNITIES) are too large.  Fix either.
				if(strlenpgm(strCommunity) >= sizeof(AppConfig.readCommunity[0]))
					while(1);

				// Copy string into AppConfig
				strcpypgm2ram((char*)AppConfig.readCommunity[i], strCommunity);

				// Get a pointer to the next community string
				strCommunity = cWriteCommunities[i];
				if(i >= sizeof(cWriteCommunities)/sizeof(cWriteCommunities[0]))
					strCommunity = "";

				// Ensure we don't buffer overflow.  If your code gets stuck here,
				// it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
				// is either too small or one of your community string lengths
				// (SNMP_WRITE_COMMUNITIES) are too large.  Fix either.
				if(strlenpgm(strCommunity) >= sizeof(AppConfig.writeCommunity[0]))
					while(1);

				// Copy string into AppConfig
				strcpypgm2ram((char*)AppConfig.writeCommunity[i], strCommunity);
			}
		}
		#endif


		// Load the default NetBIOS Host Name
		memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*)MY_DEFAULT_HOST_NAME, 16);
		FormatNetBIOSName(AppConfig.NetBIOSName);

		#if defined(WF_CS_TRIS)
			// Load the default SSID Name
			WF_ASSERT(sizeof(MY_DEFAULT_SSID_NAME) <= sizeof(AppConfig.MySSID));
			memcpypgm2ram(AppConfig.MySSID, (ROM void*)MY_DEFAULT_SSID_NAME, sizeof(MY_DEFAULT_SSID_NAME));
			AppConfig.SsidLength = sizeof(MY_DEFAULT_SSID_NAME) - 1;

	        AppConfig.SecurityMode = MY_DEFAULT_WIFI_SECURITY_MODE;
	        AppConfig.WepKeyIndex  = MY_DEFAULT_WEP_KEY_INDEX;

	        #if (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_OPEN)
	            memset(AppConfig.SecurityKey, 0x00, sizeof(AppConfig.SecurityKey));
	            AppConfig.SecurityKeyLength = 0;

	        #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_40
	            memcpypgm2ram(AppConfig.SecurityKey, (ROM void*)MY_DEFAULT_WEP_KEYS_40, sizeof(MY_DEFAULT_WEP_KEYS_40)- 1);
	            AppConfig.SecurityKeyLength = sizeof(MY_DEFAULT_WEP_KEYS_40) - 1;

	        #elif MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WEP_104
			    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*)MY_DEFAULT_WEP_KEYS_104, sizeof(MY_DEFAULT_WEP_KEYS_104) - 1);
			    AppConfig.SecurityKeyLength = sizeof(MY_DEFAULT_WEP_KEYS_104) - 1;

	        #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_KEY)       || \
	              (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_KEY)      || \
	              (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_KEY)
			    memcpypgm2ram(AppConfig.SecurityKey, (ROM void*)MY_DEFAULT_PSK, sizeof(MY_DEFAULT_PSK) - 1);
			    AppConfig.SecurityKeyLength = sizeof(MY_DEFAULT_PSK) - 1;

	        #elif (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_WITH_PASS_PHRASE)     || \
	              (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA2_WITH_PASS_PHRASE)    || \
	              (MY_DEFAULT_WIFI_SECURITY_MODE == WF_SECURITY_WPA_AUTO_WITH_PASS_PHRASE)
	            memcpypgm2ram(AppConfig.SecurityKey, (ROM void*)MY_DEFAULT_PSK_PHRASE, sizeof(MY_DEFAULT_PSK_PHRASE) -1);
	            AppConfig.SecurityKeyLength = sizeof(MY_DEFAULT_PSK_PHRASE) - 1;

	        #else
	            #error "No security defined"
	        #endif /* MY_DEFAULT_WIFI_SECURITY_MODE */

		#endif

		// Compute the checksum of the AppConfig defaults as loaded from ROM
		wOriginalAppConfigChecksum = CalcIPChecksum((BYTE*)&AppConfig, sizeof(AppConfig));

		#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
		{

			NVM_VALIDATION_STRUCT NVMValidationStruct;

			// Check to see if we have a flag set indicating that we need to
			// save the ROM default AppConfig values.
			if(vNeedToSaveDefaults)
				SaveAppConfig(&AppConfig);

			// Read the NVMValidation record and AppConfig struct out of EEPROM/Flash
			#if defined(EEPROM_CS_TRIS)
			{
				XEEReadArray(0x0000, (BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
				XEEReadArray(sizeof(NVMValidationStruct), (BYTE*)&AppConfig, sizeof(AppConfig));
			}
			#elif defined(SPIFLASH_CS_TRIS)
			{
				SPIFlashReadArray(0x0000, (BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
				SPIFlashReadArray(sizeof(NVMValidationStruct), (BYTE*)&AppConfig, sizeof(AppConfig));
			}
			#endif

			// Check EEPROM/Flash validitity.  If it isn't valid, set a flag so
			// that we will save the ROM default values on the next loop
			// iteration.

			if((NVMValidationStruct.wConfigurationLength != sizeof(AppConfig)) ||
			   (NVMValidationStruct.wOriginalChecksum != wOriginalAppConfigChecksum) ||
			   (NVMValidationStruct.wCurrentChecksum != CalcIPChecksum((BYTE*)&AppConfig, sizeof(AppConfig))))
			{
				// Check to ensure that the vNeedToSaveDefaults flag is zero,
				// indicating that this is the first iteration through the do
				// loop.  If we have already saved the defaults once and the
				// EEPROM/Flash still doesn't pass the validity check, then it
				// means we aren't successfully reading or writing to the
				// EEPROM/Flash.  This means you have a hardware error and/or				// SPI configuration error.
				if(vNeedToSaveDefaults)
				{

					while(1);

				}

				// Set flag and restart loop to load ROM defaults and save them
				vNeedToSaveDefaults = 1;

				continue;
			}

			// If we get down here, it means the EEPROM/Flash has valid contents
			// and either matches the ROM defaults or previously matched and
			// was run-time reconfigured by the user.  In this case, we shall
			// use the contents loaded from EEPROM/Flash.
			break;

		}
		#endif
		break;

	}

}

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)
void SaveAppConfig(const APP_CONFIG *ptrAppConfig)
{
	NVM_VALIDATION_STRUCT NVMValidationStruct;

	// Ensure adequate space has been reserved in non-volatile storage to
	// store the entire AppConfig structure.  If you get stuck in this while(1)
	// trap, it means you have a design time misconfiguration in TCPIPConfig.h.
	// You must increase MPFS_RESERVE_BLOCK to allocate more space.
	#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
		if(sizeof(NVMValidationStruct) + sizeof(AppConfig) > MPFS_RESERVE_BLOCK)
			while(1);
	#endif

	// Get proper values for the validation structure indicating that we can use
	// these EEPROM/Flash contents on future boot ups
	NVMValidationStruct.wOriginalChecksum = wOriginalAppConfigChecksum;
	NVMValidationStruct.wCurrentChecksum = CalcIPChecksum((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
	NVMValidationStruct.wConfigurationLength = sizeof(APP_CONFIG);

	// Write the validation struct and current AppConfig contents to EEPROM/Flash
	#if defined(EEPROM_CS_TRIS)
	    XEEBeginWrite(0x0000);
	    XEEWriteArray((BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
		XEEWriteArray((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
    #else
		SPIFlashBeginWrite(0x0000);
		SPIFlashWriteArray((BYTE*)&NVMValidationStruct, sizeof(NVMValidationStruct));
		SPIFlashWriteArray((BYTE*)ptrAppConfig, sizeof(APP_CONFIG));
    #endif
}
#endif



#if defined(myADC)
	/* function ADCInit .... return type void ...... arguments void
		Setings::
			Initializes the ADC module
			Conversion starts when we set the SAMP bit to 1 and ends after 31Tad
			After Conversion DONE bit goes high and the data ca be read from ADC1BUF0
	*/
	void ADCInit()
	{
		AD1CON1bits.ADON=0;
		AD1CON1 = 0x00E0; // SSRC<2:0> = 111 implies internal counter ends sampling and starts converting.
		AD1CSSL = 0;
		AD1CON3 = 0x1F02; // Sample time = 31Tad, Tad = 3Tcy
		AD1CON2 = 0;
		AD1CON1bits.ADON=1; //TURNING ON A/D MODULE
	}


	/* function SelectChannel ...... return type: void ............... arguments : int [the pin no. to be read]
			Used the select the ADC or PORTB pin currently being read from
	*/
	void SelectChannel(unsigned int I)
	{
		AD1CON1bits.ADON=0;
		AD1CHS=(I&0x000f);
		AD1CON1bits.ADON=1;
	}



	/*function convert..... return: double ...... arguments: void
		to get float temperature value from ADC buffer reading
	*/
	double convert(void)
	{
		int adc;
		adc=ADC1BUF0;
		adc=adc&(0x03ff); // trim the leading 6bits
		//double k=(double)adc*0.00319;

		return adc;
	}



	/*function ReadADCData..... return: double ...... arguments: void
		used to read the sampled ADC value of the currently selected channel
		NOTE:: it is important to call SelectChannel else the 0th pin will be sampled
	*/
	double ReadADCData()
	{
			AD1CON1bits.SAMP=1; // enable=1 FOR SAMPLING
			while(AD1CON1bits.DONE==0); // wait till the sampling is complete
			
			//double t=  // get the value of buffer as float
			return(convert());
	}

void MakeJson(int id,char str1[],char str2[],char str3[],char str4[],char str5[]){


				if(id==1){

					//buff = actuate;
				//strcpy(json,actuate);
				}else if(id==2){
					buff = data;
					//strcpy(json,data);
				}
				else if(id==3){
					//buff = status;
					//strcpy(json,status);
				}else{ return ;
				}

			int i,j,count=0;
			int len = strlen(buff);
			for(i=0;i<len;i++)
			{

				if(buff[i]==':'){

					count++;
                                        i++;
					switch(count){
                               				case 2: {
									int len1 = strlen(str1);
									if(len1>0){
                                                                            buff[i++]='"';
									for(j=0;j<len1;i++,j++)
                                                                        buff[i] = str1[j];
                                                                            buff[i++]='"';
                                                                        while(buff[i]!='}')
                                                                        {
                                                                            buff[i++]=' ';
                                                                        }}
									break;
								}
							case 3: {
									int len2 = strlen(str2);
									if(len2>0){
                                                                            buff[i++]='"';
									for(j=0;j<len2;i++,j++)
									buff[i] = str2[j];
                                                                            buff[i++]='"';
                                                                        while(buff[i]!='}')
                                                                        {
                                                                            buff[i++]=' ';
                                                                        }
                                                                        }
									break;
								}
							case 4: {
									int len3 = strlen(str3);
									if(len3>0){
                                                                            buff[i++]='"';

									for(j=0;j<len3;i++,j++)
									buff[i] = str3[j];
                                                                            buff[i++]='"';
                                                                        while(buff[i]!='}')
                                                                        {
                                                                            buff[i++]=' ';
                                                                        }
                                                                        }
									break;
								}
							case 5: {
									int len4  = strlen(str4);
									if(len4>0){
                                                                            buff[i++]='"';
									for(j=0;j<len4;i++,j++)
									buff[i] = str4[j];
                                                                            buff[i++]='"';
                                                                        while(buff[i]!='}')
                                                                        {
                                                                            buff[i++]=' ';
                                                                        }
                                                                        }
									break;
								}
							case 6: {
									int len5 =strlen(str5);
									if(len5>0){
                                                                            buff[i++]='"';
									for(j=0;j<len5;i++,j++)
									buff[i] = str5[j];
                                                                            buff[i++]='"';
                                                                        while(buff[i]!='}')
                                                                        {
                                                                            buff[i++]=' ';
                                                                        }
                                                                        }
									break;
								}

							default : break;

							}
				//printf("\nobject: %s \n =============\n",json);
					}
			}
}
#endif

