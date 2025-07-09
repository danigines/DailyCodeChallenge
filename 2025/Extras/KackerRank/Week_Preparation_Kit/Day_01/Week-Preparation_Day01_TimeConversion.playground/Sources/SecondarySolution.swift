import Foundation

public struct SecondarySolution {
  /// Converts time format using DateFormatter (less manual, more flexible)
  private static func convertToMilitaryTimeFormatter(_ s: String) -> String {
    let inputFormatter = DateFormatter()
    inputFormatter.dateFormat = "hh:mm:ssa"   // 'a' = AM/PM
    inputFormatter.locale = Locale(identifier: "en_US_POSIX")

    let outputFormatter = DateFormatter()
    outputFormatter.dateFormat = "HH:mm:ss"   // 24-hour format

    if let date = inputFormatter.date(from: s) {
      return outputFormatter.string(from: date)
    } else {
      return "It was not possible to make the conversion" // Fallback if parsing fails (shouldn't happen with valid input)
    }
  }

  public static func runExample(with dataExamples: [String]) {
    print("\n\n* * * * * * * * * * * * * *  SECONDARY SOLUTION  * * * * * * * * * * * * * *")
    for example in dataExamples {
      print(" 🔵 Conversion result for \(example) is: '\(convertToMilitaryTimeFormatter(example))'")
    }
  }
}

/* MARK: - Complexity Secondary Solution
⏱️ Time:  O(1)
🚀 Space: Higher (object init)
*/
