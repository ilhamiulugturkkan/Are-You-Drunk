import QtQuick 2.15

Rectangle{
    id: leftPart
    width: parent.width / 3
    height: parent.height
    anchors.left: parent.left
    color: "transparent"
    Text{
        id: cocktailsText
        text: "COCKTAILS"
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
        id: cocktails
        text: "Negroni:
Margarita:
Martini:
Manhattan:
Spritz:
Mojito:
Pina Colada:
Cosmopolitan:
Long Island:"
        color: "white"
        font.pointSize: 30
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
        anchors{
            right: cocktailsText.horizontalCenter
            rightMargin: -50
            top: cocktailsText.bottom
            topMargin: 5
        }
    }
    TeqIndicator{
        id: forNegroni
        anchors{
            top: cocktails.top
            left: cocktails.right
            topMargin: 8
        }
        minus.onClicked:{
            if(forNegroni.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forNegroni.clickCount = forNegroni.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forMargarita
        anchors{
            top: forNegroni.bottom
            left: cocktails.right
            topMargin: 13
        }
        minus.onClicked:{
            if(forMargarita.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forMargarita.clickCount = forMargarita.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forMartini
        anchors{
            top: forMargarita.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 9)
        }
        minus.onClicked:{
            if(forMartini.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 34)
            forMartini.clickCount = forMartini.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forManhattan
        anchors{
            top: forMartini.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 7)
        }
        minus.onClicked:{
            if(forManhattan.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 32)
            forManhattan.clickCount = forManhattan.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forSprtiz
        anchors{
            top: forManhattan.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue - 15)
        }
        minus.onClicked:{
            if(forSprtiz.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 10)
            forSprtiz.clickCount = forSprtiz.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forMojito
        anchors{
            top: forSprtiz.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue - 13)
        }
        minus.onClicked:{
            if(forMojito.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 12)
            forMojito.clickCount = forMojito.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forPina
        anchors{
            top: forMojito.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue - 13)
        }
        minus.onClicked:{
            if(forPina.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 12)
            forPina.clickCount = forPina.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forCosmopolitan
        anchors{
            top: forPina.bottom
            left: cocktails.right
            topMargin: 13
        }
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 3)
        }
        minus.onClicked:{
            if(forCosmopolitan.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 28)
            forCosmopolitan.clickCount = forCosmopolitan.clickCount - 1
            }

        }
    }
    TeqIndicator{
        id: forLongIsland
        anchors{
            top: forCosmopolitan.bottom
            left: cocktails.right
            topMargin: 13
        }
        minus.onClicked:{
            if(forLongIsland.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 25)
            forLongIsland.clickCount = forLongIsland.clickCount - 1
            }

        }
    }
}
