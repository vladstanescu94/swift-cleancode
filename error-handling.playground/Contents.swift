// MARK: - Use Exceptions Rather Than Return Codes

public enum DeviceHandle {
    case valid
    case invalid
}

func getHandle(for device: Any) -> DeviceHandle { return DeviceHandle.valid }

public struct DeviceRecord {
    func getStatus() -> Int { return 0 }
}

public struct DeviceController {
    let record = DeviceRecord()
    let DEVICE_SUSPENDED = 1
    let DEV1 = "DEV1"
    
    func sendShutDown() {
        let handle = getHandle(for: DEV1)
        
        if handle != DeviceHandle.invalid {
            retrieveDeviceRecord(handle: handle)
            
            if record.getStatus() != DEVICE_SUSPENDED {
                pauseDevice(handle: handle)
                clearDeviceWorkQueue(handle: handle)
                closeDevice(handle: handle)
            } else {
                print("Device suspended. Unable to shut down")
            }
        } else {
            print("Invalid handle for \(DEV1)")
        }
    }
    
    func retrieveDeviceRecord(handle: DeviceHandle) { }
    func pauseDevice(handle: DeviceHandle) { }
    func clearDeviceWorkQueue(handle: DeviceHandle) { }
    func closeDevice(handle: DeviceHandle) { }
}
