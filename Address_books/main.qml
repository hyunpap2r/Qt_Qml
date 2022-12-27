import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12
import QtQuick.Layouts 1.2

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("Address Book")

    property int listWidth: root.width

    ColumnLayout
    {
        anchors.fill:parent
        Row{
            Layout.fillWidth: true
            Layout.margins: 6
            spacing: 6
            Button{
                width: (parent.width - 24) / 3.0
                text: qsTr("Add")
                highlighted: false
            }

            Button{
                width: (parent.width - 24) / 3.0
                text: qsTr("Remove")
                highlighted: false
            }

            Button{
                width: (parent.width - 24) / 3.0
                text: qsTr("Edit")

                highlighted: false
            }
        }
        Component {
            id: listViewDelegate
            Rectangle{
                id: listDelegateArea
                width: listWidth
                height: 40
                color: "transparent"
                Rectangle{
                    anchors.fill: parent
                    anchors.topMargin: 3
                    anchors.bottomMargin: 3
                    color: "transparent"
                    border.color: "black"
                    Row{
                        id: delegateArea
                        anchors.fill: parent
                        Label {
                            width: parent.width * 0.3
                            height: parent.height
                            text : model.name
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }

                        Label {
                            width: parent.width * 0.2
                            height: parent.height
                            text : model.age
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }

                        Label {
                            anchors.leftMargin: 10
                            width: parent.width * 0.5
                            height: parent.height
                            text : model.phoneNumber
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }

                    MouseArea {
                        id : listMouse
                        anchors.fill: parent
                        hoverEnabled : true
                        onEntered: {
                            parent.color = "lightBlue"
                            if(mylist.currentIndex === index)
                                parent.color = "transparent"
                            else
                                parent.color = "lightBlue"

                        }
                        onExited: {
                            parent.color = "lightGray"
                            if(mylist.currentIndex === index)
                                parent.color = "transparent"
                            else
                                parent.color = "lightGray"
                        }
                        onClicked: {
                            mylist.currentIndex = index
                            console.log("current index = " + index)
                            parent.color = "transparent"
                        }
                    }
                }
            }
        }

        Component {
            id: listViewHeader
            Rectangle{
                width: listWidth
                height: 40
                color: "darkgray"
                anchors.margins: 3
                Row{
                    anchors.fill: parent
                    Label {
                        width: parent.width * 0.3
                        height: parent.height
                        text : "Name"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Label {
                        width: parent.width * 0.2
                        height: parent.height
                        text : "Age"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }

                    Label {
                        anchors.leftMargin: 10
                        width: parent.width * 0.5
                        height: parent.height
                        text : "Phone Number"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
            }
        }

        ListView
        {
            id :mylist
            Layout.fillHeight: true
            Layout.fillWidth: true

            model:addressDataModel
            header:listViewHeader
            delegate: listViewDelegate
            ScrollBar.vertical: ScrollBar
            {
                policy:ScrollBar.AlwaysOn
            }
        }
    }
    ListModel
    {
        id:addressDataModel
        ListElement { name: "Lee HyeonJong"; age : "28"; phoneNumber: "010-1111-2222"}
        ListElement { name: "Kim DongHo"; age : "28"; phoneNumber: "010-3333-4444"}
        ListElement { name: "Kim YongKook"; age : "28"; phoneNumber: "010-5555-6666"}
        ListElement { name: "gildong hong"; age: "11"; phoneNumber: "010-1111-2222" }
        ListElement { name: "gildong cho"; age: "22"; phoneNumber: "010-3333-4444" }
        ListElement { name: "gildong kim"; age: "33"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "44"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "55"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "66"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "77"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "88"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "99"; phoneNumber: "010-5555-6666" }
        ListElement { name: "gildong kim"; age: "00"; phoneNumber: "010-5555-6666" }
    }


}



