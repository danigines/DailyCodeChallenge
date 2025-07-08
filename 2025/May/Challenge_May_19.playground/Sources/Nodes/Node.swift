import Foundation

public class Node {
    public let value: Int
    public var both: Int = 0 // XOR of prev and next node addresses

    public init(_ value: Int) {
        self.value = value
    }
}
