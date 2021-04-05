
Connect the device to the same Wi-Fi as your computer.

Get your device IP address, in Settings → About phone → Status, or by executing this command:

adb shell ip route | awk '{print $9}'
Enable adb over TCP/IP on your device: adb tcpip 5555.

Unplug your device.

Connect to your device: adb connect DEVICE_IP:5555 (replace DEVICE_IP).
