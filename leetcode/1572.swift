/*Given a square matrix mat, return the sum of the matrix diagonals.
 Only include the sum of all the elements on the primary diagonal and all the
 elements on the secondary diagonal that are not part of the primary diagonal.
  */

func diagonalSum(_ mat: [[Int]]) -> Int {
        let len = mat[0].count
        var res = 0
        for i in 0..<len {
            for j in 0..<len where j - i == 0 || i + j == len - 1 {
                res += mat[i][j]
            }
        }

        return res
}
