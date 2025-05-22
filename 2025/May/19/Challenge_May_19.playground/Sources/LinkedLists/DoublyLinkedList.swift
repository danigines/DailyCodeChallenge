import Foundation

public class DoublyLinkedList {
    private var head: DoubleNode?
    private var tail: DoubleNode?

    public func add(_ value: Int) {
        let node = DoubleNode(value)
        if let t = tail {
            t.next = node // Appending new elements to the tail
            node.prev = t // Maintaining backward traversal
        } else {
            head = node
        }
        tail = node
    }

    public func get(_ index: Int) -> DoubleNode? {
        var current = head
        for _ in 0..<index {
            current = current?.next
        }
        return current
    }
}
/* MARK: - Complexity - Solution
| 💻 Operation | ⏱️ Time | 🚀 Space                        |
| ------------ | ------- | ------------------------------- |
| add()        | O(1)    |  O(1)                           |
| get()        | O(n)    |  O(n) - for simulated           |
| Memory       |    More (2 refs per node)                 |
*/
