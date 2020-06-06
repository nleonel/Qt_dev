import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12
import Qt.labs.settings 1.0
import QtQuick.Dialogs 1.0

SideBarForm {



    comboBox.model: ["Normal","Vacation","Party"]
    button.onClicked: {

}

    Dialog{
        id:dialog
        title: qsTr("Button press")

        function show(caption){
            dialog.text = caption;
            dialog.open();
        }
    }

}
