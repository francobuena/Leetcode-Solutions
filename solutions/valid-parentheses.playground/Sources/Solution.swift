import Foundation

/**
 VALID PARENTHESES
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
 */

func isValid(_ s: String) -> Bool {
    if s.count <= 1 || s.count % 2 == 1 { return false } // early exit
    var stack: [Character] = []
    var dict: [Character: Character] = [")": "(", "}" : "{", "]" : "["]
    
    for p in s {
        if !stack.isEmpty, dict.keys.contains(p), let open = dict[p], open == stack.last {
            stack.removeLast()
        } else {
            stack.append(p)
        }
    }
    
    return stack.isEmpty
}
