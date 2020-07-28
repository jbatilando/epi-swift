public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func solve(_ nodeToDelete: inout ListNode) {
        nodeToDelete.val = nodeToDelete.next?.val as! Int
        nodeToDelete.next = nodeToDelete.next?.next
    }
}


// MARK: Test cases
var n1 = ListNode(1)
var n2 = ListNode(2)
var n3 = ListNode(3)
n1.next = n2
n2.next = n3


// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(&n2))
