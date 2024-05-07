/*Given two 0-indexed integer arrays nums1 and nums2, return a list answer of
 size 2 where:
 answer[0] is a list of all distinct integers in nums1 which are not present in
 nums2.
 answer[1] is a list of all distinct integers in nums2 which are not present in
 nums1.
 Note that the integers in the lists may be returned in any order.*/

func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var currentArr = [Int]()
        for i in nums1 {
            if nums2.contains(i) == false && currentArr.contains(i) == false {
                currentArr.append(i)
            }
        }
        res.append(currentArr)
        currentArr = []
        for i in nums2 {
            if nums1.contains(i) == false && currentArr.contains(i) == false {
                currentArr.append(i)
            }
        }

        res.append(currentArr)
        return res
    }
