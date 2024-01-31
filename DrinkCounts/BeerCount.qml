import QtQuick 2.15

Rectangle{
    id: leftPart
    width: parent.width / 3
    height: parent.height / 3
    anchors.horizontalCenter: parent.horizontalCenter
    color: "transparent"
    Text{
        id: beerCountText
        text: "BEER"
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
        id: thirtyThree
        text: "0.33 L: "
        font.pointSize: 30
        color: "white"
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors{
            right: beerCountText.horizontalCenter
            top: beerCountText.bottom
            topMargin: 5
        }
    }
    Indicator{
        id: ttIndi
        anchors.left: thirtyThree.right
        anchors.verticalCenter: thirtyThree.verticalCenter
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 33)
            SystemController.setBeerLiter(SystemController.beerLiter + 330)
        }
        minus.onClicked:{
            if(ttIndi.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 33)
            SystemController.setBeerLiter(SystemController.beerLiter - 330)
            ttIndi.clickCount = ttIndi.clickCount - 1
            }

        }
    }
    Text{
        id: fifty
        text: "0.5 L: "
        font.pointSize: 30
        color: "white"
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors{
            right: beerCountText.horizontalCenter
            top: thirtyThree.bottom
            topMargin: 5
        }
    }
    Indicator{
        id: ffIndi
        anchors.left: fifty.right
        anchors.verticalCenter: fifty.verticalCenter
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 40)
            SystemController.setBeerLiter(SystemController.beerLiter + 500)
        }
        minus.onClicked:{
            if(ffIndi.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 40)
            SystemController.setBeerLiter(SystemController.beerLiter - 500)
            ffIndi.clickCount = ffIndi.clickCount - 1
            }
        }
    }

    Text{
        id: one
        text: "1 L: "
        font.pointSize: 30
        color: "white"
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors{
            right: beerCountText.horizontalCenter
            top: fifty.bottom
            topMargin: 5
        }
    }
    Indicator{
        id: oneIndi
        anchors.left: one.right
        anchors.verticalCenter: one.verticalCenter
        plus.onClicked:{
            SystemController.setAlcoholValue(SystemController.alcoholValue + 80)
            SystemController.setBeerLiter(SystemController.beerLiter + 1000)
        }
        minus.onClicked:{
            if(oneIndi.clickCount > 0){
            SystemController.setAlcoholValue(SystemController.alcoholValue - 80)
            SystemController.setBeerLiter(SystemController.beerLiter - 1000)
            oneIndi.clickCount = oneIndi.clickCount - 1
            }
        }
    }

    Text{
        id: totalLiter
        text:{
            /*if(SystemController.beerLiter / 1000  > 3){
                "YUH amına koyim."
            }
            else
            SystemController.beerLiter / 1000 + " L"*/
            SystemController.alcoholValue
        }
        font.pointSize: 30
        color: "white"
        font.family: "Franklin Gothic Medium"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors{
            horizontalCenter: beerCountText.horizontalCenter
            top: one.bottom
        }
    }
}
