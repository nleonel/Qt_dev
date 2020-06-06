import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

PageBackground {
    color: "#1c1a25"
    property alias dial3: dial3
    property alias dial2: dial2
    property alias dial1: dial1
    property alias groupBox1: groupBox1
    property alias dial: dial

    GridLayout {
        x: 41
        y: 82
        columnSpacing: 10
        rowSpacing: 20
        rows: 2
        columns: 2

        GroupBox {
            id: groupBox
            Layout.preferredHeight: 310
            Layout.preferredWidth: 376
            title: qsTr("Living Room")

            Label {
                id: label1
                x: 266
                color: "#f0f1f1"
                text: qsTr("Actual")
                anchors.topMargin: 7
                anchors.top: parent.top
                font.pointSize: 18
                horizontalAlignment: Text.AlignHCenter
            }

            Label {
                id: label
                x: 19
                color: "#e7e8e9"
                text: qsTr("Target")
                anchors.topMargin: 7
                anchors.top: parent.top
                font.pointSize: 18
            }

            ProgressBar {
                id: progressBar1
                x: 201
                y: 157
                value: dial.position
                rotation: 90
            }

            ProgressBar {
                id: progressBar
                x: -64
                y: 157
                width: 200
                height: 6
                visible: true
                value: dial.position
                rotation: 90
            }

            Dial {
                id: dial
                x: 83
                opacity: 1
                font.italic: false
                wheelEnabled: true
                focusPolicy: Qt.ClickFocus
                font.family: "Arial"
                font.weight: Font.Light
                stepSize: 1
                to: 100
                enabled: true
                anchors.top: parent.top
                anchors.topMargin: 57
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 26
                font.pixelSize: 22
                inputMode: Dial.Circular

                Label {
                    id: speed
                    x: 37
                    y: 80
                    width: 109
                    height: 34
                    color: "#5a21af"
                    text: dial.value
                    font.weight: Font.Light
                    styleColor: "#342fc8"
                    scale: 1
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 28
                }
            }
        }

        GroupBox {
            id: groupBox2
            Layout.preferredHeight: 310
            Layout.preferredWidth: 376
            Label {
                id: label4
                x: 266
                color: "#f0f1f1"
                text: qsTr("Actual")
                anchors.topMargin: 7
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 18
            }

            Label {
                id: label5
                x: 19
                color: "#e7e8e9"
                text: qsTr("Target")
                anchors.topMargin: 7
                anchors.top: parent.top
                font.pointSize: 18
            }

            ProgressBar {
                id: progressBar4
                x: 201
                y: 157
                value: dial2.position
                rotation: 90
            }

            ProgressBar {
                id: progressBar5
                x: -64
                y: 157
                width: 200
                height: 6
                visible: true
                value: dial2.position
                rotation: 90
            }

            Dial {
                id: dial2
                x: 83
                wheelEnabled: true
                stepSize: 1
                to: 100
                font.pixelSize: 22
                anchors.topMargin: 57
                anchors.top: parent.top
                inputMode: Dial.Circular
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 26

                Label {
                    id: speed1
                    x: 37
                    y: 80
                    width: 109
                    height: 34
                    color: "#5a21af"
                    text: dial2.value
                    styleColor: "#342fc8"
                    font.pixelSize: 28
                    scale: 1
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Light
                }
            }
            title: qsTr("Bathroom")
        }

        GroupBox {
            id: groupBox1
            Layout.preferredHeight: 310
            Layout.preferredWidth: 376
            Label {
                id: label2
                x: 266
                color: "#f0f1f1"
                text: qsTr("Actual")
                anchors.topMargin: 7
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 18
            }

            Label {
                id: label3
                x: 19
                color: "#e7e8e9"
                text: qsTr("Target")
                anchors.topMargin: 7
                anchors.top: parent.top
                font.pointSize: 18
            }

            ProgressBar {
                id: progressBar2
                x: 201
                y: 157
                value: dial1.position
                rotation: 90
            }

            ProgressBar {
                id: progressBar3
                x: -64
                y: 157
                width: 200
                height: 6
                visible: true
                value: dial1.position
                rotation: 90
            }

            Dial {
                id: dial1
                x: 83
                stepSize: 1
                to: 100
                font.pixelSize: 22
                anchors.topMargin: 57
                anchors.top: parent.top
                inputMode: Dial.Circular
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 26

                Label {
                    id: speed3
                    x: 37
                    y: 80
                    width: 109
                    height: 34
                    color: "#5a21af"
                    text: dial1.value
                    styleColor: "#342fc8"
                    font.pixelSize: 28
                    scale: 1
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Light
                }
            }
            title: qsTr("BedRoom 01")
        }

        GroupBox {
            id: groupBox3
            Layout.preferredHeight: 310
            Layout.preferredWidth: 376
            Label {
                id: label6
                x: 266
                color: "#f0f1f1"
                text: qsTr("Actual")
                anchors.topMargin: 7
                anchors.top: parent.top
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 18
            }

            Label {
                id: label7
                x: 19
                color: "#e7e8e9"
                text: qsTr("Target")
                anchors.topMargin: 7
                anchors.top: parent.top
                font.pointSize: 18
            }

            ProgressBar {
                id: progressBar6
                x: 201
                y: 157
                value: dial3.position
                rotation: 90
            }

            ProgressBar {
                id: progressBar7
                x: -64
                y: 157
                width: 200
                height: 6
                visible: true
                value: dial3.position
                rotation: 90
            }

            Dial {
                id: dial3
                x: 83
                stepSize: 1
                to: 100
                font.pixelSize: 22
                anchors.topMargin: 57
                anchors.top: parent.top
                inputMode: Dial.Circular
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 26

                Label {
                    id: speed2
                    x: 37
                    y: 80
                    width: 109
                    height: 34
                    color: "#5a21af"
                    text: dial3.value
                    styleColor: "#342fc8"
                    font.pixelSize: 28
                    scale: 1
                    horizontalAlignment: Text.AlignHCenter
                    font.weight: Font.Light
                }
            }
            title: qsTr("BedRoom 02")
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
