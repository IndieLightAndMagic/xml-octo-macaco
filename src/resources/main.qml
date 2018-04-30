import QtQuick.Window 2.3
import QtQuick 2.6


Window {
    visible: true
    width: 800
    height: 600
    
    Rectangle{
        color:"lightgrey"
        visible: true
        Component.onCompleted: {
            console.log("Hello console world.");
        }
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
