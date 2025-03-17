import Foundation

/**
 VALID PALINDROME
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
 
 Given a string s, return true if it is a palindrome, or false otherwise.
 */

func isPalindrome(_ s: String) -> Bool {
    let lowercase = s.lowercased()
    let str = lowercase.replacingOccurrences(of: " ", with: "")
    let arr = Array(str).filter { $0.isLetter || $0.isNumber }
    var l = 0
    var r = arr.count - 1
    
    while l <= r {
        if arr[l] != arr[r] {
            return false
        }
        l += 1
        r -= 1
    }
    
    return true
}
