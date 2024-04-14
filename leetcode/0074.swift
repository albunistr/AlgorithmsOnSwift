/*You are given an m x n integer matrix matrix with the following two properties:
 
 Each row is sorted in non-decreasing order.
 The first integer of each row is greater than the last integer of the previous row.
 Given an integer target, return true if target is in matrix or false otherwise.

 You must write a solution in O(log(m * n)) time complexity.*/

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for i in 0..<matrix.count{
        for j in 0..<matrix[i].count {
            if matrix[i][j] == target {
                return true
            }
        }
    }
    return false
}

