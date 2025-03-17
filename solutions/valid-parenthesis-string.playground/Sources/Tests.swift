import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(checkValidString("()"), true)
        XCTAssertEqual(checkValidString("(*)"), true)
        XCTAssertEqual(checkValidString("(*))"), true)
        XCTAssertEqual(checkValidString("())"), false)
    }
}
