// MARK: Linked list class
public class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}
// Q: 7.9
// MARK: Solution
class Solution {
    func solve(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil { return nil }
        var curr = head, n = 1
        
        // Make circular list
        while curr?.next != nil {
            n += 1
            curr = curr?.next
        }
        curr?.next = head
        
        // New tail and new head
        var newTail = head
        for _ in 0..<(n - k % n - 1) {
            newTail = newTail?.next
        }
        var newHead = newTail?.next
        newTail?.next = nil
        
        return newHead
    }
}

// MARK: Test cases
var n1 = ListNode(1)
var n2 = ListNode(2)
var n3 = ListNode(3)
var n4 = ListNode(4)
var n5 = ListNode(5)

n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5


print("Test 1: ", Solution().solve(n1,3))
