import Foundation

/**
VALID PARENTHESIS STRING
 Given a string s containing only three types of characters: '(', ')' and '*', return true if s is valid.

 The following rules define a valid string:

 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string "".
 */

func checkValidString(_ s: String) -> Bool {
    var openStack: [Int] = [] // append the position of "(" in this stack
    var wildcardStack: [Int] = [] // append the position of "*" in this stack
    
    for (index, char) in s.enumerated() {
        if char == "(" {
            openStack.append(index)
        } else if char == "*" {
            wildcardStack.append(index)
        } else if char == ")" {
            // Match the ")" with its corresponding open or wildcard partner
            // Returns false if the ")" has no one to partner with
            if !openStack.isEmpty {
                openStack.removeLast()
            } else if !wildcardStack.isEmpty {
                wildcardStack.removeLast()
            } else {
                return false
            }
        }
    }
    
    // Match the wildcard stack to the open stack
    while !openStack.isEmpty && !wildcardStack.isEmpty {
        if openStack.last! < wildcardStack.last! {
            openStack.removeLast()
            wildcardStack.removeLast()
        } else {
            return false
        }
    }
    
    return openStack.isEmpty
}
