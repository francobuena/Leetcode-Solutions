import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(reverseList(ListNode(1, ListNode(2, ListNode(3)))), ListNode(3, ListNode(2, ListNode(1))))
        XCTAssertEqual(reverseList(ListNode(5, ListNode(4, ListNode(3, ListNode(2, ListNode(1)))))), ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))
    }
}
