class Solution {
    func solve(_ a: [Int], _ b: [Int]) -> [Int] {
        if a.isEmpty { return b }
        if b.isEmpty { return a }
        var res = Array(repeating: 0, count: a.count + b.count)
        var sign = 1
        var a = a, b = b
        if a[0] < 0 { sign *= -1 }
        if b[0] < 0 { sign *= -1 }
        a[0] = abs(a[0])
        b[0] = abs(b[0])
        
        for i in stride(from: a.count - 1, through: 0, by: -1) {
            for j in stride(from: b.count - 1, through: 0, by: -1) {
                res[i + j + 1] += a[i] * b[j]
                res[i + j] += res[i + j + 1] / 10
                res[i + j + 1] %= 10
            }
        }
        
        print(res)
        
        while res[0] == 0 {
            res.removeFirst()
        }
        
        res[0] *= sign
        
        return res
    }
}

// MARK: Test cases
var a = [-9,8,7] // [1,3,0]
var b = [1,2,3] // [1,0,0,0]
var c = [9,1] // [9,2]

// MARK: Solution
var sol = Solution()
print("test1:", sol.solve(a,c))
//print("test2:", sol.solve())
//print("test3:", sol.solve())

