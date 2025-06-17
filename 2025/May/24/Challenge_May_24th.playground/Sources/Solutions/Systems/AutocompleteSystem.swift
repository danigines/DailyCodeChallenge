import Foundation

//Efficient for large-scale querying with repeated lookups.
final public class TrieAutocompleteSystem: AutocompleteProvider {
    private let root = TrieNode()

    // MARK: Insert words into Trie
    public func buildDictionary(_ words: [String]) {
        for word in words {
            insert(word)
        }
    }

    /// Builds a prefix tree in O(N) time.
    private func insert(_ word: String) {
        var node = root
        for char in word {
            if node.children[char] == nil {
                node.children[char] = TrieNode()
            }
            node = node.children[char]!
        }
        node.isWord = true
    }

    // MARK: Query prefix
    public func autocomplete(_ prefix: String) -> [String] {
        var node = root
        for char in prefix {
            guard let next = node.children[char] else {
                return []
            }
            node = next
        }
        var results: [String] = []
        dfs(node, prefix, &results)
        return results
    }

    ///Traverses prefix, then runs DFS to collect words.
    private func dfs(_ node: TrieNode, _ path: String, _ results: inout [String]) {
        if node.isWord {
            results.append(path)
        }
        for (char, child) in node.children {
            dfs(child, path + String(char), &results)
        }
    }
}
