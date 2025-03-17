import XCTest

public class Tests: XCTestCase {
    
    func testMergeInterval() {
        XCTAssertEqual(merge([[1,3],[2,6],[8,10],[15,18]]), [[1,6],[8,10],[15,18]])
        XCTAssertEqual(merge([[1,4],[4,5]]), [[1,5]])
        XCTAssertEqual(merge([[2,3],[2,2],[3,3],[1,3],[5,7],[2,2],[4,6]]), [[1, 3], [4, 7]])
    }
}
