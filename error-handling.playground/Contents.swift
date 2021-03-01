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

// MARK: - Define exception classes in terms of a caller's needs

struct ACMEPort {
    let number: Int
    func open() throws { }
}

enum PortError: Error {
    case DeviceResponseException
    case ATM1212UnlockedException
    case GMXError
}

var port = ACMEPort(number: 12)

func reportPortError(e: PortError) { }

do {
    try port.open()
} catch PortError.DeviceResponseException {
    reportPortError(e: PortError.DeviceResponseException)
    print("DeviceResponseException")
} catch PortError.ATM1212UnlockedException {
    reportPortError(e: PortError.ATM1212UnlockedException)
    print("ATM1212UnlockedException")
} catch PortError.GMXError {
    reportPortError(e: PortError.GMXError)
    print("GMXError")
}
