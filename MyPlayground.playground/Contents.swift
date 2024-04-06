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
    
    var s_dct = [Character: Int]()
    var t_dct = [Character: Int]()
    
    for c in s {
        if s_dct[c] != nil {
            s_dct[c] = s_dct[c]! + 1
        } else {
            s_dct[c] = 1
        }
    }
    for c in t {
        if t_dct[c] != nil {
            t_dct[c] = t_dct[c]! + 1
        } else {
            t_dct[c] = 1
        }
    }
    return s_dct == t_dct
}

/*Given an array of strings strs, group the anagrams together.
 You can return the answer in any order.*/

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    var str_dct = [String: [String]]()
    var result = [[String]]()
    
    for word in strs {
        var sortedWord: String = String(word.sorted())
        if str_dct[sortedWord] != nil {
            str_dct[sortedWord]?.append(word)
        } else {
            str_dct[sortedWord] = [word]
        }
    }
    
    for array in str_dct.values {
        result.append(array)
    }
    
    return result
}

/*Given an integer array nums and an integer k, return the k most frequent elements.
 You may return the answer in any order.*/

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var resultArray = [Int]()
    var nums_dct = [Int: Int]()
    
    for num in nums {
        nums_dct[num, default: 0] += 1
    }
    
    let sortedDct = nums_dct.sorted { $0.value > $1.value }
    
    for i in 0..<k {
        resultArray.append(sortedDct[i].key)
    }
    
    return resultArray
}

/*Given an integer array nums, return an array answer such that answer[i]
 is equal to the product of all the elements of nums except nums[i].*/

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var numsRes = Array(repeating: 1, count: nums.count)

    for i in 1..<nums.count {
        numsRes[i] = nums[i - 1] * numsRes[i - 1]
    }
    
    var mul = 1
    
    for i in (0..<nums.count).reversed(){
        numsRes[i] *= mul
        mul *= nums[i]
    }

    return numsRes
}

/*Given a string s containing just the characters '(', ')', '{', '}', '[' and ']',
 determine if the input string is valid.*/

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    guard s.count % 2 == 0 else {return false}
    
    for n in s {
        
        switch n{
            
        case "(": stack.append(")")
        case "{": stack.append("}")
        case "[": stack.append("]")
        default:
            if stack.isEmpty || stack.removeLast() != n {
                return false
            }
        }
    }
    return stack.isEmpty
}

