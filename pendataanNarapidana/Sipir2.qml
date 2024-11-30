import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.3
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.3

//Page {
//   id: pagesipir
//   Material.theme: Material.Dark
//   Material.accent: Material.Purple

   Flickable {
       contentHeight: 800
       property string isipesan: ""

       Dialog{
           id:pesanValidasi
           title:"Peringatan"
           Image {
               x:80
               id: gagal
               source: "Assets/Images/Logo_peringatan.ico"
           }
           Text {
               id: name
               text: qsTr(isipesan)
               font.pixelSize: 17
               y:80
           }
       }

       Dialog{
           id:pesanValidasi2
           title:"Informasi"
           Image {
               x:80
               id: berhasil
               source: "Assets/Images/Logo_berhasil.ico"
           }
           Text {
               id: name2
               text: qsTr(isipesan)
               font.pixelSize: 17
               y:80
           }
       }



   Image {
       source: "Assets/Images/Background_1.jpg"
       width:parent.width
       height:1100
       id: bg_sipir
       y:-200


    GroupBox {
        id: formsipir
        y:235
        anchors.centerIn:parent
        width:550
        height:690
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
         text: "Input Data Sipir"
         y: lmb.y+120
         x: 193
         font.pixelSize: 17
         font.bold:true
         color:"yellow"
        }

Label{
id:label_nik_sipir
text: "NIK Sipir"
y: 170
x: 30
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   id:edit_nik_sipir
   placeholderText: qsTr("Masukkan Angka NIK")
   y: 163
   x: 240
   width:250
   height:40
   font.pixelSize: 14
   maximumLength: 16
}

Label{
id:labelNamaSipir
text: "Nama Sipir"
x: label_nik_sipir.x
y: label_nik_sipir.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   id:editNamaSipir
   placeholderText: qsTr("Masukkan Nama")
   x: edit_nik_sipir.x
   y: edit_nik_sipir.y+50
   width:250
   height:40
   font.pixelSize: 14
}

Label{
id:labelJenisKelamin1
text: "Jenis kelamin"
x: labelNamaSipir.x
y: labelNamaSipir.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}

ComboBox {

   id:editKlmn1
   x: editNamaSipir.x
   y: editNamaSipir.y+50
   width:250
   height:40
   font.pixelSize: 14
   model: ["Laki-laki", "Perempuan"]


//            popup.Material.foreground: "red"
//            Material.accent: "green"
//            Material.foreground: "blue"
}

Label{
id:labelTanggalLahir
text: "Tanggal Lahir"
x: labelJenisKelamin1.x
y: labelJenisKelamin1.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   placeholderText: qsTr("Masukkan Tanggal Lahir")
   id:editTgl_lahir
   x: editKlmn1.x
   y: editKlmn1.y+50
   width:250
   height:40
   font.pixelSize: 14
}

Label{
id:labelJabatan
text: "Jabatan"
x: labelTanggalLahir.x
y: labelTanggalLahir.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


ComboBox {
   model: ["Keamanan", "Tata Usaha", "Pembinaan", "KPLP", "Kepala Lapas"]
   id:editJabatan
   x: editTgl_lahir.x
   y: editTgl_lahir.y+50
   width:250
   height:40
   font.pixelSize: 14
}

Label{
id:labelGaji
text: "Gaji"
x: labelJabatan.x
y: labelJabatan.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


ComboBox {
   model: ["Rp. 3.000.000", "Rp. 3.500.000", "Rp. 4.000.000",
           "Rp. 4.500.000", "Rp. 5.000.000", "Rp. 5.500.000",
           "Rp. 6.000.000"]
   id:editGaji
   x: editJabatan.x
   y: editJabatan.y+50
   width:250
   height:40
   font.pixelSize: 14
}

Label{
id:labelAlamatSipir
text: "Alamat"
x: labelGaji.x
y: labelGaji.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   placeholderText: qsTr("Masukkan Alamat")
   id:editAlamat_sipir
   x: editGaji.x
   y: editGaji.y+50
   width:250
   height:40
   font.pixelSize: 14
}

   Button{
   id:simpan_sipir
   text:"Simpan"
   font.pixelSize: 14
   font.bold: true
   x: labelAlamatSipir.x+40
   y: labelAlamatSipir.y+100
   height:40
   width: 100

   background: Rectangle{
       color: "#00FF00"
       radius: 20
       opacity: 0.85
   }

   onClicked:{
       if(edit_nik_sipir.text==""){
           isipesan="Nik Sipir Wajib Diisi !"
           pesanValidasi.open()
           edit_nik_sipir.focus=true

       }else if(editNamaSipir.text==""){
           isipesan="Nama Wajib Diisi !"
           pesanValidasi.open()
           editNamaSipir.focus=true

       }else if(editTgl_lahir.text==""){
           isipesan="Tanggal Lahir Wajib Diisi !"
           pesanValidasi.open()
           editTgl_lahir.focus=true

       }else if(editAlamat_sipir.text==""){
           isipesan="Alamat Sipir Wajib Diisi !"
           pesanValidasi.open()
           editAlamat_sipir.focus=true

    }else if(crud.duplikasiData("sipir", "nik_sipir",edit_nik_sipir.text)===true){
           isipesan="NIK Sipir sudah terdaftar !"
           pesanValidasi.open()
           editNamaSipir.text=crud.getNamaSipir()
           editKlmn1.displayText=crud.getJenisKelamin()
           editTgl_lahir.text=crud.getTanggalLahir()
           editJabatan.displayText=crud.getJabatan()
           editGaji.displayText=crud.getGaji()
           editAlamat_sipir.text=crud.getAlamat()

       }else{
              crud.simpanSipir(edit_nik_sipir.text,
                               editNamaSipir.text,
                               editKlmn1.displayText,
                               editTgl_lahir.text,
                               editJabatan.displayText,
                               editGaji.displayText,
                               editAlamat_sipir.text)
           isipesan="Data Telah Disimpan"
           pesanValidasi2.open()
     }
    }
   }

   Button{
   id:edi1
   text:"Edit"
   font.pixelSize: 14
   font.bold: true
   x: editAlamat_sipir.x+-13
   y: simpan_sipir.y
   height:40
   width: 100


   background: Rectangle{
       color: "#ffee00"
       radius: 20
       opacity: 0.85
      }
     onClicked: {
         if(edit_nik_sipir.text==""){
             isipesan="Nik Sipir Wajib Diisi !"
             pesanValidasi.open()
             edit_nik_sipir.focus=true

         }else if(editNamaSipir.text==""){
             isipesan="Nama Wajib Diisi !"
             pesanValidasi.open()
             editNamaSipir.focus=true

         }else if(editTgl_lahir.text==""){
             isipesan="Tanggal Lahir Wajib Diisi !"
             pesanValidasi.open()
             editTgl_lahir.focus=true

         }else if(editAlamat_sipir.text==""){
             isipesan="Alamat Sipir Wajib Diisi !"
             pesanValidasi.open()
             editAlamat_sipir.focus=true

      }else{crud.editSipir(edit_nik_sipir.text,
                               editNamaSipir.text,
                               editKlmn1.displayText,
                               editTgl_lahir.text,
                               editJabatan.displayText,
                               editGaji.displayText,
                               editAlamat_sipir.text)
         isipesan="Data Telah Diedit"
         pesanValidasi2.open()
     }
    }
   }


   Button{
   id:hapus1
   text:"Hapus"
   font.pixelSize: 14
   font.bold: true
   x: editAlamat_sipir.x+143
   y: simpan_sipir.y
   height:40
   width: 100


   background: Rectangle{
       color: "#ff3b3b"
       radius: 20
       opacity: 0.85
      }

   onClicked: {
       if(edit_nik_sipir.text==""){
           isipesan="Nik Sipir Wajib Diisi !"
           pesanValidasi.open()
           edit_nik_sipir.focus=true

       }else{crud.hapusSipir(edit_nik_sipir.text)
       isipesan="Data Telah Dihapus"
       pesanValidasi2.open()
     }
    }
   }

   Label{
       id:labelTable
       text:"Table"
       y:lmb.y+20
       x:lmb.x+400
       font.pixelSize: 14
       font.bold:true
       color:"white"
   }


}//tutup GroupBox

}//tutup banner




}// tutup Page
