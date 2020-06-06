import QtQuick 2.4
import QtQuick.Controls 2.0

PageBackground {
    width: 300
    height: 800
    color: "#915151"
    property alias customLabel1Text: customLabel1.text
    property alias comboBox: comboBox
    property alias button: button
    title: "Smart Home"

    Label {
        id: label
        x: 29
        y: 116
        width: 102
        height: 25
        color: "#4dea70"
        text: Qt.formatDateTime(new Date(), "dddd")
        font.pixelSize: 22
    }

    CustomLabel {
        id: customLabel1
        x: 22
        y: 141
        width: 203
        height: 25
        text: Qt.formatDateTime(new Date(), "dd/MM/yyyy")
        font.pixelSize: 22
    }

    Label {
        id: label1
        x: 29
        y: 177
        color: "#4dea70"
        text: qsTr("Temperature")
        font.family: "Arial"
        font.pixelSize: 22
    }

    CustomLabel {
        id: customLabel2
        x: 30
        y: 202
        text: "22 degree"
        font.pixelSize: 22
    }

    Label {
        id: label2
        x: 29
        y: 233
        color: "#212722"
        text: qsTr("Power Consumption")
        font.pixelSize: 22
    }

    ProgressBar {
        id: progressBar
        x: 29
        y: 270
        value: 0.5
    }

    Switch {
        id: element
        x: 29
        y: 307
        text: qsTr("Vandilation")
        autoExclusive: false
        font.pixelSize: 22
    }

    Slider {
        id: slider
        x: 29
        y: 363
        value: 0.5
    }

    Switch {
        id: element1
        x: 29
        y: 432
        text: qsTr("Alarm Active")
        font.family: "Arial"
        font.pixelSize: 22
    }

    RadioButton {
        id: radioButton
        x: 29
        y: 511
        text: qsTr("Active Alert")
        font.pixelSize: 22
        font.family: "Arial"
    }

    Label {
        id: label3
        x: 29
        y: 581
        text: qsTr("Mode")
        font.pixelSize: 22
    }

    ComboBox {
        id: comboBox
        x: 29
        y: 647
        width: 201
        height: 51
    }

    Button {
        id: button
        x: 30
        y: 731
        width: 200
        height: 40
        text: qsTr("Configure")
    }

    CustomLabel {
        id: customLabel
        x: 31
        y: 76
        font.pixelSize: 22
    }
}
