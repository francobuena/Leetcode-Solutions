import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3), true)
        XCTAssertEqual(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 34), true)
        XCTAssertEqual(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 40), false)
        XCTAssertEqual(searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13), false)
    }
}
