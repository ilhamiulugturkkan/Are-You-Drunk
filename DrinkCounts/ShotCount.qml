import QtQuick 2.15

Rectangle{
    id: rightPart
    width: parent.width / 3
    height: parent.height
    anchors.right: parent.right
    color: "transparent"
    Text{
        id: shotText
        text: "SHOTS"
        color: "white"
        width: parent.width
        font.pointSize: 30
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: 10
        }
    }
    Text{
        id: one
        text: "Vodka:
Rum:
Tequila:
Gin:
Liqueur:
Jager:"
        color: "white"
        font.pointSize: 30
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        anchors{
            right: shotText.horizontalCenter
            top: shotText.bottom
            topMargin: 5
        }
    }

    TeqIndicator{
        id: forVodka
        anchors{
            top: one.top
            left: one.right
            topMargin: 8
        }
        minus.onClicked:{
            if(forVodka.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forVodka.clickCount = forVodka.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forRum
        anchors{
            top: forVodka.bottom
            left: one.right
            topMargin: 13
        }
        minus.onClicked:{
            if(forRum.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forRum.clickCount = forRum.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forTeq
        anchors{
            top: forRum.bottom
            left: one.right
            topMargin: 13
        }
        minus.onClicked:{
            if(forTeq.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forTeq.clickCount = forTeq.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forGin
        anchors{
            top: forTeq.bottom
            left: one.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue -5)
        }
        minus.onClicked:{
            if(forGin.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 20)
            forGin.clickCount = forGin.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forLiq
        anchors{
            top: forGin.bottom
            left: one.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue - 15)
        }
        minus.onClicked:{
            if(forLiq.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 10)
            forLiq.clickCount = forLiq.clickCount - 1
            }
        }
    }
    TeqIndicator{
        id: forJager
        anchors{
            top: forLiq.bottom
            left: one.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue - 5)
        }
        minus.onClicked:{
            if(forJager.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 20)
            forJager.clickCount = forJager.clickCount - 1
            }

        }
    }
}
