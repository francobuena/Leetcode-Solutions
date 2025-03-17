import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(middleNode(ListNode(1, ListNode(2, ListNode(3)))), ListNode(2, ListNode(3)))
        XCTAssertEqual(middleNode(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))))), ListNode(3, ListNode(4, ListNode(5))))
    }
}
