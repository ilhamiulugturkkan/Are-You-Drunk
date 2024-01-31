import QtQuick 2.15

Rectangle{
    id: base
    width: parent.width / 5
    height: width * .90
    color: "transparent"
    property var angleThing : SystemController.beerLiter
    Image{
        id: rpmIcon
        source: "qrc:/Assets/alcoholRPM.png"
        width: parent.width
        height: parent.height
        anchors.centerIn: parent
        //Center of the needle
        Rectangle{
            id: centerOfRPM
            width: 8
            height: 8
            radius: 4
            color: "red"
            anchors.centerIn: rpmIcon
        }
        //Needle
        Rectangle{
            id: needle
            width: 2
            height: rpmIcon.width * .2
            color: "white"
            x: centerOfRPM.x + centerOfRPM.width/2+1
            y: centerOfRPM.y + centerOfRPM.height/2
            transform: Rotation {
            angle: 38 + ((angleThing * 284 / 100)) //IMPORTANT PARTTTTT -1000 -> 0       0 ->
            }
        }
        //End of the needle
    }

}
