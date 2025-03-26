import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(evalRPN(["2","1","+","3","*"]), 9)
        XCTAssertEqual(evalRPN(["4","13","5","/","+"]), 6)
        XCTAssertEqual(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]), 22)
    }
}
