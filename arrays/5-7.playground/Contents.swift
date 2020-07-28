// MARK: Solution
// P: Buy and sell a stock twice
class Solution {
    // Time: O(n)
    // Space: O(n)
    func solve(_ a: [Int]) -> Int {
        var minSoFar = Int.max, maxProfit = 0
        var firstBuyAndSell = Array(repeating: 0, count: a.count)
        
        // For each day, we record the max profit if we sell by that day
        for (i,p) in a.enumerated() {
            minSoFar = min(minSoFar, p)
            maxProfit = max(maxProfit, p - minSoFar)
            firstBuyAndSell[i] = maxProfit
        }
        
        // For each day, find the max profit if we make the second buy on that day
        var maxSoFar = Int.min
        for (i,p) in a.enumerated().reversed() {
            maxSoFar = max(maxSoFar, p)
            maxProfit = max(maxProfit, maxSoFar - p + firstBuyAndSell[i])
        }
        
        return maxProfit
    }
    
    // Time: O(n)
    // Space: O(1)
    func solve2(_ a: [Int]) -> Int {
        var firstCost = Int.max, secondCost = Int.max
        var firstProfit = 0, secondProfit = 0
        
        for p in a {
            firstCost = min(firstCost, p) // The minimal cost of the stock in transaction 1
            firstProfit = max(firstProfit, p - firstCost) // The maximal profit of selling the stock in transaction 1
            secondCost = min(secondCost, p - firstProfit) // The minimal cost of buying the stock in transaction 2 while taking into account the profit gained from previous transaction
            secondProfit = max(secondProfit, p - secondCost) // The maximal profit of selling the stock in transaction 2
        }
        
        return secondProfit
    }
}

// MARK: Test cases
var test1 = [2,5,3,6,7,4,1,3,6] // 3 + 3
var test2 = [310,315,275,295,260,270,290,230,255,300] // 20 + 10; 30 + 70
var test3 = [3,3,5,0,0,3,1,4]
var sol = Solution()

print("test1:", sol.solve2(test1))
print("test2:", sol.solve2(test2))
print("test3:", sol.solve2(test3))
