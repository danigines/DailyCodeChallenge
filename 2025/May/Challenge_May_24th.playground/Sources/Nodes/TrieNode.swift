import Foundation

///A Trie is the most efficient way to perform prefix-based lookups, especially useful for autocompletion systems.
final public class TrieNode {
    public var children: [Character: TrieNode] = [:]
    public var isWord: Bool = false
}
