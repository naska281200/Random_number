import QtQuick 2.4
import RandomNumber 1.0

RandomForm {

    RandomNumber {
        //новый компонент, который мы сами создали
        id: rand    //имя объекта
    }

    function reloadImage() {    //ф-ия для изменения картинки
        rand.generate(1,6);     //вызываем generate с границами от 1 до 6 включительно
        var oldSource =rand.number  //переменная для изменения картинки
        if (oldSource===1)
            photo.source="1.png"
        if (oldSource===2)
            photo.source="2.png"
        if (oldSource===3)
            photo.source="3.png"
        if (oldSource===4)
            photo.source="4.png"
        if (oldSource===5)
            photo.source="5.png"
        if (oldSource===6)
            photo.source="6.png"
    }

     generateButton.onClicked: {    //клик по кнопке
        reloadImage();
    }
}
