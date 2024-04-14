/*Given an integer array nums, return an array answer such that answer[i]
 is equal to the product of all the elements of nums except nums[i].*/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var numsRes = Array(repeating: 1, count: nums.count)

    for i in 1..<nums.count {
        numsRes[i] = nums[i - 1] * numsRes[i - 1]
    }
    
    var mul = 1
    
    for i in (0..<nums.count).reversed(){
        numsRes[i] *= mul
        mul *= nums[i]
    }

    return numsRes
}
