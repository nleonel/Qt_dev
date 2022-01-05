import QtQuick 2.0
import QtQuick.Controls.Material 2.12
import QtQuick.Controls 2.12


Label {
    id: time
    property bool minsec: false
    property color color: "#4e9a06"

    text: minsec == true ? Qt.formatTime(new Date(),"hh:mm:ss") :  Qt.formatTime(new Date(),"hh:mm")

    Timer {
           interval: 1000; running: true; repeat: true
           onTriggered: time.text = minsec == true ? Qt.formatTime(new Date(),"hh:mm:ss") :  Qt.formatTime(new Date(),"hh:mm")
       }

}
