import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    id: root
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qmlobjects.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        id: page
        objectName: "page"
        title: i18n.tr("qmlobjects")

        Column {
            id: layout
            objectName: "column"
            spacing: units.gu(1)
            anchors {
                margins: units.gu(2)
                fill: parent
            }

            Label {
                id: label
                objectName: "label"
                text: i18n.tr("Hello..")
            }

            Button {
                objectName: "button"
                width: parent.width

                text: i18n.tr("Tap me!")

                onClicked: {
                    label.text = i18n.tr("..world!")
                }
            }
        }                
    }

    Component.onCompleted: {
        console.log("MainView onCompleted!")
        var list = layout.children;

        console.log("count: " + list.length);
        for ( var i in list) {
            console.log("list[ " +i + " ] objectName = " + list[i].objectName)
            console.log("list[ " +i + " ] width = " + list[i].width)
            console.log("list[ " +i + " ] height = " + list[i].height)
            console.log("list[ " +i + " ] height = " + list[i])
        }
    }
}

