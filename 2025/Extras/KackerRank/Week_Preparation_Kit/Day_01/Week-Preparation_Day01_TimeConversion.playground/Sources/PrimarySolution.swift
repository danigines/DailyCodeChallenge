import Foundation

public struct PrimarySolution {
  /// Converts 12-hour time format string to 24-hour format
  /// - Parameter s: A time string in the format "hh:mm:ssAM" or "hh:mm:ssPM"
  /// - Returns: A new time string in 24-hour format
  private static func convertToMilitaryTime(_ s: String) -> String {
    // Extract hour, minute, second, and period (AM/PM)
    let hourStr = String(s.prefix(2))     // First two characters → hour
    let period = String(s.suffix(2))      // Last two characters → AM or PM
    let timePart = s.dropLast(2)          // Remove AM/PM from the end
    let hour = Int(hourStr)!

    var convertedHour: String

    if period == "AM" {
      // Special case: 12AM → 00
      convertedHour = hour == 12 ? "00" : String(format: "%02d", hour)
    } else {
      // Special case: 12PM → 12, other PM hours → +12
      convertedHour = hour == 12 ? "12" : String(format: "%02d", hour + 12)
    }

    // Replace the hour part with the converted hour
    let finalTime = convertedHour + timePart.dropFirst(2) // skip original hour
    return String(finalTime)
  }

  public static func runExample(with dataExamples: [String]) {
    print("- - - - - - - - - - - - - - - PRIMARY SOLUTION - - - - - - - - - - - - - - -")
    for example in dataExamples {
      print(" 🟢 Conversion result for \(example) is: '\(convertToMilitaryTime(example))'")
    }
  }
}

/* MARK: - Complexity Primary Solution
⏱️ Time:  O(1)
🚀 Space: Minimal
*/
