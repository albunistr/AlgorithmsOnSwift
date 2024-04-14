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

