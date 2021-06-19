QT -= gui

TEMPLATE = lib
CONFIG += staticlib
TARGET = wiringPi3

CONFIG += c++11
LIBS += -lcrypt -lrt

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    src/ads1115.c \
    src/bmp180.c \
    src/daemonise.c \
    src/devLib/ds1302.c \
    src/devLib/gertboard.c \
    src/devLib/lcd.c \
    src/devLib/lcd128x64.c \
    src/devLib/maxdetect.c \
    src/devLib/piFace.c \
    src/devLib/piGlow.c \
    src/devLib/piNes.c \
    src/devLib/scrollPhat.c \
    src/drcNet.c \
    src/drcSerial.c \
    src/ds1302.c \
    src/ds18b20.c \
    src/gertboard.c \
    src/gpio.c \
    src/gpio/gpio.c \
    src/gpio/readall.c \
    src/htu21d.c \
    src/lcd.c \
    src/lcd128x64.c \
    src/max31855.c \
    src/max5322.c \
    src/maxdetect.c \
    src/mcp23008.c \
    src/mcp23016.c \
    src/mcp23017.c \
    src/mcp23s08.c \
    src/mcp23s17.c \
    src/mcp3002.c \
    src/mcp3004.c \
    src/mcp3422.c \
    src/mcp4802.c \
    src/network.c \
    src/pcf8574.c \
    src/pcf8591.c \
    src/piFace.c \
    src/piGlow.c \
    src/piHiPri.c \
    src/piNes.c \
    src/piThread.c \
    src/pseudoPins.c \
    src/readall.c \
    src/rht03.c \
    src/runRemote.c \
    src/scrollPhat.c \
    src/sn3218.c \
    src/softPwm.c \
    src/softServo.c \
    src/softTone.c \
    src/sr595.c \
    src/wiringPi.c \
    src/wiringPi/ads1115.c \
    src/wiringPi/bmp180.c \
    src/wiringPi/drcNet.c \
    src/wiringPi/drcSerial.c \
    src/wiringPi/ds18b20.c \
    src/wiringPi/htu21d.c \
    src/wiringPi/max31855.c \
    src/wiringPi/max5322.c \
    src/wiringPi/mcp23008.c \
    src/wiringPi/mcp23016.c \
    src/wiringPi/mcp23017.c \
    src/wiringPi/mcp23s08.c \
    src/wiringPi/mcp23s17.c \
    src/wiringPi/mcp3002.c \
    src/wiringPi/mcp3004.c \
    src/wiringPi/mcp3422.c \
    src/wiringPi/mcp4802.c \
    src/wiringPi/pcf8574.c \
    src/wiringPi/pcf8591.c \
    src/wiringPi/piHiPri.c \
    src/wiringPi/piThread.c \
    src/wiringPi/pseudoPins.c \
    src/wiringPi/rht03.c \
    src/wiringPi/sn3218.c \
    src/wiringPi/softPwm.c \
    src/wiringPi/softServo.c \
    src/wiringPi/softTone.c \
    src/wiringPi/sr595.c \
    src/wiringPi/wiringPi.c \
    src/wiringPi/wiringPiI2C.c \
    src/wiringPi/wiringPiSPI.c \
    src/wiringPi/wiringSerial.c \
    src/wiringPi/wiringShift.c \
    src/wiringPi/wpiExtensions.c \
    src/wiringPiD/daemonise.c \
    src/wiringPiD/network.c \
    src/wiringPiD/runRemote.c \
    src/wiringPiD/wiringpid.c \
    src/wiringPiI2C.c \
    src/wiringPiSPI.c \
    src/wiringSerial.c \
    src/wiringShift.c \
    src/wiringpi.cpp \
    src/wiringpid.c \
    src/wpiExtensions.c


HEADERS += \
    src/ads1115.h \
    src/bmp180.h \
    src/daemonise.h \
    src/devLib/ds1302.h \
    src/devLib/font.h \
    src/devLib/gertboard.h \
    src/devLib/lcd.h \
    src/devLib/lcd128x64.h \
    src/devLib/maxdetect.h \
    src/devLib/piFace.h \
    src/devLib/piGlow.h \
    src/devLib/piNes.h \
    src/devLib/scrollPhat.h \
    src/devLib/scrollPhatFont.h \
    src/drcNet.h \
    src/drcNetCmd.h \
    src/drcSerial.h \
    src/ds1302.h \
    src/ds18b20.h \
    src/font.h \
    src/gertboard.h \
    src/htu21d.h \
    src/lcd.h \
    src/lcd128x64.h \
    src/max31855.h \
    src/max5322.h \
    src/maxdetect.h \
    src/mcp23008.h \
    src/mcp23016.h \
    src/mcp23016reg.h \
    src/mcp23017.h \
    src/mcp23s08.h \
    src/mcp23s17.h \
    src/mcp23x08.h \
    src/mcp23x0817.h \
    src/mcp3002.h \
    src/mcp3004.h \
    src/mcp3422.h \
    src/mcp4802.h \
    src/network.h \
    src/pcf8574.h \
    src/pcf8591.h \
    src/piFace.h \
    src/piGlow.h \
    src/piNes.h \
    src/pseudoPins.h \
    src/rht03.h \
    src/runRemote.h \
    src/scrollPhat.h \
    src/scrollPhatFont.h \
    src/sn3218.h \
    src/softPwm.h \
    src/softServo.h \
    src/softTone.h \
    src/sr595.h \
    src/version.h \
    src/wiringPi.h \
    src/wiringPi/ads1115.h \
    src/wiringPi/bmp180.h \
    src/wiringPi/drcNet.h \
    src/wiringPi/drcSerial.h \
    src/wiringPi/ds18b20.h \
    src/wiringPi/htu21d.h \
    src/wiringPi/max31855.h \
    src/wiringPi/max5322.h \
    src/wiringPi/mcp23008.h \
    src/wiringPi/mcp23016.h \
    src/wiringPi/mcp23016reg.h \
    src/wiringPi/mcp23017.h \
    src/wiringPi/mcp23s08.h \
    src/wiringPi/mcp23s17.h \
    src/wiringPi/mcp23x08.h \
    src/wiringPi/mcp23x0817.h \
    src/wiringPi/mcp3002.h \
    src/wiringPi/mcp3004.h \
    src/wiringPi/mcp3422.h \
    src/wiringPi/mcp4802.h \
    src/wiringPi/pcf8574.h \
    src/wiringPi/pcf8591.h \
    src/wiringPi/pseudoPins.h \
    src/wiringPi/rht03.h \
    src/wiringPi/sn3218.h \
    src/wiringPi/softPwm.h \
    src/wiringPi/softServo.h \
    src/wiringPi/softTone.h \
    src/wiringPi/sr595.h \
    src/wiringPi/wiringPi.h \
    src/wiringPi/wiringPiI2C.h \
    src/wiringPi/wiringPiSPI.h \
    src/wiringPi/wiringSerial.h \
    src/wiringPi/wiringShift.h \
    src/wiringPi/wpiExtensions.h \
    src/wiringPiD/daemonise.h \
    src/wiringPiD/drcNetCmd.h \
    src/wiringPiD/network.h \
    src/wiringPiD/runRemote.h \
    src/wiringPiI2C.h \
    src/wiringPiSPI.h \
    src/wiringSerial.h \
    src/wiringShift.h \
    src/wiringpi.h \
    src/wpiExtensions.h


# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    WiringPI.pro.user \
    libwiringPi3.a \
    noMoreStatic \
    src/COPYING.LESSER \
    src/gpio/COPYING.LESSER \
    src/gpio/gpio.1 \
    src/gpio/pintest \
    src/gpio/test.sh \
    src/noMoreStatic \
    src/wiringPi/COPYING.LESSER \
    src/wiringPi/noMoreStatic

