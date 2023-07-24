import SwiftUI

extension CreateIceCreamView {
  
  /// Configurator responsible to initiate and connect components of the VIP cycle. It creates copy of Interactor and Presenter and assign to the View
  ///  - This where we create unidirectional cycle between VIP cycles.
  ///  - There's only one configurator every scene and only need to call once
  ///  - The View loads when app starts but need to create presenter and interactor manually
  func configureView() -> some View {
    var view = self
    let interactor = CreateIceCreamInteractor()
    let presenter = CreateIceCreamPresenter()
    
    view.interactor = interactor
    interactor.presenter = presenter
    presenter.view = view
    
    return view
  }
}
