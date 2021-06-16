TEMPLATE = app
TARGET = weatherinfo

QT += core network positioning qml quick
requires(qtConfig(bearermanagement))

SOURCES += main.cpp \
    appmodel.cpp

OTHER_FILES += \
    components/WeatherIcon.qml \
    components/ForecastIcon.qml \
    components/BigForecastIcon.qml \
    components/CustomLabel.qml \
    components/weatherinfo.qml \
    icons/*


RESOURCES += weatherinfo.qrc

HEADERS += appmodel.h

target.path = /home/root/weatherinfo
INSTALLS += target

DISTFILES += \
    components/CustomLabel.qml \
    qtquickcontrols2.conf
