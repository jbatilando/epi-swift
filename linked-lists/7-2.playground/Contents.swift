public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
// MARK: Solution
class Solution {
    // Time
    func solve(_ head: ListNode?, _ s: Int, _ f: Int) -> ListNode? {
        if head == nil { return nil }
        var dummyHead = ListNode(0)
        var sublistHead = dummyHead
        var s = s, f = f
        
        // Find the sth node
        for _ in 1..<s {
            sublistHead = sublistHead.next!
        }
        
        // Start reversing process
        var sublistIter = sublistHead.next
        var i = 0
        
        while i < f - s {
            var temp = sublistIter?.next
            sublistIter.next =
            
            i += 1
        }
        
        sublistHead.next = head
    }
    
    // TO DO: Optimized
}

// MARK: Test cases
var n1 = ListNode(11)
var n2 = ListNode(3)
var n3 = ListNode(5)
var n4 = ListNode(7)
var n5 = ListNode(2)
var n6 = ListNode(6)

n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5

// Test 1
// 11 -> 3 -> 5 -> 7 -> 2 -> nil s = 2, f = 4
// 11 -> 7 -> 5 -> 3 -> 2 -> nil

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(n1, 2, 4))
