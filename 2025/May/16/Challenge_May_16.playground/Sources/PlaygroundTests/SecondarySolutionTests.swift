import Foundation

public struct SecondarySolutionTests {
  public static func runTests() {
    let nodeLocal = SecondarySolution.sideNode_LocalExample
    let nodeLocalSerialized = SecondarySolution.serialize(nodeLocal)
    let nodeLocalDeserialized = SecondarySolution.deserialize(nodeLocalSerialized)
    let isEqualNodeLocal = nodeLocalDeserialized == nodeLocal
    let leftValueInLeftNodeAreEquals = nodeLocalDeserialized?.left?.left?.val == "left.left"
    print("\n\n🟡 Secondary Solution -> Node by init: \(nodeLocal)")
    print("  ➡️ Serialized Node: \(nodeLocalSerialized)")
    print("  ➡️ Deserialized Node: \(String(describing: nodeLocalDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeLocal)")
    print("  ➡️ leftValueInLeftNodeAreEquals: \(leftValueInLeftNodeAreEquals)")

    let nodeJSON = SecondarySolution.letterNode_JSONExample
    let nodeJSONSerialized = SecondarySolution.serialize(nodeJSON)
    let nodeJSONDeserialized = SecondarySolution.deserialize(nodeJSONSerialized)
    let isEqualNodeJSON = nodeJSONDeserialized == nodeJSON
    let leftLetterInLeftNodeAreEquals = nodeJSONDeserialized?.left?.left?.val == "D"
    print("🟡 Secondary Solution -> Node by JSON: \(String(describing: nodeJSON))")
    print("  ➡️ Serialized Node: \(nodeJSONSerialized)")
    print("  ➡️ Deserialized Node: \(String(describing: nodeJSONDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeJSON)")
    print("  ➡️ leftLetterInLeftNodeAreEquals: \(leftLetterInLeftNodeAreEquals)")
  }
}
