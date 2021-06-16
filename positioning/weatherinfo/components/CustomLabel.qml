import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12


Label {
    id: lab
    color: "#4e9a06"
    text: Qt.formatTime(new Date(),"hh:mm:ss")


    Timer {
           interval: 1000; running: true; repeat: true
           onTriggered: lab.text = Qt.formatTime(new Date(),"hh:mm:ss")
       }

}
