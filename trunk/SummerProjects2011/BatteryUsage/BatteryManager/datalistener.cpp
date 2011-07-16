
#include "datalistener.h"
#include <sensrvtypes.h>
#include <sensrvgeneralproperties.h>
#include <sensrvorientationsensor.h>

DataListener::DataListener()
{


}

DataListener* DataListener::NewL()
{
        DataListener* self = DataListener::NewLC();
        CleanupStack::Pop( self );
        return self;

}



DataListener* DataListener::NewLC()
{
    DataListener* self = new (ELeave) DataListener();
    CleanupStack::PushL(self);
    self->ConstructL();
    return self;


    }

void DataListener::ConstructL()
{
    CSensrvChannelFinder* SensrvChannelFinder = CSensrvChannelFinder::NewLC();
    RSensrvChannelInfoList ChannelInfoList;
    CleanupClosePushL( ChannelInfoList );

    TSensrvChannelInfo mySearchConditions; // none, so matches all.
    mySearchConditions.iChannelDataTypeId = KSensrvChannelTypeIdOrientationData;
    SensrvChannelFinder->FindChannelsL(ChannelInfoList,mySearchConditions);

     // do something with the ChannelInfoList

    iSensrvSensorChannel = CSensrvChannel::NewL( ChannelInfoList[0] );
    iSensrvSensorChannel->OpenChannelL();
    iSensrvSensorChannel->StartDataListeningL( this, 1,1,0);



    ChannelInfoList.Close();
    CleanupStack::Pop( &ChannelInfoList );
    CleanupStack::PopAndDestroy( SensrvChannelFinder );
}

DataListener::~DataListener()
{


}

void DataListener::DataError( CSensrvChannel&, TSensrvErrorSeverity)
{

}

void DataListener::DataReceived(CSensrvChannel &aChannel, TInt aCount, TInt aDataLost)
{
    _LIT( KWorksDataFile,"c://devorientation.txt");

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
    TBuf8<100> orientation_string;
    orientation_string.Append(_L8("Orientation = "));

    if (aChannel.GetChannelInfo().iChannelType == KSensrvChannelTypeIdOrientationData) {
               TSensrvOrientationData data;
               for (int i = 0; i < aCount; ++i)
               {
                   TPckgBuf<TSensrvOrientationData> dataBuf;
                   aChannel.GetData(dataBuf);
                   data = dataBuf();
                   switch (data.iDeviceOrientation)
                   {
                   case TSensrvOrientationData::EOrientationDisplayUp:
                       orientation_string.Append(_L8("Portrait"));
                       break;
                   case TSensrvOrientationData::EOrientationDisplayRightUp:
                       orientation_string.Append(_L8("Landscape"));
                       break;
                   case TSensrvOrientationData::EOrientationDisplayLeftUp:
                       orientation_string.Append(_L8("LandscapeInverted"));
                       break;
                   case TSensrvOrientationData::EOrientationDisplayDown:
                       orientation_string.Append(_L8("PortraitInverted"));
                       break;
                   case TSensrvOrientationData::EOrientationUndefined:
                       orientation_string.Append(_L8("Undefined"));
                        break;
                   case TSensrvOrientationData::EOrientationDisplayUpwards:
                       orientation_string.Append(_L8("Display upwards"));
                        break;
                   case TSensrvOrientationData::EOrientationDisplayDownwards:
                       orientation_string.Append(_L8("Display downwards"));
                        break;
                   default:
                       break;
                   }
            } file.Write(orientation_string);
               file.Close();
               fsSession.Close();
    }
}
void DataListener::GetDataListenerInterfaceL(TUid, TAny *&)
{

}
