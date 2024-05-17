/*Given an integer n, return the number of prime numbers that are strictly less than n.*/

func countPrimes(_ n: Int) -> Int {
    if n == 0 || n == 1 {return 0}
    
    var array = Array(repeating: true, count: n + 1)
    
    for i in 2..<array.count {
        if array[i] {
            var j = i * i
            while j <= n {
                array[j] = false
                j += i
            }
        }
    }
    
    var count = 0
    for b in 2..<n {
        if array[b] {
            count += 1
        }
    }
    
    return count
}
