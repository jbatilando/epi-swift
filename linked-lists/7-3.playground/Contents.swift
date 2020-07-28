public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    // Time and space:
    func solve(_ l1: ListNode?,_ l2: ListNode?) -> Bool {
        var l1 = l1, l2 = l2
        var firstHead = l1, secondHead = l2
        
        while l1 != nil && l2 != nil {
            if l1!.val == l2!.val {
                return true
            }
            
            if l1?.next == nil {
                l1 = secondHead
            }
            else {
                l1 = l1?.next
            }
            
            if l2?.next == nil {
                l2 = firstHead
            }
            else {
                l2 = l2?.next
            }
        }
        
        return false
    }
    
    // TO DO: Optimized
}

// MARK: Test cases
var n1 = ListNode(1)
var n2 = ListNode(2)
var n3 = ListNode(3)

var n4 = ListNode(4)
var n5 = ListNode(5)
var n6 = ListNode(6)
var n7 = ListNode(7)
n1.next = n2
n2.next = n3
n3.next = n4

n7.next = n4
n4.next = n5
n5.next = n6
n6.next = n1

// 1 -> 2 -> 3 -> 4)
//          7 -> (4 -> 5 -> 6
// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(n1, n7))
