/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0
import "components"
//! [0]
import WeatherInfo 1.0
import QtQuick.Controls 2.13

Rectangle {
    id: window
//! [0]
    width: 360
    height: 700
    color: "lightblue"

    state: "loading"
    Loader {
        source: "components/*"
        asynchronous: true
        visible: status == Loader.Ready
    }
    states: [
        State {
            name: "loading"
            PropertyChanges { target: main; opacity: 0 }
            PropertyChanges { target: wait; opacity: 1 }
        },
        State {
            name: "ready"
            PropertyChanges { target: main; opacity: 1 }
            PropertyChanges { target: wait; opacity: 0 }
        }
    ]
//! [1]
    AppModel {
        id: model
        onReadyChanged: {
            if (model.ready)
                window.state = "ready"
            else
                window.state = "loading"
        }
    }
//! [1]
    Item {
        id: wait
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Text {
            text: "Loading weather data..."
            anchors.centerIn: parent
            font.pointSize: 18
        }
    }

    Item {
        id: main
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Column {
            spacing: 6

            anchors {
                fill: parent
                topMargin: 6; bottomMargin: 6; leftMargin: 6; rightMargin: 6
            }

            Rectangle {
                id: city
                x: parent.width/3 + 20
                y: 20
                width: 250
                height: 75
                radius: 12
                color: "#f5f7fa"
//                gradient: Gradient {
//                    GradientStop {
//                        position: 0
//                        color: "#f5f7fa"
//                    }

//                    GradientStop {
//                        position: 1
//                        color: "#c3cfe2"
//                    }
//                }

                Text {
                    text: (model.hasValidCity ? model.city : "Unknown location") + (model.useGps ? " (GPS)" : "")
                    anchors.fill: parent
                    font.pixelSize: 70
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Times New Roman"
                    textFormat: Text.RichText
                    fontSizeMode: Text.Fit
                    color: "blue"
                }

                MouseArea {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 71
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                    onClicked: {
                        if (model.useGps) {
                            model.useGps = false
                            model.city = "Brisbane"
                        } else {
                            switch (model.city) {
                            case "Torino":
                                model.city = "Milano"
                                break
                            case "Milano":
                                model.city = "Paris"
                                break
                            case "Paris":
                                model.city = "Douala"
                                break
                            case "Douala":
                                model.useGps = false
                                model.city = "Torino"
                                break
                            }
                        }
                    }
                }
            }

//! [3]
            BigForecastIcon {
                id: current

                width: main.width -12
                height: 2 * (main.height - 25 - 12) / 4

                weatherIcon: (model.hasValidWeather
                          ? model.weather.weatherIcon
                          : "01d")
//! [3]
                topText: (model.hasValidWeather
                          ? model.weather.temperatures[0]
                          : "??")
                temp_min: (model.hasValidWeather
                          ? model.weather.temperatures[2]
                          : "??")
                temp_max: (model.hasValidWeather
                          ? model.weather.temperatures[1]
                          : "??")

                bottomText: (model.hasValidWeather
                             ? model.weather.weatherDescription
                             : "No weather data")

                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 51
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    onClicked: {
                        model.refreshWeather()
                    }
                }
//! [4]
            }
//! [4]

            Row {
                id: iconRow
                spacing: 6

                width: main.width - 12
                height: (main.height - 25 - 24) / 3

                property real iconWidth: iconRow.width / 4 - 10
                property real iconHeight: iconRow.height

                ForecastIcon {
                    id: forecast1
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0

                    topText: (model.hasValidWeather ?
                              model.forecast[0].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[0].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[0].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast2
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0

                    topText: (model.hasValidWeather ?
                              model.forecast[1].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[1].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[1].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast3
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0

                    topText: (model.hasValidWeather ?
                              model.forecast[2].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[2].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[2].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast4
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight
                    anchors.bottom: parent.bottom

                    topText: (model.hasValidWeather ?
                              model.forecast[3].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[3].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                                      model.forecast[3].weatherIcon : "01d")
                }

            }
        }
        CustomLabel{
            id: customLabel
            x: 198
            width: 162
            height: 40
            color: "#274908"
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 42
            horizontalAlignment: Text.AlignRight
            anchors.topMargin: 10
        }

        WeatherLabel{
            id: fore
            x: 8
            y: 39
            width: 186
            height: 47
            weatherIcon: "humidity"
            humidity: model.weather.humidity
            pressure: model.weather.presure
            pixels: 28
        }
    }
//! [2]
}
//! [2]
