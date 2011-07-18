#ifndef NEPREADER_H
#define NEPREADER_H
#include <e32base.h>
#include <f32file.h>
#include <s32file.h>

#include "JuiceExternalApi.h"

// CLASS DECLARATION
/**
* CSampleReader.
* Interacts as external client application which uses CJuiceSystemPropertyReader
* for receivings data from Juice.
*/
class CSampleReader: public CBase, public MJuiceMeasurementSampleReaderIf
{
public: // Functions

        /**
         * NewL
         * First phase constructor.
         * @param	aId			Client Identifier which identifies one client from another.
         * @param 	aFileName	Filename which will be used for saving data samples to file.
         */
        static CSampleReader* NewL(TInt aId, TFileName aFileName);

        /**
         * Destructor
         */
        virtual ~CSampleReader();

public:

    /**
     * From MJuiceMeasurementSampleIf.
     * Called when new samples are available.
     * @param aJuiceSamples New samples.
     */
        void ReadJuiceSamples(const TJuiceMeasurementSamples& aJuiceSamples);

private: // Functions

        /**
         * Second phase constructor.
         * @param 	aFileName	Filename which will be used for saving data samples to file.
         */
        void ConstructL(TFileName aFileName);

        /**
         * Default constructor.
         * @param	aId			Client Identifier which identifies one client from another.
         */
        CSampleReader(TInt aId);

private: // Data

        /**
         * Client id.
         */
        TInt iId;

        /**
         * Juice API class which can be used for receiving data from Juice API.
         */
        CJuiceExternalApi* iJuiceExtApi;

        /**
         * FileStream for data coming from Juice.
         */
        RFileWriteStream iFileWriteStream;

        /**
         * File system session.
         */
        RFs iFsSession;

};




#endif // NEPREADER_H
