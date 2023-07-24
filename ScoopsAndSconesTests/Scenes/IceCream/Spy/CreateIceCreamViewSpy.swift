import Foundation
@testable import ScoopsAndScones

final class CreateIceCreamViewSpy : CreateIceCreamDisplayLogic {
  var displayIceCreamCalled = false
  var cones : [String]  = []
  var flavors : [String] = []
  var toppings : [String] = []
  
  func displayIceCream(viewModel: CreateIceCreamModel.LoadIceCream.ViewModel) {
    
    displayIceCreamCalled = true
    
    cones.append(contentsOf:viewModel.cones)
    flavors.append(contentsOf:viewModel.flavors)
    toppings.append(contentsOf:viewModel.toppings)
  }
}
