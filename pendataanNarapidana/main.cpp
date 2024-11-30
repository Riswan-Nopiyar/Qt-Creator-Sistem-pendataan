#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <backendhukum.h>
#include <qdebug.h>
#include <modeltabel.h>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    backendHukum* myObject= new backendHukum;
    myObject->connectdb();
    modeltabel sipir;
    modeltabel pengunjung;
    modeltabel narapidana;
    sipir.callSql("SELECT * FROM sipir");
    pengunjung.callSql("SELECT * FROM pengunjung");
    narapidana.callSql("SELECT * FROM narapidana");

    qDebug()<<myObject->duplikasiData("sipir","nik_sipir","1");
    qDebug()<<myObject->duplikasiData2("pengunjung","nik_pengunjung","1");
    qDebug()<<myObject->duplikasiData3("narapidana","nik_narapidana","1");
    QQmlContext* myContext= engine.rootContext();
    myContext->setContextProperty("crud",myObject);
    myContext->setContextProperty("Sipir", &sipir);
    myContext->setContextProperty("Pengunjung", &pengunjung);
    myContext->setContextProperty("Narapidana", &narapidana);



    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
