/*Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.*/

func reverseWords(_ s: String) -> String {
    var result = " "
    var array = Array(s)
    var cur = 0
    
    while cur < array.count {
        var i = cur
        var currentWord = [Character]()
        while  i < array.count && array[i] != " " {
            currentWord.append(array[i])
            i += 1
        }
        
        var left = 0
        var right = currentWord.count - 1
        
        while left < right {
            (currentWord[left], currentWord[right]) = (currentWord[right], currentWord[left])
            left += 1
            right -= 1
        }
        
        var str = String(currentWord) + " "
        result.insert(contentsOf: str, at: result.index(before: result.endIndex))
        cur = i + 1
    }
    
    result.removeLast()
    result.removeLast()
    return result
}

