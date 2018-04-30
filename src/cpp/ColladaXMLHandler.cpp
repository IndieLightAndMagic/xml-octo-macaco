#include "ColladaXMLHandler.h"
#include <iostream>
using namespace G;


QTextStream cout(stdout, QIODevice::WriteOnly);
bool ColladaXMLHandler::startDocument(){

    m_indent = "";
    return true;
}

bool ColladaXMLHandler::characters(const QString& rText){

    QString t = rText;
    std::cout << rText.toUtf8().data() << std::endl;
    cout << t.remove('\n');
    return true;
}

bool ColladaXMLHandler::startElement(const QString& rUriName, const QString& rLocalName, const QString& rName, const QXmlAttributes& atts) {

    QString str = QString("\n%1\\%2").arg(m_indent).arg(rName);
    cout << str;
    auto strdata = str.toUtf8().data();
    std::cout << strdata << std::endl;


    if (atts.length()>0){
        QString fieldName = atts.qName(0);
        QString fieldValue = atts.value(0);
        cout << QString("{%2 .=. %3}").arg(fieldName).arg(fieldValue);
    }
    cout << "{";
    m_indent += " ";
    return true;
}
bool ColladaXMLHandler::endElement(const QString& rUriName, const QString& rLocalName, const QString&){

    m_indent.remove(0, 4);
    cout << "}";
    return true;
}
