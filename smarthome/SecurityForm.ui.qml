import QtQuick 2.4
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

PageBackground {
    color: "#729fcf"
    title: "Security"

    GroupBox {
        id: groupBox
        x: 57
        y: 108
        width: 320
        height: 220
        title: qsTr("Living Room ")

        GridLayout {
            x: 0
            y: 26
            rows: 4
            columns: 2

            RadioButton {
                id: radioButton
                text: qsTr("Smoke Detection")
            }

            Button {
                id: button
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton1
                text: qsTr("Movement Detection")
            }

            Button {
                id: button1
                text: qsTr("Test")
            }

            Switch {
                id: sw1
                text: qsTr("Window 01")
            }

            Label {
                id: label
                text: sw1.checked ? "Open" : "Closed"
                font.pointSize: 18
            }

            Switch {
                id: sw2
                text: qsTr("Window 02")
            }

            Label {
                id: label1
                text: sw2.checked ? "Open" : "Closed"
                font.pointSize: 18
            }
        }
    }

    GroupBox {
        id: groupBox1
        x: 412
        y: 108
        width: 320
        height: 220
        title: qsTr("Bath Room ")
        GridLayout {
            x: 0
            y: 26
            columns: 2
            RadioButton {
                id: radioButton2
                text: qsTr("Smoke Detection")
            }

            Button {
                id: button2
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton3
                text: qsTr("Movement Detection")
            }

            Button {
                id: button3
                text: qsTr("Test")
            }

            Switch {
                id: sw3
                text: qsTr("Window 01")
            }

            Label {
                id: label2
                text: sw3.checked ? "Open" : "Closed"
                font.pointSize: 18
            }

            Switch {
                id: sw4
                text: qsTr("Window 02")
            }

            Label {
                id: label3
                text: sw4.checked ? "Open" : "Closed"
                font.pointSize: 18
            }
            rows: 4
        }
    }

    GroupBox {
        id: groupBox2
        x: 57
        y: 354
        width: 320
        height: 220
        title: qsTr("Bed Room 01")
        GridLayout {
            x: 0
            y: 26
            columns: 2
            RadioButton {
                id: radioButton4
                text: qsTr("Smoke Detection")
            }

            Button {
                id: button4
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton5
                text: qsTr("Movement Detection")
            }

            Button {
                id: button5
                text: qsTr("Test")
            }

            Switch {
                id: sw5
                text: qsTr("Window 01")
            }

            Label {
                id: label4
                text: sw5.checked ? "Open" : "Closed"
                font.pointSize: 18
            }

            Switch {
                id: sw6
                text: qsTr("Window 02")
            }

            Label {
                id: label5
                text: sw6.checked ? "Open" : "Closed"
                font.pointSize: 18
            }
            rows: 4
        }
    }

    GroupBox {
        id: groupBox3
        x: 412
        y: 354
        width: 320
        height: 220
        title: qsTr("Bed Room 02")
        GridLayout {
            x: 0
            y: 26
            columns: 2
            RadioButton {
                id: radioButton6
                text: qsTr("Smoke Detection")
            }

            Button {
                id: button6
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton7
                text: qsTr("Movement Detection")
            }

            Button {
                id: button7
                text: qsTr("Test")
            }

            Switch {
                id: sw7
                text: qsTr("Window 01")
            }

            Label {
                id: label6
                text: sw7.checked ? "Open" : "Closed"
                font.pointSize: 18
            }

            Switch {
                id: sw8
                text: qsTr("Window 02")
            }

            Label {
                id: label7
                text: sw8.checked ? "Open" : "Closed"
                font.pointSize: 18
            }
            rows: 4
        }
    }
}



