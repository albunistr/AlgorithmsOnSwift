/*Given an array nums containing n distinct numbers in the range [0, n], return
 the only number in the range that is missing from the array.*/
func missingNumber(_ nums: [Int]) -> Int {
    var n = nums.count
    var res = false
    for i in 0...n {
        res = false
        for j in nums {
            if i == j {
                res = true
                break
            }
        }
        
        if res == false {
            return i
        }
    }
    return 0
}
//solution with sets
func missingNumber(_ nums: [Int]) -> Int {
    Set(0...nums.count).subtracting(Set(nums)).first!
}
