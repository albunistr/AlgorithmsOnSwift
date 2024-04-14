/*Given an integer array nums, return all the triplets [nums[i], nums[j],
 nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.*/

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var resArr = Set<[Int]>()
    
    let sortedNums = nums.sorted()
    for i in 0..<sortedNums.count {
        var k = i + 1
        var l = nums.count - 1
        
        while k < l {
            let sum = sortedNums[i] + sortedNums[k] + sortedNums[l]
            
            if sum > 0 {
                l -= 1
            } else if sum < 0 {
                k += 1
            } else {
                resArr.insert([sortedNums[i], sortedNums[k], sortedNums[l]])
                l -= 1
                k += 1
            }
        }
    }
    return Array(resArr)
}
