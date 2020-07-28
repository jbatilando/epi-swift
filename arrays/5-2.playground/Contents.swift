class Solution {
    func solve(_ a: [Int]) -> [Int] {
        guard !a.isEmpty else { return [Int]() }
        var a = a
        a[a.count - 1] += 1
        // [1,3,0]
        
        for i in stride(from: a.count - 1, through: 1, by: -1) {
            if a[i] == 10 {
                a[i] = 0
                a[i - 1] += 1
            }
            else {
                break
            }
        }
        
        if a[0] == 10 {
            a.append(0)
            a[0] = 1
        }
        
        
        return a
    }
}

// MARK: Test cases
var test1 = [1,2,9] // [1,3,0]
var test2 = [9,9,9] // [1,0,0,0]
var test3 = [9,1] // [9,2]

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test3:", sol.solve(test3))

