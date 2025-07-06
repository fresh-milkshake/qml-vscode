// Import necessary QML modules
import QtQuick 2.15
import QtQuick.Controls 2.15

// Main application window
ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Highlighting Example")

    // Example function to demonstrate QML function syntax
    function incrementCounter() {
        counter.text = parseInt(counter.text) + 1
        console.log("Counter incremented to:", counter.text)
    }

    // Function to reset counter
    function resetCounter() {
        counter.text = "0"
        console.log("Counter reset")
    }

    // Arrange components vertically
    Column {
        anchors.centerIn: parent
        spacing: 20

        // Title label
        Text {
            id: titleLabel
            text: qsTr("Welcome to QML Syntax Highlighting Example")
            font.pixelSize: 24
            font.bold: true
            color: "darkblue"
        }

        // Clickable button
        Button {
            id: clickMeButton
            text: qsTr("Click me!")
            onClicked: {
                // Use the function to increment counter
                incrementCounter()
            }
        }

        // Reset button
        Button {
            id: resetButton
            text: qsTr("Reset")
            onClicked: {
                // Use the function to reset counter
                resetCounter()
            }
        }

        // Counter display
        Text {
            id: counter
            text: "0"
            font.pixelSize: 18
            color: "red"
        }
    }

    /*
        Establish connections between QML components
        and C++ objects, e.g., for handling signals
    */
    Connections {
        target: someCppObject
        onSomeSignal: {
            // Log a message when a signal is received from the C++ object
            console.log("Signal received from C++ object")

            // Use the function to increment counter when a signal is received
            incrementCounter()
        }
    }
}
