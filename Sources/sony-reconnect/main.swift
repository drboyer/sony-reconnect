import IOBluetooth

var deviceMapping: [String:String] = [:]

var targetDeviceName = "WH-1000XM3";

IOBluetoothDevice.pairedDevices().forEach({(device) in
    guard let device = device as? IOBluetoothDevice,
        let deviceName = device.name,
        let addressString = device.addressString
        else { return }
    
    deviceMapping[deviceName] = addressString;
})

var targetDevice = deviceMapping[targetDeviceName] ?? "unknown";

guard let bluetoothDevice = IOBluetoothDevice(addressString: targetDevice) else {
    print("Error reconnecting \(targetDevice)");
    exit(1)
}

if bluetoothDevice.isConnected() {
    print("Reconnecting \(targetDeviceName)")
    bluetoothDevice.closeConnection()
    bluetoothDevice.openConnection()
    print("Device reconnected")
} else {
    print("\(targetDeviceName) is not currently connected. Nothing to do.")
}
