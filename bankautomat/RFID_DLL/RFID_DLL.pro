QT -= gui
QT += serialport
QT +=network

TEMPLATE = lib
DEFINES += RFID_DLL_LIBRARY

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    rfid_dll.cpp \
    rfid_dll_engine.cpp

HEADERS += \
    RFID_DLL_global.h \
    rfid_dll.h \
    rfid_dll_engine.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target

FORMS +=
