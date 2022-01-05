import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.3

Rectangle {
    id: root

    width: 1024
    height: 600

    color: "#1a1e25"
    state: "Standard"

    Item {
        id: screenCanvas
        width: root.width * 3
        height: root.height
        x: -1024

        Weatherinfo {
            id: weather
            width: root.width
            height: root.height
            opacity: 0
        }

        MainScreen {
            id: standardscreen
            pos: 1200

            Item {
                id: navigate
                x: 760
                y: 80
                width: 200
                height: 200

                CustomLabel {
                    x: 46
                    y: 111
                    color: "#9d9d9d"
                    text: qsTr("NAVIGATE")
                    font.letterSpacing: 1
                    font.pixelSize: 32
                }

                Image {
                    x: 59
                    y: 41
                    source: "images/nav_nodir.png"
                }
            }

            LightImage {
                id: image
                x: parent.width / 3
                y: parent.height / 4
            }

            Item {
                id: trips
                x: 106
                y: 107
                width: 131
                height: 173

                CustomLabel {
                    x: 46
                    y: 115
                    color: "#9d9d9d"
                    text: qsTr("kcal")
                    font.letterSpacing: 1
                    font.pixelSize: 22
                }
            }

            MouseArea {
                id: rightClickArea
                x: 852
                y: 62
                width: 243
                height: 242
            }

            MouseArea {
                id: leftClickArea
                x: -39
                y: 26
                width: 373
                height: 299
            }
        }

        Rectangle {
            id: navigationScreen
            width: 1024
            height: 600
            x: 1024 * 2
            color: "Blue"
        }
    }

    ForegroundScreen {
        id: foreground
        currentFrame: 0

        FeatureItem {
            id: featureItem
            x: 332
            y: 412
        }
    }

    Connections {
        target: leftClickArea
        onClicked: {
            root.state = "StandardToTrip"
        }
    }

    Connections {
        target: rightClickArea
        onClicked: {
            root.state = "StandardToNavigation"
        }
    }

    Connections {
        target: foreground
        onClicked: {
            if (state === "Trip")
                root.state = "TripToStandard"
            else if (state === "Navigation")
                root.state = "NavigationToStandard"
            else if (state === "Standard")
                root.state = "Trip"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: standardToTripAnimation
                onFinished: root.state = "Trip"
                loops: 1
                duration: 350
                from: 3000
                to: 4000
                running: false
            },
            TimelineAnimation {
                id: standardToNavigationAnimation
                onFinished: root.state = "Navigation"
                loops: 1
                duration: 350
                from: 1000
                to: 2000
                running: false
            },
            TimelineAnimation {
                id: navigationToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 2000
                to: 3000
                running: false
            },
            TimelineAnimation {
                id: tripToStandardAnimation
                onFinished: root.state = "Standard"
                loops: 1
                duration: 350
                from: 0
                to: 1000
                running: false
            }
        ]
        endFrame: 4000
        enabled: true
        startFrame: 0

        KeyframeGroup {
            target: screenCanvas
            property: "x"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -2560
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: -1280
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }
        }

        KeyframeGroup {
            target: standardscreen
            property: "scale"

            Keyframe {
                value: 0.4
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1003
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.6
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 4000
            }
        }

        KeyframeGroup {
            target: weather
            property: "scale"

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigationScreen
            property: "scale"

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0.8
                frame: 3000
            }
        }

        KeyframeGroup {
            target: weather
            property: "opacity"
            Keyframe {
                value: 1
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 4000
            }

            Keyframe {
                value: 0
                frame: 4100
            }

            Keyframe {
                value: "0"
                frame: 4050
            }
        }

        KeyframeGroup {
            target: standardscreen
            property: "opacity"

            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 3000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigationScreen
            property: "opacity"
            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 1
                frame: 2000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 1000
            }

            Keyframe {
                easing.bezierCurve: [0.39, 0.575, 0.565, 1, 1, 1]
                value: 0
                frame: 3000
            }
        }

        KeyframeGroup {
            target: trips
            property: "x"
            Keyframe {
                value: 106
                frame: 3101
            }

            Keyframe {
                value: -164
                frame: 4000
            }
        }

        KeyframeGroup {
            target: trips
            property: "y"
            Keyframe {
                value: 107
                frame: 3101
            }

            Keyframe {
                value: -187
                frame: 4000
            }
        }

        KeyframeGroup {
            target: trips
            property: "opacity"
            Keyframe {
                value: 1
                frame: 3101
            }

            Keyframe {
                value: 0
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "x"
            Keyframe {
                value: 892
                frame: 3101
            }

            Keyframe {
                value: 1271
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "y"
            Keyframe {
                value: 107
                frame: 3101
            }

            Keyframe {
                value: -109
                frame: 4000
            }
        }

        KeyframeGroup {
            target: navigate
            property: "opacity"
            Keyframe {
                value: 1
                frame: 3101
            }

            Keyframe {
                value: 0
                frame: 4000
            }
        }

        KeyframeGroup {
            target: image
            property: "x"
            Keyframe {
                value: 123
                frame: 3101
            }

            Keyframe {
                value: -150
                frame: 4000
            }
        }

        KeyframeGroup {
            target: image
            property: "y"
            Keyframe {
                value: 625
                frame: 3101
            }

            Keyframe {
                value: 830
                frame: 4000
            }
        }

        KeyframeGroup {
            target: image
            property: "opacity"
            Keyframe {
                value: 1
                frame: 3101
            }

            Keyframe {
                value: 0
                frame: 4000
            }
        }
    }

    states: [
        State {
            name: "Trip"

            PropertyChanges {
                target: timeline
                currentFrame: 0
                enabled: true
            }
        },
        State {
            name: "Standard"

            PropertyChanges {
                target: timeline
                currentFrame: 1000
                enabled: true
            }
        },
        State {
            name: "Navigation"

            PropertyChanges {
                target: timeline
                currentFrame: 2000
                enabled: true
            }
        },
        State {
            name: "TripToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToTripAnimation
                running: false
            }

            PropertyChanges {}

            PropertyChanges {
                target: tripToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToNavigation"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToNavigationAnimation
                running: true
            }
        },
        State {
            name: "NavigationToStandard"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: navigationToStandardAnimation
                running: true
            }
        },
        State {
            name: "StandardToTrip"

            PropertyChanges {
                target: timeline
                enabled: true
            }

            PropertyChanges {
                target: standardToTripAnimation
                running: true
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:18}
}
##^##*/

