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

/*Given a string s, return true if it is a palindrome, or false otherwise.*/

func isPalindrome(_ s: String) -> Bool {
    
    let lowerStr = s.lowercased()
    let filteredStr = lowerStr.filter { $0.isLetter || $0.isNumber}
    let reversedString = String(filteredStr.reversed())
    
    return reversedString == filteredStr
}
/*Given a 1-indexed array of integers numbers that is already sorted in non-decreasing order, find two numbers such that they add up to a specific target number. Let these two numbers be numbers[index1] and numbers[index2] where 1 <= index1 < index2 <= numbers.length.
 
 Return the indices of the two numbers, index1 and index2, added by one as an integer array [index1, index2] of length 2.*/

func twoSum_two(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        let sum = numbers[left] + numbers[right]
        
        if sum < target {
            left += 1
        } else if sum > target {
            right -= 1
        } else {
            return [left + 1, right + 1]
        }
    }
    return []
}

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

/*Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.
 
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

/*You are given an m x n integer matrix matrix with the following two properties:
 
 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.*/

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for i in 0..<matrix.count{
        for j in 0..<matrix[i].count {
            if matrix[i][j] == target {
                return true
            }
        }
    }
    return false
}

/*Поиск длины наибольшей общей подпоследовательности двух массивов*/

func lenLcs (_ A: [Int], _ B: [Int]) -> Int {
    var F = [[Int]]()
    
    for _ in 0...A.count{
        var row = [Int]()
        for _ in 0...B.count{
            row.append(0)
        }
        F.append(row)
    }
    
    for i in 1...A.count {
        for j in 1...B.count {
            if A[i - 1] == B[j - 1] {
                F[i][j] = 1 + F[i - 1][j - 1]
            } else {
                F[i][j] = max(F[i][j - 1], F[i - 1][j])
            }
        }
    }
    
    return F[A.count][B.count]
}

/*Поиск наибольшей общей подпоследовательности двух массивов*/
func lcs (_ A: [Int], _ B: [Int]) -> [Int]{
    var F = [[Int]]()
    var result = [Int]()
    for _ in 0...A.count{
        var row = [Int]()
        for _ in 0...B.count{
            row.append(0)
        }
        F.append(row)
    }
    
    for i in 1...A.count {
        for j in 1...B.count {
            if A[i - 1] == B[j - 1] {
                F[i][j] = 1 + F[i - 1][j - 1]
            } else {
                F[i][j] = max(F[i][j - 1], F[i - 1][j])
            }
        }
    }
    print(F)
    var i = A.count
    var j = B.count
    
    while j > -1 && i > -1 {
        if F[i][j] == F[i - 1][j]{
            i -= 1
        } else if F[i][j] == F[i][j - 1] {
            j -= 1
        } else {
            result.append(A[i - 1])
            i -= 1
            j -= 1
        }
    }
    
    return result
}
lcs([1, 4, 8, 2, 3, 4], [1, 2, 3, 5, 7, 4])
