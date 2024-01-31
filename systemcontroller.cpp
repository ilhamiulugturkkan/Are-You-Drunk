#include "systemcontroller.h"


//Constructors
SystemController::SystemController(QObject *parent)
    : QObject{parent}, targetValue(0), m_alcoholValue(0), m_needleValue(0)
{
    int updateInterval = 20;
    connect(&m_timer, &QTimer::timeout, this, &SystemController::rotateNeedle);
    m_timer.setInterval(updateInterval);

    m_timer.start();
}
void SystemController::setTargetValue(double b)
{
    targetValue = b;
}
void SystemController::setNeedleValue(double newNeedleValue)
{
    if(m_angularSpeed > 0 && targetValue < newNeedleValue){
        return;
    }
    else if(m_angularSpeed < 0 && targetValue > newNeedleValue){
        return;
    }

    m_needleValue = newNeedleValue;
    emit needleValueChanged(m_needleValue);

}

void SystemController::rotateNeedle(){
    if(targetValue < m_needleValue){
        m_angularSpeed = -1;
    }
    else if(targetValue > m_needleValue){
        m_angularSpeed = 1;
    }
    if(targetValue == m_needleValue){
        m_angularSpeed = 0;
    }
    int newValue = m_needleValue + m_angularSpeed;
    if(newValue > 100){
        newValue = 100;
    }
    else if(newValue < 0){
        newValue = 0;
    }
    setNeedleValue(newValue);
}

//Getters
double SystemController::alcoholValue() const
{
    return m_alcoholValue;
}
double SystemController::needleValue()const{
    return m_needleValue;
}
int SystemController::beerLiter() const
{
    return m_beerLiter;
}
int SystemController::wine() const
{
    return m_wine;
}
int SystemController::whiskey() const
{
    return m_whiskey;
}
int SystemController::wrongClick() const
{
    return m_wrongClick;
}


//Setters
void SystemController::setAlcoholValue(double newAlcoholValue)
{
    if (m_alcoholValue == newAlcoholValue)
        return;
    else if(newAlcoholValue >= 0){
    m_alcoholValue = newAlcoholValue;
    targetValue = m_alcoholValue ;
    emit alcoholValueChanged();
    }
}
void SystemController::setBeerLiter(int newBeerLiter)
{
    if (m_beerLiter == newBeerLiter)
        return;
    else if(newBeerLiter >= 0){
    m_beerLiter = newBeerLiter;
    emit beerLiterChanged();
    }
}
void SystemController::setWine(int newWine)
{
    if (m_wine == newWine)
        return;
    m_wine = newWine;
    emit wineChanged();
}
void SystemController::setWhiskey(int newWhiskey)
{
    if (m_whiskey == newWhiskey)
        return;
    m_whiskey = newWhiskey;
    emit whiskeyChanged();
}
void SystemController::setWrongClick(int newWrongClick)
{
    if (m_wrongClick == newWrongClick)
        return;
    m_wrongClick = newWrongClick;
    emit wrongClickChanged();
}







