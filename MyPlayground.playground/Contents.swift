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

/*Given two strings s and t, return true if t is an anagram of s,
 and false otherwise.*/

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count{
        return false
    }
    var flag_of_finding = false
    for c in s {
        flag_of_finding == false
        for n in t {
            print(c, n)
            if c == n {
                flag_of_finding = true
                break
            }
        }
        if flag_of_finding == false {
            return false
        }
    }
    return true
}
