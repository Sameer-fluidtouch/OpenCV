import XCTest
@testable import OpenCV

final class OpenCVTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OpenCV().text, "Hello, World!")
    }
}
