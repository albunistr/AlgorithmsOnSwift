/*Given two strings s and t, determine if they are isomorphic.
 Two strings s and t are isomorphic if the characters in s can be replaced to get t.
 All occurrences of a character must be replaced with another character while preserving
 the order of characters. No two characters may map to the same character, but a
 character may map to itself.*/

func isIsomorphic(_ s: String, _ t: String) -> Bool {
    var firstDict = [Character: Character]()
    var secondDict = [Character: Character]()
    var arrayFromS = Array(s)
    var arrayFromT = Array(t)
    
    for i in 0..<arrayFromS.count {
        var c1 = arrayFromS[i]
        var c2 = arrayFromT[i]
        
        if (firstDict[c1] != nil && firstDict[c1] != c2) || (secondDict[c2] != nil && secondDict[c2] != c1){
            return false
        }
        
        firstDict[c1] = c2
        secondDict[c2] = c1
    }
    
    return true
}
