/*Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

You must implement a solution with a linear runtime complexity and use only constant extra space.*/

func singleNumber(_ nums: [Int]) -> Int {
    guard nums.isEmpty == false else {return 0}
    
    var result = 0
    for n in nums {
        result ^= n
    }
    
    return result
}
