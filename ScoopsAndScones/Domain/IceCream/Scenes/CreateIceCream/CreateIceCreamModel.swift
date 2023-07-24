import Foundation

enum CreateIceCreamModel {
  
  /// Wraps the data model and represent single functionality if the code, ie: loading ice cream and show to the view.
  ///  - The benefits of nesting data model is readability, ie request to load ice cream, CreateIceCreamModel.LoadIceCream.Request()
  enum LoadIceCream {
    struct Request {}
    
    struct Response {
      var iceCreamData : IceCream
    }
    
    struct ViewModel {
      var cones : [String]
      var flavors : [String]
      var toppings : [String]
    }
  }
}

