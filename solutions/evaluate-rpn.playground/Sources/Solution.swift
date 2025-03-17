import Foundation

/**
 EVALUATE REVERSE POLISH NOTATION
 You are given an array of strings tokens that represents an arithmetic expression in a Reverse Polish Notation.
 
 Evaluate the expression. Return an integer that represents the value of the expression.
 
 Note that:
 
 The valid operators are '+', '-', '*', and '/'.
 Each operand may be an integer or another expression.
 The division between two integers always truncates toward zero.
 There will not be any division by zero.
 The input represents a valid arithmetic expression in a reverse polish notation.
 The answer and all the intermediate calculations can be represented in a 32-bit integer.
 */

func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    
    for c in tokens {
        switch c {
        case "+":
            let a: Int = stack.removeLast()
            let b: Int = stack.removeLast()
            stack.append(a + b)
        case "-":
            let a: Int = stack.removeLast()
            let b: Int = stack.removeLast()
            stack.append(b - a)
        case "*":
            let a: Int = stack.removeLast()
            let b: Int = stack.removeLast()
            stack.append(a * b)
        case "/":
            let a: Int = stack.removeLast()
            let b: Int = stack.removeLast()
            stack.append(b / a)
        default:
            stack.append(Int(c) ?? 0)
        }
    }
    
    return stack[0]
}
