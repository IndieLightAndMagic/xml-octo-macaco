#ifndef __COLLADAXMLHANDLER_H__
#define __COLLADAXMLHANDLER_H__

#include <QXmlSimpleReader>
#include <QXmlInputSource>
#include <QDebug>


/*
Visitor Object: ColladaXMLHandler

This visitor provides the callbacks (as this is an event driven approach):

+ startDocument: When the parsing begins.
+ startElement: A new tag opens. A list of attributes insider the tag's header. 
+ endElement: The tag is closing.
+ characters: Data inside the tag.
+ fatalError: When an exception on the parsing process raises.

This handler is attached to a QXmlSimpleReader. The reader makes calls to the mentioned callbacks.
 

*/
namespace G {
class ColladaXMLHandler:public QXmlDefaultHandler
{
public:

    bool fatalError(const QXmlParseException &exception)
    {
        qWarning() << "Fatal Error on Line: " << exception.lineNumber()
                   << ", column" << exception.columnNumber() << " : "
                   << exception.message();
        return false;
    }

    bool characters(const QString& text);
    bool endElement(const QString & rUriName,
        const QString & rLocalName,
        const QString & qName);
    bool startDocument();
    bool startElement(
    	const QString & namespaceURI,
    	const QString & localName,
    	const QString & qName,
    	const QXmlAttributes & atts);

 private:
	QString m_indent;

};

}
#endif /*__COLLADAXMLHANDLER_H__*/
