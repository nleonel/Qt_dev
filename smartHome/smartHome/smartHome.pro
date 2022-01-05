TEMPLATE = app

QT += qml quick widgets core network positioning svg xml gui

#qtHaveModule(network): SUBDIRS += Weatherinfo

CONFIG += c++11

include(Ionicon.pri)
include(Weatherinfo/Weatherinfo.pri)
include(Time/Time.pri)

INCLUDEPATH += WiringPI/src

# SUBDIRS += WiringPI

LIBS += -L$$PWD/WiringPI -lwiringPi3


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
        Backend/src/backend.cpp \
        main.cpp \
        Weatherinfo/appmodel.cpp \

RESOURCES +=  \
    Ionicon.qrc \
    Weatherinfo/weatherinfo.qrc \
    qml/icons/icons.qrc \
    qml/qml.qrc \
    Time/Time.qrc \
#    Screen01Form.ui.qml \
#    Screen01.qml \
#    SettingBar.qml \
#    Tabbar.qml \

OTHER_FILES += \
    Weatherinfo/components/WeatherIcon.qml \
    Weatherinfo/components/ForecastIcon.qml \
    Weatherinfo/components/BigForecastIcon.qml \
    Weatherinfo/components/CustomLabel.qml \
    Weatherinfo/components/Weatherinfo.qml \
    Time/CustomTime.qml \
    Time/Timer.qml \
    Time/qmldir \

QT_QPA_EGLFS_KMS_CONFIG = "PlateformConfig"

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += $$PWD $$PWD/qml/imports $$PWD/Backend/src $$PWD/Backend/headers \
                   $$PWD $$PWD/qml/imports/ebikeDesign \
                   $$PWD/Weatherinfo \
                   $$PWD/Weatherinfo/components

QML2_IMPORT_PATH += $$PWD/Weatherinfo

#
INCDIR_MODULE += Weatherinfo WiringPI Weatherinfo/components
INCLUDEPATH += $$INCDIR_MODULE

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH +=

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Time/CustomTime.qml \
    Time/Timer.qml \
    Time/qmldir \
    Weatherinfo/components/BigForecastIcon.qml \
    Weatherinfo/components/CustomLabel.qml \
    Weatherinfo/components/ForecastIcon.qml \
    Weatherinfo/components/WeatherIcon.qml \
    Weatherinfo/components/WeatherLabel.qml \
    Weatherinfo/doc/images/example-Weatherinfo.png \
    Weatherinfo/doc/src/Weatherinfo.qdoc \
    Weatherinfo/icons/README.txt \
    Weatherinfo/icons/humidity.png \
    Weatherinfo/icons/qt_attribution.json \
    Weatherinfo/icons/weather-few-clouds.png \
    Weatherinfo/icons/weather-fog.png \
    Weatherinfo/icons/weather-haze.png \
    Weatherinfo/icons/weather-icy.png \
    Weatherinfo/icons/weather-overcast.png \
    Weatherinfo/icons/weather-showers.png \
    Weatherinfo/icons/weather-sleet.png \
    Weatherinfo/icons/weather-snow.png \
    Weatherinfo/icons/weather-storm.png \
    Weatherinfo/icons/weather-sunny-very-few-clouds.png \
    Weatherinfo/icons/weather-sunny.png \
    Weatherinfo/icons/weather-thundershower.png \
    Weatherinfo/icons/xxx.png \
    Weatherinfo/qtquickcontrols2.conf \
    Weatherinfo/Weatherinfo.qml \
    qml/CustomGlow.qml \
    qml/CustomLabel.ui.qml \
    qml/FeatureButton.qml \
    qml/FeatureItem.qml \
    qml/GlowingLabel.qml \
    qml/Light.qml \
    qml/LightForm.ui.qml \
    qml/ModeToggle.ui.qml \
    qml/MyItem.qml \
    qml/SettingBar.qml \
    qml/Tabbar.qml \
    qml/Sreen01.qml \
    qml/Sreen01Form.ui.qml \
    qml/Constants.qml \
    LICENSE \
    One Night Away - Patrick Patrikios_4.mp4 \
    imports/QtQuick/Studio/Components/ArcItem.qml \
    imports/QtQuick/Studio/Components/BorderItem.qml \
    imports/QtQuick/Studio/Components/FlipableItem.qml \
    imports/QtQuick/Studio/Components/IsoItem.qml \
    imports/QtQuick/Studio/Components/PieItem.qml \
    imports/QtQuick/Studio/Components/RectangleItem.qml \
    imports/QtQuick/Studio/Components/SvgPathItem.qml \
    imports/QtQuick/Studio/Components/TriangleItem.qml \
    imports/QtQuick/Studio/Components/designer/ArcItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/BorderItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/FlipableItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/IsoItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/MyPlugin.metainfo \
    imports/QtQuick/Studio/Components/designer/PieItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/RectangleItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/SvgPathItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/TriangleItemSpecifics.qml \
    imports/QtQuick/Studio/Components/designer/images/custom-border-16px.png \
    imports/QtQuick/Studio/Components/designer/images/custom-border-24px.png \
    imports/QtQuick/Studio/Components/designer/images/custom-border-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/custom-rectangle-16px.png \
    imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px.png \
    imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/iso-icons-16px.png \
    imports/QtQuick/Studio/Components/designer/images/iso-icons-24px.png \
    imports/QtQuick/Studio/Components/designer/images/iso-icons-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/item-arc-16px.png \
    imports/QtQuick/Studio/Components/designer/images/item-arc-24px.png \
    imports/QtQuick/Studio/Components/designer/images/item-arc-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/item-flippable-16px.png \
    imports/QtQuick/Studio/Components/designer/images/item-flippable-24px.png \
    imports/QtQuick/Studio/Components/designer/images/item-flippable-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/item-pie-16px.png \
    imports/QtQuick/Studio/Components/designer/images/item-pie-24px.png \
    imports/QtQuick/Studio/Components/designer/images/item-pie-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/item-svg-16px.png \
    imports/QtQuick/Studio/Components/designer/images/item-svg-24px.png \
    imports/QtQuick/Studio/Components/designer/images/item-svg-24px@2x.png \
    imports/QtQuick/Studio/Components/designer/images/item-triangle-16px.png \
    imports/QtQuick/Studio/Components/designer/images/item-triangle-24px.png \
    imports/QtQuick/Studio/Components/designer/images/item-triangle-24px@2x.png \
    imports/QtQuick/Studio/Components/qmldir \
    imports/QtQuick/Studio/Effects/BlendItem.qml \
    imports/QtQuick/Studio/Effects/BrightnessContrastItem.qml \
    imports/QtQuick/Studio/Effects/ColorOverlayItem.qml \
    imports/QtQuick/Studio/Effects/ColorizeItem.qml \
    imports/QtQuick/Studio/Effects/DirectionalBlurItem.qml \
    imports/QtQuick/Studio/Effects/DropShadowItem.qml \
    imports/QtQuick/Studio/Effects/FastBlurItem.qml \
    imports/QtQuick/Studio/Effects/GaussianBlurItem.qml \
    imports/QtQuick/Studio/Effects/GlowItem.qml \
    imports/QtQuick/Studio/Effects/HueSaturationItem.qml \
    imports/QtQuick/Studio/Effects/MaskItem.qml \
    imports/QtQuick/Studio/Effects/MaskedBlurItem.qml \
    imports/QtQuick/Studio/Effects/RadialBlurItem.qml \
    imports/QtQuick/Studio/Effects/RotationItem.qml \
    imports/QtQuick/Studio/Effects/SaturationItem.qml \
    imports/QtQuick/Studio/Effects/ZoomBlurItem.qml \
    imports/QtQuick/Studio/Effects/designer/BrightnessContrastItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/ColorOverlayItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/ColorizeItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/DirectionalBlurItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/DropShadowItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/FastBlurItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/GlowItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/HueSaturationItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/MyPlugin.metainfo \
    imports/QtQuick/Studio/Effects/designer/RadialBlurItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/SaturationItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/ZoomBlurItemSpecifics.qml \
    imports/QtQuick/Studio/Effects/designer/images/blend-mode-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/colourize-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/colourize-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/colourize-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/directional-blur-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/drop-shadow-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/fast-blur-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/glow-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/glow-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/glow-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-blur-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/radial-blur-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/saturation-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/saturation-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/saturation-24px@2x.png \
    imports/QtQuick/Studio/Effects/designer/images/zoom-blur-16px.png \
    imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px.png \
    imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px@2x.png \
    imports/QtQuick/Studio/Effects/qmldir \
    imports/ebikeDesign/Constants.qml \
    imports/ebikeDesign/Teko-Medium.ttf \
    imports/ebikeDesign/qmldir \
    qml/icons/automotive/44x44/air-con.png \
    qml/icons/automotive/44x44/bluetooth.png \
    qml/icons/automotive/44x44/command.png \
    qml/icons/automotive/44x44/message.png \
    qml/icons/automotive/44x44/music.png \
    qml/icons/automotive/44x44/power.png \
    qml/icons/automotive/44x44/seats.png \
    qml/icons/automotive/44x44/settings.png \
    qml/icons/automotive/44x44/statistics.png \
    qml/icons/automotive/44x44/windows.png \
    qml/icons/automotive/44x44@2/air-con.png \
    qml/icons/automotive/44x44@2/bluetooth.png \
    qml/icons/automotive/44x44@2/command.png \
    qml/icons/automotive/44x44@2/message.png \
    qml/icons/automotive/44x44@2/music.png \
    qml/icons/automotive/44x44@2/navigation.png \
    qml/icons/automotive/44x44@2/power.png \
    qml/icons/automotive/44x44@2/seats.png \
    qml/icons/automotive/44x44@2/settings.png \
    qml/icons/automotive/44x44@2/statistics.png \
    qml/icons/automotive/44x44@2/windows.png \
    qml/icons/automotive/icons.svg \
    qml/icons/automotive/index.theme \
    qml/icons/camera.png \
    qml/icons/car.png \
    qml/icons/car@2x.png \
    qml/icons/warning.png \
    qml/icons/warning@2x.png \
    qml/icons/weather.png \
    qml/icons/weather@2x.png \
    qml/images/arrow_left.png \
    qml/images/arrow_right.png \
    qml/images/assist.png \
    qml/images/battery.png \
    qml/images/bike-rearwheel.png \
    qml/images/blue_circle_gps_area.png \
    qml/images/calories.png \
    qml/images/curtain_shadow_handle.png \
    qml/images/info.png \
    qml/images/info_selected.png \
    qml/images/lights_off.png \
    qml/images/lights_on.png \
    qml/images/list.png \
    qml/images/list_selected.png \
    qml/images/map_locate.png \
    qml/images/map_location_arrow.png \
    qml/images/map_zoomin.png \
    qml/images/map_zoomout.png \
    qml/images/nav_nodir.png \
    qml/images/search_cancel.png \
    qml/images/settings.png \
    qml/images/settings_selected.png \
    qml/images/small_speedometer_shadow.png \
    qml/images/speed.png \
    qml/images/top_curtain_drag.png \
    qml/images/top_curtain_drag_back.png \
    qml/images/trip.png \
    qml/img/top_curtain_drag.jpg \
    qml/img/top_curtain_drag_back.jpg \
    qml/imports/QtQuick/Studio/Components/ArcItem.qml \
    qml/imports/QtQuick/Studio/Components/BorderItem.qml \
    qml/imports/QtQuick/Studio/Components/FlipableItem.qml \
    qml/imports/QtQuick/Studio/Components/IsoItem.qml \
    qml/imports/QtQuick/Studio/Components/PieItem.qml \
    qml/imports/QtQuick/Studio/Components/RectangleItem.qml \
    qml/imports/QtQuick/Studio/Components/SvgPathItem.qml \
    qml/imports/QtQuick/Studio/Components/TriangleItem.qml \
    qml/imports/QtQuick/Studio/Components/designer/ArcItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/BorderItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/FlipableItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/IsoItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/MyPlugin.metainfo \
    qml/imports/QtQuick/Studio/Components/designer/PieItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/RectangleItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/SvgPathItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/TriangleItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-border-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/custom-rectangle-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/iso-icons-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-arc-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-flippable-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-pie-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-svg-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-16px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-24px.png \
    qml/imports/QtQuick/Studio/Components/designer/images/item-triangle-24px@2x.png \
    qml/imports/QtQuick/Studio/Components/qmldir \
    qml/imports/QtQuick/Studio/Effects/BlendItem.qml \
    qml/imports/QtQuick/Studio/Effects/BrightnessContrastItem.qml \
    qml/imports/QtQuick/Studio/Effects/ColorOverlayItem.qml \
    qml/imports/QtQuick/Studio/Effects/ColorizeItem.qml \
    qml/imports/QtQuick/Studio/Effects/DirectionalBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/DropShadowItem.qml \
    qml/imports/QtQuick/Studio/Effects/FastBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/GaussianBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/GlowItem.qml \
    qml/imports/QtQuick/Studio/Effects/HueSaturationItem.qml \
    qml/imports/QtQuick/Studio/Effects/MaskItem.qml \
    qml/imports/QtQuick/Studio/Effects/MaskedBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/RadialBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/RotationItem.qml \
    qml/imports/QtQuick/Studio/Effects/SaturationItem.qml \
    qml/imports/QtQuick/Studio/Effects/ZoomBlurItem.qml \
    qml/imports/QtQuick/Studio/Effects/designer/BrightnessContrastItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ColorOverlayItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ColorizeItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/DirectionalBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/DropShadowItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/FastBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/GlowItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/HueSaturationItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/MyPlugin.metainfo \
    qml/imports/QtQuick/Studio/Effects/designer/RadialBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/SaturationItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/ZoomBlurItemSpecifics.qml \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/blend-mode-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/brightness-contrast-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/colourize-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/directional-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/drop-shadow-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/fast-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/gamma-adjust-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/glow-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/hue-satuartion-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/mask-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/radial-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/saturation-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-16px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px.png \
    qml/imports/QtQuick/Studio/Effects/designer/images/zoom-blur-24px@2x.png \
    qml/imports/QtQuick/Studio/Effects/qmldir \
    qml/imports/ebikeDesign/Constants.qml \
    qml/imports/ebikeDesign/Teko-Medium.ttf \
    qml/imports/ebikeDesign/qmldir \
    qml/maps/chart01.png \
    qml/maps/map01.png \
    qtquickcontrols2.conf \
    vendor/vendor.pri

HEADERS += \
    Backend/headers/backend.h \
    Weatherinfo/appmodel.h \

SUBDIRS += \
    Weatherinfo/Weatherinfo.pro

