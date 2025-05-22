import Foundation

public struct SecondarySolution {
  private static var dataExamples: [DoublyLinkedList] = []
  private static func setupDataExample() {
    for _ in 0..<Int.random(in: 1...3) {
      let list = DoublyLinkedList()
      for _ in 0..<Int.random(in: 1...4) {
        list.add(Int.random(in: 1...100))
      }
      dataExamples.append(list)
    }
  }

  public static func runExample() {
    setupDataExample()
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    for linkedList in dataExamples {
      print("\n 🟡 DoublyLinkedList.get(0).value: \(String(describing: linkedList.get(0)?.value))")
      print(" 🟡 DoublyLinkedList.get(1).value: \(String(describing: linkedList.get(1)?.value))")
      print(" 🟡 DoublyLinkedList.get(2).value: \(String(describing: linkedList.get(2)?.value))")
      print(" 🟡 DoublyLinkedList.get(3).value: \(String(describing: linkedList.get(3)?.value))")
    }
  }
}
