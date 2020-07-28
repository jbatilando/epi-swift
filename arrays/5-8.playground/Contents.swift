// MARK: Solution
// P: Computing an alternation
class Solution {
    // Time: O(nlogn)
    // Space: O(n)
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
    
    // Time: O(n)
    // Space: O(1) if we can modify input array
    func solve2(_ a: [Int]) -> [Int] {
        var a = a
        var i = 0
        
        while i < a.count - 1 {
            if i % 2 == 0 {
                if a[i] > a[i + 1] {
                    a.swapAt(i, i + 1)
                }
            }
            else if a[i] < a[i + 1] {
                a.swapAt(i, i + 1)
            }
            i += 1
        }
        
        return a
    }
}

// MARK: Test cases
var test1 = [2,5,3,6,7,4,1,3,6]
var test2 = [1,6,4,3,5] // -> [1,4,3,6,5]
var test3 = [3,3,5,0,0,3,1,4]
var sol = Solution()

print("test1:", sol.solve2(test1))
print("test2:", sol.solve2(test2))
print("test3:", sol.solve2(test3))
