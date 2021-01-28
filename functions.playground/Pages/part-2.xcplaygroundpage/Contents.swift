//: [Previous](@previous)

// MARK: - Prefer Exceptions to Returning Error Codes
enum ErrorCodes: Error {
    case ERROR
}

struct Name {
    func makeKey() { }
}

struct Page {
    let name: Name
}

struct Registry {
    func deleteReference(_ ref: Any) throws {
        throw ErrorCodes.ERROR
    }
}

struct ConfigKeys {
    func deleteKey(_ key: Any) throws {
        throw ErrorCodes.ERROR
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

func deletePage(page: Page) throws { throw ErrorCodes.ERROR }

func delete() {
    do {
        try deletePage(page: page)
        try registry.deleteReference(page.name)
        try configKeys.deleteKey(page.name.makeKey())
    } catch ErrorCodes.ERROR {
        print("Delete failed")
    } catch {
        print("Unexpected error \(error)")
    }
}


//: [Next](@next)
