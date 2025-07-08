import Foundation

public class DoubleNode {
    public let value: Int
    public var prev: DoubleNode?
    public var next: DoubleNode?

    public init(_ value: Int) {
        self.value = value
    }
}
