#ifndef CSENSORTESTCONTAINER_H
#define CSENSORTESTCONTAINER_H


#include "CGestureInterpreter.h"


/**
 * Container class for SensorTestContainer
 *
 * @class	CSensorTestContainer SensorTestContainer.h
 */
class CSensorTestContainer : public MGestureListener
        {
        CGestureInterpreter* iGestures;
public:
        void GestureEvent(TUint channel, TUint event, TUint eventType, TUint aClarity);
        // constructors and destructor
        CSensorTestContainer();
        static CSensorTestContainer* NewL( );
        static CSensorTestContainer* NewLC( );
        void ConstructL( );
        virtual ~CSensorTestContainer();

        };



#endif // CSENSORTESTCONTAINER_H
