/*Suppose an array of length n sorted in ascending order is rotated between 1 and
 n times. For example, the array nums = [0,1,2,4,5,6,7] might become:
 
 [4,5,6,7,0,1,2] if it was rotated 4 times.
 [0,1,2,4,5,6,7] if it was rotated 7 times.
 Notice that rotating an array [a[0], a[1], a[2], ..., a[n-1]] 1 time results in
 the array [a[n-1], a[0], a[1], a[2], ..., a[n-2]].

 Given the sorted rotated array nums of unique elements, return the minimum
 element of this array.
*/
func findMin(_ nums: [Int]) -> Int {
    var l = 0
    var r = nums.count - 1
    
    if nums[l] < nums[r] {
        return nums[l]
    }
    
    var mid = 0
    
    while l < r - 1 {
    mid = (l + r) / 2
        if nums[l] < nums[mid] {
            l = mid
            
        }
        else {
            r = mid
            
        }
    }
    return min(nums[l], nums[mid], nums[r])
}
