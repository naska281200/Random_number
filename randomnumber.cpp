#include "randomnumber.h"
#include <QRandomGenerator>

RandomNumber::RandomNumber(QObject *parent) : QObject(parent)
{

}

int RandomNumber::number() const      //get у свойства Q_PROPERTY(возвращает значение), метод const не меняет объекты
{
    return m_number;
}

void RandomNumber::setNumber(int number)      //set у свойства Q_PROPERTY(устанавливает значение m_number)
{
    if (m_number == number)     //переменная не поменялась
        return;

    m_number = number;          //в случае, если переменная поменялась, то генерируется сигнал
    emit numberChanged(m_number);       //emit - испустить сигнал
}

void RandomNumber::generate(int low, int high)      //рандомное число в границах от low до high включительно
{
    setNumber((qrand() % ((high + 1) - low) + low));
}
