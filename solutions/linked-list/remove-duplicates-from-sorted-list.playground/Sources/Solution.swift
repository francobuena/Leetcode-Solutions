import Foundation

/**
 REMOVE DUPLICATES FROM SORTED LIST
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.
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

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var set = Set<Int>()
    var previous: ListNode? = nil
    var n = head
    
    while n != nil {
        if set.contains(n?.val ?? 0) {
            previous?.next = n?.next
        } else {
            set.insert(n?.val ?? 0)
            previous = n
        }
        n = n?.next
    }
    return head
}
