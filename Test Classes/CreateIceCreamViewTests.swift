import XCTest
@testable import ScoopsAndScones

class CreateIceCreamViewTests: XCTestCase {
  
  var sut: CreateIceCreamView!
  var interactorSpy: CreateIceCreamInteractorSpy!
  
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamView()
    interactorSpy = CreateIceCreamInteractorSpy()
    
  }
  
  override func tearDownWithError() throws {
    sut = nil
    interactorSpy = nil
    try super.tearDownWithError()
  }
  
  func test_interactor_shouldBeConnected() {
    sut.interactor = interactorSpy
    
    XCTAssertNotNil(sut.interactor, "interactor need to be connected")
  }
  
  /// Test to verify fetchIceCream() get call when View appear
  func test_viewDidAppear_shouldLoadIceCream() {
    // Arrange
    sut.interactor = interactorSpy
    
    // Act
    sut.fetchIceCream()
    
    // Assert
    XCTAssertTrue(interactorSpy.loadIceCreamCalled, "fetchIceCream() should ask interactor to load ice cream")
  }
}
