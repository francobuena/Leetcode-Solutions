import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(nextGreaterElement([4,1,2], [1,3,4,2]), [-1,3,-1])
        XCTAssertEqual(nextGreaterElement([2,4], [1,2,3,4]), [3,-1])
    }
}
