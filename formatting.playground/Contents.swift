// MARK: - Vertical Density

public struct Property { }

public struct ReporterConfig {
    private var m_className: String
    public var m_properties = [Property]()
    
    public mutating func addProperty(property: Property) {
        m_properties.append(property)
    }
}
