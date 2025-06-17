import Foundation

protocol AutocompleteProvider {
    func buildDictionary(_ words: [String])
    func autocomplete(_ prefix: String) -> [String]
}
/*
🧠 Benefits of Protocol-Based Design
 • Swappable Implementations (Trie, Brute-force, future Graph-based)
 • Testable: You can inject mocks in unit tests
 • Scalable: Easy to conform other structures to AutocompleteProvider
 • SRP-friendly: Each class has a clear job (Separation of Concerns)
 */
