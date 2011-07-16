#include<batteryinfo.h>
#include <QListWidget>
#include <QScrollArea>
#include<QTime>
#include<QFile>
#include<QTextStream>
#include<QDir>
#include<QTimer>
#ifdef Q_OS_SYMBIAN
#include<hal.h>
#include<f32file.h>
#include<s32file.h>

#endif

GetInfo::GetInfo(QWidget *parent)
    : QMainWindow(parent)
{
        setWindowTitle("Battery Logger");

        i=0;
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

        /* QMainWindow takes ownership of the scrollArea, so no need to delete it */
        setCentralWidget(scrollArea);

       // QDir().mkdir("e://Battery_Manager");
      //  QFile file("e://Battery_Manager/batterylog.txt");

        QString widgetStr;
        widgetStr.append("Logging ......\n");
        listWidget->addItem(widgetStr);                  // text "logging" written to application display
        getDisplayInformation();
       /* #ifdef Q_OS_SYMBIAN
        CCallObserver *cc;
        cc= CCallObserver::NewL();
        #endif*/
        QTimer *iTimer= new QTimer(this);
        iTimer->setInterval(5000);
        iTimer->start();
        QObject::connect(iTimer, SIGNAL(timeout()), this, SLOT(getDisplayInformation()));

        /*for(int i=0;;i++)
        {

        }*/


}

GetInfo::~GetInfo()
{
}

void GetInfo::setWidgetGeometry(QSize* screenSize)
{
        resize(*screenSize);
        QRect rect(0,0,screenSize->width(), screenSize->height());
        listWidget->setGeometry(rect);
}

void GetInfo::getDisplayInformation()
{
        QString infoStr, widgetStr, csvStr;
        QFile file("c://log2.txt");
        file.open(QIODevice::WriteOnly | QIODevice::Append | QIODevice::Text);
        QTextStream out(&file);
        QDateTime t= QDateTime::currentDateTime();
        QString tformat="hh:mm:ss:z";
        QString dformat="d.MM.yyyy";
        QString & need=dformat;
        QString & need2=tformat;
        QString time=t.toString(need) + "\t" + t.toString(need2);





        out<<"\nLogging .....\n";                                 // text "logging " written to file

        infoStr.append(time);
        csvStr.append(time);
        infoStr.append("\n");
        out<<infoStr+"\n";                           // Timestamp written to the file



        /* get color depth of screen

        infoStr.setNum(dispInfo->colorDepth(0));
        infoStr.prepend("Color depth: ");

        out<<infoStr+"\n";                          // Color depth written to the file
        */



        /* get display brightness of screen */
        infoStr.clear();
        infoStr.setNum(dispInfo->displayBrightness(0));
        infoStr.prepend("Display brightness: ");
        out<<infoStr+"\n";


        /*Check if the device is locked */
           infoStr.clear();
           int num=devInfo->isDeviceLocked();
           if(num==0)
               infoStr.append("No");
           else
               infoStr.append("Yes");

           infoStr.prepend("Device Locked: ");
           out<<infoStr+"\n";                        // Device locked or unlocked status written to file



        /*get battery level */
        infoStr.clear();
        infoStr.setNum(devInfo->batteryLevel());
        infoStr.prepend("Battery level: ");
        infoStr.append("%");
        out<<infoStr+"\n";                          // Battery level written to file

            /*get gsm network strength*/
        infoStr.clear();
        infoStr.setNum(netInfo->networkSignalStrength(QSystemNetworkInfo::GsmMode));
        infoStr.prepend("GSM Network signal strength: ");
        infoStr.append("%");
        out<<infoStr+"\n";                          // Network signal strength for GSM written to file


        /*Get Cell id */
        infoStr.clear();
        infoStr.setNum(netInfo->cellId());
        infoStr.prepend("Cell id: ");
        out<<infoStr+"\n";                          // Cell id written to file


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
                out<<infoStr+"\n";                              // Network status for GSM network written

                /*get wlan network strength*/
                infoStr.clear();
                infoStr.setNum(netInfo->networkSignalStrength(QSystemNetworkInfo::WlanMode));
                infoStr.prepend("WLAN Network signal strength: ");
                infoStr.append("%");
                out<<infoStr+"\n";                              // Network Signal strength for WLAN network strength



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
                         out<<infoStr+"\n";                 // WLAN network status written to the file




                /*Get Network Status for Bluetooth mode*/

                infoStr.clear();
                        infoStr.append("\nBluetooth Network status: ");

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

                        out<<infoStr+"\n";                  // Bluetooth network status written to the file






                /*Get current bluetooth state*/
                infoStr.clear();
                num=devInfo->currentBluetoothPowerState();
                if(num==0)
                    infoStr.append("Off");
                else
                    infoStr.append("On");

                infoStr.prepend("Bluetooth State: ");              // Bluetooth status written to the file
                out<<infoStr+"\n";
                infoStr.clear();
                widgetStr.clear();
                file.close();                                       // File closed


                #ifdef Q_OS_SYMBIAN

                _LIT( KWorksDataFile,"c:\\log2.txt");

                RFs fsSession;
                RFile ifile;
                TFileText txt_file;
                TInt pos = 0;
                User::LeaveIfError(fsSession.Connect());
                TInt err=ifile.Open(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
                if (err==KErrNotFound) // file does not exist - create it
                err=ifile.Create(fsSession,KWorksDataFile,EFileStreamText|EFileWrite|EFileShareAny);
                else
                {

                    err = ifile.Seek( ESeekEnd , pos );
                 }

                        TInt freeRam = 0;
                        TInt totalRam= 0;
                        HAL::Get( HAL::EMemoryRAMFree, freeRam );
                        HAL::Get(HAL::EMemoryRAM, totalRam);
                        TBuf8<100> myString;
                        myString.Append(_L8("Free RAM = "));
                        myString.AppendNum(freeRam/1000000);
                        myString.Append(_L8(" MB"));
                        myString.Append(_L8("\nTotal RAM = "));
                        myString.AppendNum(totalRam/1000000);
                        myString.Append(_L8(" MB\n"));
                        myString.Append(_L8("Logging ends\n "));           // Text logging ends is written to the file
                        ifile.Write(myString);
                        ifile.Close();
                        fsSession.Close();





                #endif

                i++;
                widgetStr.append("\n Log ");
                widgetStr.append(i);
                widgetStr.append(" written");
                 //widgetStr.append("\nLogging ends ....\n\n");          // Text logging ends is written to the display
                 listWidget->addItem(widgetStr);



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
 /*void GetInfo::clearlist()
 {
      listWidget->clear();

  }*/


