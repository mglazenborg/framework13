import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    id: root
    width: Screen.width
    height: Screen.height
    color: "#000000"
    
    // Animation sequence (replaces Plymouth's progress-0 to progress-119 images)
    Image {
        id: animatedImage
        x: root.width / 2 - width / 2
        y: root.height / 2 - height / 2
        source: `images/progress-${Math.floor(animationTimer.frame % 120)}.png`
    }
    
    // Animation timer
    Timer {
        id: animationTimer
        property int frame: 0
        running: true
        interval: 50 // Adjust speed as needed
        onTriggered: frame++
    }
    
    // Password input
    Rectangle {
        anchors.centerIn: parent
        width: 300
        height: 150
        color: "#1a1a1a"
        radius: 10
        
        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            
            Text {
                text: "Enter Password"
                color: "white"
                font.pixelSize: 16
                Layout.alignment: Qt.AlignHCenter
            }
            
            TextField {
                id: passwordField
                echoMode: TextInput.Password
                Layout.fillWidth: true
                placeholderText: "Password..."
            }
            
            Button {
                text: "Unlock"
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }
    
    // Message area
    Text {
        id: messageText
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        color: "white"
        font.pixelSize: 14
    }
}
