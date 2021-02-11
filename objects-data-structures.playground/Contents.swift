// MARK: - Data Abstraction

// concrete point
public struct Point {
    public var x: Double
    public var y: Double
}

// abstract point
public protocol PointType {
    func getX() -> Double
    func getY() -> Double
    func setCartesian(x: Double, y: Double) -> Void
    func getR() -> Double
    func getTheta() -> Double
    func setPolar(r: Double, tetha: Double) -> Void
}

// concrete Vehicle
public protocol Vehicle {
    func getFuelTankCapacityInGallons() -> Double
    func getGallonsOfGasoline() -> Double
}

// abstract Vehicle
public protocol AbstractVehicle {
    func getPercentFuelRemaining() -> Double
}

// MARK: - Data/Object Anti-Symmetry

// polymorphic Shapes
public protocol Shape {
    func area() -> Double
}

public struct Sqare: Shape {
    private var topLeft: Point
    private var side: Double
    
    public func area() -> Double {
        return side * side
    }
}

public struct Rectangle: Shape {
    private var topLeft: Point
    private var height: Double
    private var width: Double

    public func area() -> Double {
        return height * width
    }
}

public struct Circle: Shape {
    private var center: Point
    private var radius: Double
    private let PI = 3.141592653589793

    public func area() -> Double {
        return PI * radius * radius
    }
}
