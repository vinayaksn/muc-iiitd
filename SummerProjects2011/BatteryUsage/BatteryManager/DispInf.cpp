
#include "dispinf.h"
#include <QListWidget>
#include <QScrollArea>
#include<QTime>
#include<QFile>
#include<QTextStream>
#include<QDir>


DispInf::DispInf(QWidget *parent)
    : QMainWindow(parent)
{
        setWindowTitle("Get display information");


        dispInfo = new QSystemDisplayInfo(this);
        devInfo = new QSystemDeviceInfo(this);
        netInfo=new QSystemNetworkInfo(this);
        /* To show items in list view */
        listWidget = new QListWidget();
        listWidget->setObjectName(QString::fromUtf8("listWidget"));

        /* To make UI scrollable */
        scrollArea = new QScrollArea();
        setWidgetGeometry(&(size()));

        /* scrollArea takes ownership of the listWidget*/
        scrollArea->setWidget(listWidget);
        scrollArea->setAlignment(Qt::AlignLeft);
        scrollArea->setWidgetResizable(true);

        QSystemDeviceInfo::BatteryStatus batteryStatus = devInfo->batteryStatus();
        //QObject::connect(devInfo,SIGNAL(batteryStatusChanged(QSystemDeviceInfo::BatteryStatus)),this,SLOT(batterylevel()));
        QObject::connect(devInfo,SIGNAL(batteryLevelChanged(int)),this,SLOT(batterylevel()));
        QObject::connect(devInfo,SIGNAL(bluetoothStateChanged(bool)),this, SLOT(bluetoothstatus(bool)));
       // QObject::connect(devInfo,SIGNAL(powerStateChanged(QSystemDeviceInfo::PowerState)), this , SLOT(powerstatus()));
        /*Signals fired for network status change*/
        //QObject::connect(netInfo,SIGNAL(networkStatusChanged(QSystemNetworkInfo::GsmMode,QSystemNetworkInfo::NetworkStatus)),this,SLOT(networkstatus_gsm()));
       // QObject::connect(netInfo,SIGNAL(networkStatusChanged(QSystemNetworkInfo::BluetoothMode,QSystemNetworkInfo::NetworkStatus)),this,SLOT(networkstatus_wlan()));
        //QObject::connect(netInfo,SIGNAL(networkStatusChanged(QSystemNetworkInfo::WlanMode,QSystemNetworkInfo::NetworkStatus)),this,SLOT(networkstatus_bluetooth()));
        QObject::connect(netInfo,SIGNAL(networkStatusChanged(QSystemNetworkInfo::NetworkMode,QSystemNetworkInfo::NetworkStatus)),this,SLOT(networkstatus(QSystemNetworkInfo::NetworkMode)));
        QObject::connect(netInfo,SIGNAL(networkSignalStrengthChanged(QSystemNetworkInfo::NetworkMode,int)),this, SLOT(networksignal(QSystemNetworkInfo::NetworkMode, int)));
        /* QMainWindow takes ownership of the scrollArea, so no need to delete it */
        setCentralWidget(scrollArea);
        getDisplayInformation();
        QDir().mkdir("e://Battery_Manager");
        QFile file("e://Battery_Manager/batterylog.txt");



}

DispInf::~DispInf()
{
}

void DispInf::setWidgetGeometry(QSize* screenSize)
{
        resize(*screenSize);
        QRect rect(0,0,screenSize->width(), screenSize->height());
        listWidget->setGeometry(rect);
}

void DispInf::getDisplayInformation()
{
        QString infoStr;
        QFile file("e://Battery_Manager/batterylog.txt");
        file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
        QTextStream out(&file);
        QDateTime t= QDateTime::currentDateTime();
        QString tformat="hh:mm:ss:z";
        QString dformat="d.MM.yyyy";
        QString & need=dformat;
        QString & need2=tformat;
        QString time=t.toString(need) + "    " + t.toString(need2);

        listWidget->addItem(infoStr);
        /* get color depth of screen */
        infoStr.setNum(dispInfo->colorDepth(0));
        infoStr.prepend("Color depth: ");
        listWidget->addItem(infoStr);
        infoStr.prepend(time);
        out<<infoStr+"\n";

        /* get display brightness of screen */
        infoStr.clear();
        infoStr.setNum(dispInfo->displayBrightness(0));
        infoStr.prepend("Display brightness: ");
        listWidget->addItem(infoStr);
        infoStr.prepend(time);
        out<<infoStr+"\n";

        /*get battery level */
        infoStr.clear();
        infoStr.setNum(devInfo->batteryLevel());
        infoStr.prepend("Battery level: ");
        infoStr.append("%");
        listWidget->addItem(infoStr);
        infoStr.prepend(time);
        out<<infoStr+"\n";

            /*get gsm network strength*/
        infoStr.clear();
        infoStr.setNum(netInfo->networkSignalStrength(QSystemNetworkInfo::GsmMode));
        infoStr.prepend("GSM Network signal strength: ");
        infoStr.append("%");
        listWidget->addItem(infoStr);
        infoStr.prepend(time);
        out<<infoStr+"\n";

        /*Get Network status for GSM mode*/
        infoStr.clear();
                infoStr.append("GSM Network status: ");

                switch(netInfo->networkStatus(QSystemNetworkInfo::GsmMode))
                {
                        case QSystemNetworkInfo::Roaming:
                                infoStr.append("On Roaming network.");
                                break;
                        case QSystemNetworkInfo::Denied:
                                infoStr.append("Network access denied.");
                                break;
                        case QSystemNetworkInfo::HomeNetwork:
                                infoStr.append("On Home Network");
                                break;
                        case QSystemNetworkInfo::Connected:
                                infoStr.append("Connected to network.");
                                break;
                        case QSystemNetworkInfo::Busy:
                                infoStr.append("Network is busy.");
                                break;
                        case QSystemNetworkInfo::Searching:
                                infoStr.append("Searching for or connecting with the network.");
                                break;
                        case QSystemNetworkInfo::EmergencyOnly:
                                infoStr.append("Emergency calls only.");
                                break;
                        case QSystemNetworkInfo::NoNetworkAvailable:
                                infoStr.append("There is no network available.");
                                break;
                        case QSystemNetworkInfo::UndefinedStatus:
                        Default:
                                infoStr.append("There is no network device, or error.");
                                break;
                }
                listWidget->addItem(infoStr);
                infoStr.prepend(time);
                out<<infoStr+"\n";




                /*Get Network status for WLAN mode */
                infoStr.clear();
                        infoStr.append("WLAN Network status: ");

                        switch(netInfo->networkStatus(QSystemNetworkInfo::WlanMode))
                        {
                                case QSystemNetworkInfo::Roaming:
                                        infoStr.append("On Roaming network.");
                                        break;
                                case QSystemNetworkInfo::Denied:
                                        infoStr.append("Network access denied.");
                                        break;
                                case QSystemNetworkInfo::HomeNetwork:
                                        infoStr.append("On Home Network");
                                        break;
                                case QSystemNetworkInfo::Connected:
                                        infoStr.append("Connected to network.");
                                        break;
                                case QSystemNetworkInfo::Busy:
                                        infoStr.append("Network is busy.");
                                        break;
                                case QSystemNetworkInfo::Searching:
                                        infoStr.append("Searching for or connecting with the network.");
                                        break;
                                case QSystemNetworkInfo::EmergencyOnly:
                                        infoStr.append("Emergency calls only.");
                                        break;
                                case QSystemNetworkInfo::NoNetworkAvailable:
                                        infoStr.append("There is no network available.");
                                        break;
                                case QSystemNetworkInfo::UndefinedStatus:
                                Default1:
                                        infoStr.append("There is no network device, or error.");
                                        break;
                        }
                        listWidget->addItem(infoStr);
                        infoStr.prepend(time);
                         out<<infoStr+"\n";



                /*Get Network Status for Bluetooth mode*/

                infoStr.clear();
                        infoStr.append("Bluetooth Network status: ");

                        switch(netInfo->networkStatus(QSystemNetworkInfo::BluetoothMode))
                        {
                                case QSystemNetworkInfo::Roaming:
                                        infoStr.append("On Roaming network.");
                                        break;
                                case QSystemNetworkInfo::Denied:
                                        infoStr.append("Network access denied.");
                                        break;
                                case QSystemNetworkInfo::HomeNetwork:
                                        infoStr.append("On Home Network");
                                        break;
                                case QSystemNetworkInfo::Connected:
                                        infoStr.append("Connected to network.");
                                        break;
                                case QSystemNetworkInfo::Busy:
                                        infoStr.append("Network is busy.");
                                        break;
                                case QSystemNetworkInfo::Searching:
                                        infoStr.append("Searching for or connecting with the network.");
                                        break;
                                case QSystemNetworkInfo::EmergencyOnly:
                                        infoStr.append("Emergency calls only.");
                                        break;
                                case QSystemNetworkInfo::NoNetworkAvailable:
                                        infoStr.append("There is no network available.");
                                        break;
                                case QSystemNetworkInfo::UndefinedStatus:
                                Default2:
                                        infoStr.append("There is no network device, or error.");
                                        break;
                        }

                        listWidget->addItem(infoStr);
                        infoStr.prepend(time);
                        out<<infoStr+"\n";






                /*Get current bluetooth state*/
                infoStr.clear();
                int num=devInfo->currentBluetoothPowerState();
                if(num==0)
                    infoStr.append("Off");
                else
                    infoStr.append("On");

                infoStr.prepend("Bluetooth State: ");
                listWidget->addItem(infoStr);
                infoStr.prepend(time);
                out<<infoStr+"\n";

                infoStr.clear();
             /*
             //Check if the device is locked
                num=devInfo->isDeviceLocked();
                if(num==0)
                    infoStr.append("No");
                else
                    infoStr.append("Yes");

                infoStr.prepend("Device Locked: ");
                listWidget->addItem(infoStr);
                infoStr.prepend(time);

                out<<infoStr+"\n";
                */


}
 /*void DispInf::clearlist()
 {
      listWidget->clear();

  }*/

 void DispInf::batterylevel()
 {
     QString infoStr;
     QDateTime t= QDateTime::currentDateTime();
     QString tformat="hh:mm:ss:z";
     QString dformat="d.MM.yyyy";
     QString & need=dformat;
     QString & need2=tformat;
     QString time=t.toString(need) + "   " + t.toString(need2);
     infoStr.clear();
     infoStr.setNum(devInfo->batteryLevel());
     infoStr.prepend("  Battery Level changed. New Level :");
     infoStr.prepend(time);
     QFile file("e://Battery_Manager/batterylog.txt");
     file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
     QTextStream out(&file);
     out<<infoStr+"\n";
     file.close();
     listWidget->addItem(infoStr);
 }

 void DispInf::networksignal(QSystemNetworkInfo::NetworkMode mode, int strength)
 {
     QDateTime t= QDateTime::currentDateTime();
     QString tformat="hh:mm:ss:z";
     QString dformat="d.MM.yyyy";
     QString & need=dformat;
     QString & need2=tformat;
     QString time=t.toString(need) + "  " + t.toString(need2);
     QString infoStr;
     infoStr.clear();
     infoStr.setNum(strength);
     int m=mode;
     if(m==6)
     {
         infoStr.prepend("  Bluetooth network strength changed. New Strength :");


     }
     else if(m==1)
     {
         infoStr.prepend("  GSM network strength changed. New Strength :");

     }
     else if (m==4)
     {
         infoStr.prepend("  WLAN network strength changed. New Strength :");

     }

     infoStr.prepend(time);
     QFile file("e://Battery_Manager/batterylog.txt");
     file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
     QTextStream out(&file);
     out<<infoStr+"\n";
     file.close();
     listWidget->addItem(infoStr);

 }



void DispInf::networkstatus(QSystemNetworkInfo::NetworkMode mode)
{
    QString infoStr;
    infoStr.clear();
    QDateTime t= QDateTime::currentDateTime();
    QString tformat="hh:mm:ss:z";
    QString dformat="d.MM.yyyy";
    QString & need=dformat;
    QString & need2=tformat;
    QString time=t.toString(need) + "  " + t.toString(need2);
    int m= mode;
    if(m==6)
    {
        infoStr.append("    Bluetooth network status changed. New Status :");
    }
    else if(m==1)
    {
        infoStr.append("    GSM network status changed. New Status :");
    }
    else if (m==4)
    {
        infoStr.append("    WLAN network status changed. New Status :");
    }


   switch(netInfo->networkStatus(mode))
    {
            case QSystemNetworkInfo::Roaming:
                    infoStr.append("On Roaming network.");
                    break;
            case QSystemNetworkInfo::Denied:
                    infoStr.append("Network access denied.");
                    break;
            case QSystemNetworkInfo::HomeNetwork:
                    infoStr.append("On Home Network");
                    break;
            case QSystemNetworkInfo::Connected:
                    infoStr.append("Connected to network.");
                    break;
            case QSystemNetworkInfo::Busy:
                    infoStr.append("Network is busy.");
                    break;
            case QSystemNetworkInfo::Searching:
                    infoStr.append("Searching for or connecting with the network.");
                    break;
            case QSystemNetworkInfo::EmergencyOnly:
                    infoStr.append("Emergency calls only.");
                    break;
            case QSystemNetworkInfo::NoNetworkAvailable:
                    infoStr.append("There is no network available.");
                    break;
            case QSystemNetworkInfo::UndefinedStatus:
            Default:
                    infoStr.append("There is no network device, or error.");
                    break;
    }

   infoStr.prepend(time);
   QFile file("e://Battery_Manager/batterylog.txt");
   file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
   QTextStream out(&file);
   out<<infoStr+"\n";
   file.close();
   listWidget->addItem(infoStr);
}

void DispInf::bluetoothstatus(bool on)
{
    QString infoStr;
    infoStr.clear();
    QDateTime t= QDateTime::currentDateTime();
    QString tformat="hh:mm:ss:z";
    QString dformat="d.MM.yyyy";
    QString & need=dformat;
    QString & need2=tformat;
    QString time=t.toString(need) +"  "+ t.toString(need2);
    if(on==1)
    {
        infoStr.append("    Bluetooth state changed. New Status : On");

    }
    else if(on==0)
    {
        infoStr.append("    Bluetooth state changed. New Status : Off");
    }
    infoStr.prepend(time);
    QFile file("e://Battery_Manager/batterylog.txt");
    file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
    QTextStream out(&file);
    out<<infoStr+"\n";
    file.close();
    listWidget->addItem(infoStr);
}

