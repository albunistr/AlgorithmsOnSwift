/*Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions
 of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).*/

func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard s.isEmpty == false else {return true}
    let arrFromS = Array(s)
    var i = 0
    
    for c in t {
        if arrFromS[i] == c {
            if i + 1 == arrFromS.count{
                return true
            } else {
                i += 1
            }
        }
    }
    
    return false
}
