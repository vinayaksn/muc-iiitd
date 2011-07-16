#ifndef BATTERYINFO_H
#define BATTERYINFO_H


#include <QtGui/QMainWindow>
#include <qsysteminfo.h>


QTM_USE_NAMESPACE;

class QListWidget;
class QScrollArea;

class GetInfo : public QMainWindow
{
    Q_OBJECT

public:
        GetInfo(QWidget *parent = 0);
    ~GetInfo();

private:
        void setWidgetGeometry(QSize* screenSize);

public slots:
        void getDisplayInformation();
        //void clearlist();

signals: void timeout();



private:
    QSystemDisplayInfo* dispInfo;
    QSystemDeviceInfo*  devInfo;
    QSystemNetworkInfo* netInfo;
    QListWidget     *listWidget;
    QScrollArea     *scrollArea;
    int i;
};

#endif // BATTERYINFO_H
