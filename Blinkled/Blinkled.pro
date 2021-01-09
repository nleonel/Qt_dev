TARGET = blink
CONFIG += qt

SUBDIRS = WiringPi3

LIBS += -L$$PWD/../WiringPi3 -lwiringPi3 -lcrypt -lrt

INCLUDEPATH += /opt/builds/qt5/sysroot/usr/include

SOURCES += \
        main.c
