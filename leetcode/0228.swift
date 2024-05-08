/*You are given a sorted unique integer array nums.
 A range [a,b] is the set of all integers from a to b (inclusive).
Return the smallest sorted list of ranges that cover all the numbers in the array
 exactly. That is, each element of nums is covered by exactly one of the ranges,
 and there is no integer x such that x is in one of the ranges but not in nums.*/

func summaryRanges(_ nums: [Int]) -> [String] {
    guard nums.count != 0 else {return []}
    var i = 0
    var j = 0
    var res = [String]()
    
    while j < nums.count {
        i = j
        
        while j < nums.count - 1 && nums[j + 1] - nums[j] == 1 {
            j += 1
        }
        
        let tmp = i == j ? "\(nums[i])" : "\(nums[i])->\(nums[j])"
        res.append(tmp)
        
        j += 1
    }
    
    return res
}
