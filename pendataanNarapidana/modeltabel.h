#ifndef MODELTABEL_H
#define MODELTABEL_H

#include <QObject>
#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QSqlField>

class modeltabel : public QSqlQueryModel
{
    Q_OBJECT
public:
    modeltabel();
    void setQuery(const QString &query, const QSqlDatabase &db = QSqlDatabase());
    void setQuery(const QSqlQuery &query);

    QVariant data(const QModelIndex &index, int role) const;
    QHash<int, QByteArray> roleNames() const;

    Q_INVOKABLE void callSql(QString queryString);
    Q_INVOKABLE QVariant headerDataSipir(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const; //header table
    Q_INVOKABLE QVariant headerDataPengunjung(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const; //header table
    Q_INVOKABLE QVariant headerDataNarapidana(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const; //header table
private:
    void generateRoleNames();
    QHash<int, QByteArray> m_roleNames;

};


#endif // MODELTABEL_H
