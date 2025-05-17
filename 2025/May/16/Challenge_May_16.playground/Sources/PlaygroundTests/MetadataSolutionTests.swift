import Foundation

public struct MetadataSolutionTests {
  public static func runTests() {
    let nodeLocal = CodableAlternativeSolution.metadataNode_LocalExample
    let nodeLocalSerialized = CodableAlternativeSolution.serialize(nodeLocal)
    let nodeLocalDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: NodeWithMetadata.self)
    let isEqualNodeLocal = nodeLocalDeserialized == nodeLocal
    let leftLabelInLeftNodeAreEquals = nodeLocalDeserialized?.left?.label == "left"
    print("\n\n🔵 Metadata Solution -> Node by init: \(nodeLocal)")
    print("  ➡️ Serialized Node: \(String(describing: nodeLocalSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeLocalDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeLocal)")
    print("  ➡️ leftLabelInLeftNodeAreEquals: \(leftLabelInLeftNodeAreEquals)")

    let nodeJSON = CodableAlternativeSolution.metadataNode_JSONExample
    let nodeJSONSerialized = CodableAlternativeSolution.serialize(nodeJSON)
    let nodeJSONDeserialized = CodableAlternativeSolution.deserialize(nodeLocalSerialized, as: NodeWithMetadata.self)
    let isEqualNodeJSON = nodeJSONDeserialized == nodeJSON
    let leftLabelInLeftJSONAreEquals = nodeLocalDeserialized?.left?.label == "left"
    print("🔵 Metadata Solution -> Node by JSON: \(String(describing: nodeJSON))")
    print("  ➡️ Serialized Node: \(String(describing: nodeJSONSerialized))")
    print("  ➡️ Deserialized Node: \(String(describing: nodeJSONDeserialized))")
    print("  ➡️ isEqualNode: \(isEqualNodeJSON)")
    print("  ➡️ leftLabelInLeftJSONAreEquals: \(leftLabelInLeftJSONAreEquals)")
  }
}
