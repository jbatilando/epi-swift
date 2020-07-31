// MARK: Solution
// P: Reverse all the words in a sentence
class Solution {
    // Time: O(n)
    // Space: O(1)
    func solve(_ s: String) -> String {
        var s = Array(s)
        s = s.reversed()
        var start = 0, end = 0
        while end < s.count {
            while end < s.count && s[end] != " " {
                end += 1
            }
            reverse(&s, start, end - 1)
            end += 1
            start = end
        }
        return String(s)
    }
    
    func reverse(_ s: inout [Character], _ start: Int, _ end: Int) {
        var i = start, j = end
        while i < j {
            s.swapAt(i, j)
            i += 1
            j -= 1
        }
    }
}

// MARK: Test cases
var test1 = "Alice likes Bob" // -> "Bob likes Alice"
var test2 = "Able was I, ere I saw Elba!" // -> True
var test3 = "Ray a Bob" // -> False
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test2:", sol.solve(test3))
