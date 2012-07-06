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
#include "pic_server.X/SmartRoom.h"
#include "lcd.h"
#define STACK_USE_UART	

void StartHTTPTimeStateMachine(void);

// Defines the server to be accessed for this application

//static BYTE ServerName_demo[] = "192.168.1.4";

// Defines the port to be accessed for this application
static WORD ServerPort=9001;

//void HTTPADCPostTask(BYTE *,BYTE *);

//extern char* json_pub_arguments[3]; // defined in smartroom.c to store json arguments to send
extern short unsigned int flag_http_post;
extern short int sense_num;
static enum
{
	SM_HOME = 0,
	SM_SOCKET_OBTAINED,
	//SM_PROCESS_RESPONSE,
	SM_DISCONNECT,
	SM_DONE
} HTTPTimeState = SM_DONE;

void StartHTTPTimeStateMachine(void)
{
    HTTPTimeState = SM_HOME;    
}
/***************************************************************
 * function to put headers and data to be sent in the socket 
 *
 *  Parameters:
 *  1. socket to put data into
 *  2. Server name to be sent in headers
 *  3. Path to which to post
 *
 *  Return:
 *  none
 *
 *  Written by :
 *  #A/M
 ****************************************************************/
void putDataHttpPost(TCP_SOCKET Socket,BYTE* ServerName,BYTE* ServerPath){

        BYTE data_len[5];
        WORD len = 0;
        BYTE i;

        if(Socket==INVALID_SOCKET)
            return;

        TCPPutString(Socket, (BYTE*)"POST ");
        TCPPutString(Socket, (BYTE*)ServerPath);
        TCPPutString(Socket, (BYTE*)" HTTP/1.1\r\n");
        TCPPutString(Socket, (BYTE*)"Host: ");
        TCPPutString(Socket, (BYTE*)ServerName);
        TCPPutString(Socket, (BYTE*)"\r\n");


           for(i=0u ; i< JSON_OBJ_ARGS ;i++){
               len+=(WORD)strlen(json_pub_arguments[i]);
            }

        sprintf(data_len,"%d",len);

        // Put required headers
        TCPPutString(Socket, (BYTE*)"Content-Length:");
        TCPPutString(Socket, (BYTE*)data_len);
        TCPPutString(Socket, (BYTE*)"\r\n");
         
        TCPPutString(Socket, (BYTE*)"Content-Type: application/json; charset=UTF-8");

        TCPPutString(Socket, (BYTE*)"\r\n\n");

       for(i = 0u ; i < JSON_OBJ_ARGS ;i++){
           TCPPutString(Socket,(BYTE*)json_pub_arguments[i]);
            Nop();
                  
       }
}

/*****************************************************************************
  Function:
	void HTTPPostTask(void)

  Summary:
	Implements a simple HTTP client (over TCP).

  Description:
	This function implements a simple HTTP client, which operates over TCP.  
	The function is called periodically by the stack, and waits for BUTTON1 
	to be pressed.  When the button is pressed, the application opens a TCP
	connection to an Internet search engine, performs a search for the word
	"Microchip" on "microchip.com", and prints the resulting HTML page to
	the UART.
	
	This example can be used as a model for many TCP and HTTP client
	applications.

  Precondition:
	TCP is initialized.

  Parameters:
	None

  Returns:
  	None
  ***************************************************************************/
void HTTPPostTask(BYTE* ServerName,BYTE* ServerPath)
{
    /*Response from server is not listened, so w and vBuffer will not be used #A/M */
    
    //	WORD				w;
    //  BYTE				vBuffer[1000];
	static DWORD		Timer; 
	static TCP_SOCKET	Socket = INVALID_SOCKET;

	switch(HTTPTimeState)
	{
		case SM_HOME:
                        /*change flag #A/M*/
                         flag_http_post = 0;
			// Connect a socket to the remote TCP server
			Socket = TCPOpen((DWORD)&ServerName[0], TCP_OPEN_RAM_HOST, ServerPort, TCP_PURPOSE_DEFAULT);
			

			// Abort operation if no TCP socket of type TCP_PURPOSE_GENERIC_TCP_CLIENT is available
			// If this ever happens, you need to go add one to TCPIPConfig.h
			if(Socket == INVALID_SOCKET)
			{
				//putrsUART((ROM char*)"\r\n\r\nInvalid Socket...\r\n");
				//HttpADCPostPending = 0;
				break;
			}

			LED3_IO = 1;
			/*
			#if defined(STACK_USE_UART)
				putrsUART((ROM char*)"\r\n\r\nConnecting using Microchip TCP API...\r\n");			
			#endif
			*/

			HTTPTimeState++;
                        //flag_http_post=1;
			Timer = TickGet();			
			break;

		case SM_SOCKET_OBTAINED:
                        //flag_http_post = 0;
        
			// Wait for the remote server to accept our connection request
			if(!TCPIsConnected(Socket))
			{
				// Time out if too much time is spent in this state
				if(TickGet()-Timer > 5*TICK_SECOND)
				{
					// Close the socket so it can be used by other modules
					TCPDisconnect(Socket);
					Socket = INVALID_SOCKET;
					HTTPTimeState--;
					//putrsUART((ROM char*)"\r\n\r\nTimeout in Remote connection...\r\n");
	
				}
				break;
			}

			Timer = TickGet();

			// Make certain the socket can be written to
			if(TCPIsPutReady(Socket) < 125u)
				break;

			//	TotalReadBytes += 10;
			LED2_IO = 1;
                        //TCPFlush(Socket);
			/* Place the application protocol data into the transmit buffer.  For this example, we are connected to an HTTP server, so we'll send an HTTP GET request. #A/M */
                        putDataHttpPost(Socket,ServerName,ServerPath);

                        // Send the packet
			TCPFlush(Socket);
                        DelayMs(10);
                        if(sense_num==((NUM_SENSORS_)-1)){
                        //HTTPTimeState = SM_DISCONNECT; /*Disconnect after sending #A/M */
                            TCPDisconnect(Socket);
			    Socket = INVALID_SOCKET;
			    HTTPTimeState = SM_HOME;
                        }
                        
                        flag_http_post = 1;
                	break;

	/* Response from server is not required & hence commented #A/M
         * case SM_PROCESS_RESPONSE:
			// Check to see if the remote node has disconnected from us or sent us any application data
			// If application data is available, write it to the UART
			LED2_IO = 0;
			//TotalReadBytes=0;
			//TotalBytes=0;
		
			if(!TCPIsConnected(Socket))
			{
				HTTPTimeState = SM_DISCONNECT;
				// Do not break;  We might still have data in the TCP RX FIFO waiting for us
			}
	
			// Get count of RX bytes waiting
			w = TCPIsGetReady(Socket);	
	
            if (w < 0x36)
                break;
			
            w -= TCPGetArray(Socket, vBuffer, w);
            vBuffer[w] = '\0';
			//putrsUART(vBuffer);
		    HTTPTimeState = SM_DONE; // change to SM_DONE
         	break;
	*/
		case SM_DISCONNECT:
			// Close the socket so it can be used by other modules
			// For this application, we wish to stay connected, but this state will still get entered if the remote server decides to disconnect
			TCPDisconnect(Socket);
			Socket = INVALID_SOCKET;
			HTTPTimeState = SM_HOME;
			LED3_IO=0;
			LED4_IO=0;
			break;
	
		case SM_DONE:
			LED3_IO=1;
			LED4_IO=1;
                                          
			HTTPTimeState = SM_HOME;

                        /*change state of flag http is posted #A/M */
                        flag_http_post = 1;
              
			break;
	}
}

