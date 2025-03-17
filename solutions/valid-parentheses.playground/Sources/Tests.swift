import XCTest

public class Tests: XCTestCase {
    
    func testValidParentheses() {
        XCTAssertEqual(isValid("()"), true)
        XCTAssertEqual(isValid("()[]{}"), true)
        XCTAssertEqual(isValid("(]"), false)
        XCTAssertEqual(isValid("([])"), true)
    }
}
