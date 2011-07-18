
#include "nepreader.h"

// LITERALS
_LIT( KText, "Hello Juice!" );
_LIT( KClient, "Client:" );
_LIT( KCapacity, "Capacity:" );
_LIT( KTemperature, "Temperature:" );
_LIT( KVoltage, "Voltage:" );
_LIT( KCurrent, "Current:" );
_LIT( KRx, "Rx:" );
_LIT( KTx, "Tx:" );
_LIT( KValueSeparator, " ");
_LIT( KSampleSeparator, ", ");
_LIT( KEndLine, "\n" );
_LIT( KHeading, "Time, Timestamp(ms), Current(mA),Voltage(mV), Energy(mAh), CPU user usage(%), CPU kernel usage(%), Upload speed(kbps), Download Speed(kbps), Wlan signal strength (dBm), Received signal strength (dBm), Used RAM\n" );

CSampleReader* CSampleReader::NewL(TInt aId, TFileName aFileName)
        {
        CSampleReader* self = new (ELeave) CSampleReader(aId);
        CleanupStack::PushL(self);
        self->ConstructL(aFileName);
        CleanupStack::Pop();
        return self;
        }


CSampleReader::CSampleReader(TInt aId)
: iId(aId)
        {

        }

void CSampleReader::ConstructL(TFileName aFileName)
        {
        //Create ExtAPI instance with callback implementation
        iJuiceExtApi = CJuiceExternalApi::NewL(this);

        // Connect to Juice
        User::LeaveIfError( iJuiceExtApi->Connect() );

        //Start recording to receive data
        User::LeaveIfError( iJuiceExtApi->StartMeasuring() );

        // Create a filestream to write the text to
        User::LeaveIfError(iFsSession.Connect());

        TInt err = iFsSession.MkDirAll(aFileName);
        if ( (KErrNone != err) && (KErrAlreadyExists != err) )
                {
                User::Leave( err );
                }
        User::LeaveIfError(iFileWriteStream.Replace(iFsSession,aFileName, EFileWrite));//EFileShareReadersOnly));// EFileStreamText));
        TBuf8<255> line;
        line.Append(KHeading);
        iFileWriteStream.WriteL(line);

        }

CSampleReader::~CSampleReader()
        {
        iJuiceExtApi->Disconnect();

        delete iJuiceExtApi;
        iJuiceExtApi = NULL;

        iFileWriteStream.Close();
        iFsSession.Close();
        }

void CSampleReader::ReadJuiceSamples(const TJuiceMeasurementSamples& aJuiceSamples)
        {
    TBuf8<255> line;

    //time to be added

    //TIMESTAMP by getting current time starts here
    TTime now;
    now.HomeTime();    // get current date and time

    //TBuf<50> timeString;
    TBuf<50> timeString;

    // print time using default time separator characters in 24 hour clock format
    // format: hour:minute:second.microsecond
     _LIT(KOwnTimeFormat,"%:0%H%:1%T%:2%S.%*C3%:3");
     now.FormatL(timeString,KOwnTimeFormat);
     TBuf8<100> timestamp;
     timestamp.Append(_L8("\n"));
     timestamp.Append(timeString);

    line.Append(timeString);                                                                    // current time
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iCurrent.iSampleTime);                                         // timestamp in milliseconds
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iCurrent.iSampleValue);                                        // current in mA
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iVoltage.iSampleValue);                                        // voltage in mV
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iEnergy.iSampleValue);                                         // energy in mAh
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iCpuUser.iSampleValue);                                        // Cpu user usage %age
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iCpuKernel.iSampleValue);                                      // Cpu kernel usage %age
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iIpUp.iSampleValue);                                           // Upload speed in kbps
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iIpDown.iSampleValue);                                         // Download speed in kbps
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iWlanRssi.iSampleValue);                                       // Wlan signal strength (dBm)
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iRxStrength.iSampleValue);                                     // Received signal strength(dBm)
    line.Append(KSampleSeparator);
    line.AppendNum(aJuiceSamples.iMemStack.iSampleValue + aJuiceSamples.iMemHeap.iSampleValue);    // RAM memory used







        line.Append(KEndLine);

        iFileWriteStream.WriteL(line);

        iFileWriteStream.CommitL();

        }



