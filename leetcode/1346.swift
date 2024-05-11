/*Given an array arr of integers, check if there exist two indices i and j such that :
 i != j
 0 <= i, j < arr.length
 arr[i] == 2 * arr[j]*/

func checkIfExist(_ arr: [Int]) -> Bool {
    var nums: Set<Int> = []
    
    for i in arr {
        if nums.contains(i * 2) {
            return true
        }
        
        if i % 2 == 0, nums.contains(i / 2) {
            return true
        }
        
        nums.insert(i)
    }
    
    return false
}
