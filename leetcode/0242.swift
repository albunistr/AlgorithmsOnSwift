/*Given two strings s and t, return true if t is an anagram of s,
 and false otherwise.*/

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count{
        return false
    }
    
    var s_dct = [Character: Int]()
    var t_dct = [Character: Int]()
    
    for c in s {
        if s_dct[c] != nil {
            s_dct[c] = s_dct[c]! + 1
        } else {
            s_dct[c] = 1
        }
    }
    for c in t {
        if t_dct[c] != nil {
            t_dct[c] = t_dct[c]! + 1
        } else {
            t_dct[c] = 1
        }
    }
    return s_dct == t_dct
}
