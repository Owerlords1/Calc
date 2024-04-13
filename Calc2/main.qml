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
        id: _calcMonitor
        x:20;y:30;width:440;height:160
        border.color: "black"
        border.width: 1


        Grid{
            columns: 1
            rows: 5

            Rectangle{

                width: _calcMonitor.width-4
                height: (_calcMonitor.height/5)-4

                Text{
                    id: _number1
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22
                    objectName: Num1
                    focus: true
                    Item{
                        id: _number1help
                        visible: false
                        enabled: true
                    }
                }

            }
            Rectangle{
                width: _calcMonitor.width-4
                height: (_calcMonitor.height/5)-4

                Text{
                    id: _sign
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22
                }

            }
            Rectangle{

                width: _calcMonitor.width-4
                height: (_calcMonitor.height/5)-4

                Text{
                    id: _number2
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22
                    objectName: Num2
                    focus: false
                    Item{
                        id: _number2help
                        visible: false
                        enabled: false
                    }
                }

            }
            Rectangle{

                width: _calcMonitor.width-4
                height: (_calcMonitor.height/5)-4

                Text{
                    id: _equal
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22
                    objectName: Eq

                }

            }
            Rectangle{
                width: _calcMonitor.width-4
                height: (_calcMonitor.height/5)-4

                Text{
                    id: _result
                    anchors.right: parent.right
                    text: ""
                    font.pixelSize: 22

                    Connections {
                        target: Logica
                        function onsetNumToQML(Result){
                        _result.text=Result
                        }
                    }

                    }

                }


            }

        }



    Rectangle{
        id: _calcButtons
        x:20;y:380;width:440;height:180
        color:blue

        Grid{
            columns:4
            rows:4
            spacing:2
            horizontalItemAlignment: Grid.AlignLeft
            verticalItemAlignment: Grid.AlignBottom



                Button{
                    id: _butt1
                    text: "1"
                    width: 60
                    height: 30
                    onClicked:{
                        if(_number1help.enabled){
                          _number1.text = _number1.text + "1"}
                        if(_number2help.enabled){
                           _number2.text = _number2.text + "1"
                                }

                             }
                }
                Button{
                    id: _butt2
                    text: "2"
                    width: 60
                    height: 30
                    onClicked:{
                        if(_number1help.enabled){
                          _number1.text = _number1.text + "2"}
                        if(_number2help.enabled){
                           _number2.text = _number2.text + "2"
                                }
                              }
                }
                Button{
                    id: _butt3
                    text: "3"
                    width: 60
                    height: 30
                    onClicked:{
                        if(_number1help.enabled){
                          _number1.text = _number1.text + "3"}
                        if(_number2help.enabled){
                           _number2.text = _number2.text + "3"
                                }
                             }
                }
                Button{
                    id: _buttplus
                    text: "+"
                    width: 60
                    height: 30
                    onClicked:{
                            if(_number1help.enabled){
                            _sign.text=this.text
                            _number1help.enabled=false
                            _number2help.enabled=true
                                }
                            if(_number2help.enabled){
                            _sign.text=this.text
                               }
                        }
                }
                Button{
                    id: _butt4
                    text: "4"
                    width: 60
                    height: 30
                    onClicked:{
                          if(_number1help.enabled){
                          _number1.text = _number1.text + "4"}
                            if(_number2help.enabled){
                          _number2.text = _number2.text + "4"
                               }
                             }
                    }
                Button{
                    id: _butt5
                    text: "5"
                    width: 60
                    height: 30
                    onClicked:{
                            if(_number1help.enabled){
                          _number1.text = _number1.text + "5"}
                          if(_number2help.enabled){
                             _number2.text = _number2.text + "5"}
                              }
                }
                Button{
                    id: _butt6
                    text: "6"
                    width: 60
                    height: 30
                    onClicked:{
                                if(_number1help.enabled){
                               _number1.text = _number1.text + "6"}
                                  if(_number2help.enabled){
                               _number2.text = _number2.text + "6"}
                                      }
                }
                Button{
                    id: _buttminus
                    text: "-"
                    width: 60
                    height: 30
                    onClicked:{
                              if(_number1help.enabled){
                              _sign.text=this.text
                              _number1help.enabled=false
                              _number2help.enabled=true
                                 }
                              if(_number2help.enabled){
                              _sign.text=this.text
                                 }
                             }
                }
                Button{
                    id: _butt7
                    text: "7"
                    width: 60
                    height: 30
                    onClicked:{
                               if(_number1help.enabled){
                               _number1.text = _number1.text + "7"}
                              if(_number2help.enabled){
                                 _number2.text = _number2.text + "7"}
                                }
                }
                Button{
                    id: _butt8
                    text: "8"
                    width: 60
                    height: 30
                    onClicked:{
                                if(_number1help.enabled){
                                 _number1.text = _number1.text + "8"}
                               if(_number2help.enabled){
                              _number2.text = _number2.text + "8"}
                              }
                }
                Button{
                    id: _butt9
                    text: "9"
                    width: 60
                    height: 30
                    onClicked:{
                               if(_number1help.enabled){
                             _number1.text = _number1.text + "9"}
                              if(_number2help.enabled){
                            _number2.text = _number2.text + "9"}
                               }
                }
                Button{
                    id: _buttmultiply
                    text: "*"
                    width: 60
                    height: 30
                    onClicked:{
                               if(_number1help.enabled){
                               _sign.text=this.text
                               _number1help.enabled=false
                               _number2help.enabled=true
                                    }
                               if(_number2help.enabled){
                               _sign.text=this.text
                                    }
                              }
                }
                Button{
                    id: _buttclear
                    text: "C"
                    width: 60
                    height: 30
                }
                Button{
                    id: _buttp0
                    text: "0"
                    width: 60
                    height: 30
                    onClicked:{
                            if(_number1.text!=0&&_number1help.enabled){
                                 _number1.text = _number1.text + "0"}

                            if(_number1.text!=0&&_number2help.enabled){
                                  _number2.text = _number2.text + "0"}
                               }
                }
                Button{
                    id: _buttequal
                    text: "="
                    width: 60
                    height: 30
                    onClicked:{
                        Logica.getNumFromQML(_number1.text,_number2.text,_sign.text,_result.text)
                        _equal.text="="}

                             }
                Button{
                    id: _buttpart
                    text: "/"
                    width: 60
                    height: 30
                    onClicked:{
                                        if(_number1help.enabled){
                                        _sign.text=this.text
                                        _number1help.enabled=false
                                        _number2help.enabled=true
                                            }
                                        if(_number2help.enabled){
                                        _sign.text=this.text
                                           }

                              }


        }
      }

    }
}

