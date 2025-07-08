import Foundation

public struct RichSolutionTests {
  public static func runTests() {
    let nodeLocal = CodableAlternativeSolution.richNode_LocalExample
    let nodeLocalSerialized = CodableAlternativeSolution.serialize(nodeLocal)
    let nodeLocalDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: RichNode.self)
    let isEqualNodeLocal = nodeLocalDeserialized == nodeLocal
    let childrenValueInChildrenNodeAreEquals = nodeLocalDeserialized?.children?[0].name == "Header"
    print("\n\n🟣 Rich Solution -> Node by init: \(nodeLocal)")
    print("  ➡️ Serialized Node: \(String(describing: nodeLocalSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeLocalDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeLocal)")
    print("  ➡️ childrenValueInChildrenNodeAreEquals: \(childrenValueInChildrenNodeAreEquals)")

    let nodeJSON = CodableAlternativeSolution.richNode_JSONExample
    let nodeJSONSerialized = CodableAlternativeSolution.serialize(nodeJSON)
    let nodeJSONDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: RichNode.self)
    let isEqualNodeJSON = nodeJSONDeserialized == nodeJSON
    let childrenValueInChildrenJSONAreEquals = nodeLocalDeserialized?.children?[0].name == "Header"
    print("🟣 Rich Solution -> Node by JSON: \(String(describing: nodeJSON))")
    print("  ➡️ Serialized Node: \(String(describing: nodeJSONSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeJSONDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeJSON)")
    print("  ➡️ childrenValueInChildrenJSONAreEquals: \(childrenValueInChildrenJSONAreEquals)")
  }
}
