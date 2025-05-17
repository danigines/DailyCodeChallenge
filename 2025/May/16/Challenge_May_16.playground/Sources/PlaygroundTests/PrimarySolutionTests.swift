import Foundation

public struct PrimarySolutionTests {
  public static func runTests() {
    let nodeLocal = PrimarySolution.sideNode_LocalExample
    let nodeLocalSerialized = PrimarySolution.serialize(nodeLocal)
    let nodeLocalDeserialized = PrimarySolution.deserialize(nodeLocalSerialized)
    let isEqualNodeLocal = nodeLocalDeserialized == nodeLocal
    let leftValueInLeftNodeAreEquals = nodeLocalDeserialized?.left?.left?.val == "left.left"
    print("🟢 Primary Solution -> Node by init: \(nodeLocal)")
    print("  ➡️ Serialized Node: \(nodeLocalSerialized)")
    print("  ➡️ Deserialized Node: \(String(describing: nodeLocalDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeLocal)")
    print("  ➡️ leftValueInLeftNodeAreEquals: \(leftValueInLeftNodeAreEquals)")

    let nodeJSON = PrimarySolution.letterNode_JSONExample
    let nodeJSONSerialized = PrimarySolution.serialize(nodeJSON)
    let nodeJSONDeserialized = PrimarySolution.deserialize(nodeJSONSerialized)
    let isEqualNodeJSON = nodeJSONDeserialized == nodeJSON
    let leftLetterInLeftNodeAreEquals = nodeJSONDeserialized?.left?.left?.val == "D"
    print("🟢 Primary Solution -> Node by JSON: \(String(describing: nodeJSON))")
    print("  ➡️ Serialized Node: \(nodeJSONSerialized)")
    print("  ➡️ Deserialized Node: \(String(describing: nodeJSONDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeJSON)")
    print("  ➡️ leftLetterInLeftNodeAreEquals: \(leftLetterInLeftNodeAreEquals)")
  }
}
