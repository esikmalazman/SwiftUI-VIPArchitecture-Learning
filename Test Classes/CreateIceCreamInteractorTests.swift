import XCTest
@testable import ScoopsAndScones

class CreateIceCreamInteractorTests: XCTestCase {
  
  var sut: CreateIceCreamInteractor!
  var presenterSpy: CreateIceCreamPresenterSpy!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamInteractor()
    presenterSpy = CreateIceCreamPresenterSpy()
  }
  
  override func tearDownWithError() throws {
    sut = nil
    presenterSpy = nil
    try super.tearDownWithError()
  }
  
  func test_presenter_shouldBeConnected() {
    sut.presenter = presenterSpy
    
    XCTAssertNotNil(sut.presenter, "presenter need to be connected")
  }
  
  /// Test to verify presentIceCream(response:) get call when interactor loadIceCream(request:)
  func test_loadIceCream_shouldCallPresentIceCream() {
    sut.presenter = presenterSpy
    let request = CreateIceCreamModel.LoadIceCream.Request()
    
    sut.loadIceCream(request: request)
    
    XCTAssertTrue(presenterSpy.presentIceCreamCelled, "loadIceCream(request:) should ask presenter to present ice cream")
  }
  
  /// Test to verify data decoded from JSON is same data pass to presenter
  func test_loadIceCream_shouldPresentIceCreamResponse() {
    // Arrange
    sut.presenter = presenterSpy
    let iceCream = Seeds.iceCream
    let request = CreateIceCreamModel.LoadIceCream.Request()
    
    // Act
    sut.loadIceCream(request: request)
    
    // Assert
    XCTAssertEqual(presenterSpy.iceCream, iceCream,  "loadIceCream(request:) should ask the presenter to present the same ice cream data it loaded")
  }
}
