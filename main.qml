import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    id: genframe
    width: 480
    height: 640
    visible: true
    title: qsTr("Калькулятор")
    color: grey


    Rectangle{
        id: calcMonitor
        x:20;y:30;width:440;height:160
        border.color: "black"
        border.width: 1

        Grid{
            columns: 1
            rows: 5

            Rectangle{

                width: calcMonitor.width-4
                height: (calcMonitor.height/5)-4

                Text{
                    id: number1
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22
                    objectName: Num1
                }

            }
            Rectangle{
                width: calcMonitor.width-4
                height: (calcMonitor.height/5)-4

                Text{
                    id: sign
                    anchors.right: parent.right
                    text: "sign"
                    font.pixelSize: 22
                }

            }
            Rectangle{

                width: calcMonitor.width-4
                height: (calcMonitor.height/5)-4

                Text{
                    id: number2
                    anchors.right: parent.right
                    text: "num2"
                    font.pixelSize: 22
                    objectName: Num2
                }

            }
            Rectangle{

                width: calcMonitor.width-4
                height: (calcMonitor.height/5)-4

                Text{
                    id: equal
                    anchors.right: parent.right
                    text: "="
                    font.pixelSize: 22
                    objectName: Eq

                }

            }
            Rectangle{
                width: calcMonitor.width-4
                height: (calcMonitor.height/5)-4

                Text{
                    id: result
                    anchors.right: parent.right
                    text: "result"
                    font.pixelSize: 22

                }


            }

        }

    }

    Rectangle{
        id: calcButtons
        x:20;y:380;width:440;height:180
        color:blue

        Grid{
            columns:4
            rows:4
            spacing:2
            horizontalItemAlignment: Grid.AlignLeft
            verticalItemAlignment: Grid.AlignBottom



                Button{
                    id: butt1
                    text: "1"
                    width: 60
                    height: 30
                    onClicked:{
                          number1.text = number1.text + "1"
                          DefNumber1.Number1=number1.text+"1"
                                }

                }
                Button{
                    id: butt2
                    text: "2"
                    width: 60
                    height: 30
                    onClicked:{
                          number1.text = number1.text + "2"
                          DefNumber1.Number1=number1.text+"2"
                                }
                }
                Button{
                    id: butt3
                    text: "3"
                    width: 60
                    height: 30
                    onClicked:{
                          number1.text = number1.text + "3"
                          DefNumber1.Number1=number1.text+"3"
                                }
                }
                Button{
                    id: buttplus
                    text: "+"
                    width: 60
                    height: 30
                    onClicked:{
                          OperandV.opV===1
                                }
                }
                Button{
                    id: butt4
                    text: "4"
                    width: 60
                    height: 30
                }
                Button{
                    id: butt5
                    text: "5"
                    width: 60
                    height: 30
                }
                Button{
                    id: butt6
                    text: "6"
                    width: 60
                    height: 30
                }
                Button{
                    id: buttminus
                    text: "-"
                    width: 60
                    height: 30
                }
                Button{
                    id: butt7
                    text: "7"
                    width: 60
                    height: 30
                }
                Button{
                    id: butt8
                    text: "8"
                    width: 60
                    height: 30
                }
                Button{
                    id: butt9
                    text: "9"
                    width: 60
                    height: 30
                }
                Button{
                    id: buttmultiply
                    text: "*"
                    width: 60
                    height: 30
                }
                Button{
                    id: buttclear
                    text: "C"
                    width: 60
                    height: 30
                }
                Button{
                    id: buttp0
                    text: "0"
                    width: 60
                    height: 30
                }
                Button{
                    id: buttequal
                    text: "="
                    width: 60
                    height: 30
                }
                Button{
                    id: buttpart
                    text: "/"
                    width: 60
                    height: 30
                }


        }
    }

}
