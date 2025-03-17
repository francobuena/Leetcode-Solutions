import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(twoSum([2, 7, 11, 15], 9), [1,2])
        XCTAssertEqual(twoSum([2, 3, 4], 6), [1,3])
        XCTAssertEqual(twoSum([3, 3], 6), [1, 2])
        XCTAssertEqual(twoSum([-1, 0], -1), [1, 2])
    }
}
