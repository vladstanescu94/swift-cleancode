public struct Money {
    
}

public enum EmployeeType {
    case COMMISSIONED
    case HOURLY
    case SALARIED
}

public struct Employee {
    public let type: EmployeeType
}

public func calculatePay(e: Employee) throws -> Money {
    switch e.type {
    case .COMMISSIONED:
        return calculateCommissionedPay(e)
    case .HOURLY:
        return calculateHourlyPay(e)
    case .SALARIED:
        return calculateSalariedPay(e)
    }
}

public func calculateCommissionedPay(_ e: Employee) -> Money { return Money() }
public func calculateHourlyPay(_ e: Employee) -> Money { return Money() }
public func calculateSalariedPay(_ e: Employee) -> Money { return Money() }
