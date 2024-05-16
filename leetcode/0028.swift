/*Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.*/

func strStr(_ haystack: String, _ needle: String) -> Int {
    if haystack.count < needle.count {
        return -1
    }
    var result = 0
    var i = 0
    
    let arrayFromHaystack = Array(haystack)
    let arrayFromNeedle = Array(needle)
    
    while i < arrayFromHaystack.count {
        var j = i
        var flag = true
        var index = 0
        while index < arrayFromNeedle.count && j < arrayFromHaystack.count {
            if arrayFromHaystack[j] == arrayFromNeedle[index] {
                j += 1
                index += 1
            } else {
                flag == false
                break
            }
        }
        
        if index == arrayFromNeedle.count && flag == true{
            return i
        }
        
        i += 1
    }
    
    return -1
}
