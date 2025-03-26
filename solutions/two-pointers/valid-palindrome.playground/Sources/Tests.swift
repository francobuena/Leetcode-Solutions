import XCTest

public class Tests: XCTestCase {
    
    func testTwoSum() {
        XCTAssertEqual(isPalindrome("A man, a plan, a canal: Panama"), true)
        XCTAssertEqual(isPalindrome("race a car"), false)
        XCTAssertEqual(isPalindrome(" "), true)
        XCTAssertEqual(isPalindrome("not a palindrome"), false)
    }
}
