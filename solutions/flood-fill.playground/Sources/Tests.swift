import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2), [[2,2,2],[2,2,0],[2,0,1]])
        XCTAssertEqual(floodFill([[0,0,0],[0,0,0]], 0, 0, 0), [[0,0,0],[0,0,0]])
    }
}
