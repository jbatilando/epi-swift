// MARK: Solution
// P: Implement run-length encoding
class Solution {
    // Time: O(n)
    // Space: O(1)
    func encode(_ s: String) -> String {
        var s = Array(s)
        var res = ""
        var i = 0, j = 0
        while i < s.count && j < s.count {
            var count = 0
            while j < s.count && s[j] == s[i] {
                count += 1
                j += 1
            }
            print(s[i], count)
            res += String(count) + String(s[i])
            i = j
        }
        return res
    }
    
    // Time: O(n)
    // Space: O(1)
    func decode(_ s: String) -> String {
        let s = Array(s)
        var num = 0
        var res = ""
        
        for i in 0..<s.count {
            if isDigit(s[i]) {
                num = num * 10 + Int(String(s[i]))! - Int("0")!
            }
            if !isDigit(s[i]) {
                while num > 0 {
                    res += String(s[i])
                    num -= 1
                }
            }
        }
        
        return res
    }
    
    func isDigit(_ c: Character) -> Bool {
        return (Character("0")...Character("9")).contains(c)
    }
}

// MARK: Test cases
var test1 = "aaaabcccaa" // -> "4a1b3c2a"
var test2 = "3e4f2e" // -> "eeeffffee"
var sol = Solution()

print("test1:", sol.encode(test1))
print("test2:", sol.decode(test2))
