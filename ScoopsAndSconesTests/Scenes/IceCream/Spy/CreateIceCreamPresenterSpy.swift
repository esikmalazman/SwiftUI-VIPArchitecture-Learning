import Foundation
@testable import ScoopsAndScones

final class CreateIceCreamPresenterSpy: CreateIceCreamPresentationLogic {
  /// define iceCream data and populate it with data sent from interactor
  var iceCream : IceCream?
  var presentIceCreamCelled = false
  
  func presentIceCream(response: ScoopsAndScones.CreateIceCreamModel.LoadIceCream.Response) {
    iceCream = response.iceCreamData
    presentIceCreamCelled = true
  }
}
