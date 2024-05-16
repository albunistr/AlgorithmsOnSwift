/*Given an integer array nums, move all the even integers at the beginning of the array
 followed by all the odd integers.
 Return any array that satisfies this condition.*/

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    
    for num in nums {
        if num % 2 == 0 {
            result.append(num)
        }
    }
    
    for num in nums {
        if num % 2 == 1 {
            result.append(num)
        }
    }
    
    return result
}
