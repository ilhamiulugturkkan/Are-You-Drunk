#ifndef SYSTEMCONTROLLER_H
#define SYSTEMCONTROLLER_H

#include <QObject>
#include <QTimer>

class SystemController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double needleValue READ needleValue WRITE setNeedleValue NOTIFY needleValueChanged)
    Q_PROPERTY(double alcoholValue READ alcoholValue WRITE setAlcoholValue NOTIFY alcoholValueChanged)
    Q_PROPERTY(int beerLiter READ beerLiter WRITE setBeerLiter NOTIFY beerLiterChanged)
    Q_PROPERTY(int wine READ wine WRITE setWine NOTIFY wineChanged)
    Q_PROPERTY(int whiskey READ whiskey WRITE setWhiskey NOTIFY whiskeyChanged) //whiskey and raki
    Q_PROPERTY(int wrongClick READ wrongClick WRITE setWrongClick NOTIFY wrongClickChanged)
public:
    explicit SystemController(QObject *parent = nullptr);
    double needleValue() const;
    int beerLiter() const;
    double targetValue = 0;
    int wine() const;
    int wrongClick() const;
    int whiskey() const;
    double alcoholValue() const;


signals:
    void needleValueChanged(int);
    void beerLiterChanged();
    void wineChanged();
    void wrongClickChanged();
    void whiskeyChanged();
    void alcoholValueChanged();

public slots:
    void setNeedleValue(double newNeedleValue);
    void setAlcoholValue(double newAlcoholValue);
    void setBeerLiter(int newBeerLiter);
    void setTargetValue(double b);
    void setWine(int newWine);
    void setWrongClick(int newWrongClick);
    void setWhiskey(int newWhiskey);
    void rotateNeedle();
private:
    int m_beerLiter = 0;
    int m_wine = 0;
    int m_wrongClick = 0;
    int m_whiskey;
    double m_alcoholValue;
    double m_needleValue;
    double m_angularSpeed;
    QTimer m_timer;
};

#endif // SYSTEMCONTROLLER_H
