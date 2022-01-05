import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Universal 2.12
import Ionicon 1.0

Item {

    id: root
    height: 150
    width: 270

    property alias iconame: ionicon.source
    property alias iconcolor: ionicon.color
    property alias iconsize: ionicon.size
    property alias text: label.text
    property alias horizontalAlignment: label.horizontalAlignment
    property alias verticalAlignment: label.verticalAlignment
    property bool glowEnabled: true
//    property color glowColor: colorGlow
//    property color color: colorBright

    Rectangle{
        id: child
        color: "#ff9a9e"
        radius: 10
        border.width: 1
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ff9a9e"
            }

            GradientStop {
                position: 0.99
                color: "#fad0c4"
            }

            GradientStop {
                position: 1
                color: "#fad0c4"
            }
        }

        Ionicon {
            id: ionicon
            width: 60
            height: 72
//            source: "heart"
            anchors.verticalCenterOffset: -32
            anchors.horizontalCenterOffset: 0
//            size: 64
//            color: 'Red'
            anchors.centerIn: parent
        }

        Rectangle {
            id: rectangle
            y: 77
            height: 1
            color: "#ffffff"
            border.color: "#161611"
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Label {
            id: label
            x: 64
            y: 106
            width: 126
            height: 17
            color: "#dd2d435b"
            font.pixelSize: 22
            styleColor: "#d1e4f1"
            font.bold: true
            //            text: qsTr("Label")
        }
    }



}
