import QtQuick 2.0

Rectangle{
id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
}
/*
Rectangle {

    width: 360
    height: 360

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Column {

        width: parent.width

        DatePickerPackage.DateReel {
            id: dateReel
            width: parent.width
        }

        ButtonPackage.Button {
            id: someButton
            text: "CLICK ME"
            onClicked: { console.log("...you clicked me") }
        }

        TextInput {

            text: "WTF"

            BorderImage {
                border { top: 8; bottom: 8; left: 8; right: 8 }
            }
        }
    }
}
*/