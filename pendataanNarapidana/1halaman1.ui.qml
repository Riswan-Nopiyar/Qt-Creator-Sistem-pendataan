import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12

Page {
    id:hlmn1

        Image {
            source: "Assets/Images/Background_pengunjung_1.jpg"
            width:parent.width
            height:parent.height
            id: bg_pengunjung


         GroupBox {
             id: formPengunjung
             anchors.centerIn: parent
             width:550
             height:600
             background: Rectangle {
                     color: "#202020"
                     border.color: "#000"
                     radius: 10
                     opacity: 0.90
                 }



             Image{
                 source: "Assets/Images/Logo_pemasyarakatan.png"
                 y:0
                 x:190
                 height:120
                 width:145
                 anchors.topMargin: 5000
                 id:lmb       
             }
             Label{
              id:labelPage
              text: "Input Data pengunjung"
              y: lmb.y+120
              x: 163
              font.pixelSize: 17
              font.bold:true
              color:"yellow"
             }

    Label{
     id:labelNamaPengunjung
     text: "Nama pengunjung"
     y: 170
     x: 30
     font.pixelSize: 14
     font.bold:true
     color:"white"
    }


    TextField {
        id:editNamaPengunjung
        placeholderText: qsTr("Masukkan Nama")
        y: 163
        x: 240
        width:250
        height:40
        font.pixelSize: 14
    }

    Label{
     id:labelJenisKelamin
     text: "Jenis kelamin"
     x: labelNamaPengunjung.x
     y: labelNamaPengunjung.y+50
     font.pixelSize: 14
     font.bold:true
     color:"white"
    }

    ComboBox {
        model: ["Laki-laki", "Perempuan"]
        id:editKlmn1
        x: editNamaPengunjung.x
        y: editNamaPengunjung.y+50
        width:250
        height:40
        font.pixelSize: 14

//            popup.Material.foreground: "red"
//            Material.accent: "green"
//            Material.foreground: "blue"
    }

    Label{
     id:labelNamaNarapidana1
     text: "Nama narapidana"
     x: labelJenisKelamin.x
     y: labelJenisKelamin.y+50
     font.pixelSize: 14
     font.bold:true
     color:"white"
    }


    TextField {
        placeholderText: qsTr("Masukkan Nama narapidana")
        id:editNamaNarapidana1
        x: editKlmn1.x
        y: editKlmn1.y+50
        width:250
        height:40
        font.pixelSize: 14
    }

    Label{
     id:labelTanggalKunjungan
     text: "Tanggal kunjungan"
     x: labelNamaNarapidana1.x
     y: labelNamaNarapidana1.y+50
     font.pixelSize: 14
     font.bold:true
     color:"white"
    }


    TextField {
        placeholderText: qsTr("Masukkan tanggal")
        id:editTgl_kunjungan
        x: editNamaNarapidana1.x
        y: editNamaNarapidana1.y+50
        width:250
        height:40
        font.pixelSize: 14
    }
    Label{
     id:labelAlamatPengunjung
     text: "Alamat"
     x: labelTanggalKunjungan.x
     y: labelTanggalKunjungan.y+50
     font.pixelSize: 14
     font.bold:true
     color:"white"
    }


    TextField {
        placeholderText: qsTr("Masukkan Alamat")
        id:editAlamat_pengunjung
        x: editTgl_kunjungan.x
        y: editTgl_kunjungan.y+50
        width:250
        height:40
        font.pixelSize: 14
    }

        Button{
        id:simpan_pengunjung
        text:"simpan"
        font.pixelSize: 14
        font.bold: true
        x: labelAlamatPengunjung.x+70
        y: labelAlamatPengunjung.y+100
        height:40
        width: 100
        background: Rectangle{
            color: "#00FF00"
            radius: 20
            opacity: 0.85
        }
        }

        Button{
        id:kembali1
        text:"Kembali"
        font.pixelSize: 14
        font.bold: true
        x: editAlamat_pengunjung.x+83
        y: simpan_pengunjung.y
        height:40
        width: 100
        background: Rectangle{
            color: "#4397e0"
            radius: 20
            opacity: 0.85
        }
        }

    }//tutup GroupBox

 }//tutup banner


}// tutup Page


