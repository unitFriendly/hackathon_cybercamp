import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

Rectangle {
    id: root

    property int dfltWidth: app_width
    property int dfltHeight: app_height
    property color noColor: "#00000000"
    property real customOpacity: 0.7
    property color biruzoviu: "#3fae51"
    property var colorBlue: "#00000000"

    property int countIndexVessage: 0
    width: 506

    height: 1040

    color: colorBlue

    Rectangle {
        id: pictureMask
        x: 0
        y: 0
        width: dfltWidth
        height: 220
        color: "#ffffff"

        Image {
            id: avatar
            x: 0
            y: 0
            width: dfltWidth
            height: 220
            source: client.getMyAvatar()
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: nameMask
            x: 0
            y: 180
            width: app_width
            height: 40
            color: colorBlue
            opacity: customOpacity
        }

        Text {
            id: nameText
            x: 0
            y: 180
            width: 415
            height: 40
            color: "#ffffff"
            text: client.getMyName()
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            minimumPixelSize: 16
            leftPadding: 15
        }

        Rectangle {
            id: chooseAvatarButtonMask
            x: 414
            y: 160
            width: 76
            height: 60
            color: "#00000000"

            Image {
                id: chooseAvatarImage
                anchors.fill: parent
                source: "qrc:/resourses/nastroiki/kopka_obovit`_photo.tif"
                anchors.leftMargin: 0
                anchors.topMargin: 0
                fillMode: Image.PreserveAspectFit
            }

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    fileOpenDialog.open()
                }
            }
        }
    }
    Rectangle {
        id: hatAccountMask
        width: dfltWidth
        height: 50
        color: colorBlue


        property var nameText: "??????????????"
        x: 0
        y: 220
        Text {
            id: text1
            x: 191
            y: 0
            width: 125
            height: 50
            color: "#ffffff"
            text: "??????????????"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            id: rectangle1
            x: 8
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle2
            x: 322
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }
    }

    Rectangle {
        id: accountSettings
        x: 0
        y: 269
        width: parent.width
        height: 258
        color: colorBlue

        Column{
            id: columnPointSettings
            spacing: 2

            Rectangle{
                id: login
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: text2
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("??????????")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: password
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: text3
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("????????????")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: phone
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: text4
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("??????????????")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: birthDay
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: text6
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("???????? ????????????????")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: language
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: text5
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("????????")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }
        }

        Column{
            anchors.left: columnPointSettings.right
            spacing: 2

            Rectangle{
                id: loginAnswer
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: loginAnswerText
                    color: "#ffffff"
                    anchors.fill: parent
                    text: client.getMyLogin()
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: accountAnswerPassword
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: accountAnswerPasswordText
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("??????????????")
                    font.underline: true
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10

                    MouseArea{
                        anchors.fill: parent

                        onClicked: {
                            console.log("change password")
                        }
                    }
                }
            }

            Rectangle{
                id: accountAnswerPhone
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: accountAnswerPhoneText
                    color: "#ffffff"
                    anchors.fill: parent
                    text: qsTr("**********")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: accountAnswerBirthDay
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Text {
                    id: accountAnswerBirthDayText
                    color: "#ffffff"
                    anchors.fill: parent
                    text: client.getMyBirthDate()
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    leftPadding: 10
                }
            }

            Rectangle{
                id: accountAnswerLanguage
                width: accountSettings.width / 2
                height: 50
                color: noColor

                Image {
                    id: image
                    x: 193
                    y: 0
                    width: 59
                    height: 50
                    source: "qrc:/resourses/nastroiki/flag_russia.tif"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        ComboBox {
            id: comboBox
            x: 253
            y: 210
            width: 240
            height: 48

            model: ["   ??????????????", "   English"]

            background: Rectangle{
                anchors.fill: parent
                border.color: "white"
                color: "#00000000"
                radius: 10
            }

            contentItem: Text {
                text: comboBox.displayText
                color: "#ffffff"
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 20
            }

        }
    }
    Rectangle {
        id: hatNotificationMask
        width: app_width
        height: 50
        color: colorBlue
        x: 0
        y: 528
        Text {
            id: notificationText
            x: 191
            y: 0
            width: 125
            height: 50
            color: "#ffffff"
            text: "??????????????????????"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {

            x: 8
            y: 24
            width: 159
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            x: 340
            y: 24
            width: 195
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            id: pointNotificationMask
            x: 0
            y: 49
            width: parent.width
            height: 104
            color: colorBlue

            Column {
                id: column
                width: pointNotificationMask / 2
                height: 104
                spacing: 2

                Rectangle{
                    width: 253
                    height: 50
                    color: "#00000000"

                    Text {
                        id: text7
                        x: 0
                        y: 0
                        width: 253
                        height: 50
                        color: "#ffffff"
                        text: qsTr("??????????????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }


                }

                Rectangle {
                    width: 253
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text8
                        x: 0
                        y: 0
                        width: 253
                        height: 50
                        color: "#ffffff"
                        text: qsTr("????????????????????\n????????????????????\n??????????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }
            }

            Column {
                id: column1
                x: dfltWidth/2
                y: 0
                width: pointNotificationMask / 2
                height: 104
                Rectangle {
                    width: 253
                    height: 50
                    color: "#00000000"


                    ComboBox {
                        id: notificationBox
                        x: 0
                        y: 0
                        width: 240
                        height: 50
                        model: ["   ????????????????", "   ??????????????????"]
                        background: Rectangle{
                            anchors.fill: parent
                            border.color: "white"
                            color: "#00000000"
                            radius: 10
                        }
                        contentItem: Text {
                            text: notificationBox.displayText
                            color: "#ffffff"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                        }

                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"

                    ComboBox {
                        id: messageDataVisionBox
                        x: 0
                        y: 0
                        width: 240
                        height: 50
                        clip: true

                        model: ["   ???????????? ?????? ????????????????????????", "   ??????????????????"]
                        background: Rectangle{
                            anchors.fill: parent
                            border.color: "white"
                            color: "#00000000"
                            radius: 10
                        }

                        contentItem: Text{
                            text: messageDataVisionBox.displayText
                            color: "#ffffff"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                            elide: Text.ElideRight
                        }

                    }
                }
                spacing: 2
            }
        }
    }

    Rectangle {
        id: hatMemoryMask
        x: 0
        y: 682
        width: dfltWidth
        height: 50
        color: colorBlue
        Text {
            id: notificationText1
            x: 191
            y: 0
            width: 125
            height: 50
            color: "#ffffff"
            text: "????????????"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            x: 8
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            x: 322
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            id: pointNotificationMask1
            x: 0
            y: 49
            width: parent.width
            height: 156
            color: colorBlue
            Column {
                id: column2
                width: pointNotificationMask1 / 2
                height: 104
                Rectangle {
                    width: 253
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text11
                        x: 0
                        y: 0
                        width: dfltWidth/2
                        height: 50
                        color: "#ffffff"
                        text: qsTr("?????????? ???????????????????? ????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text12
                        x: 0
                        y: 0
                        width: dfltWidth/2
                        height: 50
                        color: "#ffffff"
                        text: qsTr("???????????????????????????? ????????????????\n??????????????????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text15
                        anchors.fill: parent
                        color: "#ffffff"
                        text: qsTr("???????????????????????? ??????????????\n????????????????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }
                spacing: 2
            }

            Column {
                id: column3
                x: dfltWidth/2
                y: 0
                width: pointNotificationMask1 / 2
                height: 104
                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"

                    ComboBox {
                        id: filePathSaveBox
                        x: 0
                        y: 0
                        width: 240
                        height: 50

                        model: ["   ?????????????????? ????????????", "   ?????????????? ????????????"]

                        background: Rectangle{
                            anchors.fill: parent
                            border.color: "white"
                            color: "#00000000"
                            radius: 10
                        }

                        contentItem: Text{
                            text: filePathSaveBox.displayText
                            color: "#ffffff"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                        }
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"

                    ComboBox {
                        id: autoDownloadContentBox
                        x: 0
                        y: 0
                        width: 240
                        height: 50
                        background: Rectangle{
                            anchors.fill: parent
                            border.color: "white"
                            color: "#00000000"
                            radius: 10
                        }

                        model: ["   ????????????????", "   ??????????????????"]

                        contentItem: Text{
                            text: autoDownloadContentBox.displayText
                            color: "#ffffff"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                        }
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"

                    ComboBox {
                        id: autoClearContentBox
                        x: 0
                        y: 0
                        width: 240
                        height: 50

                        model: ["   ???????????? ????????????", "   ???????????? 3 ????????????", "   ???????????? ??????????????"]

                        background: Rectangle{
                            anchors.fill: parent
                            border.color: "white"
                            color: "#00000000"
                            radius: 10
                        }

                        contentItem: Text{
                            text: autoClearContentBox.displayText
                            color: "#ffffff"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 20
                        }
                    }
                }
                spacing: 2
            }
        }
    }

    Rectangle {
        id: hatMemoryMask1
        x: 0
        y: 887
        width: parent.width
        height: 50
        color: "#00000000"
        Text {
            id: notificationText2
            x: 191
            y: 0
            width: 125
            height: 50
            color: "#ffffff"
            text: "????????"
            font.pixelSize: 24
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Rectangle {
            x: 8
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            x: 322
            y: 24
            width: 177
            height: 2
            color: "#ffffff"
        }

        Rectangle {
            id: pointNotificationMask2
            x: 0
            y: 49
            width: parent.width
            height: 104
            color: colorBlue
            Column {
                id: column4
                width: pointNotificationMask2 / 2
                height: 104
                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text17
                        anchors.fill: parent
                        color: "#ffffff"
                        text: qsTr("?????? ????????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text18
                        anchors.fill: parent
                        color: "#ffffff"
                        text: qsTr("??????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }
                spacing: 2
            }

            Column {
                id: column5
                x: dfltWidth/2
                y: 0
                width: pointNotificationMask2 / 2
                height: 104
                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text20
                        x: 0
                        y: 0
                        width: 123
                        height: 50
                        color: "#ffffff"
                        text: qsTr("??????????????")
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }

                    Image {
                        id: image1
                        x: 129
                        y: 0
                        width: 67
                        height: 50
                        source: "qrc:/pictureRegistration/anime_anime_girls_Touhou_Kochiya_Sanae-71537.jpg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Rectangle {
                    width: dfltWidth/2
                    height: 50
                    color: "#00000000"
                    Text {
                        id: text21
                        anchors.fill: parent
                        color: "#ffffff"
                        elide: Text.ElideNone
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: 10
                    }
                }
                spacing: 2
            }
        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}
}
##^##*/
