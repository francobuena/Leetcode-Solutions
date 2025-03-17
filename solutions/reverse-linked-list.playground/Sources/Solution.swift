import Foundation

/**
 REVERSE LINKED LIST
 Given the head of a singly linked list, reverse the list, and return the reversed list.
 */

public class ListNode: Equatable {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil;}
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return true
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    guard head != nil else { return nil }
    
    var n = head
    var prev: ListNode? = nil
    var temp: ListNode? = nil
    
    while n != nil {
        temp = n?.next
        n?.next = prev
        prev = n
        n = temp
    }
    return prev
}
