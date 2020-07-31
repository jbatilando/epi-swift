// MARK: Solution
// P: Evaluate RPN expressions
class Solution {
    func solve(_ tokens: [String]) -> Int {
        var numStack = [String](), opStack = [String](),res = 0
        for t in tokens {
            // Check if t is a number
            if Int(t) != nil {
                numStack.append(t)
            }
            else {
                let first = numStack.removeLast() // 5
                let second = numStack.removeLast() // 13
                let calculation = calculate(Int(first)!, Int(second)!, t)
                numStack.append(String(calculation))
            }
        }
        res = Int(numStack[0])!
        return res
    }
    
    func calculate(_ first: Int, _ second: Int, _ op: String) -> Int {
        switch op {
            case "+": return first + second
            case "-": return second - first
            case "/": return second / first
            case "*": return second * first
            default: return -1
        }
    }
}

// MARK: Test cases
var test1 = ["2", "1", "+", "3", "*"] // -> 9
var test2 = ["4", "13", "5", "/", "+"] // -> 6
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
