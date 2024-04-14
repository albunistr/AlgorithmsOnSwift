/*Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go
 outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
 
 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).*/

func reverse(_ x: Int) -> Int {
    var xCopy = x < 0 ? x * (-1) : x
    var result = 1
    
    var dec = 1
    while xCopy > 0 {
        result += (xCopy % 10) * dec
        dec *= 10
        xCopy = Int(xCopy / 10)
        print(xCopy)
    }
    
    return x < 0 ? xCopy * (-1) : xCopy
}

