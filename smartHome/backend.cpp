#include "backend.h"
#include <wiringPi.h>

// LED Pin - wiringPi pin 0 is BCM_GPIO 17.

#define	LED	0

Backend::Backend(QObject *parent) : QObject(parent) , m_led(-1) ,m_onOff(0)
{

}

Backend::~Backend(){

}

QString Backend::userName()
{
    return m_userName;
}

void Backend::setUserName(const QString &userName)
{
    if (userName == m_userName)
        return;

    m_userName = userName;
    emit userNameChanged();
}

int Backend::led()
{
    return m_onOff;
}

void Backend::setLed(int value) {
 if(m_onOff != value) {
   m_onOff = value;
    printf ("led value changed %d\n" ,m_onOff) ;

   // trigger signal of value change
 }
}

int Backend::pwm()
{
    return m_pwm;
}

void Backend::setPwm(int value) {
 if(m_pwm != value) {
   m_pwm = value;
    printf ("pwm value changed %d\n" ,m_pwm) ;

   // trigger signal of value change
 }
}

void Backend::blinkLed()
{

    wiringPiSetup () ;
    pinMode (LED, OUTPUT) ;

    printf ("Raspberry Pi blink\n") ;

    for (;;)
      {

        while(Backend::m_led != -1 && Backend::m_led ==0){

            digitalWrite (LED, HIGH) ;	// On
            delay (500) ;		// mS
            digitalWrite (LED, LOW) ;	// Off
            delay (500) ;

            if (Backend::m_led == 1){
               // emit ledChanged();
                digitalWrite (LED, LOW) ;
                printf ("Raspberry Pi Stop blink\n") ;
                break;
            }
        }

        if (Backend::m_led == 2){
           // emit ledChanged();
            printf ("Raspberry Pi finish blink\n") ;
            break;
        }

      }
    emit finished();
}

void Backend::onOff()
{

    wiringPiSetup () ;
    pinMode (LED, OUTPUT) ;

    printf ("Raspberry Pi sw light\n") ;

    while (1) {
        if (Backend::m_onOff ==1)
          {
                digitalWrite (LED, HIGH) ;	// On
                 printf (" light swith On \n") ;
          }
        else if(Backend::m_onOff ==0) {
            digitalWrite (LED, LOW);
            //printf (" light swith Off \n") ;
          }
        else {
            digitalWrite (LED, LOW);
            emit finished();
            printf (" Quit \n") ;
            break;
          }
    }
}

void Backend::pwmControl (void)
{
  int bright ;

  printf ("Raspberry Pi wiringPi PWM test program\n") ;

  if (wiringPiSetup () == -1)
    exit (1) ;

  pinMode (1, PWM_OUTPUT) ;

  for (;;)
  {
    for (bright = 0 ; bright < 1024 ; ++bright)
    {
      pwmWrite (1, bright) ;
      delay (1) ;
    }

    for (bright = 1023 ; bright >= 0 ; --bright)
    {
      pwmWrite (1, bright) ;
      delay (1) ;
    }

    if (Backend::m_pwm == 1){
       // emit ledChanged();
        printf ("Raspberry Pi finish blink\n") ;
        break;
    }

  }

}
