import Foundation

/**
 GROUP ANAGRAMS
 Given an array of strings strs, group the anagrams together. You can return the answer in any order.
 */

func groupAnagrams(_ strs: [String]) -> [[String]] {
    guard strs.count > 1 else { return [strs] }
    
    var dict = [[Character]:[String]]()
    var result = [[String]]()
    
    for s in strs {
        let sorted = s.sorted()
        if dict.keys.contains(sorted), var array = dict[sorted] {
            array.append(s)
            dict[sorted] = array
        } else {
            dict[sorted] = [s]
        }
    }
    
    for (_, value) in dict {
        result.append(value)
    }
    
    return result
}
