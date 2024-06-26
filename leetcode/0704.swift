/*Given an array of integers nums which is sorted in ascending order, and an
 integer target, write a function to
 search target in nums. If target exists, then return its index. Otherwise,
 return -1.
 
 You must write an algorithm with O(log n) runtime complexity.
*/

func search(_ nums: [Int], _ target: Int) -> Int {
    for n in 0..<nums.count{
        if nums[n] == target{
            return n
        }
    }
    return -1
}

func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1

        while l <= r {
            if nums[l] == target {
                return l
            } else if nums[r] == target {
                return r
            } else {
                l += 1
                r -= 1
            }
        }
        return -1
    }
