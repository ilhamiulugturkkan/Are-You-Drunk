import QtQuick 2.15

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
        text: "You Are Good to Go!"
        font.family: "Franklin Gothic Medium"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 80
        height: parent.height / 7
        width: parent.width
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
            text: "Go Back"
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
                    pageLoader.source = "StartPage.qml"
                }
            }
        }
    }

