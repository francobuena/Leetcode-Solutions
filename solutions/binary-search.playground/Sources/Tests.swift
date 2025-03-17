import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(search([-1,0,3,5,9,12], 9), 4)
        XCTAssertEqual(search([-1,0,3,5,9,12], 2), -1)
        XCTAssertEqual(search([3, 3], 6), -1)
        XCTAssertEqual(search([1, 2, 3], 3), 2)
    }
}
