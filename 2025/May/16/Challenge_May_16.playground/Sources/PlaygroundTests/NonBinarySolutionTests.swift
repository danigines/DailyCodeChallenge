import Foundation

public struct NonBinarySolutionTests {
  public static func runTests() {
    let nodeLocal = CodableAlternativeSolution.naryNode_LocalExample
    let nodeLocalSerialized = CodableAlternativeSolution.serialize(nodeLocal)
    let nodeLocalDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: NaryNode.self)
    let isEqualNodeLocal = nodeLocalDeserialized == nodeLocal
    let childrenValueInChildrenNodeAreEquals = nodeLocalDeserialized?.children?[0].children == [NaryNode("E"), NaryNode("F")]
    print("\n\n🟠 Non Binary Solution -> Node by init: \(nodeLocal)")
    print("  ➡️ Serialized Node: \(String(describing: nodeLocalSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeLocalDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeLocal)")
    print("  ➡️ childrenValueInChildrenNodeAreEquals: \(childrenValueInChildrenNodeAreEquals)")

    let nodeJSON = CodableAlternativeSolution.naryNode_JSONExample
    let nodeJSONSerialized = CodableAlternativeSolution.serialize(nodeJSON)
    let nodeJSONDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: NaryNode.self)
    let isEqualNodeJSON = nodeJSONDeserialized == nodeJSON
    let childrenValueInChildrenJSONAreEquals = nodeLocalDeserialized?.children![0].children == [NaryNode("E"), NaryNode("F")]
    print("🟠 Non Binary Solution -> Node by JSON: \(String(describing: nodeJSON))")
    print("  ➡️ Serialized Node: \(String(describing: nodeJSONSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeJSONDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeJSON)")
    print("  ➡️ childrenValueInChildrenJSONAreEquals: \(childrenValueInChildrenJSONAreEquals)")
  }
  }
