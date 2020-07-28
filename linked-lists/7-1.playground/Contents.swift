public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// It hangs, some shit is fucked up
class Solution {
    // Time and space:
    func solve(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        var l1 = l1, l2 = l2
        
        var pre = ListNode(0)
        var current: ListNode? = pre
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                current?.next = l1
                l1 = l1!.next
            }
            else {
                current?.next = l2
                l2 = l2!.next
            }
            current = current?.next
        }
        
        if l1 != nil {
            current?.next = l2
        }
        
        if l2 != nil {
            current?.next = l1
        }
        
        return pre.next
    }
    
    // TO DO: Optimized
}

// MARK: Test cases
var n1 = ListNode(1)
var n3 = ListNode(3)
var n5 = ListNode(5)
n1.next = n3
n3.next = n5
// 1 -> 3 -> 5
var n2 = ListNode(2)
var n4 = ListNode(4)
var n6 = ListNode(6)
n2.next = n4
n4.next = n6
// 2-> 4 -> 6

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(n1, n2))
