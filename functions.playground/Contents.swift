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
