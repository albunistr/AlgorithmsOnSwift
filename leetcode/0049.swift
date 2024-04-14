/*Given an array of strings strs, group the anagrams together.
 You can return the answer in any order.*/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var str_dct = [String: [String]]()
    var result = [[String]]()
    
    for word in strs {
        var sortedWord: String = String(word.sorted())
        if str_dct[sortedWord] != nil {
            str_dct[sortedWord]?.append(word)
        } else {
            str_dct[sortedWord] = [word]
        }
    }
    
    for array in str_dct.values {
        result.append(array)
    }
    
    return result
}
