import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Universal 2.12
import QtQuick.Timeline 1.0
import WeatherInfo 1.0 as Weather


Rectangle {
    id: mainscreen

    width: 1024
    height: 600

    property int pos:0

    x: pos


    color: "#1a1e25"
    state: "Standard"

    Timer {
        id:timer
           interval: 1000; running: true; repeat: true
       }

    Item {
        id: screenCanvas
        width: mainscreen.width
        height: mainscreen.height

        Column {
            spacing: 6

            Text {
                id: mainTemp
                height: 76
                color: "white"
                text: model.hasValidWeather
                      ? model.weather.temperatures[0]
                      : "??"

                horizontalAlignment: Text.AlignHCenter
                font.family: "Times New Roman"
                font.pointSize: 100
            }
        }

        CustomTime{ x: 270; y: 201; width: 407;height: 208; font.pixelSize: 180;horizontalAlignment: Text.AlignHCenter ;verticalAlignment: Text.AlignVCenter ;font.family: "Times New Roman" }

        Label {
            id: city
            x: 382
            width: 183
            height: 77
            text: ""
            anchors.top: parent.top
            font.pixelSize: 60
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 68
        }

        Label {
            id: temp
            y: 68
            width: 183
            height: 77
            text: "0"
            anchors.left: parent.left
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 28
        }

        Label {
            id: meteo
            x: 28
            y: 515
            width: 183
            height: 77
            text: ""
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Label {
            id: presure
            x: 756
            y: 515
            width: 236
            height: 77
            text:  "0"
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Weather.AppModel{
            id: model
        }

    }

    Connections {
        target: timer
         onTriggered: {
            presure.text = model.weather.presure
            temp.text = model.weather.temperature
             city.text = model.city
        }
    }

//    Connections {
//        target: rightClickArea
//        onClicked: {
//            root.state = "StandardToNavigation"
//        }
//    }

//    Connections {
//        target: foreground
//        onClicked: {
//            if (state === "Trip")
//                root.state = "TripToStandard"
//            else if (state === "Navigation")
//                root.state = "NavigationToStandard"
//            else if (state === "Standard")
//                root.state = "Trip"
//        }
//    }

//    Timeline {
//        id: timeline
//        animations: [
//            TimelineAnimation {
//                id: standardToTripAnimation
//                onFinished: root.state = "Trip"
//                loops: 1
//                duration: 350
//                from: 3000
//                to: 4000
//                running: false
//            },
//            TimelineAnimation {
//                id: standardToNavigationAnimation
//                onFinished: root.state = "Navigation"
//                loops: 1
//                duration: 350
//                from: 1000
//                to: 2000
//                running: false
//            },
//            TimelineAnimation {
//                id: navigationToStandardAnimation
//                onFinished: root.state = "Standard"
//                loops: 1
//                duration: 350
//                from: 2000
//                to: 3000
//                running: false
//            },
//            TimelineAnimation {
//                id: tripToStandardAnimation
//                onFinished: root.state = "Standard"
//                loops: 1
//                duration: 350
//                from: 0
//                to: 1000
//                running: false
//            }
//        ]
//        endFrame: 4000
//        enabled: true
//        startFrame: 0

//        KeyframeGroup {
//            target: screenCanvas
//            property: "x"

//            Keyframe {
//                value: 0
//                frame: 0
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: -1280
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: -2560
//                frame: 2000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: -1280
//                frame: 3000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: standardscreen
//            property: "scale"

//            Keyframe {
//                value: 0.4
//                frame: 0
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 1003
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.6
//                frame: 2000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 3000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.8
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: weather
//            property: "scale"

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.8
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.8
//                frame: 3000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: navigationScreen
//            property: "scale"

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.8
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 2000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0.8
//                frame: 3000
//            }
//        }

//        KeyframeGroup {
//            target: weather
//            property: "opacity"
//            Keyframe {
//                value: 1
//                frame: 0
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 3000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 4000
//            }

//            Keyframe {
//                value: 0
//                frame: 4100
//            }

//            Keyframe {
//                value: "0"
//                frame: 4050
//            }
//        }

//        KeyframeGroup {
//            target: standardscreen
//            property: "opacity"

//            Keyframe {
//                value: 0
//                frame: 0
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 2000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 3000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: navigationScreen
//            property: "opacity"
//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 1
//                frame: 2000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 1000
//            }

//            Keyframe {
//                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
//                value: 0
//                frame: 3000
//            }
//        }

//        KeyframeGroup {
//            target: trips
//            property: "x"
//            Keyframe {
//                value: 106
//                frame: 3101
//            }

//            Keyframe {
//                value: -164
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: trips
//            property: "y"
//            Keyframe {
//                value: 107
//                frame: 3101
//            }

//            Keyframe {
//                value: -187
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: trips
//            property: "opacity"
//            Keyframe {
//                value: 1
//                frame: 3101
//            }

//            Keyframe {
//                value: 0
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: navigate
//            property: "x"
//            Keyframe {
//                value: 892
//                frame: 3101
//            }

//            Keyframe {
//                value: 1271
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: navigate
//            property: "y"
//            Keyframe {
//                value: 107
//                frame: 3101
//            }

//            Keyframe {
//                value: -109
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: navigate
//            property: "opacity"
//            Keyframe {
//                value: 1
//                frame: 3101
//            }

//            Keyframe {
//                value: 0
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: image
//            property: "x"
//            Keyframe {
//                value: 123
//                frame: 3101
//            }

//            Keyframe {
//                value: -150
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: image
//            property: "y"
//            Keyframe {
//                value: 625
//                frame: 3101
//            }

//            Keyframe {
//                value: 830
//                frame: 4000
//            }
//        }

//        KeyframeGroup {
//            target: image
//            property: "opacity"
//            Keyframe {
//                value: 1
//                frame: 3101
//            }

//            Keyframe {
//                value: 0
//                frame: 4000
//            }
//        }
//    }

//    states: [
//        State {
//            name: "Trip"

//            PropertyChanges {
//                target: timeline
//                currentFrame: 0
//                enabled: true
//            }
//        },
//        State {
//            name: "Standard"

//            PropertyChanges {
//                target: timeline
//                currentFrame: 1000
//                enabled: true
//            }
//        },
//        State {
//            name: "Navigation"

//            PropertyChanges {
//                target: timeline
//                currentFrame: 2000
//                enabled: true
//            }
//        },
//        State {
//            name: "TripToStandard"

//            PropertyChanges {
//                target: timeline
//                enabled: true
//            }

//            PropertyChanges {
//                target: standardToTripAnimation
//                running: false
//            }

//            PropertyChanges {}

//            PropertyChanges {
//                target: tripToStandardAnimation
//                running: true
//            }
//        },
//        State {
//            name: "StandardToNavigation"

//            PropertyChanges {
//                target: timeline
//                enabled: true
//            }

//            PropertyChanges {
//                target: standardToNavigationAnimation
//                running: true
//            }
//        },
//        State {
//            name: "NavigationToStandard"

//            PropertyChanges {
//                target: timeline
//                enabled: true
//            }

//            PropertyChanges {
//                target: navigationToStandardAnimation
//                running: true
//            }
//        },
//        State {
//            name: "StandardToTrip"

//            PropertyChanges {
//                target: timeline
//                enabled: true
//            }

//            PropertyChanges {
//                target: standardToTripAnimation
//                running: true
//            }
//        }
//    ]
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:3}D{i:4}
}
##^##*/

