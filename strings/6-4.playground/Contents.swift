// MARK: Solution
// P: Replace and remove
class Solution {
    // Time: O(n)
    // Space: O(1)
    func solve(_ s: [String], _ size: Int) -> Int {
        // Forward iteration: remove b's and count the number of a's
        var writeIndex = 0, aCount = 0
        var s = s
        for i in 0..<size {
            // Removing b's, shifting everything over to the left
            if s[i] != "b" {
                s[writeIndex] = s[i]
                writeIndex += 1
            }
            if s[i] == "a" {
                aCount += 1
            }
        }
        
        // Backward iteration: replace a's with dd's starting from the end
        var currIndex = writeIndex - 1
        writeIndex += aCount - 1
        var finalSize = writeIndex + 1
        while currIndex >= 0 {
            if s[currIndex] == "a" {
                s[writeIndex - 1] = "d"
                s[writeIndex] = "d"
                writeIndex -= 2
            }
            else {
                s[writeIndex] = s[currIndex]
                writeIndex -= 1
            }
            currIndex -= 1
        }
        print(s)
        return finalSize
    }
}

// MARK: Test cases
var test1 = ["a","c","a","a"," "," "," "] // -> ["d", "d", "c", "d", "d", "d", "d"]
var test2 = ["a","b","a","c"," "] // -> ["d", "d", "c", "d", "d", "d", "d"]
var sol = Solution()

print("test1:", sol.solve(test1, 4))
print("test2:", sol.solve(test2, 4))
