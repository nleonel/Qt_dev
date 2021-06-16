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
import QtQuick.Controls 2.13

Item {
    id: current

    property string topText: "20*"
    property string temp_min: "20*"
    property string temp_max: "20*"
    property string bottomText: "Mostly cloudy"
    property string weatherIcon: "01d"
    property real smallSide: (current.width < current.height ? current.width : current.height)
    property var val: 80

    Text {
        height: 76
        color: "#7d8fe8"
        text: current.topText
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        font.family: "Times New Roman"
        anchors.leftMargin: 191
        anchors.topMargin: 22
        anchors.rightMargin: 259
        font.pointSize: 100
    }

    Text {
        id: txt
        x: (parent.width - val)/2 -120
        y: 160
        width: 54
        height: 28
        color: "#7d8fe8"
        text: "Max:"
        // anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 101
        font.family: "Times New Roman"
        font.pointSize: 22
    }

    WeatherIcon {
        weatherIcon: current.weatherIcon
        useServerIcon: false
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.rightMargin:  26
        width: current.smallSide
        height: current.smallSide
        visible: true
    }

//    Text {
//        x: (parent.width - val)/2 + 20
//        y: 406
//        text: current.bottomText
//        //anchors.bottom: parent.bottom
//        //anchors.right: parent.right
//        font.pointSize: 15
//        wrapMode: Text.WordWrap
//        anchors.bottomMargin: 1
//        width: parent.width
//        horizontalAlignment: Text.AlignHCenter
//        verticalAlignment: Text.AlignVCenter
////        anchors {
////            right: current.center
////            rightMargin: 5
////        }
//    }
    Text {
        id: t
        x: (parent.width - val)/2 - 48
        y: 220
        height: 31
        color: "#7d8fe8"
        text: current.bottomText
        horizontalAlignment: Text.AlignHCenter
        width: parent.width/4 - 2*val
        verticalAlignment: Text.AlignVCenter
        font.family: "Times New Roman"
        font.pointSize: 15
    }

    Text {
        id: txt1
        x: (parent.width - val)/2 - 48
        y: 160
        width: 53
        height: 31
        color: "#7d8fe8"
        text: current.temp_max
        horizontalAlignment: Text.AlignHCenter
        font.family: "Times New Roman"
        font.pointSize: 22
    }

    Text {
        id: txt2
        x:(parent.width - val)/2 + 20
        y: 160
        width: 54
        height: 28
        color: "#7d8fe8"
        text: "Min:"
        horizontalAlignment: Text.AlignHCenter
        font.family: "Times New Roman"
        font.pointSize: 22
    }

    Text {
        id: txt3
        x: (parent.width - val)/2 + 94
        y: 160
        width: 54
        height: 28
        color: "#7d8fe8"
        text: current.temp_min
        horizontalAlignment: Text.AlignHCenter
        font.family: "Times New Roman"
        font.pointSize: 22
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}
}
##^##*/
