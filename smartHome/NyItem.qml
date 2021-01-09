import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Universal 2.12
import Ionicon 1.0


Item {
    id: name
    width: 640
    height: 180

    Rectangle{

        id: ret
        color: "#4cc9f3"
        radius: 10
        border.width: 5

        anchors.fill: parent

        Ionicon {
            id: icon
            x: 162
            y: 162
            source: "heart"
            size: 64
            color: 'black'
        }

        Switch {
            id: sw
            x: 36
            y: 86
            width: 196
            height: 54
            text: qsTr("text")
            font.pixelSize: 32
            font.family: "Arial"
            wheelEnabled: true
            focusPolicy: Qt.WheelFocus
            opacity: 1
            spacing: 28
            clip: true
        }

    }
}

/*##^##
Designer {
    D{i:1;anchors_height:140;anchors_width:340}
}
##^##*/
