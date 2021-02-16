// MARK: - Use Exceptions Rather Than Return Codes

public enum DeviceError: Error {
    case shutDown
}

struct DeviceHandle { }

public struct DeviceRecord { }



public struct DeviceController {
    let record = DeviceRecord()
    let DEVICE_SUSPENDED = 1
    let DEV1 = "DEV1"
    
    func sendShutDown() {
        do {
            try shutDown()
        } catch DeviceError.shutDown {
            print("ShutDown error")
        } catch {
            print("Error")
        }
    }
    
    func shutDown() throws -> Void {
        let handle = try getHandle(for: DEV1)
        _ = retrieveDeviceRecord(handle: handle)
        
        pauseDevice(handle: handle)
        clearDeviceWorkQueue(handle: handle)
        closeDevice(handle: handle)
    }
    
    func getHandle(for device: Any) throws -> DeviceHandle {
        throw DeviceError.shutDown
    }
    
    func retrieveDeviceRecord(handle: DeviceHandle) -> DeviceRecord { return DeviceRecord() }
    func pauseDevice(handle: DeviceHandle) { }
    func clearDeviceWorkQueue(handle: DeviceHandle) { }
    func closeDevice(handle: DeviceHandle) { }
}
