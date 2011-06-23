#include "mainwindow.h"
#include<dispinf.h>
#include <QtGui/QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    DispInf g;
    g.showMaximized();
   // MainWindow mainWindow;
   // mainWindow.setOrientation(MainWindow::ScreenOrientationAuto);
   // mainWindow.showExpanded();

    return app.exec();
}
