import XCTest
@testable import ScoopsAndScones

class CreateIceCreamPresenterTests: XCTestCase {
  var sut: CreateIceCreamPresenter!
  var viewSpy: CreateIceCreamViewSpy!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamPresenter()
    viewSpy = CreateIceCreamViewSpy()
  }
  
  override func tearDownWithError() throws {
    sut = nil
    viewSpy = nil
    try super.tearDownWithError()
  }
  
  
  func test_view_shouldBeConnected() {
    sut.view = viewSpy
    
    XCTAssertNotNil(sut.view, "view need to be connected")
  }
  
  func test_presentIceCream_shouldCallDisplayIceCream() {
    // Arrange
    sut.view = viewSpy
    let data = Seeds.iceCream
    let response = CreateIceCreamModel.LoadIceCream.Response(iceCreamData: data)
    
    // Act
    sut.presentIceCream(response: response)
    
    // Assert
    XCTAssertTrue(viewSpy.displayIceCreamCalled, "presentIceCream(response:) should ask view to display the ice cream")
  }
  
  
  func test_presentIceCream_shouldDisplayIceCreamData() {
    // Arrange
    sut.view = viewSpy
    let data = Seeds.iceCream
    let response = CreateIceCreamModel.LoadIceCream.Response(iceCreamData: data)
    
    // Act
    sut.presentIceCream(response: response)
    
    // Assert
    XCTAssertEqual(viewSpy.cones, data.cones, "presentIceCream(response:) should ask view to display same cones data like in response")
    XCTAssertEqual(viewSpy.flavors, data.flavors, "presentIceCream(response:) should ask view to display same flavours data like in response")
    XCTAssertEqual(viewSpy.toppings, data.toppings, "presentIceCream(response:) should ask view to display same toppings data like in response")
  }
}
