import Foundation

/**
 MIDDLE OF LINKED LIST
 Given the head of a singly linked list, return the middle node of the linked list.
 
 If there are two middle nodes, return the second middle node.
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

func middleNode(_ head: ListNode?) -> ListNode? {
    if head == nil { return nil }
    var counter = 0
    var p1 = head
    var p2 = head
    
    while p1 != nil {
        counter += 1
        p1 = p1?.next
    }
    
    for _ in 0..<(counter / 2) {
        p2 = p2?.next
    }
    
    return p2
}
