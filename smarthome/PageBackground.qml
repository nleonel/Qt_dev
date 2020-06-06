import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import Qt.labs.settings 1.0

Rectangle {

    Material.theme: Material.Dark
    Material.accent: Material.DeepOrange
    height:800
    color: "#141111"
    property alias title: label.text
    clip: true
    width: 980

    
    Label {
        id: label
        x: 13
        y: 31
        color: "#e6e6ea"
        text: qsTr("Label")
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 22
    }
    
    Rectangle {
        id: rectangle
        x: 709
        y: -29
        width: 400
        height: 200
        color: "#1e1818"
        clip: true
        rotation: 45
    }
    

}


