// MARK: - Explain Yourself in Code

let HOURLY_FLAG: Bool = true
struct Employee {
    var flags: Bool
    var age: Int
    
    func isEligibleForFullBenefits() -> Bool {
        if (self.flags && HOURLY_FLAG) && (self.age > 65) {
            return true
        }
        return false
    }
}

var employee = Employee(flags: true, age: 20)

if employee.isEligibleForFullBenefits() { }

