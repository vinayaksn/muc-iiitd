
/*
 * CGestureInterpreter.cpp
 */

#include "CGestureInterpreter.h"
#include <sensrvchannelfinder.h>
#include <sensrvchannel.h>
#include <sensrvaccelerometersensor.h>
#include <sensrvtappingsensor.h>
#include <sensrvchannelinfo.h>
#include <sensrvorientationsensor.h>
#include<f32file.h>
#include<s32file.h>

CGestureInterpreter::CGestureInterpreter(MGestureListener* aListener)
        {
        iListener = aListener;
        iAccelerometerChannel = 0;
        iDblTapChannel = 0;
        iOrientationChannel = 0;
        }

CGestureInterpreter::~CGestureInterpreter()
        {
        Stop();
        }

void CGestureInterpreter::OpenChannelL( CSensrvChannel*& aChannel,
                                        TSensrvChannelTypeId aChannelTypeId )
    {
    CSensrvChannelFinder* finder = CSensrvChannelFinder::NewLC();
    RSensrvChannelInfoList channelList;
    CleanupClosePushL( channelList );

    TSensrvChannelInfo info;
    info.iChannelType = aChannelTypeId;
    finder->FindChannelsL( channelList, info );

    if ( channelList.Count() > 0 )
        {
        info = channelList[0];

        aChannel = CSensrvChannel::NewL( info );
        aChannel->OpenChannelL();
        aChannel->StartDataListeningL( this, 1, 1, 0 );
        }

    channelList.Close();
    CleanupStack::Pop( &channelList );
    CleanupStack::PopAndDestroy( finder );
    }


void CGestureInterpreter::StartL()
        {
        OpenChannelL( iAccelerometerChannel,
                        KSensrvChannelTypeIdAccelerometerXYZAxisData ) ;


        OpenChannelL( iDblTapChannel,
                        KSensrvChannelTypeIdAccelerometerDoubleTappingData ) ;

        OpenChannelL( iOrientationChannel,
                        KSensrvChannelTypeIdOrientationData ) ;
        //file writing test
         _LIT( KWorksDataFile,"c:\\devorientation.txt");
        RFs fsSession;
        RFile file;
        TFileText txt_file;
        TInt pos = 0;
        User::LeaveIfError(fsSession.Connect());
        TInt err=file.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        if (err==KErrNotFound) // file does not exist - create it
        err=file.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        else
        {

            err = file.Seek( ESeekEnd , pos );
         }
        TBuf8<100> test_string1;
        test_string1.Append(_L8("Start l mein !!"));
        file.Write(test_string1);
        file.Close();
        fsSession.Close();

        }

void CGestureInterpreter::Stop()
        {
    if( iDblTapChannel )
        {
        iDblTapChannel->StopDataListening();
        iDblTapChannel->CloseChannel();
        delete iDblTapChannel;
        iDblTapChannel = 0;
        }

    if( iAccelerometerChannel )
        {
        iAccelerometerChannel->StopDataListening();
        iAccelerometerChannel->CloseChannel();
        delete iAccelerometerChannel;
        iAccelerometerChannel = 0;
        }

    if( iOrientationChannel )
        {
        iOrientationChannel->StopDataListening();
        iOrientationChannel->CloseChannel();
        delete iOrientationChannel;
        iOrientationChannel = 0;
        }
        }


void CGestureInterpreter::DataReceived( CSensrvChannel& aChannel,
                                               TInt /*aCount*/,
                                               TInt /*aDataLost*/ )
    {
    TSensrvChannelInfo info = aChannel.GetChannelInfo();






    _LIT( KWorksDataFile,"c:\\devorientation.txt");
   RFs fsSession;
   RFile file;
   TFileText txt_file;
   TInt pos = 0;
   User::LeaveIfError(fsSession.Connect());
   TInt err=file.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
   if (err==KErrNotFound) // file does not exist - create it
   err=file.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
   else
   {

       err = file.Seek( ESeekEnd , pos );
    }
   TBuf8<100> test_string1;
   test_string1.Append(_L8("data received !!"));







    if( info.iChannelType == KSensrvChannelTypeIdAccelerometerDoubleTappingData )
        {
            test_string1.Append(_L8("tapping data !!"));
        TSensrvTappingData tappingData;
        TPckg<TSensrvTappingData> tappingPackage( tappingData );
        aChannel.GetData( tappingPackage );
        iListener->GestureEvent(0,0,tappingData.iDirection,0);
        }

    else if( info.iChannelType == KSensrvChannelTypeIdAccelerometerXYZAxisData )
        {
            test_string1.Append(_L8("accelerometer data !!"));

        TSensrvAccelerometerAxisData accData;
        TPckg<TSensrvAccelerometerAxisData> accPackage( accData );
        aChannel.GetData( accPackage );
        iListener->GestureEvent(1,accData.iAxisX,accData.iAxisY,accData.iAxisZ);
        }

    else if( info.iChannelType == KSensrvChannelTypeIdOrientationData )
        {
            test_string1.Append(_L8("orientation data !!"));

        TSensrvOrientationData accData;
        TPckg<TSensrvOrientationData> accPackage( accData );
        aChannel.GetData( accPackage );
        iListener->GestureEvent(2,1,accData.iDeviceOrientation,0);
        }
    file.Write(test_string1);
    file.Close();
    fsSession.Close();
    }


void CGestureInterpreter::DataError( CSensrvChannel& aChannel,
                        TSensrvErrorSeverity aError )
        {

        }

void CGestureInterpreter::GetDataListenerInterfaceL( TUid aInterfaceUid, TAny*& aInterface )
        {
    aInterface = NULL;
        }
