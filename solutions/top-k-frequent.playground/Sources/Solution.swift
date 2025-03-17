import Foundation

/**
TOP K FREQUENT ELEMENTS
 Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
 */

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var dict = [Int: Int]()
        var result = [Int]()

        for n in nums {
            dict[n, default: 0] += 1
        }

        let tuple: [(Int, Int)] = dict.sorted { $0.value > $1.value }

        for i in 0..<k {
            result.append(tuple[i].0)
        }

        return result
    }
