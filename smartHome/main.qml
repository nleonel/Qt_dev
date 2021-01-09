import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Universal 2.12
import Ionicon 1.0

ApplicationWindow {

    id: window
    visible: true
    visibility: "FullScreen"
    width: 1024
    height: 980
    title: qsTr("Home")

    IoniconLoader {}

    Shortcut {
            sequences: ["Esc", "Back"]
            enabled: stackView.depth > 1
            onActivated: navigateBackAction.trigger()
        }

        Action {
            id: navigateBackAction
//            text: stackView.depth > 1 ? "\uf305" : "\uf3b2"
//            onTriggered: {
//                if (stackView.depth > 1) {
//                    stackView.pop()
//                    listView.currentIndex = -1
//                } else {
//                    drawer.open()
//                }
//            }
        }

        Shortcut {
            sequence: "Menu"
            onActivated: optionsMenuAction.trigger()
        }

        Action {
            id: optionsMenuAction
            icon.name: "menu"
            onTriggered: optionsMenu.open()
        }


//        function myIcon(){

//            if (stackView.depth > 1) {

//                Ionicon { source: "android-menu";color: 'blue';anchors.fill: parent }

//            } else {
//                   Ionicon { source: "android-menu";color: 'blue';anchors.fill: parent }
//            }
//        }

        header: ToolBar {
            id: bar
            height: 50
            Material.foreground: "blue"

            Rectangle{
                color: "#adcec6"
                border.width: 0
                anchors.fill: parent
                radius: 7

                RowLayout{

                    spacing: 0
                    anchors.fill: parent

                    ToolButton {
                        id: tb
//                    action: navigateBackAction
                        text: stackView.depth > 1 ? "\uf2ca" : '\uf394'

                        onClicked: {
                            if (stackView.depth > 1) {
                                stackView.pop()
                                listView.currentIndex = -1
                            } else {
                                drawer.open()
                            }
                        }

//                    Ionicon {
//                        id: icon
//                        source: "android-menu"
//                        color: 'blue'
//                        anchors.fill: parent
//                    }
                    }

                    Label {
                        id: titleLabel
                        color: "#1471cd"
                        text: listView.currentItem ? listView.currentItem.text : "Smart Home"
                        font.family: "Times New Roman"
                        font.bold: true
                        font.pixelSize: 50
                        font.italic: true
                        elide: Label.ElideRight
                        horizontalAlignment: Qt.AlignHCenter
                        verticalAlignment: Qt.AlignVCenter
                        Layout.fillWidth: true
                    }

                    ToolButton {
                        action: optionsMenuAction

                        Ionicon {
                            id: ico
                            source: "android-settings"
                            color: 'blue'
                            anchors.fill: parent
                        }

                        Menu {
                            id: optionsMenu
                            x: parent.width - width
                            transformOrigin: Menu.TopRight

                            Action {
                                text: "Settings"
                                onTriggered: settingsDialog.open()
                            }
                            Action {
                                text: "About"
                                onTriggered: aboutDialog.open()
                            }
                        }
                    }
                }

            }
        }

    StackView{
      id: stackView
      anchors.rightMargin: 6
      anchors.bottomMargin: 0
      anchors.leftMargin: -6
      anchors.topMargin: 0
      anchors.fill: parent

      initialItem: Page  {
                  id: page
      }
    }

//    ScrollView {
//        anchors.fill: parent

//        ListView {
//            width: parent.width
//            model: 2
//            delegate: ItemDelegate {
//                text: "Item " + (index + 1)
//                width: parent.width
//            }
//        }
//    }

    Drawer {
            id: drawer
            width: Math.min(window.width, window.height) / 3 * 2
            height: window.height
            interactive: stackView.depth === 1

            ListView {
                id: listView

                focus: true
                currentIndex: -1
                anchors.fill: parent

                delegate: ItemDelegate {
                    width: parent.width
                    text: model.title
                    highlighted: ListView.isCurrentItem
                    onClicked: {
                        listView.currentIndex = index
                        stackView.push(model.source)
                        drawer.close()
                    }
                }

                model: ListModel {
                    ListElement {
                        title: "Light Control Panel"
                        source: "qrc:/Light.qml"
                    }
                    ListElement { title: "Icon"; source: "qrc:/NyItem.qml" }

                }

                ScrollIndicator.vertical: ScrollIndicator { }
            }
        }
}
