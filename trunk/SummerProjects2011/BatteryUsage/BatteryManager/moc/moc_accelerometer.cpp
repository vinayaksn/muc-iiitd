/****************************************************************************
** Meta object code from reading C++ file 'accelerometer.h'
**
** Created: Tue 12. Jul 21:11:11 2011
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.3)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../testsymbi/accelerometer.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'accelerometer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.3. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_MyAccelerometer[] = {

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
      20,   17,   16,   16, 0x05,

 // slots: signature, parameters, type, tag, flags
      59,   16,   16,   16, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_MyAccelerometer[] = {
    "MyAccelerometer\0\0,,\0"
    "accelerationChanged(qreal,qreal,qreal)\0"
    "updateAcceleration()\0"
};

const QMetaObject MyAccelerometer::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MyAccelerometer,
      qt_meta_data_MyAccelerometer, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &MyAccelerometer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *MyAccelerometer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *MyAccelerometer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_MyAccelerometer))
        return static_cast<void*>(const_cast< MyAccelerometer*>(this));
    return QObject::qt_metacast(_clname);
}

int MyAccelerometer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: accelerationChanged((*reinterpret_cast< qreal(*)>(_a[1])),(*reinterpret_cast< qreal(*)>(_a[2])),(*reinterpret_cast< qreal(*)>(_a[3]))); break;
        case 1: updateAcceleration(); break;
        default: ;
        }
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void MyAccelerometer::accelerationChanged(qreal _t1, qreal _t2, qreal _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
