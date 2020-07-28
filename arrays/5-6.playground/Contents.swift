class Solution {
    // Time and space: O(n) and O(1)
    func solve(_ a: [Int]) -> Int {
        var minSoFar = Int.max, maxProfit = 0
        
        for p in a {
            maxProfit = max(maxProfit, p - minSoFar)
            minSoFar = min(minSoFar, p)
        }
        
        return maxProfit
    }
}

// MARK: Test cases
var test1 = [2,3,5,7,11,11,11,13] // [2,3,5,7,11,13*,11,11^]
var test2 = [310,315,275,295,260,270,290,230,255,250] // [0,3,0L,1,2,2R,0]

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
