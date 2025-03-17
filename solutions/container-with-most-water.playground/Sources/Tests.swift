import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(maxArea([1,8,6,2,5,4,8,3,7]), 49)
        XCTAssertEqual(maxArea([1,1]), 1)
    }
}
