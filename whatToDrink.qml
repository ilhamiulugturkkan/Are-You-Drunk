import QtQuick 2.15

Rectangle{
    anchors.fill: parent
    color:"black"
    Text{
        id: qText
        text: "What Have You Got?"
        color: "white"
        font.family: "Franklin Gothic Medium"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 80
        height: parent.height / 7
        width: parent.width
    }

    Rectangle{
        id: beerPart
        width: parent.width / 3
        height: parent.height * 0.7
        anchors{
            left:parent.left
            top: qText.bottom
        }
        color:"white"
        Image{
            anchors.fill: parent
            source: "qrc:/Assets/hassBeer.jpg"
            anchors.centerIn: parent
        }
        Rectangle{
            id: blurBeer
            color: "black"
            opacity: 0.9
            anchors.fill: parent
            MouseArea{                  //DECREASE OPACITY OF "BLURBEER" WHEN MOUSE ENTERS THIS AREA
                anchors.fill: parent
                onEntered:{
                    blurBeer.opacity = 0
                    blurTeq.opacity = 0.9
                    blurVod.opacity = 0.9
                    beerTexts.visible = true
                    teqTexts.visible = false
                    vodkaTexts.visible = false
                }
            }
        }
    }

    Rectangle{
        id: teqPart
        width: parent.width / 3
        height: parent.height * 0.7
        anchors{
            left: beerPart.right
            top: qText.bottom
        }
        Image{
            anchors.fill: parent
            source: "qrc:/Assets/tequila.jpg"
            anchors.centerIn: parent
        }
        Rectangle{
            id: blurTeq
            color: "black"
            opacity: 0.9
            anchors.fill: parent
            MouseArea{                  //DECREASE OPACITY OF "BLURBEER" WHEN MOUSE ENTERS THIS AREA
                anchors.fill: parent
                onEntered:{
                    blurBeer.opacity = 0.9
                    blurTeq.opacity = 0
                    blurVod.opacity = 0.9
                    beerTexts.visible = false
                    teqTexts.visible = true
                    vodkaTexts.visible = false
                }
            }
        }
    }

    Rectangle{
        id: vodkaPart
        width: parent.width / 3
        height: parent.height * 0.7
        anchors{
            left: teqPart.right
            top: qText.bottom
        }
        Image{
            anchors.fill: parent
            source: "qrc:/Assets/vodkaa.jpg"
            anchors.centerIn: parent
        }
        Rectangle{
            id: blurVod
            color: "black"
            opacity: 0.9
            anchors.fill: parent
            MouseArea{                  //DECREASE OPACITY OF "BLURBEER" WHEN MOUSE ENTERS THIS AREA
                anchors.fill: parent
                onEntered:{
                    blurBeer.opacity = 0.9
                    blurTeq.opacity = 0.9
                    blurVod.opacity = 0
                    beerTexts.visible = false
                    teqTexts.visible = false
                    vodkaTexts.visible = true
                }
            }
        }
    }

    Rectangle{
        id: beerTexts
        color: "black"
        opacity: 0.8
        radius: 20
        width: beerPart.width * 0.7
        height: beerPart.height * 0.7
        visible: false
        anchors.centerIn: beerPart
        Text{
            text: "Just drink it."
            color: "white"
            font.pointSize: 24
            font.family: "Franklin Gothic Medium"
            anchors.centerIn: parent
        }
    }

    Rectangle{
        id: teqTexts
        color: "black"
        opacity: 0.8
        radius: 20
        width: teqPart.width * 0.7
        height: teqPart.height * 0.7
        visible: false
        anchors.centerIn: teqPart
        Text{
            text: "Shot!

Tequila-Coke: 2 ounces tequila,
4 ounces coke, 1/2 ounce fersh
lime juice and a little bit salt.

Margarita: 4 ounces tequila,
2 ounces triple sec,
1.5 ounces fresh lime juice,
salt for glass rims"
            color: "white"
            font.pointSize: 16
            font.family: "Franklin Gothic Medium"
            anchors.centerIn: parent
        }
    }
    Rectangle{
        id: vodkaTexts
        color: "black"
        opacity: 0.8
        radius: 20
        width: vodkaPart.width * 0.7
        height: vodkaPart.height * 0.7
        visible: false
        anchors.centerIn: vodkaPart
        Text{
            text: "Shot!

For 4 people! Special Cocktail:
700 mL vodka, 1.5L green tea
0.5 L apple juice.

Vodka Tonic: Vodka, tonic,
lime and lemon squeeze

Vodka Spritzer: Vodka, lemon
cranberry juice, strawberries,
soda water"
            color: "white"
            font.pointSize: 16
            font.family: "Franklin Gothic Medium"
            anchors.centerIn: parent
        }
    }



    Rectangle{
        id: returnButton
        height: parent.height / 20
        width: height * 4
        radius: height / 2
        color: "black"
        border.color: "white"

        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 40
        }
        Text{
            text: "Go Back"
            color: "white"
            width: parent.width
            font.pointSize: 16
            font.family: "Franklin Gothic Medium"
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: pageLoader.source = "StartPage.qml"
        }
    }
}

