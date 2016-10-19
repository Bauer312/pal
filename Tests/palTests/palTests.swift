import XCTest
@testable import pal

class palTests: XCTestCase {
    func testTwoDigits() {
      XCTAssertEqual(maxPalindromicProduct(2),[99, 91, 9009])
    }


    static var allTests : [(String, (palTests) -> () throws -> Void)] {
        return [
            ("testTwoDigits", testTwoDigits),
        ]
    }
}
