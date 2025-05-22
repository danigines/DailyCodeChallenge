import Foundation

public class XORLinkedList {
    private var memory = [Int: Node]() // Simulated memory
    private var head: Node?
    private var tail: Node?

    public func add(_ value: Int) {
        let newNode = Node(value)
        let newAddr = getPointer(newNode)
        memory[newAddr] = newNode

        if let tailNode = tail {
            let tailAddr = getPointer(tailNode)
            newNode.both = tailAddr
            tailNode.both ^= newAddr // Updates the tail to point to new node using XOR
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }

    public func get(_ index: Int) -> Node? {
        if index < 0 || head == nil { return nil }
        var prevAddr = 0
        var current = head!
        var currentAddr = getPointer(current)

        for _ in 0..<index {
            let nextAddr = prevAddr ^ current.both // Recovers next address using XOR math
            guard let next = dereferencePointer(nextAddr) else {
                return nil
            }
            prevAddr = currentAddr
            current = next
            currentAddr = nextAddr
        }

        return current
    }

    // MARK: - Simulated Memory Helpers
    private func getPointer(_ node: Node) -> Int {
        // Gets a unique ID for each node (acts like memory address)
        return ObjectIdentifier(node).hashValue
    }

    private func dereferencePointer(_ address: Int) -> Node? {
        // Mimics dereferencing a pointer
        return memory[address]
    }
}
/* MARK: - Complexity - Solution
| 💻 Operation | ⏱️ Time | 🚀 Space                        |
| ------------ | ------- | ------------------------------- |
| add()        | O(1)    |  O(1)                           |
| get()        | O(n)    |  O(n) - for simulated           |
|              |         |   memory dictionary             |
| Memory       | N/A     |  O(n) for simulated pointer map |
*/
