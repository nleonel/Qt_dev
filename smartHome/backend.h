#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>
#include <qqml.h>
#include <QtQml>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged)
    Q_PROPERTY(int led READ led WRITE setLed NOTIFY ledChanged)
    Q_PROPERTY(int m_pwm READ pwm WRITE setPwm NOTIFY ledChanged)
    Q_PROPERTY(int m_onOff READ led WRITE setLed NOTIFY ledChanged)


public:
    explicit Backend(QObject *parent = nullptr);
     ~Backend();

    QString userName();
    void setUserName(const QString &userName);
    void setLed(int led);
    void setPwm(int pwm);

    int led();
    int pwm();


public slots :
    void blinkLed();
    void pwmControl (void);
    void onOff();

signals:
   void userNameChanged();
   void  ledChanged();
   void finished();
   void error(QString err);

private:
    QString m_userName;
    int m_led;
    int m_pwm;
    int m_onOff;
};

#endif
