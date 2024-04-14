/*Given an array of integers nums and an integer target,
 return indices of the two numbers such that they add up to target.*/

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for n in 0...nums.count - 1 {
        for c in 0...nums.count - 1 where c != n {
            if nums[c] + nums[n] == target {
                return [n, c]
            }
        }
    }
    return [0, 0]
}
