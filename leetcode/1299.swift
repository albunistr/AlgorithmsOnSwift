/*Given an array arr, replace every element in that array with the greatest
 element among the elements to its right, and replace the last element with -1.
 After doing so, return the array.*/

func replaceElements(_ arr: [Int]) -> [Int] {
    var res = [Int](repeating: 0, count: arr.count)
    var maxNum = -1
    
    for i in (0..<arr.count).reversed() {
        let num = arr[i]
        res[i] = maxNum
        maxNum = max(num, maxNum)
    }
    
    return res
}
