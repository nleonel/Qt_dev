import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Image {
    id: image
    state: "On"
    states: [
        State {
            name: "On"
        },
        State {
            name: "Off"

            PropertyChanges {
                target: image
                source: "images/lights_off.png"
            }
        }
    ]
    source: "images/lights_on.png"

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Connections {
        target: mouseArea
        onClicked: {
            if (image.state === "Off")
                image.state = "On"
            else if (image.state === "On")
                image.state = "Off"
        }
    }
}
