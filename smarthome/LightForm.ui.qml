import QtQuick 2.4
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

PageBackground {
    color: "#babdb6"
    border.color: "#1c1717"
    title: "Ligth"

    GridLayout {
        id: gridLayout
        x: 64
        y: 224
        columnSpacing: 20
        rowSpacing: 20
        rows: 2
        columns: 2

        GroupBox {
            id: groupBox3
            title: qsTr("BedRoom 02")
            GridLayout {
                x: -11
                y: 5
                rows: 3
                Switch {
                    id: element9
                    text: qsTr("All")
                }

                Slider {
                    id: slider9
                    value: 0.5
                }

                Switch {
                    id: element10
                    text: qsTr("Central")
                }

                Slider {
                    id: slider10
                    value: 0.5
                }

                Switch {
                    id: element11
                    text: qsTr("Bet")
                }

                Slider {
                    id: slider11
                    value: 0.5
                }
                columns: 2
            }
        }

        GroupBox {
            id: groupBox2
            title: qsTr("BetRoom  01")
            GridLayout {
                rows: 3
                Switch {
                    id: element6
                    text: qsTr("All")
                }

                Slider {
                    id: slider6
                    value: 0.5
                }

                Switch {
                    id: element7
                    text: qsTr("Central")
                }

                Slider {
                    id: slider7
                    value: 0.5
                }

                Switch {
                    id: element8
                    text: qsTr("Bet")
                }

                Slider {
                    id: slider8
                    value: 0.5
                }
                columns: 2
            }
        }

        GroupBox {
            id: groupBox1
            title: qsTr("BathRoom")
            GridLayout {
                rows: 3
                Switch {
                    id: element3
                    text: qsTr("All")
                }

                Slider {
                    id: slider3
                    value: 0.5
                }

                Switch {
                    id: element4
                    text: qsTr("Central")
                }

                Slider {
                    id: slider4
                    value: 0.5
                }

                Switch {
                    id: element5
                    text: qsTr("Shower")
                }

                Slider {
                    id: slider5
                    value: 0.5
                }
                columns: 2
            }
        }

        GroupBox {
            id: groupBox
            width: 346
            height: 154
            title: qsTr("Living Room")

            GridLayout {
                rows: 3
                columns: 2

                Switch {
                    id: element
                    text: qsTr("All")
                }

                Slider {
                    id: slider
                    value: 0.5
                }

                Switch {
                    id: element1
                    text: qsTr("Central")
                }

                Slider {
                    id: slider1
                    value: 0.5
                }

                Switch {
                    id: element2
                    text: qsTr("Conner")
                }

                Slider {
                    id: slider2
                    value: 0.5
                }
            }
        }
    }
}
