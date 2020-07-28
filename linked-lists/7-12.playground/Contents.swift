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
// Q: 7.12
// MARK: Solution
class Solution {
    func solve(_ head: ListNode?, _ x: Int) -> ListNode? {
        var dummyOne: ListNode? = ListNode(0), dummyOneHead = dummyOne
        var dummyTwo: ListNode? = ListNode(0), dummyTwoHead = dummyTwo
        var current = head
        
        while current != nil {
            print(current!.val)
            if current!.val < x {
                dummyOne?.next = current
                dummyOne = dummyOne?.next
            }
            else {
                dummyTwo?.next = current
                dummyTwo = dummyTwo?.next
            }
            current = current?.next
        }
        dummyTwo?.next = nil
        dummyOne?.next = dummyTwoHead?.next
        return dummyOneHead?.next
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


print("Test 1: ", Solution().solve(n1,2))
