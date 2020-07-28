// MARK: Solution
// P: Permute the elements of an array
class Solution {
    // Time: O(n)
    // Space: O(n)
    func solve(_ a: [Int], _ p: [Int]) -> [Int] {
        var a = a, p = p
        
        for i in 0..<a.count {
            p.swapAt(i, a[i])
            a.swapAt(i, a[i])
            print(a)
        }
        
        return p
    }
    
    // TO DO: Optimized
}

// MARK: Test cases
var a = [2,0,1,3]
var p = [1,2,3,4]
var sol = Solution()

print("test1:", sol.solve(a,p))
