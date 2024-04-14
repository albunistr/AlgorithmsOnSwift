/*Given a string s, return true if it is a palindrome, or false otherwise.*/

func isPalindrome(_ s: String) -> Bool {
    
    let lowerStr = s.lowercased()
    let filteredStr = lowerStr.filter { $0.isLetter || $0.isNumber}
    let reversedString = String(filteredStr.reversed())
    
    return reversedString == filteredStr
}
