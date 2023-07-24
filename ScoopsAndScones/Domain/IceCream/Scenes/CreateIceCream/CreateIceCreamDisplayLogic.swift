import Foundation

protocol CreateIceCreamDisplayLogic {
  func displayIceCream(viewModel:CreateIceCreamModel.LoadIceCream.ViewModel)
}

extension CreateIceCreamView : CreateIceCreamDisplayLogic {
  func displayIceCream(viewModel: CreateIceCreamModel.LoadIceCream.ViewModel) {
    /// Adds data from ViewModel to iceCream @ObservableObject that used to update UI
    iceCream.displayedCones = viewModel.cones
    iceCream.displayedFlavors = viewModel.flavors
    iceCream.displayedToppings = viewModel.toppings
  }
}
