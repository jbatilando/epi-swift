// MARK: Solution
// P: Is a string well formed?
class Solution {
    func solve(_ s: String) -> Bool {
        guard !s.isEmpty else { return true }
        var stack = [Character]()
        for (i,c) in s.enumerated() {
            if c == "(" || c == "[" || c == "{" {
                stack.append(c)
            }
            else if !stack.isEmpty {
                let last = stack.removeLast()
                switch (last,c) {
                    case ("(",")"): continue
                    case ("[","]"): continue
                    case ("{","}"): continue
                    default: return false
                }
            }
            else {
                // Ran into ) but no opening, return false
                return false
            }
        }
        return stack.isEmpty
    }
}

// MARK: Test cases
var test1 = "([]){()}" // True
var test2 = "[()[]{()()" // False
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
