/*Поиск наибольшей общей подпоследовательности двух массивов*/
func lcs (_ A: [Int], _ B: [Int]) -> [Int]{
    var F = [[Int]]()
    var result = [Int]()
    for _ in 0...A.count{
        var row = [Int]()
        for _ in 0...B.count{
            row.append(0)
        }
        F.append(row)
    }
    
    for i in 1...A.count {
        for j in 1...B.count {
            if A[i - 1] == B[j - 1] {
                F[i][j] = 1 + F[i - 1][j - 1]
            } else {
                F[i][j] = max(F[i][j - 1], F[i - 1][j])
            }
        }
    }
    var i = A.count
    var j = B.count
    
    while j > 0 && i > 0 {
        if F[i][j] == F[i - 1][j]{
            i -= 1
        } else if F[i][j] == F[i][j - 1] {
            j -= 1
        } else {
            result.insert(A[i - 1], at: 0)
            i -= 1
            j -= 1
        }
    }
    
    return result
}
