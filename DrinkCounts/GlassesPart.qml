import QtQuick 2.15

Rectangle{
    id: rightPart
    width: parent.width / 3
    height: parent.height
    anchors.horizontalCenter: parent.horizontalCenter
    color: "transparent"
    Rectangle{
        id: glasses
        height: parent.height / 2
        width: parent.width
        color: "transparent"
        anchors{
            top:parent.top
            horizontalCenter: parent.horizontalCenter
        }
        Text{
            id: glassesText
            text: "GLASSES"
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
            id: wineText
            text: "Wine: "
            color: "white"
            font.pointSize: 30
            font.family: "Franklin Gothic Medium"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors{
                right: glassesText.horizontalCenter
                top: glassesText.bottom
                topMargin: 5
            }
        }
        Indicator{
            id: wineIndi
            anchors.left: wineText.right
            anchors.verticalCenter: wineText.verticalCenter
            plus.onClicked:{
                SystemController.setAlcoholValue(SystemController.alcoholValue + 25)
                SystemController.setWine(SystemController.wine + 1)
            }
            minus.onClicked:{
                if(wineIndi.clickCount > 0){
                SystemController.setAlcoholValue(SystemController.alcoholValue - 25 )// 2 glass of wine is 0.5 promil
                SystemController.setWine(SystemController.wine - 1)
                wineIndi.clickCount = wineIndi.clickCount - 1
                }
            }
        }
        Text{
            id: whiskeyS
            text: "Whiskey(S): "
            color: "white"
            font.pointSize: 30
            font.family: "Franklin Gothic Medium"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors{
                right: glassesText.horizontalCenter
                top: wineText.bottom
                topMargin: 5
            }
        }
        Indicator{
            id: whisIndi
            anchors.left: whiskeyS.right
            anchors.verticalCenter: whiskeyS.verticalCenter
            plus.onClicked:{
                SystemController.setAlcoholValue(SystemController.alcoholValue + 30)
                SystemController.setWhiskey(SystemController.whiskey + 1)
            }
            minus.onClicked:{
                if(whisIndi.clickCount > 0){
                SystemController.setWhiskey(SystemController.whiskey - 1)
                    SystemController.setAlcoholValue(SystemController.alcoholValue - 30)
                whisIndi.clickCount = whisIndi.clickCount - 1
                }
            }
        }
        Text{
            id: rakiS
            text: "Rakı: "
            color: "white"
            font.pointSize: 30
            font.family: "Franklin Gothic Medium"
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors{
                right: glassesText.horizontalCenter
                top: whiskeyS.bottom
                topMargin: 5
            }
            Indicator{
                id: rakiIndi
                anchors.left: rakiS.right
                anchors.verticalCenter: rakiS.verticalCenter
                plus.onClicked:{
                    SystemController.setAlcoholValue(SystemController.alcoholValue + 30)
                    SystemController.setWhiskey(SystemController.whiskey + 1)
                }
                minus.onClicked:{
                    if(rakiIndi.clickCount > 0){
                    SystemController.setWhiskey(SystemController.whiskey - 1)
                        SystemController.setAlcoholValue(SystemController.alcoholValue - 30)
                    rakiIndi.clickCount = rakiIndi.clickCount - 1
                    }
                }
            }
        }
    }
}
