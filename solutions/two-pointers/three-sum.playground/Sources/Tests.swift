import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(threeSum([-1,0,1,2,-1,-4]), [[-1,-1,2],[-1,0,1]])
        XCTAssertEqual(threeSum([0,1,1]), [])
        XCTAssertEqual(threeSum([0,0,0]), [[0, 0, 0]])
    }
}
