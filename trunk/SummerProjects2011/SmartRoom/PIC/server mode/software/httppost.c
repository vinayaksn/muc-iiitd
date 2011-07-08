/*********************************************************************
 *
 *  Generic TCP Client Example Application
 *  Module for Microchip TCP/IP Stack
 *   -Implements an example HTTP client and should be used as a basis 
 *	  for creating new TCP client applications
 *	 -Reference: None.  Hopefully AN833 in the future.
 *
 *********************************************************************
 * FileName:        GenericTCPClient.c
 * Dependencies:    TCP, DNS, ARP, Tick
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2009 Microchip Technology Inc.  All rights
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
 * Author               Date    Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Howard Schlunder     8/01/06	Original
 ********************************************************************/
#define __GENERICTCPCLIENT_C
#include "TCPIPConfig.h"
#include "TCPIP Stack/TCPIP.h"
#include <string.h>
#include "MainDemo.h"
#define STACK_USE_UART
	

void TCPRecvTask(void);
void StartTCPTimeStateMachine(void);
static WORD MyPort = 1234; // PORT to bind the server to
extern char override[10];

// Defines the server to be accessed for this application
//static BYTE ServerName[] =	"www.led20.net";
//static BYTE ServerName[] =	"192.168.4.68";
// Defines the port to be accessed for this application
//static WORD ServerPort = 80;
// Defines the URL to be requested by this HTTP client
//static BYTE RemoteURL[] = "/cgi-bin/motion-upload.cgi";
//static BYTE RemoteURL[] = "/SmarterRooms/data.php";
//static BYTE RemoteURL[] = "/SmarterRooms/index.php";

static enum
{
	SM_HOME = 0,
	SM_SOCKET_OBTAINED,
	SM_DONE
} TCPTimeState = SM_DONE;

void StartTCPTimeStateMachine(void)
{
    TCPTimeState = SM_HOME;    
}


/*****************************************************************************
  Function:
	void TCPRecvTask(void)

  Summary:
	Implements a simple HTTP Server (over TCP).

  Description:
	This function implements a simple HTTP Server, which operates over TCP.  
	The function is called periodically by the stack, and waits for any override status 
	from a client system.

  Precondition:
	TCP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void TCPRecvTask(void)
{
	int i;
	WORD				w;
	BYTE				vBuffer[1000];
	static DWORD		Timer_2;
	static TCP_SOCKET	MySocket = INVALID_SOCKET;

	switch(TCPTimeState)
	{
		case SM_HOME:
			// Connect a socket to the remote TCP server
			MySocket = TCPOpen(0, TCP_OPEN_SERVER, MyPort, TCP_PURPOSE_DEFAULT);
		
			// Abort operation if no TCP socket of type TCP_PURPOSE_DEFAULT is available
			// If this ever happens, you need to go add one to TCPIPConfig.h
			if(MySocket == INVALID_SOCKET)
			{
				//putrsUART((ROM char*)"\r\n\r\nInvalid Socket...\r\n");
				//HttpADCPostPending = 0;
				break;
			}
			LED3_IO = 1;
			TCPTimeState++;
			Timer_2=TickGet();
			break;

		case SM_SOCKET_OBTAINED:
			// Wait for the remote server to accept our connection request
			if(!TCPIsConnected(MySocket))
			{
				if(TickGet()-Timer_2 > 1*TICK_SECOND)
				{
					// Close the socket so it can be used by other modules
					TCPClose(MySocket);
					MySocket = INVALID_SOCKET;
					TCPTimeState--;
					//putrsUART((ROM char*)"\r\n\r\nTimeout in Remote connection...\r\n");
					//HttpADCPostPending = 0;
				}
				break;
			}
			Timer_2 = TickGet();
			w = TCPIsGetReady(MySocket);	
	
            if (w < 0x01)
                break;
			
            w -= TCPGetArray(MySocket, vBuffer, w);
			for(i=0;i<10;i++)
				override[i]=vBuffer[i];
			TCPPutString(MySocket,(BYTE*)"Status Change Done!!!");
			TCPFlush(MySocket);
			TCPTimeState++;
			break;
		case SM_DONE:
			TCPClose(MySocket);
			TCPTimeState = SM_HOME;
			break;
	}
}


