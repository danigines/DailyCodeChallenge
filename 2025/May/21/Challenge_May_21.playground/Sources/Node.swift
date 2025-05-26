import Foundation

public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?

    public init(_ val: Int, _ left: Node? = nil, _ right: Node? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}
