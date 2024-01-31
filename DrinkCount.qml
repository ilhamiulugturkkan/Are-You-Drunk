import QtQuick 2.15
import "DrinkCounts"

Rectangle{
    anchors.fill: parent
    color:"#00a4a6"
    Image{
        source: "qrc:/Assets/alcShots.jpg"
        anchors.fill: parent
    }
    Rectangle{
        color: "black"
        opacity: 0.6
        anchors.fill: parent
    }

    Text{
        id: qText
        color: "white"
        text: "What Did You Drink?"
        font.family: "Franklin Gothic Medium"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 80
        height: parent.height / 7
        width: parent.width
    }
    CocktailCount{
        id: cocktailCount
        anchors.top: qText.bottom
    }

    ShotCount{
        id: shotCount
        anchors.top: qText.bottom
    }
    BeerCount{
        id: beerCount
        anchors.top: qText.bottom
    }

    GlassesPart{
        id: glassesPartS
        anchors.top: beerCount.bottom
    }
    Rectangle{
        id: button
        height: parent.height / 9
        width: height * 4
        radius: height / 2
        color: "black"
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 20
        }
        Text{
            text: "CALCULATE"
            color: "white"
            width: parent.width
            font.pointSize: 30
            font.family: "Franklin Gothic Medium"
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                if(SystemController.alcoholValue < 50){
                    pageLoader.source = "SafeCalculationPage.qml"
                }//BURAYA ELSE EKLEMESİ YAPILMALI
                else{
                    pageLoader.source = "FailPage.qml"
                }
            }
        }
    }

    RpmIndicator{
        id: alcoholIndicator
        anchors{
            horizontalCenter: shotCount.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 20
        }
        angleThing: SystemController.needleValue
    }
}
