import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _root
        color: "#96af9a"
        anchors.fill: parent
        anchors.centerIn: parent

        TextInput {
            id: _expression
            text: qsTr("TEST")
            anchors.fill: parent
            anchors.centerIn: _root
            anchors.verticalCenter: _root.verticalCenter
            anchors.horizontalCenter: _root.horizontalCenter


            onAccepted: {
                Calculator.getExpressionFromQml(_expression.text);
            }




             Connections {
                target: Calculator

                function onSetExpessionToQml(expression) {
                    _expression.text = expression;
                }
            }
        }
    }
}
