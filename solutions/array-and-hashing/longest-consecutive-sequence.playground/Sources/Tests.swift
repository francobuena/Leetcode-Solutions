import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(longestConsecutive([100,4,200,1,3,2]), 4)
        XCTAssertEqual(longestConsecutive([0,3,7,2,5,8,4,6,0,1]), 9)
        XCTAssertEqual(longestConsecutive([1,0,1,2]), 3)
    }
}
