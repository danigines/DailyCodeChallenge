import Foundation

public struct PrimarySolution {
    private static func layout(pins: [Pin], columns: Int) -> [[Pin]] {
        // Initialize empty columns
        var columnPins = Array(repeating: [Pin](), count: columns)
        guard pins.isEmpty || columns > 0 else { return columnPins }

        // Initialize sum column heights
        var columnHeights = Array(repeating: 0, count: columns)

        for pin in pins {
            // Find the index of the column with the smallest height
            var minHeight = Int.max
            var targetColumn = 0

            for (i, height) in columnHeights.enumerated() {
                if height < minHeight {
                    minHeight = height
                    targetColumn = i
                }
            }

            // Insert the pin into that column
            columnPins[targetColumn].append(pin)
            columnHeights[targetColumn] += pin.height
        }

        return columnPins
    }

    public static func runExample() {
        let pinGridExamples = DataExample.pinGrid
        
        for pinGrid in pinGridExamples {
            let result = layout(pins: pinGrid.pins, columns: pinGrid.columns)
            print("\n\n🟢 Layout result is")
            for (index, column) in result.enumerated() {
                print("  Column \(index + 1):")
                for pin in column {
                    print("    ID: \(pin.id), Height: \(pin.height)")
                }
            }
        }
    }
}
