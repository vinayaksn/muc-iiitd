#include "csensortestcontainer.h"
#include<f32file.h>
#include<s32file.h>

/**
 * First phase of Symbian two-phase construction. Should not
 * contain any code that could leave.
 */
CSensorTestContainer::CSensorTestContainer()
        {

        }
/**
 * Destroy child controls.
 */
CSensorTestContainer::~CSensorTestContainer()
        {

        iGestures->Stop();
        delete iGestures;
        }

/**
 * Construct the control (first phase).
 *  Creates an instance and initializes it.
 *  Instance is not left on cleanup stack.

 */
CSensorTestContainer* CSensorTestContainer::NewL()
        {
    _LIT( KWorksDataFile,"c:\\log3.txt");

    RFs fsSession;
    RFile ifile;
    TInt pos = 0;
    User::LeaveIfError(fsSession.Connect());
    TInt err=ifile.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
    if (err==KErrNotFound) // file does not exist - create it
    err=ifile.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
    else
    {

        err = ifile.Seek( ESeekEnd , pos );
     }

            TBuf8<100> myString;
            myString.Append(_L8("newl"));
            ifile.Write(myString);
            ifile.Close();
            fsSession.Close();

        CSensorTestContainer* self = CSensorTestContainer::NewLC();



        CleanupStack::Pop( self );
        return self;
        }

/**
 * Construct the control (first phase).
 *  Creates an instance and initializes it.
 *  Instance is left on cleanup stack.
 * @param aRect The rectangle for this window
 * @param aParent owning parent, or NULL
 * @param aCommandObserver command observer
 * @return new instance of CSensorTestContainer
 */
CSensorTestContainer* CSensorTestContainer::NewLC( )
        {
        CSensorTestContainer* self = new ( ELeave ) CSensorTestContainer();

        //file writing test
        _LIT( KWorksDataFile,"c:\\log3.txt");

        RFs fsSession;
        RFile ifile;
        TInt pos = 0;
        User::LeaveIfError(fsSession.Connect());
        TInt err=ifile.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        if (err==KErrNotFound) // file does not exist - create it
        err=ifile.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        else
        {

            err = ifile.Seek( ESeekEnd , pos );
         }

                TBuf8<100> myString;
                myString.Append(_L8("newlc "));
                ifile.Write(myString);
                ifile.Close();
                fsSession.Close();

        CleanupStack::PushL( self );
        self->ConstructL( );
        return self;
        }

/**
 * Construct the control (second phase).
 *  Creates a window to contain the controls and activates it.
 */
void CSensorTestContainer::ConstructL( )
        {
        iGestures = new CGestureInterpreter(this);
        iGestures->StartL();

        //file writing test
        _LIT( KWorksDataFile,"c:\\log3.txt");

        RFs fsSession;
        RFile ifile;
        TInt pos = 0;
        User::LeaveIfError(fsSession.Connect());
        TInt err=ifile.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        if (err==KErrNotFound) // file does not exist - create it
        err=ifile.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
        else
        {

            err = ifile.Seek( ESeekEnd , pos );
         }

                TBuf8<100> myString;
                myString.Append(_L8("constructl"));
                ifile.Write(myString);
                ifile.Close();
                fsSession.Close();
        }




void CSensorTestContainer::GestureEvent(TUint channel, TUint event, TUint eventType, TUint aClarity)
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


    TBuf8<100> orientation_string, tapping_string, accelerometer_string;




        if(channel == 0)
                {
                    tapping_string.Append(_L8("Tapping Direction="));
                    file.Write(tapping_string);
                }
        else if(channel == 1)
                {
                    accelerometer_string.Append(_L8("Accelerometer values="));
                    file.Write(accelerometer_string);

                }
        else if(channel ==2)
                {
                    orientation_string.Append(_L8("Orientation = "));
                    file.Write(orientation_string);
              //  iIntegerEditor1->SetValueL(event);
              //  iIntegerEditor1->DrawDeferred();
               // iIntegerEditor2->SetValueL(eventType);
               // iIntegerEditor2->DrawDeferred();
                //iIntegerEditor3->SetValueL(aClarity);
                //iIntegerEditor3->DrawDeferred();
        }
        else
        {
            orientation_string.Append(_L8("Orientation = "));
            file.Write(orientation_string);

        }
        file.Close();
        fsSession.Close();

        }

