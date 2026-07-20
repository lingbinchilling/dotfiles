import Quickshell

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData

            anchors {
                top: true
                left: true
                right: true
            }
            color: "#151019"
            implicitHeight: 30

            ClockWidget {
                anchors.centerIn: parent
            }
        }
    }
}
