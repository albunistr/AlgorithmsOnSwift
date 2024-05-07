/*Given an integer array nums sorted in non-decreasing order, return an array of
 the squares of each number sorted in non-decreasing order.*/
func sortedSquares(_ nums: [Int]) -> [Int] {
        var numsArr = [Int]()
        for i in nums {
            numsArr.append(i * i)
        }
        return numsArr.sorted()
    }
