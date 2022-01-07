import XCTest
import SwiftUI
@testable import CircularProgress

final class CircularProgressTests: XCTestCase {
    func testLinear() {
        let item = CircularProgressView(count: 5, total: 10, progress: 0.5)
        XCTAssertEqual(item.progress, 0.5)
    }
    func testAngular() {
        let item = CircularProgressView(count: 5, total: 10, progress: 0.5, fill: AngularGradient(colors: [.blue], center: .center))
        XCTAssertEqual(item.progress, 0.5)
    }

    static var allTests = [
        ("testLinear", testLinear),
        ("testAngular", testAngular)
    ]
}
