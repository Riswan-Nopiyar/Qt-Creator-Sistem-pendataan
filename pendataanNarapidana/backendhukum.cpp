#include "backendhukum.h"
#include <qdebug.h>
#include <QSqlError>

/*========= PUBLIC CLASS di backendhukum.h =========*/

backendHukum::backendHukum()
{

}

/*=============== KONEKSI DATABASE =================*/


void backendHukum::connectdb()
{
    koneksi= QSqlDatabase::addDatabase("QODBC");
    koneksi.setDatabaseName("Driver={MySQL ODBC 8.0 ANSI Driver};Database=riswannopiyar_2010010085");
    koneksi.setHostName("127.0.0.1");
    koneksi.setUserName("root");
    koneksi.setPassword("");
    koneksi.setPort(3306);

    if (koneksi.open()){
        qDebug()<<"Database berhasil dikoneksikan";

    }else {
        qDebug()<<koneksi.lastError().text();
    }



}



/*==================== DATA SIPIR ======================*/


void backendHukum::simpanSipir(QString pnik_sipir, QString pnama_sipir, QString pjenis_kelamin, QString ptgl_lahir, QString pjabatan, QString pgaji, QString palamat)
{
QSqlQuery simpan(koneksi);


simpan.prepare("INSERT INTO sipir VALUES(?,?,?,?,?,?,?)");

simpan.bindValue(0, pnik_sipir);
simpan.bindValue(1, pnama_sipir);
simpan.bindValue(2, pjenis_kelamin);
simpan.bindValue(3, ptgl_lahir);
simpan.bindValue(4, pjabatan);
simpan.bindValue(5, pgaji);
simpan.bindValue(6, palamat);

if(simpan.exec()){
    qDebug()<<"Data Sipir Berhasil Disimpan";

}else{
    qDebug()<<simpan.lastError().text();
    }

}
//=========== EDIT ===========

void backendHukum::editSipir(QString pnik_sipir, QString pnama_sipir, QString pjenis_kelamin, QString ptgl_lahir, QString pjabatan, QString pgaji, QString palamat)
{
    QSqlQuery edit(koneksi);

    edit.prepare("UPDATE sipir SET nama_sipir=?, jenis_kelamin=?, tgl_lahir=?, jabatan=?, gaji=?, alamat=? WHERE nik_sipir=?");

    edit.bindValue(0, pnama_sipir);
    edit.bindValue(1, pjenis_kelamin);
    edit.bindValue(2, ptgl_lahir);
    edit.bindValue(3, pjabatan);
    edit.bindValue(4, pgaji);
    edit.bindValue(5, palamat);
    edit.bindValue(6, pnik_sipir);

    if(edit.exec()){
        qDebug()<<"Data Sipir Berhasil Diedit";

    }else{
        qDebug()<<edit.lastError().text();
        }

}

//=========== HAPUS ===========

void backendHukum::hapusSipir(QString pnik_sipir)
{
    QSqlQuery hapus(koneksi);


    hapus.prepare("DELETE FROM sipir WHERE nik_sipir=?");

    hapus.bindValue(0, pnik_sipir);

    if(hapus.exec()){
        qDebug()<<"Data Sipir Berhasil Dihapus";

    }else{
        qDebug()<<hapus.lastError().text();
        }

}

bool backendHukum::duplikasiData(QString namatabel, QString primarykey, QString isiprimary)
{
 bool hasil=false;
 QSqlQueryModel cari;
 cari.setQuery("SELECT*from "+ namatabel+" WHERE "+ primarykey+"='"+isiprimary+"'");
 QSqlRecord data=cari.record();


 if (cari.rowCount()<1){
     hasil=false;
 }else{
     hasil=true;
     tempNama=cari.record(0).value(1).toString();
     tempJenisKelamin=cari.record(0).value(2).toString();
     tempTglLahir=cari.record(0).value(3).toString();
     tempJabatan=cari.record(0).value(4).toString();
     tempGaji=cari.record(0).value(5).toString();
     tempAlamat=cari.record(0).value(6).toString();


 }
 return hasil;

}

QString backendHukum::getNamaSipir()
{
    return tempNama;
}

QString backendHukum::getJenisKelamin()
{
    return tempJenisKelamin;
}

QString backendHukum::getTanggalLahir()
{
    return tempTglLahir;
}

QString backendHukum::getJabatan()
{
    return tempJabatan;
}

QString backendHukum::getGaji()
{
    return tempGaji;
}

QString backendHukum::getAlamat()
{
    return tempAlamat;
}

/*================= DATA PENGUNJUNG ===================*/


void backendHukum::simpanPengunjung(QString pnik_pengunjung, QString pnama_pengunjung, QString pjenis_kelamin, QString pnarapidana_dikunjungi, QString ptanggal_kunjungan, QString palamat)
{
    QSqlQuery simpan(koneksi);

    simpan.prepare("INSERT INTO pengunjung VALUES(?,?,?,?,?,?)");

    simpan.bindValue(0, pnik_pengunjung);
    simpan.bindValue(1, pnama_pengunjung);
    simpan.bindValue(2, pjenis_kelamin);
    simpan.bindValue(3, pnarapidana_dikunjungi);
    simpan.bindValue(4, ptanggal_kunjungan);
    simpan.bindValue(5, palamat);


   if(simpan.exec()){
       qDebug()<<"Data Pengunjung Berhasil Disimpan";
   }else{
       qDebug()<<koneksi.lastError().text();
   }
}

//=========== EDIT ===========


void backendHukum::editPengunjung(QString pnik_pengunjung, QString pnama_pengunjung, QString pjenis_kelamin, QString pnarapidana_dikunjungi, QString ptanggal_kunjungan, QString palamat)
{
    QSqlQuery edit(koneksi);

    edit.prepare("UPDATE pengunjung SET nama_pengunjung=?, jenis_kelamin=?, narapidana_dikunjungi=?, tanggal_kunjungan=?, alamat=? WHERE nik_pengunjung=?");


    edit.bindValue(0, pnama_pengunjung);
    edit.bindValue(1, pjenis_kelamin);
    edit.bindValue(2, pnarapidana_dikunjungi);
    edit.bindValue(3, ptanggal_kunjungan);
    edit.bindValue(4, palamat);
    edit.bindValue(5, pnik_pengunjung);


   if(edit.exec()){
       qDebug()<<"Data Pengunjung Berhasil Diedit";
   }else{
       qDebug()<<koneksi.lastError().text();
   }
}


//=========== HAPUS ===========

void backendHukum::hapusPengunjung(QString pnik_pengunjung)
{
    QSqlQuery hapus(koneksi);

    hapus.prepare("DELETE FROM pengunjung WHERE nik_pengunjung=?");
    hapus.bindValue(0, pnik_pengunjung);


   if(hapus.exec()){
       qDebug()<<"Data Pengunjung Berhasil Dihapus";
   }else{
       qDebug()<<koneksi.lastError().text();
   }
}

bool backendHukum::duplikasiData2(QString namatabel, QString primarykey, QString isiprimary)
{
    bool hasil=false;
    QSqlQueryModel cari;
    cari.setQuery("SELECT*from "+ namatabel+" WHERE "+ primarykey+"='"+isiprimary+"'");
    QSqlRecord data=cari.record();


    if (cari.rowCount()<1){
        hasil=false;
    }else{
        hasil=true;
        tempNama_P=cari.record(0).value(1).toString();
        tempJenisKelamin_P=cari.record(0).value(2).toString();
        tempNarapidanaDikunjungi=cari.record(0).value(3).toString();
        tempTglKunjungan=cari.record(0).value(4).toString();
        tempAlamat_P=cari.record(0).value(5).toString();


    }
    return hasil;

   }

   QString backendHukum::getNamaPengunjung()
   {
       return tempNama_P;
   }

   QString backendHukum::getJenisKelamin_P()
   {
       return tempJenisKelamin_P;
   }

   QString backendHukum::getNarapidanaDikunjungi()
   {
       return tempNarapidanaDikunjungi;
   }

   QString backendHukum::getTanggalKunjungan()
   {
       return tempTglKunjungan;
   }

   QString backendHukum::getAlamat_P()
   {
       return tempAlamat_P;
   }


/*================= DATA NARAPIDANA ===================*/


void backendHukum::simpanNarapidana(QString pnik_narapidana, QString pnama_narapidana, QString pjenis_kelamin, QString ptgl_lahir, QString pkasus, QString palamat, QString pmasa_tahanan, QString ptanggal_masuk, QString ptanggal_bebas)
{
 QSqlQuery simpan(koneksi);

 simpan.prepare("INSERT INTO narapidana VALUES(?,?,?,?,?,?,?,?,?)");

 simpan.bindValue(0, pnik_narapidana);
 simpan.bindValue(1, pnama_narapidana);
 simpan.bindValue(2, pjenis_kelamin);
 simpan.bindValue(3, ptgl_lahir);
 simpan.bindValue(4, pkasus);
 simpan.bindValue(5, palamat);
 simpan.bindValue(6, pmasa_tahanan);
 simpan.bindValue(7, ptanggal_masuk);
 simpan.bindValue(8, ptanggal_bebas);


if(simpan.exec()){
    qDebug()<<"Data Narapidana Berhasil Disimpan";
}else{
    qDebug()<<koneksi.lastError().text();
}
}

//=========== EDIT ===========

void backendHukum::editNarapidana(QString pnik_narapidana, QString pnama_narapidana, QString pjenis_kelamin, QString ptgl_lahir, QString pkasus, QString palamat, QString pmasa_tahanan, QString ptanggal_masuk, QString ptanggal_bebas)
{
    QSqlQuery edit(koneksi);

    edit.prepare("UPDATE narapidana SET nama_narapidana=?, jenis_kelamin=?, tgl_lahir=?, kasus=?, alamat=?, masa_tahanan=?, tanggal_masuk=?, tanggal_bebas=? WHERE nik_narapidana=?");


    edit.bindValue(0, pnama_narapidana);
    edit.bindValue(1, pjenis_kelamin);
    edit.bindValue(2, ptgl_lahir);
    edit.bindValue(3, pkasus);
    edit.bindValue(4, palamat);
    edit.bindValue(5, pmasa_tahanan);
    edit.bindValue(6, ptanggal_masuk);
    edit.bindValue(7, ptanggal_bebas);
    edit.bindValue(8, pnik_narapidana);


   if(edit.exec()){
       qDebug()<<"Data Narapidana Berhasil Diedit";
   }else{
       qDebug()<<koneksi.lastError().text();
   }
}


//=========== HAPUS ===========

void backendHukum::hapusNarapidana(QString pnik_narapidana)
{
    QSqlQuery hapus(koneksi);

    hapus.prepare("DELETE FROM narapidana WHERE nik_narapidana=?");
    hapus.bindValue(0, pnik_narapidana);


   if(hapus.exec()){
       qDebug()<<"Data Narapidana Berhasil Dihapus";
   }else{
       qDebug()<<koneksi.lastError().text();
   }
}


bool backendHukum::duplikasiData3(QString namatabel, QString primarykey, QString isiprimary)
{
 bool hasil=false;
 QSqlQueryModel cari;
 cari.setQuery("SELECT*from "+ namatabel+" WHERE "+ primarykey+"='"+isiprimary+"'");
 QSqlRecord data=cari.record();


 if (cari.rowCount()<1){
     hasil=false;
 }else{
     hasil=true;
     tempNama_N=cari.record(0).value(1).toString();
     tempJenisKelamin_N=cari.record(0).value(2).toString();
     tempTglLahir_N=cari.record(0).value(3).toString();
     tempKasus=cari.record(0).value(4).toString();
     tempAlamat_N=cari.record(0).value(5).toString();
     tempMasaTahanan=cari.record(0).value(6).toString();
     tempTglMasuk=cari.record(0).value(7).toString();
     tempTglBebas=cari.record(0).value(8).toString();

 }
 return hasil;

}

QString backendHukum::getNamaNarapidana()
{
    return tempNama_N;
}

QString backendHukum::getJenisKelamin_N()
{
    return tempJenisKelamin_N;
}

QString backendHukum::getTglLahir()
{
    return tempTglLahir_N;
}

QString backendHukum::getKasus()
{
    return tempKasus;
}

QString backendHukum::getAlamat_N()
{
    return tempAlamat_N;
}

QString backendHukum::getMasaTahanan()
{
    return tempMasaTahanan;
}

QString backendHukum::getTglMasuk()
{
    return tempTglMasuk;
}

QString backendHukum::getTglBebas()
{
    return tempTglBebas;
}
