import QtQuick 2.15

Rectangle{
    id: container
    width: 100
    height: 33
    color: "transparent"
    property alias plus: mouseAreaPlus
    property alias minus: mouseAreaMinus
    property int clickCount: 0
    Rectangle{
        id: minusSign
        height: parent.height
        width: height
        anchors{
            left: container.left
            top: container.top
            topMargin: -3
        }
        color: "transparent"
        Text{
            text: "-"
            font.bold: true
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 30
            anchors.centerIn: parent
        }
        MouseArea{
            id: mouseAreaMinus
            anchors.fill: parent
            //onClicked:SystemController.setAlcoholValue(SystemController.alcoholValue - 33)
            /*onClicked:{                   MUST BE HANDLED WHILE USING
                if(clickCount > 0)
                    clickCount = clickCount - 1
                else
                    clickCount = clickCount
            }*/
        }
    }

    Rectangle{
        id: number
        height: parent.height
        width: height
        color: "transparent"
        anchors{
            left: minusSign.right
            top: container.top
        }
        Text{
            id: numberText
//            function getClickCount(){
//                if(clickCount <= 0){
//                    return 0
//                }
//                else{
//                    return clickCount
//                }
//            }
            text: clickCount
            color: "white"
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 20
            anchors.centerIn: parent
        }
    }

    Rectangle{
        id: plusSign
        height: parent.height
        width: height
        anchors{
            right: container.right
            top: container.top
            topMargin: -3
        }
        color: "transparent"
        Text{
            text: "+"
            color: "white"
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 30
            anchors.centerIn: parent
        }
        MouseArea{
            id: mouseAreaPlus
            anchors.fill: parent
            onClicked:{
                clickCount = clickCount + 1
                SystemController.setAlcoholValue(SystemController.alcoholValue + 25)
            }
        }
    }
}
