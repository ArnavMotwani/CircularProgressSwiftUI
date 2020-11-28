import XCTest
@testable import CircularProgress

final class CircularProgressTests: XCTestCase {
    func testExample() {
        let item = CircularProgressView(count: 5, total: 10, progress: 0.5)
        XCTAssertEqual(item.progress, 0.5)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
