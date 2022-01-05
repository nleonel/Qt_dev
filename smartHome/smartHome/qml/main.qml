import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Universal 2.12
import Ionicon 1.0


import QtQuick.Timeline 1.0

ApplicationWindow {

    id: window
    visible: true
    visibility: "FullScreen"
    width: 1024
    height: 600

    title: qsTr("Home")

    IoniconLoader {}

    MainScreen{
        id:screen
        anchors.fill: parent
    }
}


