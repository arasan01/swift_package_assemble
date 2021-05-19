import Foundation

public struct SPM {
    let name: String
    
    public init(name: String) {
        self.name = name
    }
    
    public func say(hello: String) -> String {
        return "Ω＼ζ°) \(name): \(hello)"
    }
}
