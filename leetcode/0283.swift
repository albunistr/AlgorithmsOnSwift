/*Given an integer array nums, move all 0's to the end of it while maintaining
 the relative order of the non-zero elements.
 Note that you must do this in-place without making a copy of the array. */

func moveZeroes(_ nums: inout [Int]) {
    var i = 0
    var j = 1
    while j < nums.count {
        if nums[i] == 0 && nums[j] != 0 {
            nums[i] = nums[j]
            nums[j] = 0
            j += 1
            i += 1
        } else if nums[i] == 0 && nums[j] == 0 {
            j += 1
        } else {
            j += 1
            i += 1
        }
    }
}
