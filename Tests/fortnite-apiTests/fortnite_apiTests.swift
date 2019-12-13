import XCTest
@testable import fortnite_api

final class fortnite_apiTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(fortnite_api().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
