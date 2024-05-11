/*You are climbing a staircase. It takes n steps to reach the top.
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you
 climb to the top?*/

func climbStairs(_ n: Int) -> Int {
    if n == 1 {return 1}
    var arr: [Int] = .init(repeating: 0, count: n + 1)
    arr[1] = 1
    arr[2] = 2
    for i in 3..<arr.count {
        arr[i] = arr[i - 1] + arr[i - 2]
    }
    return arr[n]
}
