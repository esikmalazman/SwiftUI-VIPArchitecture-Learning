import Foundation

protocol CreateIceCreamBusinessLogic {
  func loadIceCream(request:CreateIceCreamModel.LoadIceCream.Request)
}


/// Interactor is app's brain and handle all business logic, ie: loading, deleting or saving data
/// - Another component that can be added to interactor which is Worker
/// - We can have multiple workers for interactor with each handling specific logic, ie: NetworkWorker, CoreDataWorker
final class CreateIceCreamInteractor {
  
  /// Define presenter, so interactor can pass the response to it
  var presenter : CreateIceCreamPresentationLogic?
}

extension CreateIceCreamInteractor : CreateIceCreamBusinessLogic {
  func loadIceCream(request: CreateIceCreamModel.LoadIceCream.Request) {
    /// Decode JSON file into IceCream domain model
    let iceCream = Bundle.main.decode(IceCream.self, from: "icecream.json")
    /// Create new response with decoded IceCream data
    let response = CreateIceCreamModel.LoadIceCream.Response(iceCreamData: iceCream)
    /// Pass response to presenter
    presenter?.presentIceCream(response:response)
  }
}
