// MARK: Solution
// P: Convert from Roman to Decimal
class Solution {
    // Time: O(n)
    // Space: O(1)
    func solve(_ s: String) -> Int {
        let map: [Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        let s = Array(s)
        var res = 0
        for i in stride(from: s.count - 1, through: 0, by: -1) {
            if i == s.count - 1 {
                res += map[s[i]]!
            }
            else {
                if map[s[i + 1]]! > map[s[i]]! {
                    print(s[i + 1], s[i])
                    res -= map[s[i]]!
                }
                else {
                    res += map[s[i]]!
                }
            }
        }
        return res
    }
}

// MARK: Test cases
var test1 = "DXXXII" // -> 532
var test2 = "XIX" // -> 19
var test3 = "LIX" // -> 59
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test3:", sol.solve(test3))
