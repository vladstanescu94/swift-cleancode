public struct Money {
    
}

public enum EmployeeType {
    case COMMISSIONED
    case HOURLY
    case SALARIED
}

public struct EmployeeRecord {
    var type: EmployeeType
}

public protocol Employee {
    func isPayday() -> Bool
    func calculatePay() -> Money
    func deliverPay(pay: Money)
}

extension Employee {
    func isPayday() -> Bool {
        return true
    }
    
    func calculatePay() -> Money {
        return Money()
    }
    
    func deliverPay(pay: Money) {
        return
    }
}

public protocol EmployeeFactory {
    func makeEmployee(r: EmployeeRecord) -> Employee
}

struct CommisionedEmployee: Employee {
    var r: EmployeeRecord
}

struct HourlyEmployee: Employee {
    var r: EmployeeRecord
}

struct SalariedEmployee: Employee {
    var r: EmployeeRecord
    
}

class EmployeeFactoryImpl: EmployeeFactory {
    func makeEmployee(r: EmployeeRecord) -> Employee {
        switch r.type {
        case .COMMISSIONED:
            return CommisionedEmployee(r: r)
        case .HOURLY:
            return HourlyEmployee(r: r)
        case .SALARIED:
            return SalariedEmployee(r: r)
        }
    }
}

// MARK: - Have no side effects

class Session {
    static func initialize() {
        return
    }
}

struct Cryptographer {
    func decrypt(codedPhrase: String, password: String) -> String {
        return ""
    }
}
enum UserType {
    case VALID
    case NULL
}
struct User {
    let type: UserType
    
    func getPhraseEncodedByPassword() -> String {
        return ""
    }
}
class UserGateway {
    static func findByName(userName: String) -> User {
        return User(type: .VALID)
    }
}

struct UserValidator {
    private var cryptographer: Cryptographer
    
    public func checkPassword(userName: String, password: String) -> Bool {
        let user = UserGateway.findByName(userName: userName)
        if user.type != UserType.NULL {
            let codedPhrase = user.getPhraseEncodedByPassword()
            let phrase = cryptographer.decrypt(codedPhrase: codedPhrase, password: password)
            if "Valid Password" == phrase {
                Session.initialize()
                return true
            }
        }
        return false
    }
}

// MARK: - Command Query Separation

//Bad way
func set(attribute: String, value: String) -> Bool { return true }

if set(attribute: "username", value: "vlad") { }

//Better way
func setAttribute(attribute: String, value:String) { }
func attributeExists(attribute: String) -> Bool { return true }

if attributeExists(attribute: "username") {
    setAttribute(attribute: "username", value: "Vlad")
}

