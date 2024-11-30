import QtQuick 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.3

Flickable {
    contentHeight: 800
    ScrollBar.vertical: ScrollBar {}


   Image {
       source: "Assets/Images/Background_1.jpg"
       width:parent.width
       height:1100
       id: bg_pengunjung
       y:-200

    GroupBox {
        id: formPengunjung
        y:235
        x:40
        width:1290
        height:730
        background: Rectangle {
                color: "#202020"
                border.color: "#000"
                radius: 10
                opacity: 0.90
            }
        Image{
            source: "Assets/Images/Logo_pemasyarakatan.png"
            y:0
            x:543
            height:150
            width:185
            anchors.topMargin: 5000
            id:lmb
        }

    Label{
     id:labelPage
     text: "Table Data Pengunjung"
     y: lmb.y+160
     x: lmb.x-42
     font.pixelSize: 23
     font.bold:true
     color:"yellow"
    }

        GroupBox {
            id: formPengunjung2
            y:230
            x:0
            width:1290
            height:500
            background: Rectangle {
                    color: "transparent"
                }
   TableView {

               id: tableView
               topMargin:columnsHeader.implicitHeight

               columnWidthProvider:function (){return 200}// { return 200 }
               rowHeightProvider: function () { return 20; }
               anchors.fill: parent

               ScrollBar.horizontal: ScrollBar{}
               ScrollBar.vertical: ScrollBar{}
               clip: true

               model: Pengunjung


               // Table Body

               delegate: Rectangle {
                   border.width: 1
                   border.color:"black"
                   color: "#add5ff"
                   Text {
                       text: display
                       anchors.fill: parent
                       anchors.margins: 10
                       color: 'black'
                       font.pixelSize: 15
                       verticalAlignment: Text.AlignVCenter
                   }
               }


               // Table Header

               Row {
                   id: columnsHeader
                   y: tableView.contentY
                   z: 2
                   Repeater {
                       model: tableView.columns > 0 ? tableView.columns : 1
                       Label {
                           width: tableView.columnWidthProvider(modelData)
                           height: 25
//                           text: Pengunjung.headerData(modelData, Qt.Horizontal)
                           text: Pengunjung.headerDataPengunjung(modelData, Qt.Horizontal)
                           font.pixelSize: 15
                           padding: 10
                           verticalAlignment: Text.AlignVCenter

                           background: Rectangle {
                               color: "#1284ff"
                               border.color: "black"
                               border.width: 1
                               radius:5
                           }
                       }
                   }
               }


               ScrollIndicator.horizontal: ScrollIndicator { }
               ScrollIndicator.vertical: ScrollIndicator { }


           }
   }

}// groupbox


}
}
