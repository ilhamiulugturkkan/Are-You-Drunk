import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.0

Window {
    id: mainWindow
    width: 1280
    height: 720
    visible: true
    title: qsTr("Are You Drunk")
    Loader{
        id: pageLoader
        anchors.fill: parent
        source: "StartPage.qml"
    }
//    Component.onCompleted: {
//            mainWindow.showFullScreen();
//        }
}
