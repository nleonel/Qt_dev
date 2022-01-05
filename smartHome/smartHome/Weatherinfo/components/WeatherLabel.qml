import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: tp

    property string humidity: "% 20"
    property string weatherIcon: "01d"
    property string pressure: "Hpa 1000"
    property int pixels: 22

    Row{
        id: row
        width: 250
        height: 80
        spacing: 1


        WeatherIcon {
            id: iconHumidity
            weatherIcon: tp.weatherIcon

            property real side: {
                var h = 3 * tp.height / 5
                if (tp.width < h)
                    tp.width;
                else
                    h;
            }
            width: 130
            height: row.height
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: true

        }

        Text {
            id: humid
            width: 150
            height: row.height
            color: "#31b2ec"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.bold: false
            fontSizeMode: Text.Fit
            font.family: "Times New Roman"
            textFormat: Text.PlainText
            text: tp.humidity
            font.pixelSize: tp.pixels
        }

    }

    Row {
        id: ro
        width: 250
        height: 80
        anchors.top: row.bottom
        spacing: 1

        WeatherIcon {
            id: iconpressure
            weatherIcon: tp.weatherIcon

            property real side: {
                var h = 3 * tp.height / 5
                if (tp.width < h)
                    tp.width;
                else
                    h;
            }
            width: 130
            height: 80
            layer.smooth: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            clip: false

        }

        Text {
            id: pres
            width: 150
            height: ro.height
            color: "#31b2ec"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.bold: false
            fontSizeMode: Text.Fit
            font.family: "Times New Roman"
            textFormat: Text.PlainText
            text: tp.pressure
            font.pixelSize: tp.pixels
        }


    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
