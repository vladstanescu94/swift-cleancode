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

// procedural shape
public struct Square {
    var topLeft: Point
    var side: Double
}

public struct Rectangle {
    var topLeft: Point
    var height: Double
    var width: Double
}

public struct Circle {
    var center: Point
    var radius: Double
}

enum ShapeError: Error {
    case NoSuchShapeException
}

public struct Geometry {
    let PI = 3.141592653589793
    
    func area(shape: AnyObject) throws -> Double {
        if shape is Square {
            let square = shape as! Square
            return square.side * square.side
        } else if shape is Rectangle {
            let rectangle = shape as! Rectangle
            return rectangle.height * rectangle.width
        } else if shape is Circle {
            let circle = shape as! Circle
            return PI * circle.radius * circle.radius
        }
        throw ShapeError.NoSuchShapeException
    }
}
