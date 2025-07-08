import Foundation

final public class BruteForceAutocompleteSystem: AutocompleteProvider {
    private var dictionary: [String] = []

    public func buildDictionary(_ words: [String]) {
        dictionary = words
    }

    public func autocomplete(_ prefix: String) -> [String] {
        return dictionary.filter { $0.hasPrefix(prefix) }
    }
}
