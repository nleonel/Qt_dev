#include <QGuiApplication>
#include <QApplication>
#include <QQuickView>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSettings>
#include <QStyle>
#include <QIcon>
#include <QtGui/QGuiApplication>
#include <QtQml/QQmlEngine>
#include <QtQuick/QQuickItem>
#include <QLoggingCategory>

#include <QThread>

#include "Backend/headers/backend.h"

//! [0]
#include "appmodel.h"

int main(int argc, char *argv[])
{
    QLoggingCategory::setFilterRules("wapp.*.debug=false");
    QGuiApplication::setApplicationName("Smarthome");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QIcon::setThemeName(" Smart Home");

    qmlRegisterType<WeatherData>("WeatherInfo", 1, 0, "WeatherData");
    qmlRegisterType<AppModel>("WeatherInfo", 1, 0, "AppModel");

//! [0]
    qRegisterMetaType<WeatherData>();

    Backend* bck = new Backend();

    QThread* thread = new QThread;

    bck->moveToThread(thread);

    //connect(bck, SIGNAL (error(QString)),this, SLOT (errorString(QString)));
    QThread::connect(thread, SIGNAL (started()), bck, SLOT (onOff()));
    QThread::connect(bck, SIGNAL (finished()), thread, SLOT (quit()));
    QThread::connect(bck, SIGNAL (finished()), bck, SLOT (deleteLater()));
    QThread::connect(thread, SIGNAL (finished()), thread, SLOT (deleteLater()));
    thread->start();

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("myGlobalObject", bck);
    engine.addImportPath("qrc:/");
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);


    engine.load(url);

    return app.exec();
}
