#ifndef BACKENDHUKUM_H
#define BACKENDHUKUM_H

#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlRecord>
#include <QSqlQueryModel>


class backendHukum : public QObject
{
    Q_OBJECT
public:
    backendHukum();

    /*========= KONEKSI DATABASE ==========*/

    Q_INVOKABLE void connectdb();






    /*========= DATA SIPIR ==========*/

    Q_INVOKABLE void simpanSipir(QString pnik_sipir,
                                 QString pnama_sipir,
                                 QString pjenis_kelamin,
                                 QString ptgl_lahir,
                                 QString pjabatan,
                                 QString pgaji,
                                 QString palamat);

    Q_INVOKABLE void editSipir(QString pnik_sipir,
                                 QString pnama_sipir,
                                 QString pjenis_kelamin,
                                 QString ptgl_lahir,
                                 QString pjabatan,
                                 QString pgaji,
                                 QString palamat);

    Q_INVOKABLE void hapusSipir(QString pnik_sipir);

    Q_INVOKABLE bool duplikasiData(QString namatabel, QString primarykey, QString isiprimary);

    Q_INVOKABLE QString getNamaSipir();
    Q_INVOKABLE QString getJenisKelamin();
    Q_INVOKABLE QString getTanggalLahir();
    Q_INVOKABLE QString getJabatan();
    Q_INVOKABLE QString getGaji();
    Q_INVOKABLE QString getAlamat();



    /*========= DATA PENGUNJUNG ==========*/

    Q_INVOKABLE void simpanPengunjung(QString pnik_pengunjung,
                                      QString pnama_pengunjung,
                                      QString pjenis_kelamin,
                                      QString pnarapidana_dikunjungi,
                                      QString ptanggal_kunjungan,
                                      QString palamat);

    Q_INVOKABLE void editPengunjung(QString pnik_pengunjung,
                                      QString pnama_pengunjung,
                                      QString pjenis_kelamin,
                                      QString pnarapidana_dikunjungi,
                                      QString ptanggal_kunjungan,
                                      QString palamat);

    Q_INVOKABLE void hapusPengunjung(QString pnik_pengunjung);

    Q_INVOKABLE bool duplikasiData2(QString namatabel, QString primarykey, QString isiprimary);

    Q_INVOKABLE QString getNamaPengunjung();
    Q_INVOKABLE QString getJenisKelamin_P();
    Q_INVOKABLE QString getNarapidanaDikunjungi();
    Q_INVOKABLE QString getTanggalKunjungan();
    Q_INVOKABLE QString getAlamat_P();




    /*======== KONEKSI NARAPIDANA ========*/

    Q_INVOKABLE void simpanNarapidana(QString pnik_narapidana,
                                      QString pnama_narapidana,
                                      QString pjenis_kelamin,
                                      QString ptgl_lahir,
                                      QString pkasus,
                                      QString palamat,
                                      QString pmasa_tahanan,
                                      QString ptanggal_masuk,
                                      QString ptanggal_bebas);

    Q_INVOKABLE void editNarapidana(QString pnik_narapidana,
                                      QString pnama_narapidana,
                                      QString pjenis_kelamin,
                                      QString ptgl_lahir,
                                      QString pkasus,
                                      QString palamat,
                                      QString pmasa_tahanan,
                                      QString ptanggal_masuk,
                                      QString ptanggal_bebas);

    Q_INVOKABLE void hapusNarapidana(QString pnik_narapidana);

    Q_INVOKABLE bool duplikasiData3(QString namatabel, QString primarykey, QString isiprimary);

    Q_INVOKABLE QString getNamaNarapidana();
    Q_INVOKABLE QString getJenisKelamin_N();
    Q_INVOKABLE QString getTglLahir();
    Q_INVOKABLE QString getKasus();
    Q_INVOKABLE QString getAlamat_N();
    Q_INVOKABLE QString getMasaTahanan();
    Q_INVOKABLE QString getTglMasuk();
    Q_INVOKABLE QString getTglBebas();


private:
    QSqlDatabase koneksi;
    QSqlQuery* query;
    QString tempNama,tempJenisKelamin,tempTglLahir,tempJabatan,tempGaji,tempAlamat;
    QString tempNama_P,tempJenisKelamin_P,tempNarapidanaDikunjungi,tempTglKunjungan,tempAlamat_P;
    QString tempNama_N,tempJenisKelamin_N,tempTglLahir_N,tempKasus,tempAlamat_N,tempMasaTahanan,tempTglMasuk,tempTglBebas;
};

#endif // BACKENDHUKUM_H
