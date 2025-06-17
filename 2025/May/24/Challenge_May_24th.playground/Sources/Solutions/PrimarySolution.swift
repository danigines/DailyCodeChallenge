import Foundation

public struct PrimarySolution {
    public static func runExample() {
        print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
        let system: AutocompleteProvider = TrieAutocompleteSystem()
        system.buildDictionary(["dog", "deer", "deal", "doom", "dare"])

        print(system.autocomplete("de"))  // deer, deal
        print(system.autocomplete("do"))  // dog, doom
        print(system.autocomplete("da"))  // dare
        print(system.autocomplete("x"))   // []
    }
}
/* MARK: - Complexity Primary Solution
 | Metric               | Trie Solution |
 | -------------------- | ------------- |
 | Build Time           | O(N * M)      |
 | Query Time           | O(P + R)      |
 | Space                | O(N * M)      |

 N = # of words
 M = avg word lengt
 P = prefix length
 R = results
 */
