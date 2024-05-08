/*Given a binary array nums, return the maximum number of consecutive 1's in the
 array.*/
func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 0
        var maxCount = 0
        for i in nums {
            if i == 1 {
                count += 1
                maxCount = max(maxCount, count)
            } else {
                count = 0
            }
        }

        return maxCount
    }
