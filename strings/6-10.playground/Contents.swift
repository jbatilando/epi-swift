// MARK: Solution
// P: Write a string sinusoidally
class Solution {
    // Time: O(n)
    // Space: O(1)
    func solve(_ s: String) -> String {
        let s = Array(s)
        var res = ""
        for i in stride(from: 1, to: s.count, by: 4) {
            res += String(s[i])
        }
        for i in stride(from: 0, to: s.count, by: 2) {
            res += String(s[i])
        }
        for i in stride(from: 3, to: s.count, by: 4) {
            res += String(s[i])
        }
        return res
    }
}

// MARK: Test cases
var test1 = "Hello_World!"
var sol = Solution()

print("test1:", sol.solve(test1))
