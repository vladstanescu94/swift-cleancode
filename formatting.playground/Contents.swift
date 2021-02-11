// MARK: - Vertical Density

public struct Property { }

public struct ReporterConfig {
    private var m_className: String
    public var m_properties = [Property]()
    
    public mutating func addProperty(property: Property) {
        m_properties.append(property)
    }
}

// Mark: - Dependent functions

func generateSomething(from array: [Int]) -> Int {
    let number = getFirstNumber(from: array)
    let sum = number + getRandomNumber()
    return sum
}

func getFirstNumber(from array: [Int]) -> Int {
    return array[0]
}

func getRandomNumber() -> Int {
    return Int.random(in: 0...10)
}

// MARK: - Conceptual Affinity

public class Assert {
    public static func assertTrue(message: String?, condition: Bool) -> Void {
        if !condition {
            assertionFailure(message ?? "")
        }
    }
    
    public static func assertTrue(condition: Bool) -> Void {
        assertTrue(message: nil, condition: condition)
    }
    
    public static func assertFalse(message: String?, condition: Bool) -> Void {
        assertTrue(message: message, condition: !condition)
    }
    
    public static func assertFalse(condition: Bool) -> Void {
        assertFalse(message: nil, condition: condition)
    }
}
