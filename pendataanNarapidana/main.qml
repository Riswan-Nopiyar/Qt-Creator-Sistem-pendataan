import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.12
import QtQuick.Controls.Styles 1.3

ApplicationWindow {
    id:window
    width: 640
    height: 480
    visible: true
    title: qsTr("Riswan Nopiyar - 2010010085")

    header:ToolBar{
        height: 40
        id:view
        contentHeight: ToolButton.implicitHeight
        background: Rectangle{
            color: "transparent"
            opacity: 0.14
            border.color: "transparent"
        }

        ItemDelegate{
            id:nav00
            x:800
            width: 75
        Label {
            id: nav0
            text: qsTr("Beranda")
            style: Text.Outline
            styleColor: "#6203fc"
            font.pixelSize: 20
            y:10
            color: "#202020"
            font.underline: true
        }
        onClicked:{
              halamanView.push("Beranda.qml")
          }
        }
        ItemDelegate{
            id:nav01
            x:nav00.x+125
            width: 40
        Label {
            id: nav1
            text: qsTr("sipir")
            style: Text.Outline
            styleColor: "#6203fc"
            font.pixelSize: 20
            y:10
            color: "#202020"
            font.underline: true
        }
        onClicked:{
              halamanView.push("halaman1.qml")
          }
        }

        ItemDelegate{
            id:nav02
            x:nav01.x+85
            width: 105
        Label {
            id: nav2
            text: qsTr("Pengunjung")
            style: Text.Outline
            styleColor: "#6203fc"
            font.pixelSize: 20
            y:10
            color: "#202020"
            font.underline: true
        }
        onClicked:{
              halamanView.push("halaman2.qml")
          }
        }

        ItemDelegate{
            id:nav03
            x:nav02.x+150
            width: 105
        Label {
            id: nav3
            text: qsTr("Narapidana")
            style: Text.Outline
            styleColor: "#6203fc"
            font.pixelSize: 20
            y:10
            color: "#202020"
            font.underline: true
        }
        onClicked:{
              halamanView.push("halaman3.qml")
          }
        }

        ItemDelegate{
            id:nav04
            x:nav03.x+145
            width: 35

        Image {
            x: 0
            y: 10
            id: keluar
            source: "Assets/Images/Logo_keluar.ico"
        }
        onClicked:{
              Qt.quit();
          }
        }



        ToolButton{
            id:toolButton1
            text: StackView.depth > 1 ? "\u2190": "\u2630"
            font.pixelSize: 25

            width:50
            height:20
            y: 10
            background: Rectangle{
                color: "transparent"


            }





            onClicked:{
            if (StackView.depth > 1) {
                StackView.pop();

            }else{
                  menusamping.open();// menu disamping

            }
         }


       }

     }

    Drawer{
        id:menusamping
        width: 340 /*width:window.width*0.5*/
        height: window.height
        background: Rectangle {
                color: "white"
                border.color: "#000"
                radius: 15
                opacity: 0.5
            }



        Column{
            anchors.fill:parent
            ItemDelegate{
              width: parent.width
              height:90
              Rectangle{
                  width:parent.width
                  height:parent.height
                  opacity: 1
                  radius: 3
                  border.color:"black"
                  gradient: Gradient {
                          GradientStop { position: 0.0; color: "#74b8fc" }
                          GradientStop { position: 0.25; color: "#034eff" }
                          GradientStop { position: 0.5; color: "#4203ff" }
                          GradientStop { position: 0.75; color: "#034eff" }
                          GradientStop { position: 1.0; color: "#74b8fc" }
                      }
                  Image{
                      source:"Assets/Images/Logo_pemasyarakatan.png"
                      height:80
                      width:100

                  }
                  Label{
                      text: "Daftar Data"
                      font.bold:true
                      font.pixelSize: 23
                      color: "white"
                      x: 130
                      y: 30
                  }

              }
        }


        ItemDelegate{
            width:parent.width
            height: 38
            Rectangle{
                width:parent.width
                height:parent.height
                color:"white"
                opacity: 0.8
                border.color: "black"
                radius: 5
            Image {
                id: icon1
                source: "Assets/Images/Logo_beranda.ico"
                height: 25
                width: 25
                x: 10
                y: 5
            }
            Label{
                text:"Beranda"
                font.bold: true
                font.pixelSize: 16
                x: 40
                y: 10
            }}
              onClicked:{
                    halamanView.push("Beranda.qml")
                    menusamping.close();
              }
            }
            ItemDelegate{
              width: parent.width
              height: 38
              Rectangle{
                  width:parent.width
                  height:parent.height
                  color:"white"
                  opacity: 0.8
                  border.color:"black"
                  radius: 5
              Image{
                  id:icon2
                  source: "Assets/Images/Logo_sipir.ico"
                  height: 25
                  width: 25
                  x: 10
                  y: 5
              }

              Label{
                  text: "Data Sipir"
                  font.bold: true
                  font.pixelSize: 16
                  x:40
                  y:10
              }}


              onClicked:{
                    halamanView.push("halaman1.qml")
                    menusamping.close();
                }
            }
            ItemDelegate{
              width: parent.width
              height: 38
              Rectangle{
                  width:parent.width
                  height:parent.height
                  color:"white"
                  opacity: 0.8
                  border.color:"black"
                  radius: 5
              Image{
                  id:icon3
                  source: "Assets/Images/Logo_pengunjung.ico"
                  height: 35
                  width: 35
                  x: 5
                  y: 0
              }

              Label{
                  text: "Data Pengunjung"
                  font.bold: true
                  font.pixelSize: 16
                  x:40
                  y:10
              }}


              onClicked:{
                    halamanView.push("halaman2.qml")
                    menusamping.close();
                }
            }

            ItemDelegate{
              width: parent.width
              height: 38
              Rectangle{
                  width:parent.width
                  height:parent.height
                  color:"white"
                  opacity: 0.8
                  border.color:"black"
                  radius: 5
              Image{
                  id:icon4
                  source: "Assets/Images/Logo_narapidana.ico"
                  height: 25
                  width: 25
                  x: 10
                  y: 5
              }

              Label{
                  text: "Data Narapidana"
                  font.bold: true
                  font.pixelSize: 16
                  x:40
                  y:10
              }}


              onClicked:{
                    halamanView.push("halaman3.qml")
                    menusamping.close();
                }
            }

        }
    }



    StackView{
        id: halamanView
        initialItem: "Beranda.qml"//halaman utama yang akan ditampilkan
        anchors.fill: parent

    }
}
