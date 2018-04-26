#include <iostream>

//#include <QCoreApplication>
#include <QGuiApplication>>
#include <QQmlApplicationEngine>

#include "ColladaXMLHandler.h"

int main(int argc, char *argv[])
{
    //QCoreApplication a(argc, argv);
    QGuiApplication a(argc, argv);
    QQmlApplicationEngine engine;
    std::cout << "Hello Qt 5.10.0" << std::endl;

    QXmlSimpleReader xmlReader;
    QFile file{QString(RES_DIR)+QString("/monkey.dae")};
    QXmlInputSource* pSource = new QXmlInputSource(&file);

    G::ColladaXMLHandler* pHandler = new G::ColladaXMLHandler();
    xmlReader.setContentHandler(pHandler);
    xmlReader.setErrorHandler(pHandler);

    bool ok = xmlReader.parse(pSource);
    
    auto qurl = QUrl("qrc:/main.qml");
    if (!qurl.isValid()) return -1;
    engine.load();
    if (engine.rootObjects().isEmpty())
        return -1;
    
    return a.exec();
}
