/****************************************************************************
** Meta object code from reading C++ file 'systeminformation.h'
**
** Created: Sun 10. Jul 14:12:34 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../statscollector/systeminformation.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'systeminformation.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GetInfo[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
       9,    8,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      19,    8,    8,    8, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_GetInfo[] = {
    "GetInfo\0\0timeout()\0getDisplayInformation()\0"
};

const QMetaObject GetInfo::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_GetInfo,
      qt_meta_data_GetInfo, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GetInfo::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GetInfo::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GetInfo::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GetInfo))
        return static_cast<void*>(const_cast< GetInfo*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int GetInfo::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: timeout(); break;
        case 1: getDisplayInformation(); break;
        default: ;
        }
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void GetInfo::timeout()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
