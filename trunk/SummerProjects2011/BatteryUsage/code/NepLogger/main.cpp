#include "mainwindow.h"
#include <QtGui/QApplication>
#ifdef Q_OS_SYMBIAN
#include"nepreader.h"
#endif

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    #ifdef Q_OS_SYMBIAN
    TInt id= 0xA00104B3;
    TBuf<256> filename;
    filename.Copy(_L("e://neplog.txt"));
    TFileName file( filename );
    CSampleReader *sp;
    sp= CSampleReader::NewL(id, file);
    #endif
    MainWindow mainWindow;
    mainWindow.setOrientation(MainWindow::ScreenOrientationAuto);
    mainWindow.showExpanded();

    return app.exec();
}
