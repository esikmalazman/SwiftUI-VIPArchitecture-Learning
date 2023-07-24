import Foundation

protocol CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCreamModel.LoadIceCream.Response)
}

/// Presenter handle scene's presentation logic
final class CreateIceCreamPresenter {
  
  /// Define view, so presenter can format data from interactor and pass to the View
  var view : CreateIceCreamDisplayLogic?
}

extension CreateIceCreamPresenter : CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCreamModel.LoadIceCream.Response) {
    /// Presenter formats response into 3 arrays of strings and pass to ViewModel
    let viewModel = CreateIceCreamModel.LoadIceCream.ViewModel(
      cones: response.iceCreamData.cones,
      flavors: response.iceCreamData.flavors,
      toppings: response.iceCreamData.toppings)
    
    /// ViewModel pass to View to display formatted data
    view?.displayIceCream(viewModel:viewModel)
  }
}
