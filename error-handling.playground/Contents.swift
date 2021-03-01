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

struct LocalPort {
    private var innerPort: ACMEPort
    
    init(portNumber: Int) {
        innerPort = ACMEPort(number: portNumber)
    }
    
    func open() throws {
        do {
            try innerPort.open()
        } catch PortError.DeviceResponseException {
            throw LocalPortError.DeviceFailure
        } catch PortError.ATM1212UnlockedException {
            throw LocalPortError.DeviceFailure
        } catch PortError.GMXError {
            throw LocalPortError.DeviceFailure
        }
    }
}

enum PortError: Error {
    case DeviceResponseException
    case ATM1212UnlockedException
    case GMXError
}

enum LocalPortError: Error {
    case DeviceFailure
}

var port = LocalPort(portNumber: 12)

func reportPortError(e: LocalPortError) { }

do {
    try port.open()
} catch LocalPortError.DeviceFailure {
    reportPortError(e: LocalPortError.DeviceFailure)
    print("Error")
}
