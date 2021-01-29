import Foundation
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

// MARK: - Explanation of Intent

struct WikiPagePath {
    var names: [String]
}

let names = ["name1", "name2"]

func compareTo(o: Any) -> Int {
    if let obj = o as? WikiPagePath {
        let compressedName = names.joined(separator: "")
        let compressedArgumentNmae = obj.names.joined(separator: "")
        return compressedName == compressedArgumentNmae ? 1 : 0
    }
    return 1 // we are greater because we are the right type
}

// MARK: - Redundant Comments

enum MyError: Error { case error }
let closed = false

// Utility method that returns when this.closed is true. Throws an exception if the timeout is reached
func waitForClose(timeoutMillis: Double) throws {
    if !closed {
        Thread.sleep(forTimeInterval: timeoutMillis)
        if !closed {
            throw MyError.error
        }
    }
}
