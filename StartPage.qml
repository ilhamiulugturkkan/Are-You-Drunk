import QtQuick 2.15
Rectangle{
    width: parent.width
    height: parent.height
    anchors.fill: parent
    color: "transparent"


    Image{
        source: "qrc:/Assets/whiskeys_croppedddd.jpg"
        anchors.fill: parent
    }

    /*Rectangle{
        anchors.fill: parent
        color: "grey"
        opacity: 0.8
    }*/

    Rectangle{
        id: root
        width: parent.width / 3
        height: parent.height / 4
        color: "black"
        opacity: 0.8
        anchors.centerIn: parent
        radius: 10

        MouseArea{
            anchors{
                left: parent.left
                top: parent.top
                bottom: startButton.top
                right: parent.right
            }
            onClicked:{
                SystemController.setWrongClick(SystemController.wrongClick + 1)
                if(SystemController.wrongClick === 3){
                    pageLoader.source = "FailPage.qml"
                    SystemController.setWrongClick(0);
                }
            }
        }
        MouseArea{
            anchors{
                left: startButton.right
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }
            onClicked:{
                SystemController.setWrongClick(SystemController.wrongClick + 1)
                if(SystemController.wrongClick === 3){
                    pageLoader.source = "FailPage.qml"
                    SystemController.setWrongClick(0);
                }
            }
        }
        MouseArea{
            anchors{
                left: parent.left
                top: startButton.bottom
                bottom: parent.bottom
                right: parent.right
            }
            onClicked:{
                SystemController.setWrongClick(SystemController.wrongClick + 1)
                if(SystemController.wrongClick === 3){
                    pageLoader.source = "FailPage.qml"
                    SystemController.setWrongClick(0);
                }
            }
        }
        MouseArea{
            anchors{
                left: parent.left
                top: parent.top
                bottom: parent.bottom
                right: startButton.left
            }
            onClicked:{
                SystemController.setWrongClick(SystemController.wrongClick + 1)
                if(SystemController.wrongClick === 3){
                    pageLoader.source = "FailPage.qml"
                    SystemController.setWrongClick(0);
                }
            }
        }

        Text{
            color: "#ffffff"
            text:"Press Start Button to Continue"
            font.family: "Franklin Gothic Medium"
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 16
            anchors{
                top: parent.top
                topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle{
            id: startButton
            z: 15
            height: root.height / 5
            width: root.width / 5
            x: root.width / 2 - width / 2
            y: root.height / 2 - height / 2
            //anchors.centerIn: parent
            ParallelAnimation {
                id: randomTargetAnimation
                running: true
                loops: 1
                function getRandomArbitrary(min, max) {
                    return Math.random() * (max - min) + min;
                }

                property vector2d to: Qt.vector2d(311,90)
                property vector2d from: Qt.vector2d(160,50)

                onStarted: newTarget()
                onFinished: start()

                function newTarget() {
                    from = to
                    to = Qt.vector2d(getRandomArbitrary(0, (root.width-startButton.width)),
                                     getRandomArbitrary(0, (root.height-startButton.height)));
                }

                NumberAnimation {
                    id: xAnimation
                    target: startButton
                    property: "x"
                    from: randomTargetAnimation.from.x
                    to: randomTargetAnimation.to.x
                    duration: 3000
                }
                NumberAnimation {
                    id: yAnimation
                    target: startButton
                    property: "y"
                    from: randomTargetAnimation.from.y
                    to: randomTargetAnimation.to.y
                    duration: 3000
                }
            }

            color: "grey"
            radius: 4
            border.color: "black"
            border.width: 2
            Text{
                text: "Start"
                font.family: "Franklin Gothic Medium"
                font.pointSize: 18
                anchors.centerIn: parent
                color: "white"
            }
            MouseArea{
                anchors.fill: parent
                onClicked: pageLoader.source = "DrinkCount.qml"
            }
        }
    }

    Rectangle{
        id: lastChance
        width: lastChanceText.width + 20
        height: lastChanceText.height + 10
        color: "black"
        opacity: 0.7
        anchors{
            bottom: parent.bottom
            bottomMargin: 15
            horizontalCenter: parent.horizontalCenter
        }
        Text{
            id: lastChanceText
            property string textSource: "LAST TRY!"
            function choseText(){
                if(SystemController.wrongClick < 2){
                    return "Attempts: " + SystemController.wrongClick
                }
                else{
                    return "LAST CHANCE!"
                }
            }
            text: choseText()
            color: "white"
            opacity: 1
            font.family: "Franklin Gothic Medium"
            font.pointSize: 20
            anchors.centerIn: parent
        }
    }

    Rectangle{
        id: cocktailButton
        z: 15
        height: root.height / 5
        width: root.width / 5
        //anchors.centerIn: parent
        color: "grey"
        radius: 4
        border.color: "black"
        border.width: 2
        anchors{
            verticalCenter: lastChance.verticalCenter
            left: lastChance.right
            leftMargin: parent.width / 4
        }
        Text{
            text: "Cocktails"
            font.family: "Franklin Gothic Medium"
            font.pointSize: 14
            anchors.centerIn: parent
            color: "white"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: pageLoader.source = "whatToDrink.qml"
        }
    }
}


//    Text{
//        id: lastChanceText
//        property string textSource: "LAST TRY!"
//        function choseText(){
//            if(SystemController.wrongClick < 2){
//                return "Attempts: " + SystemController.wrongClick
//            }
//            else{
//                return "LAST CHANCE!"
//            }
//        }
//        text: choseText()
//        color: "white"
//        font.family: "Franklin Gothic Medium"
//        font.pointSize: 20
//        anchors{
//            bottom: parent.bottom
//            bottomMargin: 15
//            horizontalCenter: parent.horizontalCenter
//        }
//    }
//}
