// MARK: Solution
// P: Enumerate all primes to n
class Solution {
    // Time: O(n)
    // Space: O(n)
    func solve(_ n: Int) -> [Int] {
        var res = [Int]()
        var isPrime = Array(repeating: true, count: n + 1)
        isPrime[0] = false
        isPrime[1] = false
        
        for i in 2...n {
            if isPrime[i] {
                // it's a multiple, add to res
                res.append(i)
                // sieve all of its multiples
                for j in stride(from: i * 2, through: n, by: i) {
                    isPrime[j] = false
                }
            }
        }
        
        return res
    }
    
    // TO DO: Optimized
}

// MARK: Test cases
var test1 = 3
var test2 = 6
var test3 = 10
var sol = Solution()

print("test1:", sol.solve(test1))
print("test2:", sol.solve(test2))
print("test3:", sol.solve(test3))
