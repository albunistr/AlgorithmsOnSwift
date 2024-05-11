/*Given a fixed-length integer array arr, duplicate each occurrence of zero,
 shifting the remaining elements to the right.
 
 Note that elements beyond the length of the original array are not written. Do
 the above modifications to the input array in place and do not return anything.*/

func duplicateZeros(_ arr: inout [Int]) {
    var temp: [Int] = []
    var i = 0
    while i < arr.count && temp.count < arr.count {
        if arr[i] == 0 {
            temp.append(arr[i])
            if temp.count < arr.count {
                temp.append(0)
            }
        } else {
            temp.append(arr[i])
        }
        i += 1
    }
    arr = temp
}
