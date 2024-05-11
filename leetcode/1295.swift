/*Given an array nums of integers, return how many of them contain an even number
 of digits.*/

func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    
    for i in 0..<nums.count {
        var numCopy = nums[i]
        var digCount = 0
        while numCopy != 0 {
            digCount += 1
            numCopy /= 10
        }
        
        if digCount % 2 == 0 {
            count += 1
        }
    }
    
    return count
}


