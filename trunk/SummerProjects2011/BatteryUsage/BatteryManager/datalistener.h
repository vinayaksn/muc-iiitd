#ifndef DATALISTENER_H
#define DATALISTENER_H

#include <e32base.h>
#include <sensrvchannelfinder.h>
#include <sensrvdatalistener.h>
#include <sensrvchannel.h>
#include <sensrvorientationsensor.h>
#include<f32file.h>
#include<s32file.h>

class DataListener: public MSensrvDataListener
{
public:
    DataListener();
    ~DataListener();
    static DataListener* NewL();
    static DataListener* NewLC();
    void ConstructL();


private:

        void DataReceived(CSensrvChannel& aChannel, TInt aCount, TInt aDataLost );
        void DataError( CSensrvChannel&, TSensrvErrorSeverity);
        void GetDataListenerInterfaceL( TUid, TAny*&);
        CSensrvChannel*	iSensrvSensorChannel;


};

#endif // DATALISTENER_H
