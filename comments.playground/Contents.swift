// MARK: - Explain Yourself in Code

let HOURLY_FLAG: Bool = true
struct Employee {
    var flags: Bool
    var age: Int
}

var employee = Employee(flags: true, age: 20)

// Check to see if the employee is eligible for full benefits
if (employee.flags && HOURLY_FLAG) && (employee.age > 65) {
    
}
