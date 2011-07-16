
/*
 * CGestureInterpreter.h
 */

#ifndef CGESTUREINTERPRETER_H_
#define CGESTUREINTERPRETER_H_

#include <sensrvdatalistener.h>

class MGestureListener
        {
public:
        /**
         * event id, eventType= { EGestureComplete, EGestureContenue }
         */
        virtual void GestureEvent(TUint channel, TUint event, TUint eventType, TUint aClarity) = 0;
        };
class CGestureInterpreter : public CBase,
                                                        public MSensrvDataListener
        {
        MGestureListener* iListener;
public:
        CGestureInterpreter(MGestureListener* aListener);
        virtual ~CGestureInterpreter();

        void StartL();
        void Stop();
private:
    /**
     * Opened sensor channels.
     * Owned by CSensorExampleAppUi
     */
     CSensrvChannel* iDblTapChannel;
     CSensrvChannel* iAccelerometerChannel;
     CSensrvChannel* iOrientationChannel;

     void OpenChannelL( CSensrvChannel*& aChannel,
                                             TSensrvChannelTypeId aChannelTypeId );

public:
     void DataReceived( CSensrvChannel& aChannel,
                                                    TInt /*aCount*/,
                                                    TInt /*aDataLost*/ );

     void DataError( CSensrvChannel& aChannel,
                             TSensrvErrorSeverity aError );

     void GetDataListenerInterfaceL( TUid aInterfaceUid, TAny*& aInterface );


     TInt iSampleSeq;

        };





#endif // CGESTUREINTERPRETER_H
