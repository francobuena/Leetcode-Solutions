import Foundation

/**
 LONGEST CONSECUTIVE SEQUENCE
 Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.
 
 You must write an algorithm that runs in O(n) time.
 */

func longestConsecutive(_ nums: [Int]) -> Int {
    var count = 0
    var countArray: [Int] = []
    var streakArray: [Int] = []
    
    for n in Set(nums).sorted() {
        if !streakArray.isEmpty {
            if streakArray.last == n - 1 {
                streakArray.append(n)
            } else {
                streakArray = []
                streakArray.append(n)
                countArray.append(count)
                count = 0
            }
        } else {
            streakArray.append(n)
        }
        count += 1
    }
    
    countArray.append(count)
    
    return countArray.max() ?? 0
}
