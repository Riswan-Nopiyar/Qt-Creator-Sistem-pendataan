import QtQuick 2.12
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
//import dbFile 1.0
import QtQml 2.2



ListView {
    id:myListData
    anchors.fill: parent
    ScrollBar.vertical: ScrollBar {active: true}
    ScrollBar.horizontal: ScrollBar {active: true}
    //interactive: false
    clip: true
    model: sourceModel
    delegate: RowLayout {
        id:mrow
        width: parent.width

        TextField {
            id:mid
            text: id
            visible: false
        }
}}
