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
// Q: 7.11
// MARK: Solution
class Solution {
    func solve(_ head: ListNode?) -> Bool {
        var slow = head, fast = head
        
        while fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        var second = reverse(slow)
        var head = head
        
        while head != nil && second != nil {
            if head == nil && second != nil {
                return false
            }
            else if head != nil && second == nil {
                return false
            }
            else if head!.val != second!.val {
                return false
            }
            else {
                head = head?.next
                second = second?.next
            }
        }
        
        return true
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var current = head
        
        while current != nil {
            var temp = current?.next
            current?.next = prev
            prev = current
            current = temp
        }
        
        return prev
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
