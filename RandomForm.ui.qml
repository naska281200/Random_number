import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Item {
    property alias generateButton: generateButton //свойство для кнопки
    property alias photo: photo //свойство для изображения
    visible: true
    width: 600
    height: 440

    RowLayout {
        anchors.fill: parent //растянули на всё окно
        Image {
            id: photo
            anchors.left: parent.left
            anchors.leftMargin: 20 //отступ от левого края
            anchors.verticalCenter: parent.verticalCenter
            Layout.preferredHeight: 380
            Layout.preferredWidth: 380
            clip: false
            source: "kub.jpg"
        }
        Button {
            id: generateButton
            anchors.verticalCenter: photo.verticalCenter
            text: "Бросить\nкубик"
            font.family: "Verdana"  //шрифт
            font.pointSize: 22      //размер шрифта
        }
    }
}
