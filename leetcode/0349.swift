/*Given two integer arrays nums1 and nums2, return an array of their
 intersection.
 Each element in the result must be unique and you may return the result in any
 order.*/
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    var setRes = Set<Int>()
    for i in set1 {
        if set2.contains(i) == true {
            setRes.insert(i)
        }
    }
    return Array(setRes)
}
