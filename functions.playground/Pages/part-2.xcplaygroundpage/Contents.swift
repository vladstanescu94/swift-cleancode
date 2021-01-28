//: [Previous](@previous)

// MARK: - Prefer Exceptions to Returning Error Codes
enum ErrorCodes: Error {
    case OK
    case ERROR
}

struct Name {
    func makeKey() { }
}

struct Page {
    let name: Name
}

struct Registry {
    func deleteReference(_ ref: Any) -> ErrorCodes {
        return ErrorCodes.OK
    }
}

struct ConfigKeys {
    func deleteKey(_ key: Any) -> ErrorCodes {
        return ErrorCodes.OK
    }
}

struct Logger {
    func log(_ message: String) {
        print(message)
    }
}

let registry = Registry()
let configKeys = ConfigKeys()
let logger = Logger()
let page = Page(name: Name())

func deletePage(page: Page) -> ErrorCodes { return ErrorCodes.OK }

func delete() -> ErrorCodes {
    if deletePage(page: page) == ErrorCodes.OK {
        if registry.deleteReference(page.name) == ErrorCodes.OK {
            if configKeys.deleteKey(page.name.makeKey()) == ErrorCodes.OK {
                logger.log("page deleted")
            } else {
                logger.log("configKey not deleted")
            }
        } else {
            logger.log("deleteReference from registry failed")
        }
    } else {
        logger.log("delete failed")
        return ErrorCodes.ERROR
    }
    return ErrorCodes.OK
}


//: [Next](@next)
