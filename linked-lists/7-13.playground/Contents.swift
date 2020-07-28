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
// Q: 7.13
// MARK: Solution
class Solution {
    func solve(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var res = ListNode(0), dummy = res
        var l1 = l1, l2 = l2
        var carry = 0
        
        while l1 != nil || l2 != nil {
            let val1 = l1?.val ?? 0
            let val2 = l2?.val ?? 0
            let sum = val1 + val2 + carry
            carry = sum / 10
            res.next = ListNode(sum % 10)
            res = res.next!
            l1 = l1?.next
            l2 = l2?.next
        }
        
        if carry != 0 {
            res.next = ListNode(1)
        }
        
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


// print("Test 1: ", Solution().solve(n1,2))
