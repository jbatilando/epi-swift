class Solution {
    func solve(_ arr: [Int], _ i: Int) -> [Int] {
        guard !arr.isEmpty else { return [Int]() }
        var a = arr, pivot = a[i]
        
        for i in 0..<a.count {
            for j in (i + 1)..<a.count {
                if a[j] < pivot {
                    a.swapAt(i, j)
                    break
                }
            }
        }
        
        for i in stride(from: a.count - 1, through: 0, by: -1) {
            for j in stride(from: i, through: 0, by: -1) {
                if a[j] > pivot {
                    a.swapAt(i,j)
                    break
                }
            }
        }
        
        return a
    }
    
    func solve2(_ arr: [Int], _ i: Int) -> [Int] {
        guard !arr.isEmpty else { return [Int]() }
        var a = arr, pivot = a[i]
        var left = 0, right = a.count - 1
        
        for i in 0..<a.count {
            if a[i] < pivot {
                a.swapAt(i, left)
                left += 1
            }
        }
        
        for i in stride(from: a.count - 1, through: 0, by: -1) {
            if a[i] > pivot {
                a.swapAt(i, right)
            }
        }
        
        return a
    }
    
    func solve3(_ arr: [Int], _ i: Int) -> [Int] {
        guard !arr.isEmpty else { return [Int]() }
        var low = 0, equal = 0, high = arr.count
        var a = arr, pivot = a[i]
    
        while low < high {
            if a[low] < pivot {
                low += 1
                equal += 1
                a.swapAt(low, equal)
            }
            else if a[equal] == pivot {
                equal += 1
            }
            else {
                high -= 1
                a.swapAt(high, equal)
            }
        }
        
        return a
    }
}

// MARK: Test cases
var test1 = [1,7,4,1,4,2,1,3,5,6]
// [1,4,1,4,2,1,3,5,6]
var test2 = [Int]()
var test3 = [9,2,5,1,2,6,4,7,1]

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve3(test1, 2))
print("test2:", sol.solve3(test2, 2))
print("test3:", sol.solve3(test3, 2))

