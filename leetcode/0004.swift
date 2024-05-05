/*Given two sorted arrays nums1 and nums2 of size m and n respectively, return
 the median of the two sorted arrays.
 The overall run time complexity should be O(log (m+n)).*/

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var result = [Int]()
        for i in nums1 {
            result.append(i)
        }
        for i in nums2 {
            result.append(i)
        }

        var sortedRes = result.sorted()
    
        if sortedRes.count % 2 != 0 {
            return Double(sortedRes[sortedRes.count / 2])
        } else {
            var sum: Double = Double(sortedRes[sortedRes.count / 2] + sortedRes[(sortedRes.count / 2) - 1])
            return Double(sum / 2)
        }
        return 0
    }
