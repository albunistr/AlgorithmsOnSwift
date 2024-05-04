/*Given an integer array nums and an integer val, remove all occurrences of val
 in nums in-place. The order of the elements may be changed. Then return the
 number of elements in nums which are not equal to val.*/

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }

