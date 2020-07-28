// MARK: Solution
// P: Delete duplicates from a sorted array
class Solution {
    // Time: O(n)
    // Space: O(n)
    func solve(_ a: [Int]) -> Int {
        var map = [Int:Int]()
        
        for n in a {
            map[n, default: 0] += 1
        }
        
        return map.count
    }
    
    // Time: O(n^2)
    // Space: O(1) if we modify input
    func solve2(_ a: [Int]) -> Int {
        var a = a, i = 0
        
        while i < a.count && i + 1 < a.count {
            if a[i] == a[i + 1] {
                a.remove(at: i + 1)
            }
            else {
                i += 1
            }
        }
        
        return a.count
    }
    
    // Time: O(n)
    // Space: O(1) if we modify input
    func solve3(_ a: [Int]) -> Int {
        guard !a.isEmpty else { return 0 }
        var a = a
        var writeIndex = 1
        for i in 1..<a.count {
            if a[writeIndex - 1] != a[i] {
                a[writeIndex] = a[i]
                writeIndex += 1
            }
        }
        
        return writeIndex
    }
}

// MARK: Test cases
var test1 = [2,3,5,7,11,11,11,13] // [2,3,5,7,11,13*,11,11^]
var test2 = [0,0,0,1,2,2,3] // [0,3,0L,1,2,2R,0]
var sol = Solution()

print("test1:", sol.solve3(test1))
print("test2:", sol.solve3(test2))
