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

// MARK: Solution
class Solution {
    func solve(_ head: ListNode?) -> ListNode? {
        var dummy = ListNode(0, head)
        var slow = head, fast = head?.next
        
        while fast != nil {
            if slow?.val == fast?.val {
                fast = fast?.next
            }
            else {
                slow?.next = fast
                slow = slow?.next
                fast = fast?.next
            }
        }
        
        slow?.next = fast
        
        return dummy.next
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


print("Test 1: ", Solution().solve(n1))
