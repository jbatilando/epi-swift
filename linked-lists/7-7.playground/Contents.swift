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
    // Time: O(n)
    // Space: O(1)
    func solve(_ head: ListNode?, _ k: Int) -> ListNode? {
        if head == nil { return nil }
        var dummy = ListNode(0)
        dummy.next = head
        var slow: ListNode? = dummy, fast = head
        
        for _ in 1..<k {
            fast = fast?.next
        }
        
        while fast != nil {
            slow = slow?.next!
            fast = fast?.next
        }
        
        slow?.val = slow!.next!.val
        slow?.next = slow?.next!.next
        
        return dummy.next
    }
}


// MARK: Test cases
var n1 = ListNode(1)
var n2 = ListNode(2)
var n3 = ListNode(3)
var sol = Solution()
n1.next = n2
n2.next = n3
// D -> 1 -> 2 -> 3 -> nil

print("test1:", sol.solve(n1, 2))
