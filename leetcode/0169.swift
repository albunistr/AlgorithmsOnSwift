
/*Given an array nums of size n, return the majority element.
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume
 that the majority element always exists in the array.*/


func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    
    for num in nums {
        if let n = dict[num] {
            dict[num] = n + 1
        } else {
            dict[num] = 1
        }
    }
    
    let halph: Double = Double(nums.count) / 2
    
    for (key, value) in dict {
        if Double(value) > halph {
            return key
        }
    }
    
    return 0
}
