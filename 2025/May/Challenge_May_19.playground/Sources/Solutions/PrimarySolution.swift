import Foundation

public struct PrimarySolution {
  private static var dataExamples: [XORLinkedList] = []
  private static var nodeValues: Set<Int> = {
      let numOfNodes = Int.random(in: 2...5)
      var nodeValuesData = Set<Int>()
      while nodeValuesData.count < numOfNodes {
          nodeValuesData.insert(Int.random(in: 1...100))
      }
      return nodeValuesData
  }()

  private static func setupDataExample() {
    for _ in 0..<Int.random(in: 1...3) {
      let list = XORLinkedList()
      for value in nodeValues {
        list.add(value)
      }
      dataExamples.append(list)
    }
  }

  public static func runExample() {
    setupDataExample()
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    for linkedList in dataExamples {
      print("\n 🟢 XORLinkedList.get(0).value: \(String(describing: linkedList.get(0)?.value))")
      print(" 🟢 XORLinkedList.get(1).value: \(String(describing: linkedList.get(1)?.value))")
      print(" 🟢 XORLinkedList.get(2).value: \(String(describing: linkedList.get(2)?.value))")
      print(" 🟢 XORLinkedList.get(3).value: \(String(describing: linkedList.get(3)?.value))")
    }
  }
}
