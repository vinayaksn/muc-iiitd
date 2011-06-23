#ifndef DISPINF_H
#define DISPINF_H

#include <QtGui/QMainWindow>
#include <qsysteminfo.h>


QTM_USE_NAMESPACE;

class QListWidget;
class QScrollArea;

class DispInf : public QMainWindow
{
    Q_OBJECT

public:
        DispInf(QWidget *parent = 0);
    ~DispInf();

private:
        void setWidgetGeometry(QSize* screenSize);
        void getDisplayInformation();

public slots:
        //void clearlist();
        void batterylevel();
        void networkstatus(QSystemNetworkInfo::NetworkMode);
        void networksignal(QSystemNetworkInfo::NetworkMode,int);
        void bluetoothstatus(bool);




private:
    QSystemDisplayInfo* dispInfo;
    QSystemDeviceInfo*  devInfo;
    QSystemNetworkInfo* netInfo;
        QListWidget     *listWidget;
        QScrollArea     *scrollArea;
};

#endif // DISPINF_H
