#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile

# Environment
MKDIR=mkdir -p
RM=rm -f 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf
else
IMAGE_TYPE=production
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files
OBJECTFILES=${OBJECTDIR}/SmartRoom.o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ${OBJECTDIR}/_ext/1295770447/ARP.o ${OBJECTDIR}/_ext/1295770447/Announce.o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ${OBJECTDIR}/_ext/1295770447/BigInt.o ${OBJECTDIR}/_ext/1295770447/DHCP.o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ${OBJECTDIR}/_ext/1295770447/DNS.o ${OBJECTDIR}/_ext/1295770447/DNSs.o ${OBJECTDIR}/_ext/1295770447/Delay.o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ${OBJECTDIR}/_ext/1295770447/FTP.o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ${OBJECTDIR}/_ext/1295770447/HTTP.o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ${OBJECTDIR}/_ext/1295770447/Hashes.o ${OBJECTDIR}/_ext/1295770447/Helpers.o ${OBJECTDIR}/_ext/1295770447/ICMP.o ${OBJECTDIR}/_ext/1295770447/IP.o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ${OBJECTDIR}/_ext/1295770447/MPFS.o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ${OBJECTDIR}/_ext/1295770447/NBNS.o ${OBJECTDIR}/_ext/1295770447/RSA.o ${OBJECTDIR}/_ext/1295770447/Random.o ${OBJECTDIR}/_ext/1295770447/Reboot.o ${OBJECTDIR}/_ext/1295770447/SMTP.o ${OBJECTDIR}/_ext/1295770447/SNMP.o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ${OBJECTDIR}/_ext/1295770447/SNTP.o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ${OBJECTDIR}/_ext/1295770447/SSL.o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ${OBJECTDIR}/_ext/1295770447/TCP.o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ${OBJECTDIR}/_ext/1295770447/Telnet.o ${OBJECTDIR}/_ext/1295770447/Tick.o ${OBJECTDIR}/_ext/1295770447/UART.o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ${OBJECTDIR}/_ext/1295770447/UDP.o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/Motionsense.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1472/httpadcpost.o ${OBJECTDIR}/_ext/1472/httppost.o ${OBJECTDIR}/_ext/1472/httpposttag.o ${OBJECTDIR}/_ext/1472/ir.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH=/usr/lib/jvm/java-6-openjdk/jre/bin/
OS_CURRENT="$(shell uname -s)"
############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
MP_CC=/opt/microchip/mplabc30/v3.30b/bin/pic30-gcc
# MP_BC is not defined
MP_AS=/opt/microchip/mplabc30/v3.30b/bin/pic30-as
MP_LD=/opt/microchip/mplabc30/v3.30b/bin/pic30-ld
MP_AR=/opt/microchip/mplabc30/v3.30b/bin/pic30-ar
# MP_BC is not defined
MP_CC_DIR=/opt/microchip/mplabc30/v3.30b/bin
# MP_BC_DIR is not defined
MP_AS_DIR=/opt/microchip/mplabc30/v3.30b/bin
MP_LD_DIR=/opt/microchip/mplabc30/v3.30b/bin
MP_AR_DIR=/opt/microchip/mplabc30/v3.30b/bin
# MP_BC_DIR is not defined

.build-conf: ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf

MP_PROCESSOR_OPTION=24FJ128GA010
MP_LINKER_FILE_OPTION=,-Tp24FJ128GA010.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1295770447/Delay.o: ../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Delay.o.d -o ${OBJECTDIR}/_ext/1295770447/Delay.o ../../Microchip/TCPIP\ Stack/Delay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Delay.o.d -o ${OBJECTDIR}/_ext/1295770447/Delay.o ../../Microchip/TCPIP\ Stack/Delay.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Delay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Delay.o.d > ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Delay.o.d > ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Delay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ICMP.o: ../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ICMP.o.d -o ${OBJECTDIR}/_ext/1295770447/ICMP.o ../../Microchip/TCPIP\ Stack/ICMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ICMP.o.d -o ${OBJECTDIR}/_ext/1295770447/ICMP.o ../../Microchip/TCPIP\ Stack/ICMP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ICMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ICMP.o.d > ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ICMP.o.d > ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o: ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ../../Microchip/TCPIP\ Stack/SPIEEPROM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMPv3.o: ../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ../../Microchip/TCPIP\ Stack/SNMPv3.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ../../Microchip/TCPIP\ Stack/SNMPv3.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/BigInt.o: ../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BigInt.o.d -o ${OBJECTDIR}/_ext/1295770447/BigInt.o ../../Microchip/TCPIP\ Stack/BigInt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BigInt.o.d -o ${OBJECTDIR}/_ext/1295770447/BigInt.o ../../Microchip/TCPIP\ Stack/BigInt.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/BigInt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/BigInt.o.d > ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/BigInt.o.d > ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o: ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ../../Microchip/TCPIP\ Stack/SNMPv3USM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/AutoIP.o: ../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ../../Microchip/TCPIP\ Stack/AutoIP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ../../Microchip/TCPIP\ Stack/AutoIP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SMTP.o: ../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SMTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SMTP.o ../../Microchip/TCPIP\ Stack/SMTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SMTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SMTP.o ../../Microchip/TCPIP\ Stack/SMTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SMTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SMTP.o.d > ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SMTP.o.d > ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Helpers.o: ../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Helpers.o.d -o ${OBJECTDIR}/_ext/1295770447/Helpers.o ../../Microchip/TCPIP\ Stack/Helpers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Helpers.o.d -o ${OBJECTDIR}/_ext/1295770447/Helpers.o ../../Microchip/TCPIP\ Stack/Helpers.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Helpers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Helpers.o.d > ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Helpers.o.d > ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/LCDBlocking.o: ../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ../../Microchip/TCPIP\ Stack/LCDBlocking.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ../../Microchip/TCPIP\ Stack/LCDBlocking.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httpposttag.o: ../httpposttag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpposttag.o.d -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpposttag.o.d -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c    2>&1  > ${OBJECTDIR}/_ext/1472/httpposttag.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httpposttag.o.d > ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httpposttag.o.d > ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httpposttag.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SSL.o: ../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SSL.o.d -o ${OBJECTDIR}/_ext/1295770447/SSL.o ../../Microchip/TCPIP\ Stack/SSL.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SSL.o.d -o ${OBJECTDIR}/_ext/1295770447/SSL.o ../../Microchip/TCPIP\ Stack/SSL.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SSL.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SSL.o.d > ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SSL.o.d > ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SSL.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/FTP.o: ../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FTP.o.d -o ${OBJECTDIR}/_ext/1295770447/FTP.o ../../Microchip/TCPIP\ Stack/FTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FTP.o.d -o ${OBJECTDIR}/_ext/1295770447/FTP.o ../../Microchip/TCPIP\ Stack/FTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/FTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/FTP.o.d > ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/FTP.o.d > ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/FTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Tick.o: ../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Tick.o.d -o ${OBJECTDIR}/_ext/1295770447/Tick.o ../../Microchip/TCPIP\ Stack/Tick.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Tick.o.d -o ${OBJECTDIR}/_ext/1295770447/Tick.o ../../Microchip/TCPIP\ Stack/Tick.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Tick.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Tick.o.d > ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Tick.o.d > ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Tick.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/PingDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/PingDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/HTTP2.o: ../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ../../Microchip/TCPIP\ Stack/HTTP2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ../../Microchip/TCPIP\ Stack/HTTP2.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ARCFOUR.o: ../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ../../Microchip/TCPIP\ Stack/ARCFOUR.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ../../Microchip/TCPIP\ Stack/ARCFOUR.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DHCPs.o: ../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ../../Microchip/TCPIP\ Stack/DHCPs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ../../Microchip/TCPIP\ Stack/DHCPs.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ARP.o: ../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARP.o.d -o ${OBJECTDIR}/_ext/1295770447/ARP.o ../../Microchip/TCPIP\ Stack/ARP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARP.o.d -o ${OBJECTDIR}/_ext/1295770447/ARP.o ../../Microchip/TCPIP\ Stack/ARP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ARP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ARP.o.d > ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ARP.o.d > ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ARP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/IP.o: ../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.ok ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/IP.o.d -o ${OBJECTDIR}/_ext/1295770447/IP.o ../../Microchip/TCPIP\ Stack/IP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/IP.o.d -o ${OBJECTDIR}/_ext/1295770447/IP.o ../../Microchip/TCPIP\ Stack/IP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/IP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/IP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/IP.o.d > ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/IP.o.d > ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/IP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/IP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UDP.o: ../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDP.o.d -o ${OBJECTDIR}/_ext/1295770447/UDP.o ../../Microchip/TCPIP\ Stack/UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDP.o.d -o ${OBJECTDIR}/_ext/1295770447/UDP.o ../../Microchip/TCPIP\ Stack/UDP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UDP.o.d > ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UDP.o.d > ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Reboot.o: ../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Reboot.o.d -o ${OBJECTDIR}/_ext/1295770447/Reboot.o ../../Microchip/TCPIP\ Stack/Reboot.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Reboot.o.d -o ${OBJECTDIR}/_ext/1295770447/Reboot.o ../../Microchip/TCPIP\ Stack/Reboot.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Reboot.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Reboot.o.d > ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Reboot.o.d > ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    2>&1  > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    2>&1  > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/Motionsense.o: ../Motionsense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Motionsense.o.d -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Motionsense.o.d -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c    2>&1  > ${OBJECTDIR}/_ext/1472/Motionsense.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Motionsense.o.d > ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Motionsense.o.d > ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@cat ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/Motionsense.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UART.o: ../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.ok ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART.o.d -o ${OBJECTDIR}/_ext/1295770447/UART.o ../../Microchip/TCPIP\ Stack/UART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART.o.d -o ${OBJECTDIR}/_ext/1295770447/UART.o ../../Microchip/TCPIP\ Stack/UART.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UART.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UART.o.d > ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UART.o.d > ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UART.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UART.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/HTTP.o: ../../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP.o ../../Microchip/TCPIP\ Stack/HTTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP.o ../../Microchip/TCPIP\ Stack/HTTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/HTTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/HTTP.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/HTTP.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIRAM.o: ../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ../../Microchip/TCPIP\ Stack/SPIRAM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ../../Microchip/TCPIP\ Stack/SPIRAM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o: ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIFlash.o: ../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ../../Microchip/TCPIP\ Stack/SPIFlash.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ../../Microchip/TCPIP\ Stack/SPIFlash.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DNS.o: ../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DNS.o ../../Microchip/TCPIP\ Stack/DNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DNS.o ../../Microchip/TCPIP\ Stack/DNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DNS.o.d > ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DNS.o.d > ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/MPFS2.o: ../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ../../Microchip/TCPIP\ Stack/MPFS2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ../../Microchip/TCPIP\ Stack/MPFS2.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httppost.o: ../httppost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.ok ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httppost.o.d -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httppost.o.d -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c    2>&1  > ${OBJECTDIR}/_ext/1472/httppost.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httppost.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httppost.o.d > ${OBJECTDIR}/_ext/1472/httppost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httppost.o.tmp ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httppost.o.d > ${OBJECTDIR}/_ext/1472/httppost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httppost.o.tmp ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httppost.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httppost.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ENCX24J600.o: ../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ../../Microchip/TCPIP\ Stack/ENCX24J600.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ../../Microchip/TCPIP\ Stack/ENCX24J600.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Hashes.o: ../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Hashes.o.d -o ${OBJECTDIR}/_ext/1295770447/Hashes.o ../../Microchip/TCPIP\ Stack/Hashes.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Hashes.o.d -o ${OBJECTDIR}/_ext/1295770447/Hashes.o ../../Microchip/TCPIP\ Stack/Hashes.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Hashes.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Hashes.o.d > ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Hashes.o.d > ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TFTPc.o: ../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ../../Microchip/TCPIP\ Stack/TFTPc.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ../../Microchip/TCPIP\ Stack/TFTPc.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Announce.o: ../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Announce.o.d -o ${OBJECTDIR}/_ext/1295770447/Announce.o ../../Microchip/TCPIP\ Stack/Announce.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Announce.o.d -o ${OBJECTDIR}/_ext/1295770447/Announce.o ../../Microchip/TCPIP\ Stack/Announce.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Announce.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Announce.o.d > ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Announce.o.d > ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Announce.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Random.o: ../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.ok ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Random.o.d -o ${OBJECTDIR}/_ext/1295770447/Random.o ../../Microchip/TCPIP\ Stack/Random.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Random.o.d -o ${OBJECTDIR}/_ext/1295770447/Random.o ../../Microchip/TCPIP\ Stack/Random.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Random.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Random.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Random.o.d > ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Random.o.d > ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Random.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Random.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o: ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/NBNS.o: ../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/NBNS.o.d -o ${OBJECTDIR}/_ext/1295770447/NBNS.o ../../Microchip/TCPIP\ Stack/NBNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/NBNS.o.d -o ${OBJECTDIR}/_ext/1295770447/NBNS.o ../../Microchip/TCPIP\ Stack/NBNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/NBNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/NBNS.o.d > ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/NBNS.o.d > ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/StackTsk.o: ../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ../../Microchip/TCPIP\ Stack/StackTsk.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ../../Microchip/TCPIP\ Stack/StackTsk.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok; else exit 1; fi
	
${OBJECTDIR}/SmartRoom.o: SmartRoom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.ok ${OBJECTDIR}/SmartRoom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/SmartRoom.o.d -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/SmartRoom.o.d -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c    2>&1  > ${OBJECTDIR}/SmartRoom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/SmartRoom.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/SmartRoom.o.d > ${OBJECTDIR}/SmartRoom.o.tmp
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${CP} ${OBJECTDIR}/SmartRoom.o.tmp ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/SmartRoom.o.d > ${OBJECTDIR}/SmartRoom.o.tmp
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${CP} ${OBJECTDIR}/SmartRoom.o.tmp ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.tmp
endif
	@touch ${OBJECTDIR}/SmartRoom.o.err 
	@cat ${OBJECTDIR}/SmartRoom.o.err 
	@if [ -f ${OBJECTDIR}/SmartRoom.o.ok ] ; then rm -f ${OBJECTDIR}/SmartRoom.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DHCP.o: ../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCP.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCP.o ../../Microchip/TCPIP\ Stack/DHCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCP.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCP.o ../../Microchip/TCPIP\ Stack/DHCP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DHCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DHCP.o.d > ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DHCP.o.d > ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DNSs.o: ../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNSs.o.d -o ${OBJECTDIR}/_ext/1295770447/DNSs.o ../../Microchip/TCPIP\ Stack/DNSs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNSs.o.d -o ${OBJECTDIR}/_ext/1295770447/DNSs.o ../../Microchip/TCPIP\ Stack/DNSs.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DNSs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DNSs.o.d > ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DNSs.o.d > ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMP.o: ../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMP.o ../../Microchip/TCPIP\ Stack/SNMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMP.o ../../Microchip/TCPIP\ Stack/SNMP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMP.o.d > ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMP.o.d > ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/MPFS.o: ../../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS.o ../../Microchip/TCPIP\ Stack/MPFS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS.o ../../Microchip/TCPIP\ Stack/MPFS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/MPFS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/MPFS.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/MPFS.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DynDNS.o: ../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ../../Microchip/TCPIP\ Stack/DynDNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ../../Microchip/TCPIP\ Stack/DynDNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/RSA.o: ../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/RSA.o.d -o ${OBJECTDIR}/_ext/1295770447/RSA.o ../../Microchip/TCPIP\ Stack/RSA.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/RSA.o.d -o ${OBJECTDIR}/_ext/1295770447/RSA.o ../../Microchip/TCPIP\ Stack/RSA.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/RSA.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/RSA.o.d > ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/RSA.o.d > ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/RSA.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    2>&1  > ${OBJECTDIR}/_ext/1472/UARTConfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/FileSystem.o: ../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ../../Microchip/TCPIP\ Stack/FileSystem.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ../../Microchip/TCPIP\ Stack/FileSystem.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Telnet.o: ../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Telnet.o.d -o ${OBJECTDIR}/_ext/1295770447/Telnet.o ../../Microchip/TCPIP\ Stack/Telnet.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Telnet.o.d -o ${OBJECTDIR}/_ext/1295770447/Telnet.o ../../Microchip/TCPIP\ Stack/Telnet.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Telnet.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Telnet.o.d > ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Telnet.o.d > ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o: ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/ir.o: ../ir.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.ok ${OBJECTDIR}/_ext/1472/ir.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ir.o.d -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ir.o.d -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c    2>&1  > ${OBJECTDIR}/_ext/1472/ir.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/ir.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ir.o.d > ${OBJECTDIR}/_ext/1472/ir.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ir.o.tmp ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ir.o.d > ${OBJECTDIR}/_ext/1472/ir.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ir.o.tmp ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/ir.o.err 
	@cat ${OBJECTDIR}/_ext/1472/ir.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/ir.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/ir.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o: ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ENC28J60.o: ../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ../../Microchip/TCPIP\ Stack/ENC28J60.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ../../Microchip/TCPIP\ Stack/ENC28J60.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httpadcpost.o: ../httpadcpost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpadcpost.o.d -o ${OBJECTDIR}/_ext/1472/httpadcpost.o ../httpadcpost.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpadcpost.o.d -o ${OBJECTDIR}/_ext/1472/httpadcpost.o ../httpadcpost.c    2>&1  > ${OBJECTDIR}/_ext/1472/httpadcpost.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httpadcpost.o.d > ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httpadcpost.o.d > ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNTP.o: ../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNTP.o ../../Microchip/TCPIP\ Stack/SNTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNTP.o ../../Microchip/TCPIP\ Stack/SNTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNTP.o.d > ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNTP.o.d > ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o: ../LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TCP.o: ../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCP.o.d -o ${OBJECTDIR}/_ext/1295770447/TCP.o ../../Microchip/TCPIP\ Stack/TCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCP.o.d -o ${OBJECTDIR}/_ext/1295770447/TCP.o ../../Microchip/TCPIP\ Stack/TCP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TCP.o.d > ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TCP.o.d > ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o: ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok; else exit 1; fi
	
else
${OBJECTDIR}/_ext/1295770447/Delay.o: ../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Delay.o.d -o ${OBJECTDIR}/_ext/1295770447/Delay.o ../../Microchip/TCPIP\ Stack/Delay.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Delay.o.d -o ${OBJECTDIR}/_ext/1295770447/Delay.o ../../Microchip/TCPIP\ Stack/Delay.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Delay.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Delay.o.d > ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Delay.o.d > ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Delay.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ICMP.o: ../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ICMP.o.d -o ${OBJECTDIR}/_ext/1295770447/ICMP.o ../../Microchip/TCPIP\ Stack/ICMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ICMP.o.d -o ${OBJECTDIR}/_ext/1295770447/ICMP.o ../../Microchip/TCPIP\ Stack/ICMP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ICMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ICMP.o.d > ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ICMP.o.d > ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o: ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ../../Microchip/TCPIP\ Stack/SPIEEPROM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMPv3.o: ../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ../../Microchip/TCPIP\ Stack/SNMPv3.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ../../Microchip/TCPIP\ Stack/SNMPv3.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/BigInt.o: ../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BigInt.o.d -o ${OBJECTDIR}/_ext/1295770447/BigInt.o ../../Microchip/TCPIP\ Stack/BigInt.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BigInt.o.d -o ${OBJECTDIR}/_ext/1295770447/BigInt.o ../../Microchip/TCPIP\ Stack/BigInt.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/BigInt.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/BigInt.o.d > ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/BigInt.o.d > ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o: ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ../../Microchip/TCPIP\ Stack/SNMPv3USM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d > ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/AutoIP.o: ../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ../../Microchip/TCPIP\ Stack/AutoIP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ../../Microchip/TCPIP\ Stack/AutoIP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d > ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SMTP.o: ../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SMTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SMTP.o ../../Microchip/TCPIP\ Stack/SMTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SMTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SMTP.o ../../Microchip/TCPIP\ Stack/SMTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SMTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SMTP.o.d > ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SMTP.o.d > ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Helpers.o: ../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Helpers.o.d -o ${OBJECTDIR}/_ext/1295770447/Helpers.o ../../Microchip/TCPIP\ Stack/Helpers.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Helpers.o.d -o ${OBJECTDIR}/_ext/1295770447/Helpers.o ../../Microchip/TCPIP\ Stack/Helpers.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Helpers.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Helpers.o.d > ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Helpers.o.d > ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/LCDBlocking.o: ../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ../../Microchip/TCPIP\ Stack/LCDBlocking.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ../../Microchip/TCPIP\ Stack/LCDBlocking.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d > ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httpposttag.o: ../httpposttag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpposttag.o.d -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpposttag.o.d -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c    2>&1  > ${OBJECTDIR}/_ext/1472/httpposttag.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httpposttag.o.d > ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httpposttag.o.d > ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httpposttag.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SSL.o: ../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SSL.o.d -o ${OBJECTDIR}/_ext/1295770447/SSL.o ../../Microchip/TCPIP\ Stack/SSL.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SSL.o.d -o ${OBJECTDIR}/_ext/1295770447/SSL.o ../../Microchip/TCPIP\ Stack/SSL.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SSL.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SSL.o.d > ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SSL.o.d > ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SSL.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/FTP.o: ../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FTP.o.d -o ${OBJECTDIR}/_ext/1295770447/FTP.o ../../Microchip/TCPIP\ Stack/FTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FTP.o.d -o ${OBJECTDIR}/_ext/1295770447/FTP.o ../../Microchip/TCPIP\ Stack/FTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/FTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/FTP.o.d > ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/FTP.o.d > ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/FTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Tick.o: ../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Tick.o.d -o ${OBJECTDIR}/_ext/1295770447/Tick.o ../../Microchip/TCPIP\ Stack/Tick.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Tick.o.d -o ${OBJECTDIR}/_ext/1295770447/Tick.o ../../Microchip/TCPIP\ Stack/Tick.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Tick.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Tick.o.d > ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Tick.o.d > ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Tick.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/PingDemo.o.d -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/PingDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/PingDemo.o.d > ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/PingDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/HTTP2.o: ../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ../../Microchip/TCPIP\ Stack/HTTP2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ../../Microchip/TCPIP\ Stack/HTTP2.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ARCFOUR.o: ../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ../../Microchip/TCPIP\ Stack/ARCFOUR.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ../../Microchip/TCPIP\ Stack/ARCFOUR.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d > ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DHCPs.o: ../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ../../Microchip/TCPIP\ Stack/DHCPs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ../../Microchip/TCPIP\ Stack/DHCPs.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d > ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ARP.o: ../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARP.o.d -o ${OBJECTDIR}/_ext/1295770447/ARP.o ../../Microchip/TCPIP\ Stack/ARP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ARP.o.d -o ${OBJECTDIR}/_ext/1295770447/ARP.o ../../Microchip/TCPIP\ Stack/ARP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ARP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ARP.o.d > ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ARP.o.d > ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ARP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/IP.o: ../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.ok ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/IP.o.d -o ${OBJECTDIR}/_ext/1295770447/IP.o ../../Microchip/TCPIP\ Stack/IP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/IP.o.d -o ${OBJECTDIR}/_ext/1295770447/IP.o ../../Microchip/TCPIP\ Stack/IP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/IP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/IP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/IP.o.d > ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/IP.o.d > ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/IP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/IP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UDP.o: ../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDP.o.d -o ${OBJECTDIR}/_ext/1295770447/UDP.o ../../Microchip/TCPIP\ Stack/UDP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDP.o.d -o ${OBJECTDIR}/_ext/1295770447/UDP.o ../../Microchip/TCPIP\ Stack/UDP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UDP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UDP.o.d > ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UDP.o.d > ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UDP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Reboot.o: ../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Reboot.o.d -o ${OBJECTDIR}/_ext/1295770447/Reboot.o ../../Microchip/TCPIP\ Stack/Reboot.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Reboot.o.d -o ${OBJECTDIR}/_ext/1295770447/Reboot.o ../../Microchip/TCPIP\ Stack/Reboot.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Reboot.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Reboot.o.d > ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Reboot.o.d > ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c    2>&1  > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@cat ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c    2>&1  > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d > ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@cat ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/Motionsense.o: ../Motionsense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Motionsense.o.d -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/Motionsense.o.d -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c    2>&1  > ${OBJECTDIR}/_ext/1472/Motionsense.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/Motionsense.o.d > ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/Motionsense.o.d > ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@cat ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/Motionsense.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/MainDemo.o.d -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/MainDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/MainDemo.o.d > ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/MainDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UART.o: ../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.ok ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART.o.d -o ${OBJECTDIR}/_ext/1295770447/UART.o ../../Microchip/TCPIP\ Stack/UART.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART.o.d -o ${OBJECTDIR}/_ext/1295770447/UART.o ../../Microchip/TCPIP\ Stack/UART.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UART.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UART.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UART.o.d > ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UART.o.d > ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UART.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UART.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/HTTP.o: ../../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP.o ../../Microchip/TCPIP\ Stack/HTTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/HTTP.o.d -o ${OBJECTDIR}/_ext/1295770447/HTTP.o ../../Microchip/TCPIP\ Stack/HTTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/HTTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/HTTP.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/HTTP.o.d > ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIRAM.o: ../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ../../Microchip/TCPIP\ Stack/SPIRAM.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ../../Microchip/TCPIP\ Stack/SPIRAM.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d > ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o: ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d > ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SPIFlash.o: ../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ../../Microchip/TCPIP\ Stack/SPIFlash.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ../../Microchip/TCPIP\ Stack/SPIFlash.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d > ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DNS.o: ../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DNS.o ../../Microchip/TCPIP\ Stack/DNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DNS.o ../../Microchip/TCPIP\ Stack/DNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DNS.o.d > ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DNS.o.d > ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d > ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/MPFS2.o: ../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ../../Microchip/TCPIP\ Stack/MPFS2.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ../../Microchip/TCPIP\ Stack/MPFS2.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httppost.o: ../httppost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.ok ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httppost.o.d -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httppost.o.d -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c    2>&1  > ${OBJECTDIR}/_ext/1472/httppost.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httppost.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httppost.o.d > ${OBJECTDIR}/_ext/1472/httppost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httppost.o.tmp ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httppost.o.d > ${OBJECTDIR}/_ext/1472/httppost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httppost.o.tmp ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httppost.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httppost.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ENCX24J600.o: ../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ../../Microchip/TCPIP\ Stack/ENCX24J600.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ../../Microchip/TCPIP\ Stack/ENCX24J600.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d > ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Hashes.o: ../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Hashes.o.d -o ${OBJECTDIR}/_ext/1295770447/Hashes.o ../../Microchip/TCPIP\ Stack/Hashes.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Hashes.o.d -o ${OBJECTDIR}/_ext/1295770447/Hashes.o ../../Microchip/TCPIP\ Stack/Hashes.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Hashes.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Hashes.o.d > ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Hashes.o.d > ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TFTPc.o: ../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ../../Microchip/TCPIP\ Stack/TFTPc.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ../../Microchip/TCPIP\ Stack/TFTPc.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d > ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Announce.o: ../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Announce.o.d -o ${OBJECTDIR}/_ext/1295770447/Announce.o ../../Microchip/TCPIP\ Stack/Announce.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Announce.o.d -o ${OBJECTDIR}/_ext/1295770447/Announce.o ../../Microchip/TCPIP\ Stack/Announce.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Announce.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Announce.o.d > ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Announce.o.d > ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Announce.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Random.o: ../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.ok ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Random.o.d -o ${OBJECTDIR}/_ext/1295770447/Random.o ../../Microchip/TCPIP\ Stack/Random.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Random.o.d -o ${OBJECTDIR}/_ext/1295770447/Random.o ../../Microchip/TCPIP\ Stack/Random.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Random.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Random.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Random.o.d > ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Random.o.d > ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Random.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Random.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d > ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o: ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/NBNS.o: ../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/NBNS.o.d -o ${OBJECTDIR}/_ext/1295770447/NBNS.o ../../Microchip/TCPIP\ Stack/NBNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/NBNS.o.d -o ${OBJECTDIR}/_ext/1295770447/NBNS.o ../../Microchip/TCPIP\ Stack/NBNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/NBNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/NBNS.o.d > ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/NBNS.o.d > ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/StackTsk.o: ../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ../../Microchip/TCPIP\ Stack/StackTsk.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ../../Microchip/TCPIP\ Stack/StackTsk.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d > ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok; else exit 1; fi
	
${OBJECTDIR}/SmartRoom.o: SmartRoom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.ok ${OBJECTDIR}/SmartRoom.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/SmartRoom.o.d -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/SmartRoom.o.d -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c    2>&1  > ${OBJECTDIR}/SmartRoom.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/SmartRoom.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/SmartRoom.o.d > ${OBJECTDIR}/SmartRoom.o.tmp
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${CP} ${OBJECTDIR}/SmartRoom.o.tmp ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/SmartRoom.o.d > ${OBJECTDIR}/SmartRoom.o.tmp
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${CP} ${OBJECTDIR}/SmartRoom.o.tmp ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.tmp
endif
	@touch ${OBJECTDIR}/SmartRoom.o.err 
	@cat ${OBJECTDIR}/SmartRoom.o.err 
	@if [ -f ${OBJECTDIR}/SmartRoom.o.ok ] ; then rm -f ${OBJECTDIR}/SmartRoom.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DHCP.o: ../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCP.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCP.o ../../Microchip/TCPIP\ Stack/DHCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DHCP.o.d -o ${OBJECTDIR}/_ext/1295770447/DHCP.o ../../Microchip/TCPIP\ Stack/DHCP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DHCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DHCP.o.d > ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DHCP.o.d > ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DNSs.o: ../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNSs.o.d -o ${OBJECTDIR}/_ext/1295770447/DNSs.o ../../Microchip/TCPIP\ Stack/DNSs.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DNSs.o.d -o ${OBJECTDIR}/_ext/1295770447/DNSs.o ../../Microchip/TCPIP\ Stack/DNSs.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DNSs.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DNSs.o.d > ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DNSs.o.d > ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNMP.o: ../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMP.o ../../Microchip/TCPIP\ Stack/SNMP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNMP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNMP.o ../../Microchip/TCPIP\ Stack/SNMP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNMP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNMP.o.d > ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNMP.o.d > ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d > ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c    2>&1  > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d > ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@cat ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/MPFS.o: ../../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS.o ../../Microchip/TCPIP\ Stack/MPFS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/MPFS.o.d -o ${OBJECTDIR}/_ext/1295770447/MPFS.o ../../Microchip/TCPIP\ Stack/MPFS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/MPFS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/MPFS.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/MPFS.o.d > ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/DynDNS.o: ../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ../../Microchip/TCPIP\ Stack/DynDNS.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ../../Microchip/TCPIP\ Stack/DynDNS.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d > ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/RSA.o: ../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/RSA.o.d -o ${OBJECTDIR}/_ext/1295770447/RSA.o ../../Microchip/TCPIP\ Stack/RSA.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/RSA.o.d -o ${OBJECTDIR}/_ext/1295770447/RSA.o ../../Microchip/TCPIP\ Stack/RSA.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/RSA.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/RSA.o.d > ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/RSA.o.d > ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/RSA.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/UARTConfig.o.d -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c    2>&1  > ${OBJECTDIR}/_ext/1472/UARTConfig.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/UARTConfig.o.d > ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@cat ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/FileSystem.o: ../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ../../Microchip/TCPIP\ Stack/FileSystem.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ../../Microchip/TCPIP\ Stack/FileSystem.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d > ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/Telnet.o: ../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Telnet.o.d -o ${OBJECTDIR}/_ext/1295770447/Telnet.o ../../Microchip/TCPIP\ Stack/Telnet.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/Telnet.o.d -o ${OBJECTDIR}/_ext/1295770447/Telnet.o ../../Microchip/TCPIP\ Stack/Telnet.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/Telnet.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/Telnet.o.d > ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/Telnet.o.d > ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o: ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/ir.o: ../ir.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.ok ${OBJECTDIR}/_ext/1472/ir.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ir.o.d -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/ir.o.d -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c    2>&1  > ${OBJECTDIR}/_ext/1472/ir.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/ir.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/ir.o.d > ${OBJECTDIR}/_ext/1472/ir.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ir.o.tmp ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/ir.o.d > ${OBJECTDIR}/_ext/1472/ir.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/ir.o.tmp ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/ir.o.err 
	@cat ${OBJECTDIR}/_ext/1472/ir.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/ir.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/ir.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o: ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d > ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/ENC28J60.o: ../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ../../Microchip/TCPIP\ Stack/ENC28J60.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ../../Microchip/TCPIP\ Stack/ENC28J60.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d > ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/httpadcpost.o: ../httpadcpost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpadcpost.o.d -o ${OBJECTDIR}/_ext/1472/httpadcpost.o ../httpadcpost.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/httpadcpost.o.d -o ${OBJECTDIR}/_ext/1472/httpadcpost.o ../httpadcpost.c    2>&1  > ${OBJECTDIR}/_ext/1472/httpadcpost.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/httpadcpost.o.d > ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/httpadcpost.o.d > ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp ${OBJECTDIR}/_ext/1472/httpadcpost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpadcpost.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@cat ${OBJECTDIR}/_ext/1472/httpadcpost.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/httpadcpost.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/SNTP.o: ../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNTP.o ../../Microchip/TCPIP\ Stack/SNTP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/SNTP.o.d -o ${OBJECTDIR}/_ext/1295770447/SNTP.o ../../Microchip/TCPIP\ Stack/SNTP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/SNTP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/SNTP.o.d > ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/SNTP.o.d > ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o: ../LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c    2>&1  > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d > ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${CP} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@cat ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/TCP.o: ../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCP.o.d -o ${OBJECTDIR}/_ext/1295770447/TCP.o ../../Microchip/TCPIP\ Stack/TCP.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/TCP.o.d -o ${OBJECTDIR}/_ext/1295770447/TCP.o ../../Microchip/TCPIP\ Stack/TCP.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/TCP.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/TCP.o.d > ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/TCP.o.d > ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/TCP.o.ok; else exit 1; fi
	
${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o: ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@echo ${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  
	@-${MP_CC} $(MP_EXTRA_CC_PRE)  -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c    2>&1  > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err ; if [ $$? -eq 0 ] ; then touch ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ; fi 
ifneq (,$(findstring MINGW32,$(OS_CURRENT))) 
	@sed -e 's/\"//g' -e 's/\\$$/__EOL__/g' -e 's/\\ /__ESCAPED_SPACES__/g' -e 's/\\/\//g' -e 's/__ESCAPED_SPACES__/\\ /g' -e 's/__EOL__$$/\\/g' ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp 
else 
	@sed -e 's/\"//g' ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d > ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${CP} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.tmp
endif
	@touch ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@cat ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@if [ -f ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ] ; then rm -f ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok; else exit 1; fi
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=0,-L"..",-Map="${DISTDIR}/pic_server.X.${IMAGE_TYPE}.map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf  -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf ${OBJECTFILES}        -Wl,--defsym=__MPLAB_BUILD=1,--heap=0,-L"..",-Map="${DISTDIR}/pic_server.X.${IMAGE_TYPE}.map",--report-mem,--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.elf -omf=elf
endif


# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf:
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
