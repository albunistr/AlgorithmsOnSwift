/*Поиск длины наибольшей общей подпоследовательности двух массивов*/

func lenLcs (_ A: [Int], _ B: [Int]) -> Int {
    var F = [[Int]]()
    
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
    
    return F[A.count][B.count]
}

