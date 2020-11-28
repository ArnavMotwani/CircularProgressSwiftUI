import XCTest
@testable import CircularProgress

final class CircularProgressTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CircularProgress().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
