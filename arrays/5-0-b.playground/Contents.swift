// MARK: Solutions
// P: Reorder array entries such that even entries appear first
class Solution {
    // Partition array into 3 subarrays: Even, Unclassified, Odd
    // Time: O(n)
    // Space: O(1)
    func solve(_ arr: [Int]) -> [Int] {
        guard !arr.isEmpty else { return [Int]() }
    
        var evenPtr = 0, oddPtr = arr.count - 1
        var arr = arr
        
        while evenPtr < oddPtr {
            if arr[evenPtr] % 2 == 0 {
                evenPtr += 1
            }
            else {
                arr.swapAt(evenPtr, oddPtr)
                oddPtr -= 1
            }
        }
        
        return arr
    }
}

// MARK: Test cases
var test1 = [1,4,1,4,2,1,3,5,6]
var test2 = [Int]()
var test3 = [9,2,5,1,2,6,4,7,1]
var sol = Solution()

print("Test1: ", sol.solve(test1))
print("Test2: ", sol.solve(test2))
print("Test3: ", sol.solve(test3))

