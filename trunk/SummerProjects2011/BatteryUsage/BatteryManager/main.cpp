#include "mainwindow.h"
#ifdef Q_OS_SYMBIAN
#include<HelloWorldContainer.h>
//#include<csensortestcontainer.h>
#include<f32file.h>
#include<s32file.h>
#endif
#include <QtGui/QApplication>
#include<batteryinfo.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    #ifdef Q_OS_SYMBIAN
    /*CSensorTestContainer *cs;
    cs= CSensorTestContainer::NewL();*/
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
   myString.Append(_L8("Free RAM = "));
   ifile.Write(myString);
   ifile.Close();
   fsSession.Close();
   CHelloWorldContainer *cc;
    cc= CHelloWorldContainer::NewL();
#endif

    GetInfo g;
    g.showMaximized();
  /* MainWindow mainWindow;
   mainWindow.setOrientation(MainWindow::ScreenOrientationAuto);
   mainWindow.showExpanded();*/

    return app.exec();
}
