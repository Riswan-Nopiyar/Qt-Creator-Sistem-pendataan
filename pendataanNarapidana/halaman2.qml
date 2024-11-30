import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Controls.Material 2.12

Page {
    SwipeView{
        id: menuSwipe
        width: parent.width
        height: parent.height

    Pengunjung1{

    }

    Pengunjung2{

    }


}

PageIndicator{
    id: viewIndicator
    anchors.bottom: menuSwipe.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    count: menuSwipe.count
}

footer:TabBar{
    id: menutabBar
    TabButton{
    id: btnitem1
    text: "Table"
    font.bold: true
    font.pixelSize: 18
    onClicked: {
        menuSwipe.currentIndex=0
    }
    }

    TabButton {
        id: btnitem2
        text: "Input"
        font.bold: true
        font.pixelSize: 17
        onClicked: {
            menuSwipe.currentIndex=1
    }
}

}
}
