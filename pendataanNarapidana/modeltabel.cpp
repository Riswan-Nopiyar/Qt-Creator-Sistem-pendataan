#include "modeltabel.h"
#include "qsqlrecord.h"

modeltabel::modeltabel()
{

}

void modeltabel::setQuery(const QString &query, const QSqlDatabase &db)
{
    QSqlQueryModel::setQuery(query, db);
    generateRoleNames();
}

void modeltabel::setQuery(const QSqlQuery &query)
{
    QSqlQueryModel::setQuery(query);
    generateRoleNames();
}

QVariant modeltabel::data(const QModelIndex &index, int role) const
{
    QVariant value;

        if(role < Qt::UserRole) {
            value = QSqlQueryModel::data(index, role);
        }
        else {
            int columnIdx = role - Qt::UserRole - 1;
            QModelIndex modelIndex = this->index(index.row(), columnIdx);
            value = QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
        }
        return value;
}

QHash<int, QByteArray> modeltabel::roleNames() const
{
    return {{Qt::DisplayRole, "display"}};
}

void modeltabel::callSql(QString queryString)
{
    this->setQuery(queryString);
}

QVariant modeltabel::headerDataSipir(int section, Qt::Orientation orientation, int role) const
{
    if(role == Qt::DisplayRole)
        {
            if(orientation == Qt::Horizontal)
            {
                switch (section)
                {
                case 0:
                    return tr("NIK Sipir");
                case 1:
                    return tr("Nama Sipir");
                case 2:
                    return tr("Jenis Kelamin");
                case 3:
                    return tr("Tanggal Lahir");
                case 4:
                    return tr("Jabatan");
                case 5:
                    return tr("Gaji");
                case 6:
                    return tr("Alamat");
                }
            }
        }
        return QVariant();
}

QVariant modeltabel::headerDataPengunjung(int section, Qt::Orientation orientation, int role) const
{
    if(role == Qt::DisplayRole)
        {
            if(orientation == Qt::Horizontal)
            {
                switch (section)
                {
                case 0:
                    return tr("NIK Pengunjung");
                case 1:
                    return tr("Nama Pengunjung");
                case 2:
                    return tr("Jenis Kelamin");
                case 3:
                    return tr("Narapidana yg Dikunjungi");
                case 4:
                    return tr("Tanggal Kunjungan");
                case 5:
                    return tr("Alamat");
                }
            }
        }
        return QVariant();
}

QVariant modeltabel::headerDataNarapidana(int section, Qt::Orientation orientation, int role) const
{
    if(role == Qt::DisplayRole)
        {
            if(orientation == Qt::Horizontal)
            {
                switch (section)
                {
                case 0:
                    return tr("NIK Narapidana");
                case 1:
                    return tr("Nama Narapidana");
                case 2:
                    return tr("Jenis Kelamin");
                case 3:
                    return tr("Tanggal Lahir");
                case 4:
                    return tr("Kasus");
                case 5:
                    return tr("Alamat");
                case 6:
                    return tr("Masa Tahanan");
                case 7:
                    return tr("Tanggal Masuk");
                case 8:
                    return tr("Tanggal Bebas");
                }
            }
        }
        return QVariant();
}

void modeltabel::generateRoleNames()
{
    m_roleNames.clear();
        for( int i = 0; i < record().count(); i ++) {
            m_roleNames.insert(Qt::UserRole + i + 1, record().fieldName(i).toUtf8());
        }
}
