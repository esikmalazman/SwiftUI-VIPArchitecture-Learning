
import Foundation
@testable import ScoopsAndScones

/// Spy is specific type of mock object or test double that used in Testing.
/// - It used to record output/effect produce by SUT so we can verify it behaves as expected
final class CreateIceCreamInteractorSpy: CreateIceCreamBusinessLogic {
  /// Method's call expectation and initially the state is false. Then after loadIceCream(request:) called the expectation would be true
  var loadIceCreamCalled = false
  
  func loadIceCream(request: ScoopsAndScones.CreateIceCreamModel.LoadIceCream.Request) {
    loadIceCreamCalled = true
  }
}
