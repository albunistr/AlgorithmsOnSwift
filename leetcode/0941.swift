/*Given an array of integers arr, return true if and only if it is a valid mountain array.*/
func validMountainArray(_ arr: [Int]) -> Bool {
    if arr.count < 3 {return false}
    
    var center = arr.max()
    var l = 0
    var r = arr.count - 1
    
    if arr[l] == center || arr[r] == center {
        return false
    }
    
    while arr[l] < center! {
        if arr[l] >= arr[l + 1] {
            return false
        }
        l += 1
        
    }
    while arr[r] < center! {
        if arr[r] >= arr[r - 1] {
            return false
        }
        
        r -= 1
    }
    
    return true
    
}
