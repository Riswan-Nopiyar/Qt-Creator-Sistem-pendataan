import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.3

//Page {
//   id: pagepengunjung
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
       id: bg_pengunjung
       y:-200

    GroupBox {
        id: formPengunjung
        y:235
        anchors.centerIn:parent
        width:550
        height:650
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
id:label_nik_pengunjung
text: "NIk Pengunjung"
y: 170
x: 30
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   id:edit_nik_pengunjung
   placeholderText: qsTr("Masukkan Angka NIK")
   y: 163
   x: 240
   width:250
   height:40
   font.pixelSize: 14
   maximumLength: 16
}

Label{
id:labelNamaPengunjung
text: "Nama pengunjung"
x: label_nik_pengunjung.x
y: label_nik_pengunjung.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   id:editNamaPengunjung
   placeholderText: qsTr("Masukkan Nama")
   x: edit_nik_pengunjung.x
   y: edit_nik_pengunjung.y+50
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
text: "Yang Dikunjungi"
x: labelJenisKelamin.x
y: labelJenisKelamin.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   placeholderText: qsTr("Masukkan Nama Narapidananya")
   id:editNamaNarapidana1
   x: editKlmn1.x
   y: editKlmn1.y+50
   width:250
   height:40
   font.pixelSize: 14
}

Label{
id:labelTanggalKunjungan
text: "Tanggal Kunjungan"
x: labelNamaNarapidana1.x
y: labelNamaNarapidana1.y+50
font.pixelSize: 14
font.bold:true
color:"white"
}


TextField {
   placeholderText: qsTr("Masukkan Tanggal")
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
   text:"Simpan"
   font.pixelSize: 14
   font.bold: true
   x: labelAlamatPengunjung.x+40
   y: labelAlamatPengunjung.y+100
   height:40
   width: 100
   background: Rectangle{
       color: "#00FF00"
       radius: 20
       opacity: 0.85
   }

   onClicked:{    
       if(edit_nik_pengunjung.text==""){
           isipesan="Nik Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           edit_nik_pengunjung.focus=true
       }else if(editNamaPengunjung.text==""){
           isipesan="Nama Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           editNamaPengunjung.focus=true
       }else if(editNamaNarapidana1.text==""){
           isipesan="Nama Narapidana Yang Dikunjungi Wajib Diisi !"
           pesanValidasi.open()
           editNamaNarapidana1.focus=true
       }else if(editTgl_kunjungan.text==""){
           isipesan="Tanggal Kunjungan Wajib Diisi !"
           pesanValidasi.open()
           editTgl_kunjungan.focus=true
       }else if(editAlamat_pengunjung.text==""){
           isipesan="Alamat Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           editAlamat_pengunjung.focus=true

       }else if(crud.duplikasiData2("pengunjung", "nik_pengunjung",edit_nik_pengunjung.text)===true){
                  isipesan="NIK Sipir Sudah Terdaftar !"
                  pesanValidasi.open()
                  editNamaPengunjung.text=crud.getNamaPengunjung()
                  editKlmn1.displayText=crud.getJenisKelamin_P()
                  editNamaNarapidana1.text=crud.getNarapidanaDikunjungi()
                  editTgl_kunjungan.text=crud.getTanggalKunjungan()
                  editAlamat_pengunjung.text=crud.getAlamat_P()

    }else{crud.simpanPengunjung(edit_nik_pengunjung.text,
                                    editNamaPengunjung.text,
                                       editKlmn1.displayText,
                                    editNamaNarapidana1.text,
                                    editTgl_kunjungan.text,
                                    editAlamat_pengunjung.text)
           isipesan="Data Telah Disimpan"
           pesanValidasi2.open()
    }
   }
  }//btnSimpan

   Button{
   id:edi1
   text:"Edit"
   font.pixelSize: 14
   font.bold: true
   x: editAlamat_pengunjung.x+-13
   y: simpan_pengunjung.y
   height:40
   width: 100


   background: Rectangle{
       color: "#ffee00"
       radius: 20
       opacity: 0.85
      }

   onClicked:{
       if(edit_nik_pengunjung.text==""){
           isipesan="Nik Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           edit_nik_pengunjung.focus=true
       }else if(editNamaPengunjung.text==""){
           isipesan="Nama Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           editNamaPengunjung.focus=true
       }else if(editNamaNarapidana1.text==""){
           isipesan="Nama Narapidana Yang Dikunjungi Wajib Diisi !"
           pesanValidasi.open()
           editNamaNarapidana1.focus=true
       }else if(editTgl_kunjungan.text==""){
           isipesan="Tanggal Kunjungan Wajib Diisi !"
           pesanValidasi.open()
           editTgl_kunjungan.focus=true
       }else if(editAlamat_pengunjung.text==""){
           isipesan="Alamat Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           editAlamat_pengunjung.focus=true


      }else{ crud.editPengunjung(edit_nik_pengunjung.text,
                                    editNamaPengunjung.text,
                                    editKlmn1.displayText,
                                    editNamaNarapidana1.text,
                                    editTgl_kunjungan.text,
                                    editAlamat_pengunjung.text)
   isipesan="Data Telah Diedit"
   pesanValidasi2.open()

     }
    }
   }//btnEdit

   Button{
   id:hapus1
   text:"Hapus"
   font.pixelSize: 14
   font.bold: true
   x: editAlamat_pengunjung.x+143
   y: simpan_pengunjung.y
   height:40
   width: 100


   background: Rectangle{
       color: "#ff3b3b"
       radius: 20
       opacity: 0.85
      }

   onClicked:{
           if(edit_nik_pengunjung.text==""){
           isipesan="Nik Pengunjung Wajib Diisi !"
           pesanValidasi.open()
           edit_nik_pengunjung.focus=true
           }else{ crud.hapusPengunjung(edit_nik_pengunjung.text)
           isipesan="Data Telah Dihapus"
           pesanValidasi2.open()
     }
    }
   }//btnHapus

}//tutup GroupBox

}//tutup banner

}// tutup Page
