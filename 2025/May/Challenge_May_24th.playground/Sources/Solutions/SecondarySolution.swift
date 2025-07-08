import Foundation

public struct SecondarySolution {
    public static func runExample() {
        print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
        let system: AutocompleteProvider = BruteForceAutocompleteSystem()
        system.buildDictionary(["dog", "deer", "deal", "doom", "dare"])

        print(system.autocomplete("de"))  // deer, deal
        print(system.autocomplete("do"))  // dog, doom
        print(system.autocomplete("da"))  // dare
        print(system.autocomplete("x"))   // []

    }
}
/* MARK: - Complexity Secondary Solution
 | Metric               | Brute-force Solution |
 | -------------------- | -------------------- |
 | Build Time           | O(1)                 |
 | Query Time           | O(N * P)             |
 | Space                | O(1)                 |

 N = # of words
 P = prefix length
 R = results
 */
