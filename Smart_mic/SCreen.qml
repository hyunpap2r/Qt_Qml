import QtQuick 6.2
import QtQuick.Controls 6.2


        Rectangle {
            id: rectangle
            y : 0;
            width: 1919
            height: parent.height
            color: "black"
            Text {
                id: text1
                x: 858
                y: 157
                width: 205
                height: 75
                color: "#169da3"
                text: qsTr("P A P E R")
                font.pixelSize: 58
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
            }

            Text {
                id: text2
                x: 812
                y: 765
                color: "#169da3"
                text: qsTr("Say Somethings..")
                font.pixelSize: 42
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
            }

            AnimatedImage {
                id: animatedImage
                x: 796
                y: 358
                width: 360
                height: 360
                source: "heart.gif"
                mipmap: true
            }



        }
