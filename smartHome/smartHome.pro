#QT += qml quick widgets core network positioning
QT += qml quick widgets core quickcontrols2
CONFIG += c++11

include(Ionicon.pri)


#SUBDIRS = WiringPi3

#LIBS += -L$$PWD/../WiringPi3 -lwiringPi3 -lcrypt -lrt

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
#        backend.cpp \
        main.cpp

RESOURCES += \
    icons/icons.qrc \
    qml/qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += $$PWD

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Light.qml \
    LightForm.ui.qml \
    CustomLabel.qml \
    icons/automotive/44x44/air-con.png \
    icons/automotive/44x44/bluetooth.png \
    icons/automotive/44x44/command.png \
    icons/automotive/44x44/message.png \
    icons/automotive/44x44/music.png \
    icons/automotive/44x44/power.png \
    icons/automotive/44x44/seats.png \
    icons/automotive/44x44/settings.png \
    icons/automotive/44x44/statistics.png \
    icons/automotive/44x44/windows.png \
    icons/automotive/44x44@2/air-con.png \
    icons/automotive/44x44@2/bluetooth.png \
    icons/automotive/44x44@2/command.png \
    icons/automotive/44x44@2/message.png \
    icons/automotive/44x44@2/music.png \
    icons/automotive/44x44@2/navigation.png \
    icons/automotive/44x44@2/power.png \
    icons/automotive/44x44@2/seats.png \
    icons/automotive/44x44@2/settings.png \
    icons/automotive/44x44@2/statistics.png \
    icons/automotive/44x44@2/windows.png \
    icons/automotive/icons.svg \
    icons/automotive/index.theme \
    icons/camera.png \
    icons/car.png \
    icons/car@2x.png \
    icons/warning.png \
    icons/warning@2x.png \
    icons/weather.png \
    icons/weather@2x.png \
    qml/CustomGlow.qml \
    qml/CustomLabel.qml \
    qml/CustumMain.qml \
    qml/FeatureButton.qml \
    qml/FeatureItem.qml \
    qml/GlowingLabel.qml \
    qml/Light.qml \
    qml/LightForm.ui.qml \
    qml/NyItem.qml \
    qml/main.qml \
    qml/qtquickcontrols2.conf


HEADERS += \
#    backend.h
