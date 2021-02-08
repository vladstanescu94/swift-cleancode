// MARK: - Vertical Density

public struct Property { }

public struct ReporterConfig {
    /**
        The class name of the reporter listener
     */
    private var m_className: String
    /**
        The properties of the reporter listener
     */
    public var m_properties = [Property]()
    
    public mutating func addProperty(property: Property) {
        m_properties.append(property)
    }
}
