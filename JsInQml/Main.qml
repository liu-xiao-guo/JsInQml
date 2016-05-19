import QtQuick 2.4
import Ubuntu.Components 1.3
import "my_button_impl.js" as Logic
import "factorial.js" as Method

MainView {
    id: main
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "jsinqml.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    Page {
        header: PageHeader {
            id: pageHeader
            title: i18n.tr("JsInQml")
            StyleHints {
                foregroundColor: UbuntuColors.orange
                backgroundColor: UbuntuColors.porcelain
                dividerColor: UbuntuColors.slate
            }
        }

        Column {
            anchors.centerIn: parent
            spacing: units.gu(5)

            MyButton {
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Button " + count
                onClicked: {
                    console.log("Button 1 is clicked!")
                }
            }

            MyButton {
                anchors.horizontalCenter: parent.horizontalCenter
                width: parent.width
                text: "Button " + count
                onClicked: {
                    console.log("Button 2 is clicked!")
                }
            }

            Button {
                text: "Change color"
                onClicked: {
                    console.log("Change button is clicked")
                    Logic.changeBackgroundColor();
                    // The following call will get wrong since
                    // it is stateless
                    // Method.changeBackgroundColor();
                }
            }

            Button {
                text: "Calculate"
                onClicked: {
                    console.log("Calculate button is clicked")
                    console.log(Method.factorial(10));
                    console.log("factorialCallCount in Main.qml: " + Method.factorialCallCount())
                }
            }

            Button {
                text: "Change color via stateless "
                onClicked: {
                    Method.changeBackground(main)
                }
            }
        }
    }
}

