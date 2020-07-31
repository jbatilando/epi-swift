// MARK: Solution
// P: Test palindromicity
class Solution {
    // Time: O(n)
    // Space: O(1)
    func solve(_ s: String) -> Bool {
        guard !s.isEmpty else { return false }
        var i = 0, j = s.count - 1
        var s = Array(s)
        while i < j {
            while !s[i].isLetter {
                i += 1
            }
            while !s[j].isLetter {
                j -= 1
            }
            if s[i].lowercased() != s[j].lowercased() {
                return false
            }
            i += 1
            j -= 1
        }
        return true
    }
}

// MARK: Test cases
var test1 = "A man, a plan, a canal, Panama." // -> True
var test2 = "Able was I, ere I saw Elba!" // -> True
var test3 = "Ray a Ray" // -> False
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test2:", sol.solve(test3))
