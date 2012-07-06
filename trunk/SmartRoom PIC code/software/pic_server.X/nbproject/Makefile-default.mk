#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ${OBJECTDIR}/_ext/1295770447/ARP.o ${OBJECTDIR}/_ext/1295770447/Announce.o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ${OBJECTDIR}/_ext/1295770447/BigInt.o ${OBJECTDIR}/_ext/1295770447/DHCP.o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ${OBJECTDIR}/_ext/1295770447/DNS.o ${OBJECTDIR}/_ext/1295770447/DNSs.o ${OBJECTDIR}/_ext/1295770447/Delay.o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ${OBJECTDIR}/_ext/1295770447/FTP.o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ${OBJECTDIR}/_ext/1295770447/HTTP.o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ${OBJECTDIR}/_ext/1295770447/Hashes.o ${OBJECTDIR}/_ext/1295770447/Helpers.o ${OBJECTDIR}/_ext/1295770447/ICMP.o ${OBJECTDIR}/_ext/1295770447/IP.o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ${OBJECTDIR}/_ext/1295770447/MPFS.o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ${OBJECTDIR}/_ext/1295770447/NBNS.o ${OBJECTDIR}/_ext/1295770447/RSA.o ${OBJECTDIR}/_ext/1295770447/Random.o ${OBJECTDIR}/_ext/1295770447/Reboot.o ${OBJECTDIR}/_ext/1295770447/SMTP.o ${OBJECTDIR}/_ext/1295770447/SNMP.o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ${OBJECTDIR}/_ext/1295770447/SNTP.o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ${OBJECTDIR}/_ext/1295770447/SSL.o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ${OBJECTDIR}/_ext/1295770447/TCP.o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ${OBJECTDIR}/_ext/1295770447/Telnet.o ${OBJECTDIR}/_ext/1295770447/Tick.o ${OBJECTDIR}/_ext/1295770447/UART.o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ${OBJECTDIR}/_ext/1295770447/UDP.o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/EEPROM.o ${OBJECTDIR}/_ext/1472/HttpPostNew.o ${OBJECTDIR}/_ext/1472/I2C.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/Motionsense.o ${OBJECTDIR}/_ext/1472/RTCC.o ${OBJECTDIR}/SmartRoom.o ${OBJECTDIR}/_ext/1472/hd44780.o ${OBJECTDIR}/_ext/1472/httppost.o ${OBJECTDIR}/_ext/1472/httpposttag.o ${OBJECTDIR}/_ext/1472/ir.o ${OBJECTDIR}/_ext/1472/lcd.o ${OBJECTDIR}/Sensors.o "${OBJECTDIR}/SmartRoom Config.o" ${OBJECTDIR}/Actuators.o ${OBJECTDIR}/EpochTime.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d ${OBJECTDIR}/_ext/1472/UARTConfig.o.d ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d ${OBJECTDIR}/_ext/1295770447/ARP.o.d ${OBJECTDIR}/_ext/1295770447/Announce.o.d ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/1295770447/BigInt.o.d ${OBJECTDIR}/_ext/1295770447/DHCP.o.d ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d ${OBJECTDIR}/_ext/1295770447/DNS.o.d ${OBJECTDIR}/_ext/1295770447/DNSs.o.d ${OBJECTDIR}/_ext/1295770447/Delay.o.d ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d ${OBJECTDIR}/_ext/1295770447/FTP.o.d ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d ${OBJECTDIR}/_ext/1295770447/HTTP.o.d ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d ${OBJECTDIR}/_ext/1295770447/Hashes.o.d ${OBJECTDIR}/_ext/1295770447/Helpers.o.d ${OBJECTDIR}/_ext/1295770447/ICMP.o.d ${OBJECTDIR}/_ext/1295770447/IP.o.d ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d ${OBJECTDIR}/_ext/1295770447/MPFS.o.d ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d ${OBJECTDIR}/_ext/1295770447/NBNS.o.d ${OBJECTDIR}/_ext/1295770447/RSA.o.d ${OBJECTDIR}/_ext/1295770447/Random.o.d ${OBJECTDIR}/_ext/1295770447/Reboot.o.d ${OBJECTDIR}/_ext/1295770447/SMTP.o.d ${OBJECTDIR}/_ext/1295770447/SNMP.o.d ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d ${OBJECTDIR}/_ext/1295770447/SNTP.o.d ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d ${OBJECTDIR}/_ext/1295770447/SSL.o.d ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d ${OBJECTDIR}/_ext/1295770447/TCP.o.d ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d ${OBJECTDIR}/_ext/1295770447/Telnet.o.d ${OBJECTDIR}/_ext/1295770447/Tick.o.d ${OBJECTDIR}/_ext/1295770447/UART.o.d ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/1295770447/UDP.o.d ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d ${OBJECTDIR}/_ext/1472/EEPROM.o.d ${OBJECTDIR}/_ext/1472/HttpPostNew.o.d ${OBJECTDIR}/_ext/1472/I2C.o.d ${OBJECTDIR}/_ext/1472/MainDemo.o.d ${OBJECTDIR}/_ext/1472/Motionsense.o.d ${OBJECTDIR}/_ext/1472/RTCC.o.d ${OBJECTDIR}/SmartRoom.o.d ${OBJECTDIR}/_ext/1472/hd44780.o.d ${OBJECTDIR}/_ext/1472/httppost.o.d ${OBJECTDIR}/_ext/1472/httpposttag.o.d ${OBJECTDIR}/_ext/1472/ir.o.d ${OBJECTDIR}/_ext/1472/lcd.o.d ${OBJECTDIR}/Sensors.o.d "${OBJECTDIR}/SmartRoom Config.o.d" ${OBJECTDIR}/Actuators.o.d ${OBJECTDIR}/EpochTime.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ${OBJECTDIR}/_ext/1472/PingDemo.o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ${OBJECTDIR}/_ext/1472/UARTConfig.o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o ${OBJECTDIR}/_ext/1295770447/ARP.o ${OBJECTDIR}/_ext/1295770447/Announce.o ${OBJECTDIR}/_ext/1295770447/AutoIP.o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o ${OBJECTDIR}/_ext/1295770447/BigInt.o ${OBJECTDIR}/_ext/1295770447/DHCP.o ${OBJECTDIR}/_ext/1295770447/DHCPs.o ${OBJECTDIR}/_ext/1295770447/DNS.o ${OBJECTDIR}/_ext/1295770447/DNSs.o ${OBJECTDIR}/_ext/1295770447/Delay.o ${OBJECTDIR}/_ext/1295770447/DynDNS.o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o ${OBJECTDIR}/_ext/1295770447/FTP.o ${OBJECTDIR}/_ext/1295770447/FileSystem.o ${OBJECTDIR}/_ext/1295770447/HTTP.o ${OBJECTDIR}/_ext/1295770447/HTTP2.o ${OBJECTDIR}/_ext/1295770447/Hashes.o ${OBJECTDIR}/_ext/1295770447/Helpers.o ${OBJECTDIR}/_ext/1295770447/ICMP.o ${OBJECTDIR}/_ext/1295770447/IP.o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o ${OBJECTDIR}/_ext/1295770447/MPFS.o ${OBJECTDIR}/_ext/1295770447/MPFS2.o ${OBJECTDIR}/_ext/1295770447/NBNS.o ${OBJECTDIR}/_ext/1295770447/RSA.o ${OBJECTDIR}/_ext/1295770447/Random.o ${OBJECTDIR}/_ext/1295770447/Reboot.o ${OBJECTDIR}/_ext/1295770447/SMTP.o ${OBJECTDIR}/_ext/1295770447/SNMP.o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o ${OBJECTDIR}/_ext/1295770447/SNTP.o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o ${OBJECTDIR}/_ext/1295770447/SSL.o ${OBJECTDIR}/_ext/1295770447/StackTsk.o ${OBJECTDIR}/_ext/1295770447/TCP.o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/TFTPc.o ${OBJECTDIR}/_ext/1295770447/Telnet.o ${OBJECTDIR}/_ext/1295770447/Tick.o ${OBJECTDIR}/_ext/1295770447/UART.o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o ${OBJECTDIR}/_ext/1295770447/UDP.o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ${OBJECTDIR}/_ext/1472/EEPROM.o ${OBJECTDIR}/_ext/1472/HttpPostNew.o ${OBJECTDIR}/_ext/1472/I2C.o ${OBJECTDIR}/_ext/1472/MainDemo.o ${OBJECTDIR}/_ext/1472/Motionsense.o ${OBJECTDIR}/_ext/1472/RTCC.o ${OBJECTDIR}/SmartRoom.o ${OBJECTDIR}/_ext/1472/hd44780.o ${OBJECTDIR}/_ext/1472/httppost.o ${OBJECTDIR}/_ext/1472/httpposttag.o ${OBJECTDIR}/_ext/1472/ir.o ${OBJECTDIR}/_ext/1472/lcd.o ${OBJECTDIR}/Sensors.o ${OBJECTDIR}/SmartRoom\ Config.o ${OBJECTDIR}/Actuators.o ${OBJECTDIR}/EpochTime.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	
${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o: ../LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1295770447/ARCFOUR.o: ../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o "../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1295770447/ARP.o: ../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ARP.o.d" -o ${OBJECTDIR}/_ext/1295770447/ARP.o "../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1295770447/Announce.o: ../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Announce.o.d" -o ${OBJECTDIR}/_ext/1295770447/Announce.o "../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1295770447/AutoIP.o: ../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o "../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o: ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o "../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1295770447/BigInt.o: ../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/BigInt.o.d" -o ${OBJECTDIR}/_ext/1295770447/BigInt.o "../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1295770447/DHCP.o: ../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DHCP.o.d" -o ${OBJECTDIR}/_ext/1295770447/DHCP.o "../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1295770447/DHCPs.o: ../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o "../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1295770447/DNS.o: ../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/DNS.o "../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1295770447/DNSs.o: ../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DNSs.o.d" -o ${OBJECTDIR}/_ext/1295770447/DNSs.o "../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1295770447/Delay.o: ../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Delay.o.d" -o ${OBJECTDIR}/_ext/1295770447/Delay.o "../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1295770447/DynDNS.o: ../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o "../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1295770447/ENC28J60.o: ../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o "../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1295770447/ENCX24J600.o: ../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o "../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1295770447/FTP.o: ../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/FTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/FTP.o "../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1295770447/FileSystem.o: ../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/FileSystem.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o "../../Microchip/TCPIP Stack/FileSystem.c"  
	
${OBJECTDIR}/_ext/1295770447/HTTP.o: ../../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/HTTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/HTTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/HTTP.o "../../Microchip/TCPIP Stack/HTTP.c"  
	
${OBJECTDIR}/_ext/1295770447/HTTP2.o: ../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o "../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1295770447/Hashes.o: ../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Hashes.o.d" -o ${OBJECTDIR}/_ext/1295770447/Hashes.o "../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1295770447/Helpers.o: ../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Helpers.o.d" -o ${OBJECTDIR}/_ext/1295770447/Helpers.o "../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1295770447/ICMP.o: ../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ICMP.o.d" -o ${OBJECTDIR}/_ext/1295770447/ICMP.o "../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1295770447/IP.o: ../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.ok ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/IP.o.d" -o ${OBJECTDIR}/_ext/1295770447/IP.o "../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1295770447/LCDBlocking.o: ../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o "../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1295770447/MPFS.o: ../../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/MPFS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/MPFS.o.d" -o ${OBJECTDIR}/_ext/1295770447/MPFS.o "../../Microchip/TCPIP Stack/MPFS.c"  
	
${OBJECTDIR}/_ext/1295770447/MPFS2.o: ../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o "../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1295770447/NBNS.o: ../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/NBNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/NBNS.o "../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1295770447/RSA.o: ../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/RSA.o.d" -o ${OBJECTDIR}/_ext/1295770447/RSA.o "../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1295770447/Random.o: ../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.ok ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Random.o.d" -o ${OBJECTDIR}/_ext/1295770447/Random.o "../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1295770447/Reboot.o: ../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Reboot.o.d" -o ${OBJECTDIR}/_ext/1295770447/Reboot.o "../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1295770447/SMTP.o: ../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SMTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SMTP.o "../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMP.o: ../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMP.o "../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMPv3.o: ../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o "../../Microchip/TCPIP Stack/SNMPv3.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o: ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o "../../Microchip/TCPIP Stack/SNMPv3USM.c"  
	
${OBJECTDIR}/_ext/1295770447/SNTP.o: ../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNTP.o "../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o: ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o "../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIFlash.o: ../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o "../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIRAM.o: ../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o "../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1295770447/SSL.o: ../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SSL.o.d" -o ${OBJECTDIR}/_ext/1295770447/SSL.o "../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1295770447/StackTsk.o: ../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o "../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1295770447/TCP.o: ../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TCP.o.d" -o ${OBJECTDIR}/_ext/1295770447/TCP.o "../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o "../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1295770447/TFTPc.o: ../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o "../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1295770447/Telnet.o: ../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Telnet.o.d" -o ${OBJECTDIR}/_ext/1295770447/Telnet.o "../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1295770447/Tick.o: ../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Tick.o.d" -o ${OBJECTDIR}/_ext/1295770447/Tick.o "../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1295770447/UART.o: ../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.ok ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UART.o.d" -o ${OBJECTDIR}/_ext/1295770447/UART.o "../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o: ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o "../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1295770447/UDP.o: ../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UDP.o.d" -o ${OBJECTDIR}/_ext/1295770447/UDP.o "../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o "../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o: ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o "../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o: ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o "../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o: ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o "../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	
${OBJECTDIR}/_ext/1472/EEPROM.o: ../EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EEPROM.o.ok ${OBJECTDIR}/_ext/1472/EEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/EEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1472/EEPROM.o ../EEPROM.c  
	
${OBJECTDIR}/_ext/1472/HttpPostNew.o: ../HttpPostNew.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HttpPostNew.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HttpPostNew.o.ok ${OBJECTDIR}/_ext/1472/HttpPostNew.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HttpPostNew.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/HttpPostNew.o.d" -o ${OBJECTDIR}/_ext/1472/HttpPostNew.o ../HttpPostNew.c  
	
${OBJECTDIR}/_ext/1472/I2C.o: ../I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2C.o.ok ${OBJECTDIR}/_ext/1472/I2C.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/I2C.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/I2C.o.d" -o ${OBJECTDIR}/_ext/1472/I2C.o ../I2C.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/Motionsense.o: ../Motionsense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motionsense.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Motionsense.o.d" -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c  
	
${OBJECTDIR}/_ext/1472/RTCC.o: ../RTCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RTCC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RTCC.o.ok ${OBJECTDIR}/_ext/1472/RTCC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RTCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RTCC.o.d" -o ${OBJECTDIR}/_ext/1472/RTCC.o ../RTCC.c  
	
${OBJECTDIR}/SmartRoom.o: SmartRoom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.ok ${OBJECTDIR}/SmartRoom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/SmartRoom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/SmartRoom.o.d" -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c  
	
${OBJECTDIR}/_ext/1472/hd44780.o: ../hd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.ok ${OBJECTDIR}/_ext/1472/hd44780.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hd44780.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/hd44780.o.d" -o ${OBJECTDIR}/_ext/1472/hd44780.o ../hd44780.c  
	
${OBJECTDIR}/_ext/1472/httppost.o: ../httppost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.ok ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/httppost.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/httppost.o.d" -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c  
	
${OBJECTDIR}/_ext/1472/httpposttag.o: ../httpposttag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/httpposttag.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/httpposttag.o.d" -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c  
	
${OBJECTDIR}/_ext/1472/ir.o: ../ir.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.ok ${OBJECTDIR}/_ext/1472/ir.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ir.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ir.o.d" -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c  
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.ok ${OBJECTDIR}/_ext/1472/lcd.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d" -o ${OBJECTDIR}/_ext/1472/lcd.o ../lcd.c  
	
${OBJECTDIR}/Sensors.o: Sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Sensors.o.d 
	@${RM} ${OBJECTDIR}/Sensors.o.ok ${OBJECTDIR}/Sensors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Sensors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/Sensors.o.d" -o ${OBJECTDIR}/Sensors.o Sensors.c  
	
${OBJECTDIR}/SmartRoom\ Config.o: SmartRoom\ Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom\ Config.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom\ Config.o.ok ${OBJECTDIR}/SmartRoom\ Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/SmartRoom Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/SmartRoom Config.o.d" -o "${OBJECTDIR}/SmartRoom Config.o" "SmartRoom Config.c"  
	
${OBJECTDIR}/Actuators.o: Actuators.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Actuators.o.d 
	@${RM} ${OBJECTDIR}/Actuators.o.ok ${OBJECTDIR}/Actuators.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Actuators.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/Actuators.o.d" -o ${OBJECTDIR}/Actuators.o Actuators.c  
	
${OBJECTDIR}/EpochTime.o: EpochTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/EpochTime.o.d 
	@${RM} ${OBJECTDIR}/EpochTime.o.ok ${OBJECTDIR}/EpochTime.o.err 
	@${FIXDEPS} "${OBJECTDIR}/EpochTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/EpochTime.o.d" -o ${OBJECTDIR}/EpochTime.o EpochTime.c  
	
else
${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o: ../BerkeleyTCPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPClientDemo.o ../BerkeleyTCPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o: ../BerkeleyUDPClientDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.ok ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyUDPClientDemo.o ../BerkeleyUDPClientDemo.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPClient.o: ../GenericTCPClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPClient.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPClient.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPClient.o ../GenericTCPClient.c  
	
${OBJECTDIR}/_ext/1472/GenericTCPServer.o: ../GenericTCPServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.ok ${OBJECTDIR}/_ext/1472/GenericTCPServer.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/GenericTCPServer.o.d" -o ${OBJECTDIR}/_ext/1472/GenericTCPServer.o ../GenericTCPServer.c  
	
${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o: ../LegacyHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/LegacyHTTPApp.o ../LegacyHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.ok ${OBJECTDIR}/_ext/1472/PingDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
${OBJECTDIR}/_ext/1472/SMTPDemo.o: ../SMTPDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/SMTPDemo.o.ok ${OBJECTDIR}/_ext/1472/SMTPDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/SMTPDemo.o.d" -o ${OBJECTDIR}/_ext/1472/SMTPDemo.o ../SMTPDemo.c  
	
${OBJECTDIR}/_ext/1472/UARTConfig.o: ../UARTConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/UARTConfig.o.ok ${OBJECTDIR}/_ext/1472/UARTConfig.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/UARTConfig.o.d" -o ${OBJECTDIR}/_ext/1472/UARTConfig.o ../UARTConfig.c  
	
${OBJECTDIR}/_ext/1295770447/ARCFOUR.o: ../../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.ok ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/1295770447/ARCFOUR.o "../../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1295770447/ARP.o: ../../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ARP.o.ok ${OBJECTDIR}/_ext/1295770447/ARP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ARP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ARP.o.d" -o ${OBJECTDIR}/_ext/1295770447/ARP.o "../../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/1295770447/Announce.o: ../../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Announce.o.ok ${OBJECTDIR}/_ext/1295770447/Announce.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Announce.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Announce.o.d" -o ${OBJECTDIR}/_ext/1295770447/Announce.o "../../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/1295770447/AutoIP.o: ../../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/AutoIP.o.ok ${OBJECTDIR}/_ext/1295770447/AutoIP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/AutoIP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/AutoIP.o.d" -o ${OBJECTDIR}/_ext/1295770447/AutoIP.o "../../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o: ../../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.ok ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/1295770447/BerkeleyAPI.o "../../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/1295770447/BigInt.o: ../../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/BigInt.o.ok ${OBJECTDIR}/_ext/1295770447/BigInt.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/BigInt.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/BigInt.o.d" -o ${OBJECTDIR}/_ext/1295770447/BigInt.o "../../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/1295770447/DHCP.o: ../../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCP.o.ok ${OBJECTDIR}/_ext/1295770447/DHCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DHCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DHCP.o.d" -o ${OBJECTDIR}/_ext/1295770447/DHCP.o "../../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/1295770447/DHCPs.o: ../../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DHCPs.o.ok ${OBJECTDIR}/_ext/1295770447/DHCPs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DHCPs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DHCPs.o.d" -o ${OBJECTDIR}/_ext/1295770447/DHCPs.o "../../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/1295770447/DNS.o: ../../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNS.o.ok ${OBJECTDIR}/_ext/1295770447/DNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/DNS.o "../../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/1295770447/DNSs.o: ../../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DNSs.o.ok ${OBJECTDIR}/_ext/1295770447/DNSs.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DNSs.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DNSs.o.d" -o ${OBJECTDIR}/_ext/1295770447/DNSs.o "../../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/1295770447/Delay.o: ../../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Delay.o.ok ${OBJECTDIR}/_ext/1295770447/Delay.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Delay.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Delay.o.d" -o ${OBJECTDIR}/_ext/1295770447/Delay.o "../../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/1295770447/DynDNS.o: ../../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/DynDNS.o.ok ${OBJECTDIR}/_ext/1295770447/DynDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/DynDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/DynDNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/DynDNS.o "../../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/1295770447/ENC28J60.o: ../../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.ok ${OBJECTDIR}/_ext/1295770447/ENC28J60.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/1295770447/ENC28J60.o "../../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/1295770447/ENCX24J600.o: ../../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.ok ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/1295770447/ENCX24J600.o "../../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/1295770447/FTP.o: ../../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FTP.o.ok ${OBJECTDIR}/_ext/1295770447/FTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/FTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/FTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/FTP.o "../../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/1295770447/FileSystem.o: ../../Microchip/TCPIP\ Stack/FileSystem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/FileSystem.o.ok ${OBJECTDIR}/_ext/1295770447/FileSystem.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/FileSystem.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/FileSystem.o.d" -o ${OBJECTDIR}/_ext/1295770447/FileSystem.o "../../Microchip/TCPIP Stack/FileSystem.c"  
	
${OBJECTDIR}/_ext/1295770447/HTTP.o: ../../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/HTTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/HTTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/HTTP.o "../../Microchip/TCPIP Stack/HTTP.c"  
	
${OBJECTDIR}/_ext/1295770447/HTTP2.o: ../../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/HTTP2.o.ok ${OBJECTDIR}/_ext/1295770447/HTTP2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/HTTP2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/HTTP2.o.d" -o ${OBJECTDIR}/_ext/1295770447/HTTP2.o "../../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/1295770447/Hashes.o: ../../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Hashes.o.ok ${OBJECTDIR}/_ext/1295770447/Hashes.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Hashes.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Hashes.o.d" -o ${OBJECTDIR}/_ext/1295770447/Hashes.o "../../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/1295770447/Helpers.o: ../../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Helpers.o.ok ${OBJECTDIR}/_ext/1295770447/Helpers.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Helpers.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Helpers.o.d" -o ${OBJECTDIR}/_ext/1295770447/Helpers.o "../../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/1295770447/ICMP.o: ../../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ICMP.o.ok ${OBJECTDIR}/_ext/1295770447/ICMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ICMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ICMP.o.d" -o ${OBJECTDIR}/_ext/1295770447/ICMP.o "../../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/1295770447/IP.o: ../../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/IP.o.ok ${OBJECTDIR}/_ext/1295770447/IP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/IP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/IP.o.d" -o ${OBJECTDIR}/_ext/1295770447/IP.o "../../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/1295770447/LCDBlocking.o: ../../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.ok ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/1295770447/LCDBlocking.o "../../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/1295770447/MPFS.o: ../../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/MPFS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/MPFS.o.d" -o ${OBJECTDIR}/_ext/1295770447/MPFS.o "../../Microchip/TCPIP Stack/MPFS.c"  
	
${OBJECTDIR}/_ext/1295770447/MPFS2.o: ../../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/MPFS2.o.ok ${OBJECTDIR}/_ext/1295770447/MPFS2.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/MPFS2.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/MPFS2.o.d" -o ${OBJECTDIR}/_ext/1295770447/MPFS2.o "../../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/1295770447/NBNS.o: ../../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/NBNS.o.ok ${OBJECTDIR}/_ext/1295770447/NBNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/NBNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/NBNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/NBNS.o "../../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/1295770447/RSA.o: ../../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/RSA.o.ok ${OBJECTDIR}/_ext/1295770447/RSA.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/RSA.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/RSA.o.d" -o ${OBJECTDIR}/_ext/1295770447/RSA.o "../../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/1295770447/Random.o: ../../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Random.o.ok ${OBJECTDIR}/_ext/1295770447/Random.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Random.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Random.o.d" -o ${OBJECTDIR}/_ext/1295770447/Random.o "../../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/1295770447/Reboot.o: ../../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Reboot.o.ok ${OBJECTDIR}/_ext/1295770447/Reboot.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Reboot.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Reboot.o.d" -o ${OBJECTDIR}/_ext/1295770447/Reboot.o "../../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/1295770447/SMTP.o: ../../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SMTP.o.ok ${OBJECTDIR}/_ext/1295770447/SMTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SMTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SMTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SMTP.o "../../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMP.o: ../../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMP.o.ok ${OBJECTDIR}/_ext/1295770447/SNMP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMP.o "../../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMPv3.o: ../../Microchip/TCPIP\ Stack/SNMPv3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMPv3.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMPv3.o "../../Microchip/TCPIP Stack/SNMPv3.c"  
	
${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o: ../../Microchip/TCPIP\ Stack/SNMPv3USM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.ok ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNMPv3USM.o "../../Microchip/TCPIP Stack/SNMPv3USM.c"  
	
${OBJECTDIR}/_ext/1295770447/SNTP.o: ../../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SNTP.o.ok ${OBJECTDIR}/_ext/1295770447/SNTP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SNTP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SNTP.o.d" -o ${OBJECTDIR}/_ext/1295770447/SNTP.o "../../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o: ../../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIEEPROM.o "../../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIFlash.o: ../../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.ok ${OBJECTDIR}/_ext/1295770447/SPIFlash.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIFlash.o "../../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/1295770447/SPIRAM.o: ../../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.ok ${OBJECTDIR}/_ext/1295770447/SPIRAM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/1295770447/SPIRAM.o "../../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/1295770447/SSL.o: ../../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/SSL.o.ok ${OBJECTDIR}/_ext/1295770447/SSL.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/SSL.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/SSL.o.d" -o ${OBJECTDIR}/_ext/1295770447/SSL.o "../../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/1295770447/StackTsk.o: ../../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/StackTsk.o.ok ${OBJECTDIR}/_ext/1295770447/StackTsk.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/StackTsk.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/StackTsk.o.d" -o ${OBJECTDIR}/_ext/1295770447/StackTsk.o "../../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/1295770447/TCP.o: ../../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCP.o.ok ${OBJECTDIR}/_ext/1295770447/TCP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TCP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TCP.o.d" -o ${OBJECTDIR}/_ext/1295770447/TCP.o "../../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1295770447/TCPPerformanceTest.o "../../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1295770447/TFTPc.o: ../../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/TFTPc.o.ok ${OBJECTDIR}/_ext/1295770447/TFTPc.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/TFTPc.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/TFTPc.o.d" -o ${OBJECTDIR}/_ext/1295770447/TFTPc.o "../../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/1295770447/Telnet.o: ../../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Telnet.o.ok ${OBJECTDIR}/_ext/1295770447/Telnet.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Telnet.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Telnet.o.d" -o ${OBJECTDIR}/_ext/1295770447/Telnet.o "../../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/1295770447/Tick.o: ../../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/Tick.o.ok ${OBJECTDIR}/_ext/1295770447/Tick.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/Tick.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/Tick.o.d" -o ${OBJECTDIR}/_ext/1295770447/Tick.o "../../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/1295770447/UART.o: ../../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART.o.ok ${OBJECTDIR}/_ext/1295770447/UART.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UART.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UART.o.d" -o ${OBJECTDIR}/_ext/1295770447/UART.o "../../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o: ../../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.ok ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/1295770447/UART2TCPBridge.o "../../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/1295770447/UDP.o: ../../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDP.o.ok ${OBJECTDIR}/_ext/1295770447/UDP.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UDP.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UDP.o.d" -o ${OBJECTDIR}/_ext/1295770447/UDP.o "../../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o: ../../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.ok ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/1295770447/UDPPerformanceTest.o "../../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o: ../../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfHelper.o "../../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o: ../../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfLinkLocal.o "../../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o: ../../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1295770447 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.ok ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/1295770447/ZeroconfMulticastDNS.o "../../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/1472/CustomHTTPApp.o: ../CustomHTTPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomHTTPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomHTTPApp.o ../CustomHTTPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSNMPApp.o: ../CustomSNMPApp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.ok ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSNMPApp.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSNMPApp.o ../CustomSNMPApp.c  
	
${OBJECTDIR}/_ext/1472/CustomSSLCert.o: ../CustomSSLCert.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.ok ${OBJECTDIR}/_ext/1472/CustomSSLCert.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/CustomSSLCert.o.d" -o ${OBJECTDIR}/_ext/1472/CustomSSLCert.o ../CustomSSLCert.c  
	
${OBJECTDIR}/_ext/1472/EEPROM.o: ../EEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/EEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EEPROM.o.ok ${OBJECTDIR}/_ext/1472/EEPROM.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/EEPROM.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/EEPROM.o.d" -o ${OBJECTDIR}/_ext/1472/EEPROM.o ../EEPROM.c  
	
${OBJECTDIR}/_ext/1472/HttpPostNew.o: ../HttpPostNew.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HttpPostNew.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HttpPostNew.o.ok ${OBJECTDIR}/_ext/1472/HttpPostNew.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HttpPostNew.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/HttpPostNew.o.d" -o ${OBJECTDIR}/_ext/1472/HttpPostNew.o ../HttpPostNew.c  
	
${OBJECTDIR}/_ext/1472/I2C.o: ../I2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/I2C.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/I2C.o.ok ${OBJECTDIR}/_ext/1472/I2C.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/I2C.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/I2C.o.d" -o ${OBJECTDIR}/_ext/1472/I2C.o ../I2C.c  
	
${OBJECTDIR}/_ext/1472/MainDemo.o: ../MainDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MainDemo.o.ok ${OBJECTDIR}/_ext/1472/MainDemo.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MainDemo.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/MainDemo.o.d" -o ${OBJECTDIR}/_ext/1472/MainDemo.o ../MainDemo.c  
	
${OBJECTDIR}/_ext/1472/Motionsense.o: ../Motionsense.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Motionsense.o.ok ${OBJECTDIR}/_ext/1472/Motionsense.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Motionsense.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/Motionsense.o.d" -o ${OBJECTDIR}/_ext/1472/Motionsense.o ../Motionsense.c  
	
${OBJECTDIR}/_ext/1472/RTCC.o: ../RTCC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/RTCC.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/RTCC.o.ok ${OBJECTDIR}/_ext/1472/RTCC.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/RTCC.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/RTCC.o.d" -o ${OBJECTDIR}/_ext/1472/RTCC.o ../RTCC.c  
	
${OBJECTDIR}/SmartRoom.o: SmartRoom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom.o.ok ${OBJECTDIR}/SmartRoom.o.err 
	@${FIXDEPS} "${OBJECTDIR}/SmartRoom.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/SmartRoom.o.d" -o ${OBJECTDIR}/SmartRoom.o SmartRoom.c  
	
${OBJECTDIR}/_ext/1472/hd44780.o: ../hd44780.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/hd44780.o.ok ${OBJECTDIR}/_ext/1472/hd44780.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/hd44780.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/hd44780.o.d" -o ${OBJECTDIR}/_ext/1472/hd44780.o ../hd44780.c  
	
${OBJECTDIR}/_ext/1472/httppost.o: ../httppost.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httppost.o.ok ${OBJECTDIR}/_ext/1472/httppost.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/httppost.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/httppost.o.d" -o ${OBJECTDIR}/_ext/1472/httppost.o ../httppost.c  
	
${OBJECTDIR}/_ext/1472/httpposttag.o: ../httpposttag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/httpposttag.o.ok ${OBJECTDIR}/_ext/1472/httpposttag.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/httpposttag.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/httpposttag.o.d" -o ${OBJECTDIR}/_ext/1472/httpposttag.o ../httpposttag.c  
	
${OBJECTDIR}/_ext/1472/ir.o: ../ir.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/ir.o.ok ${OBJECTDIR}/_ext/1472/ir.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ir.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/ir.o.d" -o ${OBJECTDIR}/_ext/1472/ir.o ../ir.c  
	
${OBJECTDIR}/_ext/1472/lcd.o: ../lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/lcd.o.ok ${OBJECTDIR}/_ext/1472/lcd.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/lcd.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/_ext/1472/lcd.o.d" -o ${OBJECTDIR}/_ext/1472/lcd.o ../lcd.c  
	
${OBJECTDIR}/Sensors.o: Sensors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Sensors.o.d 
	@${RM} ${OBJECTDIR}/Sensors.o.ok ${OBJECTDIR}/Sensors.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Sensors.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/Sensors.o.d" -o ${OBJECTDIR}/Sensors.o Sensors.c  
	
${OBJECTDIR}/SmartRoom\ Config.o: SmartRoom\ Config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/SmartRoom\ Config.o.d 
	@${RM} ${OBJECTDIR}/SmartRoom\ Config.o.ok ${OBJECTDIR}/SmartRoom\ Config.o.err 
	@${FIXDEPS} "${OBJECTDIR}/SmartRoom Config.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/SmartRoom Config.o.d" -o "${OBJECTDIR}/SmartRoom Config.o" "SmartRoom Config.c"  
	
${OBJECTDIR}/Actuators.o: Actuators.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/Actuators.o.d 
	@${RM} ${OBJECTDIR}/Actuators.o.ok ${OBJECTDIR}/Actuators.o.err 
	@${FIXDEPS} "${OBJECTDIR}/Actuators.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/Actuators.o.d" -o ${OBJECTDIR}/Actuators.o Actuators.c  
	
${OBJECTDIR}/EpochTime.o: EpochTime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/EpochTime.o.d 
	@${RM} ${OBJECTDIR}/EpochTime.o.ok ${OBJECTDIR}/EpochTime.o.err 
	@${FIXDEPS} "${OBJECTDIR}/EpochTime.o.d" $(SILENT) -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=elf -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -DEXPLORER_16_ENC28J60 -I".." -I"../../Microchip/Include" -I"../../Microchip/Include/TCPIP Stack" -I"../Alternative Configurations" -mlarge-code -Os -MMD -MF "${OBJECTDIR}/EpochTime.o.d" -o ${OBJECTDIR}/EpochTime.o EpochTime.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -o dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1,--heap=0,-L"..",-Map="${DISTDIR}/pic_server.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PICKIT2=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=elf -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1,--heap=0,-L"..",-Map="${DISTDIR}/pic_server.X.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}/pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic_server.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=elf
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
