// MyButton.qml
import QtQuick 2.0
import "my_button_impl.js" as Logic // a new instance of this JavaScript resource is loaded for each instance of Button.qml
import "factorial.js" as Method

Rectangle {
    id: rect
    width: 200
    height: 100
    color: "red"
    property int count: 0
    property alias text: mytext.text
    signal clicked()

    Text {
        id: mytext
        anchors.centerIn: parent
        font.pixelSize: units.gu(3)
    }

    MouseArea {
        id: mousearea
        anchors.fill: parent
        onClicked: {
            rect.clicked()
            count = Logic.onClicked(rect)
            console.log("factorialCallCount in MyButton.qml: " + Method.factorialCallCount())
        }
    }
}
