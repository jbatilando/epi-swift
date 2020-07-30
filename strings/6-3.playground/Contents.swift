// MARK: Solution
// P: Compute the spreadsheet column encoding
class Solution {
    // Time: O()
    // Space: O()
    func solve(_ a: [Int]) -> [Int] {
        var a = a.sorted(by: < )
        print(a)
        var i = 1
        while i < a.count - 1 {
            a.swapAt(i, i + 1)
            i += 2
        }
        return a
    }
}

// MARK: Test cases
var test1 = [2,5,3,6,7,4,1,3,6]
var test2 = [1,6,4,3,5] // -> [1,4,3,6,5]
var test3 = [3,3,5,0,0,3,1,4]
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test3:", sol.solve(test3))
