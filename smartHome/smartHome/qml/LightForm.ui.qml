import QtQuick 2.4
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0
import Ionicon 1.0

Item {
    id: page

    width: 1600
    height: 900
    property alias btn: btn
    property alias label1: label1
    property alias lroom: lroom
    property alias dial: dial

    //title: "Ligth"
    Rectangle {
        id: rectangle
        width: page.contentWidth
        height: page.contentWidth
        color: "#4facfe"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#637b8f"
            }

            GradientStop {
                position: 1
                color: "#00f2fe"
            }
        }

        Ionicon {
            id: lig
            x: 564
            y: 38
            width: 122
            height: 106
            source: "lightbulb"
            size: 100
            color: 'white'
        }

        Switch {
            id: lroom
            x: 354
            y: 237
            width: 224
            height: 69
            text: qsTr("Living Room ")
            font.wordSpacing: 1
            font.weight: Font.ExtraLight
            font.bold: false
            wheelEnabled: true
            clip: false
            font.family: "Arial"
            font.pixelSize: 22
        }

        Label {
            id: label1
            x: 138
            y: 237
            width: 136
            height: 52
            color: "#dde5e2e2"
            text: lroom.checked ? "Open" : "Closed"
            font.pixelSize: 32
            font.family: "Ionicons"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Dial {
            id: dial
            x: 802
            y: 132
            width: 339
            height: 221
            font.pixelSize: 32
            font.family: "Verdana"
            stepSize: 1
            to: 100

            Label {
                id: label
                x: 140
                y: 85
                width: 49
                height: 51
                color: "#ddda2121"
                text: dial.value
                font.pixelSize: 32
                font.family: "Verdana"
                horizontalAlignment: Text.AlignHCenter

                Label {
                    id: label2
                    x: 44
                    y: 0
                    width: 43
                    height: 44
                    color: "#ddda2121"
                    text: "%"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        Button {
            id: btn
            x: 665
            y: 537
            width: 158
            height: 71
            text: qsTr("Qiut")
            focusPolicy: Qt.ClickFocus
            autoRepeat: true
            flat: false
            highlighted: true
            font.weight: Font.Light
            font.pixelSize: 32
            font.family: "Verdana"
        }
    }
}
