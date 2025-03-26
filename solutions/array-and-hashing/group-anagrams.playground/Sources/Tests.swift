import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(groupAnagrams(["eat","tea","tan","ate","nat","bat"]), [["tan", "nat"], ["bat"], ["eat", "tea", "ate"]])
        XCTAssertEqual(groupAnagrams([""]), [[""]])
        XCTAssertEqual(groupAnagrams(["a"]), [["a"]])
    }
}
