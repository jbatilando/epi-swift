// MARK: Solutions
// P: H-index
class Solution {
//     Brute force
//     Time: O(n^2)
//     Space: O(1) because we don't use any additional input
//     Count from 1 onwards, and check how many entries in the array are >= the count.
//     As soon as there are fewer entries than the count, the h-index is one less than the count.
    func hIndex(_ arr: [Int]) -> Int {
        guard !arr.isEmpty else { return 0 }
        var processed = [Int]()
        
        for i in 0..<arr.count {
            if processed.contains(arr[i]) { continue }
            var count = 0
            for j in 0..<arr.count {
                if arr[j] >= arr[i] {
                    count += 1
                }
            }
            print(arr[i], count)
            if count > arr.count - i {
                return count - 1
            }
            processed.append(arr[i])
        }
        
        return -1
    }
    
//     Optimized
//     Time: O(nlogn)
//     Space: O(n)
//     If a paper conributes to the index, then all papers with higher citation count also contribute towards the h-index.
//     If the array is sorted, once we find the first paper that contributes to the h-index, the number of papers contributing to the h-indx is
//     the length of the subarray starting at that paper i.e. the length of the array minus the first paper's index.
    func sortedHIndex(_ arr: [Int]) -> Int {
        guard !arr.isEmpty else { return 0 }
        let arr = arr.sorted(by: <)
        print(arr)
        for i in 0..<arr.count {
            let remaining = arr.count - i
            if arr[i] >= remaining {
                return arr[i]
            }
        }
        
        return 0
    }
}

// MARK: Test cases
var test1 = [1,4,1,4,2,1,3,5,6]
var test2 = [Int]()
var test3 = [9,2,5,1,2,6,4,7,1]
var sol = Solution()

print("Test1: ", sol.sortedHIndex(test1))
print("Test2: ", sol.sortedHIndex(test2))
print("Test3: ", sol.sortedHIndex(test3))

