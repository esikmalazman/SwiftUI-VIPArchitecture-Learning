import XCTest
@testable import ScoopsAndScones


/// Mock data for Testing
enum Seeds {
  static let iceCream = IceCream(
    cones: ["Sugar Cone", "Cake Cone", "Waffle Cone", "Cup"],
    flavors: ["Chocolate", "Strawberry", "Vanilla", "Pistachio", "Hazelnut"],
    toppings: ["Hot Fudge", "Sprinkles", "Mystery Sauce", "Chocolate Chips"]
  )
}
