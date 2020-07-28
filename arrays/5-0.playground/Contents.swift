// The h-index is a metric that measures both the productivity and citation impact of a researcher.
// Specifically, a researcher's h-index is the largest number h such that the researcher has published h papers
// that have each been cited h times. e.g. if Carl has published papers A-I, which have been cited
// 1,4,1,4,2,1,3,5,6 times respectively, then his h-index is 4.

class Solution {
//     Brute force
//     Time: O(n^2)
//     Space: O(1) because we don't use any additional input
//     Count from 1 onwards, and check how many entries in the array are >= the count.
//     As soon as there are fewer entries than the count, the h-index is one less than the count.
//     Lol I fucked this up
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
//     Time: O(nlogn) Space: O(n)
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
    
    // Suepr optimized
    // Time: O(n) Space: O(n)
}

// MARK: Test cases
var test1 = [1,4,1,4,2,1,3,5,6]
var test2 = [Int]()
var test3 = [9,2,5,1,2,6,4,7,1]

// MARK: Solution
var sol = Solution()
// sol.hIndex(test1)
print("test1:", sol.sortedHIndex(test1))

