import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle{
    id: root


//    Component{
//        id: supportingComponent

////        Supporting{
////            id: supporting

////        }
//    }

//    Component{
//        id: aboutauthorsComponent

////        Aboutauthors{
////            id: authors
////        }
//    }

    function unLoginAccount()
    {
//        close()
        console.log("unLoginAccount")
    }

    function helping()
    {
//        loader.sourceComponent = supportingComponent
        closeNavDrawer()
        console.log("helping")
    }

    function aboutDeveloper()
    {
//        loader.sourceComponent = aboutauthorsComponent
        closeNavDrawer()
        console.log("aboutDeveloper")
    }

    property var functionHelpingArray: [unLoginAccount,helping,aboutDeveloper ]

    property color noColor: "#00000000"
    property int sizeHelpHeight: 40
    property int dfltWidthElementMenu: 337
    property var colorBlue: "#177bd9"
    property var textHelpArray: ["Выход", "Поддержка", "О разработчике"]
    property var colorHelpArray: ["#464f56", "#ffffff"]
    property int sizeFont: 20

    width: dfltWidthElementMenu
    height: sizeHelpHeight
    color: mouseHelpMenu.containsMouse ? Qt.darker(colorBlue ) : noColor

    Text {
        id: textHelpMenu
        anchors.fill: parent
        font.pixelSize: sizeFont
        color: {
            if (index === 0)
            {
                textHelpMenu.color = colorHelpArray[0]
            }
            else
            {
                textHelpMenu.color = colorHelpArray[1]
            }
        }

        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    MouseArea{
        id: mouseHelpMenu
        anchors.fill: parent

        hoverEnabled: true

        onClicked: {
            closeNavDrawer()
            functionHelpingArray[index]()
        }
    }

    Component.onCompleted: {
        textHelpMenu.text = textHelpArray[index]

        if (index >=1)
        {
            textHelpMenu.color = colorHelpArray[1]
        }
    }
}
