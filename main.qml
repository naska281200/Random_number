import QtQuick 2.12
import QtQuick.Window 2.12
import RandomNumber 1.0
import QtQuick.Controls 2.12


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Random")
    Random{
        anchors.fill:parent
    }

}
