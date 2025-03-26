import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(topKFrequent([1,1,1,2,2,3], 2), [1,2])
        XCTAssertEqual(topKFrequent([1], 1), [1])
        XCTAssertEqual(topKFrequent([1,1,1,2,2,2,3,3,3], 3), [1,2,3])
    }
}
