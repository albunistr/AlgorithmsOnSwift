/*Given a string s, return true if the s can be palindrome after deleting at most one
 character from it.*/

func validPalindrome(_ s: String) -> Bool {
    var s = Array(s)
    var left = 0
    var right = s.count - 1
    
    while left < right && s[left] == s[right] {
        left += 1
        right -= 1
    }
    
    if left >= right { return true }
    
    func checkDeletions(_ l: Int, _ r: Int) -> Bool {
        var left = l
        var right = r
        while left < right && s[left] == s[right] {
            left += 1
            right -= 1
        }
        
        return left >= right
    }
    
    return checkDeletions(left + 1, right) || checkDeletions(left, right - 1)
}
