#include <iostream>

#include <QCoreApplication>

#include "ColladaXMLHandler.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    std::cout << "Hello Qt 5.10.0" << std::endl;

    QXmlSimpleReader xmlReader;
    QFile file{QString(RES_DIR)+QString("/monkey.dae")};
    QXmlInputSource* pSource = new QXmlInputSource(&file);

    G::ColladaXMLHandler* pHandler = new G::ColladaXMLHandler();
    xmlReader.setContentHandler(pHandler);
    xmlReader.setErrorHandler(pHandler);

    bool ok = xmlReader.parse(pSource);


    return a.exec();
}
