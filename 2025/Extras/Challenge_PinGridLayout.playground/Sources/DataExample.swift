import Foundation

public typealias PinGrid = (pins: [Pin], columns: Int)
public struct DataExample {
  public static let pinGrid: [PinGrid] = [
    (pins: arrayOne, columns: 2),
    (pins: arrayTwo, columns: 2),
    (pins: arrayThree, columns: 3),
    (pins: arrayFour, columns: 4),
    (pins: arrayFive, columns: 2),
    (pins: arraySix, columns: 2),
    (pins: arraySeven, columns: 6)
  ]

  private static let arrayOne: [Pin] = [
    Pin(id: 1, height: 300),
    Pin(id: 2, height: 200),
    Pin(id: 3, height: 250),
    Pin(id: 4, height: 350),
    Pin(id: 5, height: 100)
  ]

  private static let arrayTwo: [Pin] = [
    Pin(id: 1, height: 100),
    Pin(id: 2, height: 100),
    Pin(id: 3, height: 100),
    Pin(id: 4, height: 100)
  ]

  private static let arrayThree: [Pin] = [
    Pin(id: 1, height: 150),
    Pin(id: 2, height: 250),
    Pin(id: 3, height: 100)
  ]

  private static let arrayFour: [Pin] = [
    Pin(id: 1, height: 100),
    Pin(id: 2, height: 200)
  ]

  private static let arrayFive: [Pin] = [
    Pin(id: 1, height: 100),
    Pin(id: 2, height: 200),
    Pin(id: 3, height: 300),
    Pin(id: 4, height: 400)
  ]

  private static let arraySix: [Pin] = [
    Pin(id: 1, height: 900),
    Pin(id: 2, height: 100),
    Pin(id: 3, height: 100),
    Pin(id: 4, height: 100)
  ]

  private static let arraySeven: [Pin] = [
    Pin(id: 1, height: 300),
    Pin(id: 2, height: 250),
    Pin(id: 3, height: 100),
    Pin(id: 4, height: 200),
    Pin(id: 5, height: 150),
    Pin(id: 6, height: 120),
    Pin(id: 7, height: 220),
    Pin(id: 8, height: 310),
    Pin(id: 9, height: 270),
    Pin(id: 10, height: 180),
    Pin(id: 11, height: 90),
    Pin(id: 12, height: 130),
    Pin(id: 13, height: 340),
    Pin(id: 14, height: 190),
    Pin(id: 15, height: 160),
    Pin(id: 16, height: 110),
    Pin(id: 17, height: 105),
    Pin(id: 18, height: 135),
    Pin(id: 19, height: 125),
    Pin(id: 20, height: 145),
    Pin(id: 21, height: 275),
    Pin(id: 22, height: 185),
    Pin(id: 23, height: 205),
    Pin(id: 24, height: 115),
    Pin(id: 25, height: 215),
    Pin(id: 26, height: 305),
    Pin(id: 27, height: 95),
    Pin(id: 28, height: 230),
    Pin(id: 29, height: 90),
    Pin(id: 30, height: 80)
  ]
}
