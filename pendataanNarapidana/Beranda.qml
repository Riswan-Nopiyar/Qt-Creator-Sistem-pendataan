import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.15

Page {
    id:halamanUtama
    background: Rectangle{
        color: "blue"
        opacity: 0.14
        y:-100
        height:1200
    }

        Label {
         id:label1
         text: "A"
         font.bold: true
         font.pixelSize: 95
         x:860
         y:35
         color: "blue"
        }
        Label {
         id:label2
         text: "Plikasi"
         font.bold: true
         font.pixelSize: 54
         x:label1.x+65
         y:label1.y+40
         color: "#303030"
        }
        Label {
         id:label3
         text: "L"
         font.bold: true
         font.pixelSize: 95
         x:label1.x
         y:label1.y+85
         color: "blue"
        }
        Label {
         id:label4
         text: "embaga"
         font.bold: true
         font.pixelSize: 54
         x:label3.x+65
         y:label3.y+40
         color: "#303030"
        }
        Label {
         id:label5
         text: "P"
         font.bold: true
         font.pixelSize: 95
         x:label3.x
         y:label3.y+85
         color: "blue"
        }
        Label {
         id:label6
         text: "emasyarakatan"
         font.bold: true
         font.pixelSize: 54
         x:label5.x+65
         y:label5.y+40
         color: "#303030"
        }

        Button{
                id:infoLengkap
                text: "Info Data
Diri Pembuat"
                font.pixelSize: 23
                x:label6.x+125
                y:label6.y+115

                background: Rectangle{
                    color: "blue"
                    height: 80
                    width: 182
                    x:-20
                    y:-5
                    radius: 10
                    opacity: 0.5
                    border.color: "black"
                    border.width: 3
                }


            onClicked: popupDataDiri.open()

        }



        Rectangle {
             width: 500
             height: width
             opacity: 0.2
             radius: width*0.5
             x:130
             y:40
             gradient: Gradient {
                     GradientStop { position: 1 ; color: "blue" }
                     GradientStop { position: 0 ; color: "#42a4f5" }
                 }
        }


        Image {
             id:foto_polisi
             source:"Assets/Images/Animasi_polisi.png"
             x: 90
             y: 0
             z: 0.1
             height:500


        }



        Image {
            id:background_home
            source:"Assets/Images/Background.png"
            x: 0
            y: 80
            z: 0.2
            height:window.height*1
            //foto
        }
        Popup {
               id: popupDataDiri
               anchors.centerIn: parent
               y: 100
               width: 700
               height: 500
               modal: true
               focus: true
               closePolicy: Popup.CloseOnReleaseOutside
               background: Rectangle{
                   radius:15
                   border.color: "black"
                   border.width: 6
               }
               Image {
                   id: bg_profil
                   source: "Assets/Images/profil_background.jpg"
                   width:675
                   height:475

               Image {
                   id: foto_saya
                   source: "Assets/Images/profil_Riswan Nopiyar.jpeg"
                   width:190
                   height:200
                   y:120
                   x:20

               }
                Label{
                    id:nama
                    text:"Nama  : Riswan Nopiyar"
                    x:260
                    y:120
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:npm
                    text:"NPM    : 2010010085"
                    x:nama.x
                    y:nama.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:kelas
                    text:"Kelas   : 5A REG Pagi BJM"
                    x:npm.x
                    y:npm.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:matkul
                    text:"Matkul: Visual 3"
                    x:kelas.x
                    y:kelas.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:dosen
                    text:"Dosen : Mokhamad Ramdhani Raharjo"
                    x:matkul.x
                    y:matkul.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:email
                    text:"E-mail : nopiyar@proton.me"
                    x:dosen.x
                    y:dosen.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
                Label{
                    id:web
                    text:"Web    : www.nopiyar.online"
                    x:email.x
                    y:email.y+35
                    font.bold: true
                    font.pixelSize: 18
                }
               }
               Button{
                   text: "X"
                   font.bold: true
                   font.pixelSize: 30
                   width:50
                   height:50
                   x:625
                   onClicked: popupDataDiri.close()
                   background: Rectangle{
                       radius:30
                       color:"#ff5757"
                       border.color: "black"
                       border.width: 4
                   }

               }
           }//popup




}
