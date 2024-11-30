import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.12
import QtQuick.Dialogs 1.3

//Page {
//   id: pagenarapidana
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
               height:1200
               id: bg_narapidana
               y:-200

            GroupBox {
                id: formNarapidana
                y:235
                anchors.centerIn:parent
                width:550
                height:770
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
                    id:lmb
                }

                Label{
                 id:labelPage
                 text: "Input Data Narapidana"
                 y: lmb.y+120
                 x: 163
                 font.pixelSize: 17
                 font.bold:true
                 color:"yellow"
                }

       Label{
        id:label_nik_narapidana
        text: "NIK Narapidana"
        y: 170
        x: 30
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           id:edit_nik_narapidana
           placeholderText: qsTr("Masukkan Angka NIK")
           y: 163
           x: 240
           width:250
           height:40
           font.pixelSize: 14
           maximumLength: 16
       }

       Label{
        id:labelNamaNarapidana2
        text: "Nama Narapidana"
        x: label_nik_narapidana.x
        y: label_nik_narapidana.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           id:editNamaNarapidana2
           placeholderText: qsTr("Masukkan Nama")
           x:  edit_nik_narapidana.x
           y: edit_nik_narapidana.y+50
           width:250
           height:40
           font.pixelSize: 14
       }

       Label{
        id:labelJenisKelamin2
        text: "Jenis Kelamin"
        x: labelNamaNarapidana2.x
        y: labelNamaNarapidana2.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }

       ComboBox {
           model: ["Laki-laki", "Perempuan"]
           id:editKlmn2
           x: editNamaNarapidana2.x
           y: editNamaNarapidana2.y+50
           width:250
           height:40
           font.pixelSize: 14

   //            popup.Material.foreground: "red"
   //            Material.accent: "green"
   //            Material.foreground: "blue"
       }

       Label{
        id:labelTgl_lahir
        text: "Tanggal Lahir"
        x: labelJenisKelamin2.x
        y: labelJenisKelamin2.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Tanggal Lahir")
           id:editTgl_lahir
           x: editKlmn2.x
           y: editKlmn2.y+50
           width:250
           height:40
           font.pixelSize: 14
       }


       Label{
        id:labelKasus
        text: "Kasus"
        x: labelTgl_lahir.x
        y: labelTgl_lahir.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Kasus")
           id:editKasus
           x: editTgl_lahir.x
           y: editTgl_lahir.y+50
           width:250
           height:40
           font.pixelSize: 14
       }

       Label{
        id:labelAlamatNarapidana
        text: "Alamat"
        x: labelKasus.x
        y: labelKasus.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Alamat")
           id:editAlamat_Narapidana
           x: editKasus.x
           y: editKasus.y+50
           width:250
           height:40
           font.pixelSize: 14
       }
       Label{
        id:labelMasa_tahanan
        text: "Masa Tahanan"
        x: labelAlamatNarapidana.x
        y: labelAlamatNarapidana.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Masa Tahanan")
           id:editMasa_tahanan
           x: editAlamat_Narapidana.x
           y: editAlamat_Narapidana.y+50
           width:250
           height:40
           font.pixelSize: 14
       }
       Label{
        id:labelTgl_masuk
        text: "Tanggal Masuk"
        x: labelMasa_tahanan.x
        y: labelMasa_tahanan.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Tanggal Masuk")
           id:editTgl_masuk
           x: editMasa_tahanan.x
           y: editMasa_tahanan.y+50
           width:250
           height:40
           font.pixelSize: 14
       }
       Label{
        id:labelTgl_bebas
        text: "Tanggal Bebas"
        x: labelTgl_masuk.x
        y: labelTgl_masuk.y+50
        font.pixelSize: 14
        font.bold:true
        color:"white"
       }


       TextField {
           placeholderText: qsTr("Masukkan Tanggal Bebas")
           id:editTgl_bebas
           x: editTgl_masuk.x
           y: editTgl_masuk.y+50
           width:250
           height:40
           font.pixelSize: 14
       }

           Button{
           id:simpan_narapidana
           text:"Simpan"
           font.pixelSize: 14
           font.bold: true
           x: labelTgl_bebas.x+40
           y: labelTgl_bebas.y+100
           height:40
           width: 100
           background: Rectangle{
               color: "#00FF00"
               radius: 20
               opacity: 0.85
           }
           onClicked:{
               if(edit_nik_narapidana.text==""){
                   isipesan="Nik Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   edit_nik_narapidana.focus=true
               }else if(editNamaNarapidana2.text==""){
                   isipesan="Nama Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   editNamaNarapidana2.focus=true
               }else if(editTgl_lahir.text==""){
                   isipesan="Tanggal Lahir Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_lahir.focus=true
               }else if(editKasus.text==""){
                   isipesan="Kasus Wajib Diisi !"
                   pesanValidasi.open()
                   editKasus.focus=true
               }else if(editAlamat_Narapidana.text==""){
                   isipesan="Alamat Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   editAlamat_Narapidana.focus=true
               }else if(editMasa_tahanan.text==""){
                   isipesan="Masa Tahanan Wajib Diisi !"
                   pesanValidasi.open()
                   editMasa_tahanan.focus=true
               }else if(editTgl_masuk.text==""){
                   isipesan="Tanggal Masuk Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_masuk.focus=true
               }else if(editTgl_bebas.text==""){
                   isipesan="Tanggal Bebas Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_bebas.focus=true

               }else if(crud.duplikasiData3("narapidana", "nik_narapidana",edit_nik_narapidana.text)===true){
                            isipesan="NIK Narapidana Sudah Terdaftar !"
                            pesanValidasi.open()
                            editNamaNarapidana2.text=crud.getNamaNarapidana()
                            editKlmn2.displayText=crud.getJenisKelamin_N()
                            editTgl_lahir.text=crud.getTglLahir()
                            editKasus.text=crud.getKasus()
                            editAlamat_Narapidana.text=crud.getAlamat_N()
                            editMasa_tahanan.text=crud.getMasaTahanan()
                            editTgl_masuk.text=crud.getTglMasuk()
                            editTgl_bebas.text=crud.getTglBebas()

            }else{
           crud.simpanNarapidana(edit_nik_narapidana.text,
                                            editNamaNarapidana2.text,
                                            editKlmn2.displayText,
                                            editTgl_lahir.text,
                                            editKasus.text,
                                            editAlamat_Narapidana.text,
                                            editMasa_tahanan.text,
                                            editTgl_masuk.text,
                                            editTgl_bebas.text)
                   isipesan="Data Telah Disimpan"
                   pesanValidasi2.open()
             }
            }
           }//btn simpan


           Button{
           id:edi1
           text:"Edit"
           font.pixelSize: 14
           font.bold: true
           x: editTgl_bebas.x+-13
           y: simpan_narapidana.y
           height:40
           width: 100


           background: Rectangle{
               color: "#ffee00"
               radius: 20
               opacity: 0.85
              }
           onClicked: {
               if(edit_nik_narapidana.text==""){
                   isipesan="Nik Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   edit_nik_narapidana.focus=true
               }else if(editNamaNarapidana2.text==""){
                   isipesan="Nama Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   editNamaNarapidana2.focus=true
               }else if(editTgl_lahir.text==""){
                   isipesan="Tanggal Lahir Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_lahir.focus=true
               }else if(editKasus.text==""){
                   isipesan="Kasus Wajib Diisi !"
                   pesanValidasi.open()
                   editKasus.focus=true
               }else if(editAlamat_Narapidana.text==""){
                   isipesan="Alamat Narapidana Wajib Diisi !"
                   pesanValidasi.open()
                   editAlamat_Narapidana.focus=true
               }else if(editMasa_tahanan.text==""){
                   isipesan="Masa Tahanan Wajib Diisi !"
                   pesanValidasi.open()
                   editMasa_tahanan.focus=true
               }else if(editTgl_masuk.text==""){
                   isipesan="Tanggal Masuk Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_masuk.focus=true
               }else if(editTgl_bebas.text==""){
                   isipesan="Tanggal Bebas Wajib Diisi !"
                   pesanValidasi.open()
                   editTgl_bebas.focus=true

            }else{crud.editNarapidana(edit_nik_narapidana.text,
                                            editNamaNarapidana2.text,
                                            editKlmn2.displayText,
                                            editTgl_lahir.text,
                                            editKasus.text,
                                            editAlamat_Narapidana.text,
                                            editMasa_tahanan.text,
                                            editTgl_masuk.text,
                                            editTgl_bebas.text)
           isipesan="Data Telah Diedit"
           pesanValidasi2.open()
             }
            }
           }//btn edit


           Button{
           id:hapus1
           text:"Hapus"
           font.pixelSize: 14
           font.bold: true
           x: editTgl_bebas.x+143
           y: simpan_narapidana.y
           height:40
           width: 100


           background: Rectangle{
               color: "#ff3b3b"
               radius: 20
               opacity: 0.85
              }

           onClicked:{
                    if(edit_nik_narapidana.text==""){
                    isipesan="Nik Narapidana Wajib Diisi !"
                    pesanValidasi.open()
                    edit_nik_narapidana.focus=true
                    }else{ crud.hapusNarapidana(edit_nik_narapidana.text)

               isipesan="Data Telah Dihapus"
               pesanValidasi2.open()
             }
            }
           }//btn hapus


       }//tutup GroupBox

    }//tutup banner



   }// tutup Page
