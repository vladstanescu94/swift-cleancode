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
