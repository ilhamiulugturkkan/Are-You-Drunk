import QtQuick 2.15

Rectangle{
    id: failPage
    Image{
        anchors.fill: parent
        source: "qrc:/Assets/TAXI.jpg"
    }

    Rectangle{
        anchors.fill: parent
        color: "white"
        opacity: 0.1
    }


    //Write YOU ARE DEFINETELY DRUNK! and lead the user to Uber App and biTaksi app

    Rectangle{
        id: failTextContainer
        color: "black"
        opacity: 0.9
        width: failText.width + 20
        height: failText.height + 10
        radius: 10
        anchors{
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: parent.height / 18
        }
    }

    Text{
        id: failText
        font.family: "Franklin Gothic Medium"
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 60
        text: "DON'T EVEN TRY BUDDY
 YOU ARE DEFINETELY DRUNK!"
        color: "white"
        anchors.centerIn: failTextContainer
    }

    Rectangle{
        color: "black"
        height: uberImage.height
        width: parent.width
        anchors.verticalCenter: uberImage.verticalCenter
        opacity: 0.9
        MouseArea {
        anchors.fill: parent
        onClicked: Qt.openUrlExternally("https://www.uber.com/tr/tr/ride/") //...handling the clicked signal of the MouseArea
        }
    }
    Image{
        id: uberImage
        source: "qrc:/Assets/Uber-removebg-preview.png"
        anchors{
            top: failTextContainer.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin: 60
        }
        width: parent.width / 3
        height: width * .3
        MouseArea {
        anchors.fill: parent
        onClicked: Qt.openUrlExternally("https://www.uber.com/tr/tr/ride/") //...handling the clicked signal of the MouseArea
        }
    }

    Rectangle{
        color: "black"
        height: biTaksiImage.height
        width: parent.width
        anchors.verticalCenter: biTaksiImage.verticalCenter
        opacity: 0.9
        MouseArea {
        anchors.fill: parent
        onClicked: Qt.openUrlExternally("https://www.bitaksi.com/tr") //...handling the clicked signal of the MouseArea
        }
    }
    Image{
        id: biTaksiImage
        source: "qrc:/Assets/biTaksi-removebg-preview.png"
        anchors{
            top: uberImage.bottom
            horizontalCenter: parent.horizontalCenter
            topMargin: 20
        }
        width: uberImage.width
        height: uberImage.height
        MouseArea {
        anchors.fill: parent
        onClicked: Qt.openUrlExternally("https://www.bitaksi.com/tr") //...handling the clicked signal of the MouseArea
        }
    }

    Rectangle{
        id: button
        height: parent.height / 20
        width: height * 4
        radius: height / 2
        color: "black"
        anchors{
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: 20
        }
        Text{
            text: "Try Again"
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
    Rectangle{
        id: button1
        height: button.height
        width: keepText.width + 20
        radius: height / 2
        color: "black"
        anchors{
            verticalCenter: button.verticalCenter
            left: button.right
            leftMargin: failPage.width / 5
        }
        Text{
            id: keepText
            text: "Keep Drinking!"
            color: "white"
            font.pointSize: 16
            font.family: "Franklin Gothic Medium"
            horizontalAlignment: Text.AlignHCenter
            anchors.centerIn: parent
        }
        MouseArea{
            anchors.fill: parent
            onClicked: pageLoader.source = "whatToDrink.qml"
        }
    }

}
