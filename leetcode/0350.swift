/*Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.*/

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = [Int: Int]()
    var result = [Int]()
    
    for num in nums1 {
        if let n = dict[num] {
            dict[num] = n + 1
        } else {
            dict[num] = 1
        }
    }
    
    for num in nums2 {
        if let n = dict[num], n > 0 {
            result.append(num)
            dict[num] = n - 1
        }
    }
    
    return result
}
