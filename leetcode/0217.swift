/*Given an integer array nums, return true if any value appears at least twice in the array,
 and return false if every element is distinct.*/

func containsDuplicate(_ nums: [Int]) -> Bool {
    for i in 0...nums.count - 1 {
        for j in 0...nums.count - 1 where j != i {
            if nums[i] == nums[j] {
                return true
            }
        }
    }
    return false
}
