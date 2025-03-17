import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(deleteDuplicates(ListNode(1, ListNode(1, ListNode(2)))), ListNode(1, ListNode(2)))
        XCTAssertEqual(deleteDuplicates(ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))), ListNode(1, ListNode(2, ListNode(3))))
    }
}
