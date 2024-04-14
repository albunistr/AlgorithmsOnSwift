/*Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
 determine if the input string is valid.*/

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    guard s.count % 2 == 0 else {return false}
    
    for n in s {
        
        switch n{
            
        case "(": stack.append(")")
        case "{": stack.append("}")
        case "[": stack.append("]")
        default:
            if stack.isEmpty || stack.removeLast() != n {
                return false
            }
        }
    }
    return stack.isEmpty
}
